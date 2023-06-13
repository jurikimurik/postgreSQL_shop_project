CREATE OR REPLACE VIEW join_left AS
    SELECT categories.category,subcategories.subcategory FROM shop.data.subcategories
    LEFT JOIN shop.data.categories
    ON shop.data.subcategories.category_id = shop.data.categories.id;

CREATE OR REPLACE VIEW join_right AS
    SELECT brand.brand,product.name FROM shop.data.brand
    RIGHT JOIN shop.data.product
    ON shop.data.brand.id=shop.data.product.brand_id;

CREATE OR REPLACE VIEW join_full AS
    SELECT "user".name, payments.payment_method FROM shop.data.user
    FULL JOIN shop.data.payments
    ON shop.data."user".preferred_payment_method_id=shop.data.payments.id;

CREATE OR REPLACE VIEW join_inner AS
    SELECT "user".name,"order".id FROM data."user"
    INNER JOIN shop.data."order"
    ON shop.data."user".id=shop.data."order".user_id;

CREATE OR REPLACE VIEW view_union AS
    SELECT subcategory FROM shop.data.subcategories
    UNION
    SELECT category FROM shop.data.categories;

CREATE OR REPLACE VIEW view_except AS
    SELECT category_id,subcategory FROM shop.data.subcategories
    EXCEPT
    SELECT id,category FROM shop.data.categories;

CREATE OR REPLACE VIEW view_intersect AS
    SELECT category_id FROM shop.data.subcategories
    INTERSECT
    SELECT id FROM shop.data.categories;

CREATE OR REPLACE VIEW view_where AS
    SELECT * FROM shop.data.product where price::numeric>80 ;

CREATE OR REPLACE VIEW view_order AS
    SELECT * FROM shop.data."order" order by amount;

CREATE OR REPLACE VIEW view_having AS
    SELECT count(quantity),brand_id FROM shop.data.product
    group by brand_id
    HAVING count(quantity)>1;

CREATE OR REPLACE VIEW view_limit_offset AS
    SELECT * FROM shop.data.product
    order by price desc
    offset 5 limit 5;

CREATE OR REPLACE VIEW view_subquery AS
    SELECT name,price,brand_id FROM shop.data.product
    where price IN (SELECT price FROM product where brand_id>15 and quantity>50);
