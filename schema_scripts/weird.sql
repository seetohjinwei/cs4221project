CREATE TABLE IF NOT EXISTS coconut (
  A int,
  B int CONSTRAINT xd CHECK (B > 0),
  CHECK (A <> B),
  LIKE some_other_table,
  CONSTRAINT fk_this CHECK ()
);
