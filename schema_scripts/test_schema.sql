
CREATE TABLE Users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    date_of_birth DATE NOT NULL,
    registration_date TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    CHECK (email ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'),
    CHECK (date_of_birth <= CURRENT_DATE - INTERVAL '18 years');

CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price NUMERIC(10, 2) NOT NULL,
    stock_quantity INTEGER NOT NULL,
    available BOOLEAN DEFAULT TRUE,
    CHECK (price > 0), 
    CHECK (stock_quantity >= 0) 
);


CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    order_date TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50) NOT NULL,
    CHECK (quantity > 0), 
    CHECK (status IN ('Pending', 'Shipped', 'Delivered', 'Cancelled')),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

CREATE TABLE OrderDetails (
    order_details_id SERIAL PRIMARY KEY,
    order_id INTEGER NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    price_at_purchase NUMERIC(10, 2) NOT NULL,
    purchase_date TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    CHECK (price_at_purchase > 0), 
    CHECK (purchase_date >= ALL (SELECT order_date FROM Orders WHERE Orders.order_id = OrderDetails.order_id))
);

CREATE TABLE Address (
    address_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    state VARCHAR(100) NOT NULL,
    zip_code VARCHAR(20) NOT NULL,
    country VARCHAR(100) NOT NULL,
    is_primary BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    UNIQUE (user_id, is_primary),
    CHECK (is_primary IN (TRUE, FALSE))
);

CREATE TYPE PaymentMethod AS ENUM ('Credit Card', 'Debit Card', 'PayPal', 'Bank Transfer');

CREATE TABLE PaymentInfo (
    payment_info_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    payment_method PaymentMethod NOT NULL,
    details JSON NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    CHECK (is_active IN (TRUE, FALSE))
);

CREATE TABLE Categories (
    category_id SERIAL PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    description TEXT
);

CREATE TABLE ProductCategory (
    product_id INTEGER NOT NULL,
    category_id INTEGER NOT NULL,
    PRIMARY KEY (product_id, category_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

CREATE TABLE Reviews (
    review_id SERIAL PRIMARY KEY,
    product_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    rating INTEGER NOT NULL,
    review_text TEXT,
    review_date TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    CHECK (rating >= 1 AND rating <= 5)
);

CREATE TABLE DiscountCodes (
    code VARCHAR(50) PRIMARY KEY,
    discount_percentage NUMERIC(5, 2) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    CHECK (discount_percentage > 0 AND discount_percentage <= 100),
    CHECK (end_date > start_date)
);

CREATE TABLE ProductDiscounts (
    product_id INTEGER NOT NULL,
    code VARCHAR(50) NOT NULL,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (code) REFERENCES DiscountCodes(code),
    PRIMARY KEY (product_id, code)
);

CREATE TABLE ShoppingCart (
    cart_id SERIAL PRIMARY KEY,
    user_id INTEGER UNIQUE NOT NULL,
    creation_date TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE CartItems (
    cart_item_id SERIAL PRIMARY KEY,
    cart_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    FOREIGN KEY (cart_id) REFERENCES ShoppingCart(cart_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    CHECK (quantity > 0)
);

CREATE TABLE InventoryLog (
    log_id SERIAL PRIMARY KEY,
    product_id INTEGER NOT NULL,
    quantity_change INTEGER NOT NULL,
    change_date TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    CHECK (quantity_change <> 0)
);

CREATE TABLE Employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    position VARCHAR(100) NOT NULL,
    hire_date DATE NOT NULL,
    salary NUMERIC(15, 2) NOT NULL,
    CHECK (salary > 0)
);

CREATE TYPE ShipmentStatus AS ENUM ('Pending', 'In Transit', 'Delivered', 'Cancelled');

CREATE TABLE Shipments (
    shipment_id SERIAL PRIMARY KEY,
    order_id INTEGER NOT NULL,
    tracking_number VARCHAR(255) UNIQUE,
    status ShipmentStatus NOT NULL,
    shipment_date DATE,
    delivery_date DATE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    CHECK (shipment_date <= delivery_date OR delivery_date IS NULL)
);
