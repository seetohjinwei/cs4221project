CREATE TABLE IF NOT EXISTS coconut (
  A int,
  B int CONSTRAINT xd CHECK (B > 0),
  CHECK (A <> B),
  LIKE some_other_table,
  CONSTRAINT fk_this CHECK (A <> 0)
);

CREATE TABLE City (
 Population DECIMAL CONSTRAINT CityPop
   CHECK (Population >= 0),
 Longitude DECIMAL CONSTRAINT CityLon
   CHECK ((Longitude >= -180) AND (Longitude <= 180))
);
