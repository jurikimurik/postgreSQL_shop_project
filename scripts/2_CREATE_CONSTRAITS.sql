ALTER TABLE data.user
  ADD CONSTRAINT payment_method_fk
  FOREIGN KEY (preferred_payment_method_id) REFERENCES data.payments(id)
  ON DELETE RESTRICT
  ON UPDATE CASCADE;

ALTER TABLE data.address
  ADD CONSTRAINT user_id_fk
  FOREIGN KEY (user_id) REFERENCES data.user(id)
  ON DELETE RESTRICT
  ON UPDATE CASCADE;

ALTER TABLE data.order
  ADD CONSTRAINT user_id_fk
  FOREIGN KEY (user_id) REFERENCES data.user(id)
  ON DELETE RESTRICT
  ON UPDATE CASCADE;

ALTER TABLE data.order
  ADD CONSTRAINT address_id_fk
  FOREIGN KEY (address_id) REFERENCES data.address(id)
  ON DELETE RESTRICT
  ON UPDATE CASCADE;

ALTER TABLE data.order
  ADD CONSTRAINT payment_type_id_fk
  FOREIGN KEY (payment_type_id) REFERENCES data.payments(id)
  ON DELETE RESTRICT
  ON UPDATE CASCADE;

ALTER TABLE data.order
  ADD CONSTRAINT product_id_fk
  FOREIGN KEY (product_id) REFERENCES data.product(id)
  ON DELETE RESTRICT
  ON UPDATE CASCADE;

ALTER TABLE data.product
  ADD CONSTRAINT brand_id_fk
  FOREIGN KEY (brand_id) REFERENCES data.brand(id)
  ON DELETE RESTRICT
  ON UPDATE CASCADE;

ALTER TABLE data.product
  ADD CONSTRAINT size_id_fk
  FOREIGN KEY (size_id) REFERENCES data.size(id)
  ON DELETE RESTRICT
  ON UPDATE CASCADE;

ALTER TABLE data.product
  ADD CONSTRAINT gender_id_fk
  FOREIGN KEY (gender_id) REFERENCES data.gender(id)
  ON DELETE RESTRICT
  ON UPDATE CASCADE;

ALTER TABLE data.product
  ADD CONSTRAINT subcategory_id_fk
  FOREIGN KEY (subcategory_id) REFERENCES data.subcategories(id)
  ON DELETE RESTRICT
  ON UPDATE CASCADE;

ALTER TABLE data.subcategories
  ADD CONSTRAINT category_id_fk
  FOREIGN KEY (category_id) REFERENCES data.categories(id)
  ON DELETE RESTRICT
  ON UPDATE CASCADE;