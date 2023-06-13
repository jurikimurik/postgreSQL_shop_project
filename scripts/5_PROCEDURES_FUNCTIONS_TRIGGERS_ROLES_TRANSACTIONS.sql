CREATE PROCEDURE  add_is_few_column_to_the_product()
LANGUAGE plpgsql
AS $$
BEGIN
  ALTER TABLE data.product ADD COLUMN is_few BOOL;
  UPDATE data.product SET is_few = true WHERE quantity < 100;
END;
$$;

CREATE PROCEDURE  delete_is_few_column_to_the_product()
LANGUAGE plpgsql
AS $$
BEGIN
  ALTER TABLE data.product DROP COLUMN is_few CASCADE;
END;
$$;

CREATE OR REPLACE FUNCTION get_orders_over_amount_of(amountOf INTEGER)
RETURNS TABLE (id int)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY SELECT s.id::int FROM data.order s
                 WHERE s.pieces > amountOf;
END;
$$;

CREATE OR REPLACE FUNCTION check_pieces()
  RETURNS trigger
LANGUAGE plpgsql
AS $$
BEGIN
  IF NEW.pieces <= 0 THEN
    RAISE EXCEPTION 'Ilosc sztuk w zamowieniu nie moze byc rowna lub mniejsza od 0!';
  END IF;
  RETURN NEW;
END;
$$;

CREATE TRIGGER check_pieces_trigger
  BEFORE INSERT
  ON data.order
  FOR EACH
    ROW EXECUTE FUNCTION check_pieces();

CREATE ROLE director
LOGIN
PASSWORD 'mrbigshoe';
GRANT ALL PRIVILEGES ON DATABASE postgres TO director;

CREATE ROLE worker
LOGIN
PASSWORD 'effectivePostgreSQL';
GRANT ALL PRIVILEGES ON SCHEMA data TO worker;

BEGIN TRANSACTION;

INSERT INTO
  data.payments (payment_method)
VALUES
  ('Webmoney'),
  ('Blik'),
  ('Qiwi');

COMMIT;
