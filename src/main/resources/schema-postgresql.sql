DROP TABLE IF EXISTS categories_tab CASCADE;
DROP TABLE IF EXISTS promotions CASCADE;
DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS orders CASCADE;
DROP TABLE IF EXISTS product_information CASCADE;
DROP TABLE IF EXISTS order_items CASCADE;
DROP TABLE IF EXISTS product_descriptions CASCADE;
DROP TABLE IF EXISTS warehouses CASCADE;
DROP TABLE IF EXISTS inventories CASCADE;
DROP TABLE IF EXISTS purchase_order CASCADE;
--Categories
CREATE TABLE categories_tab (
    category_name        VARCHAR(50),
    category_description VARCHAR(1000),
    category_id          BIGINT NOT NULL,
    parent_category_id   BIGINT
);

ALTER TABLE categories_tab ADD CONSTRAINT category_pk PRIMARY KEY ( category_id );


--Promotions
CREATE TABLE promotions (
    promo_id   INTEGER,
    promo_name VARCHAR(20)
);

ALTER TABLE promotions ADD CONSTRAINT promo_id_pk PRIMARY KEY ( promo_id );

--Purchase Order//TODO

--Customers
CREATE TABLE customers (
    customer_id       BIGINT NOT NULL,
    cust_first_name   VARCHAR(20) NOT NULL,
    cust_last_name    VARCHAR(20) NOT NULL,
    --cust_address      cust_address_typ,
        street_address VARCHAR(40),
        postal_code    VARCHAR(10),
        city           VARCHAR(30),
        state_province VARCHAR(10),
        country_id     CHAR(2),
    --phone_NUMERICs     phone_list_typ,
        phone_numbers   VARCHAR(256) ARRAY,
    nls_language      VARCHAR(3),
    nls_territory     VARCHAR(30),
    credit_limit      NUMERIC(9, 2),
    cust_email        VARCHAR(128),
    account_mgr_id    INTEGER,
    cust_geo_lat NUMERIC(12, 8),
    cust_geo_long NUMERIC(12, 8),
    date_of_birth     DATE,
    marital_status    VARCHAR(20),
    gender            VARCHAR(1),
    income_level      VARCHAR(20)
);

ALTER TABLE customers ADD CONSTRAINT customer_id_min CHECK ( customer_id > 0 );

ALTER TABLE customers ADD CONSTRAINT customer_credit_limit_max CHECK ( credit_limit <= 5000 );

ALTER TABLE customers ADD CONSTRAINT customers_pk PRIMARY KEY ( customer_id );

--Orders
CREATE TABLE orders (
    order_id     BIGINT NOT NULL,
    order_date   TIMESTAMP WITH TIME ZONE NOT NULL,
    order_mode   VARCHAR(8),
    customer_id  BIGINT NOT NULL,
    order_status smallint,
    order_total  NUMERIC(8, 2),
    sales_rep_id integer,
    promotion_id integer
);

ALTER TABLE orders
    ADD CONSTRAINT order_mode_lov CHECK ( order_mode IN ( 'direct', 'online' ) );

ALTER TABLE orders ADD CONSTRAINT order_total_min CHECK ( order_total >= 0 );

ALTER TABLE orders ADD CONSTRAINT order_pk PRIMARY KEY ( order_id );

ALTER TABLE orders
    ADD CONSTRAINT orders_customer_id_fk FOREIGN KEY ( customer_id )
        REFERENCES customers ( customer_id )
            ON DELETE SET NULL;--TODO

--ProductInformation
CREATE TABLE product_information (
    product_id          BIGINT NOT NULL,
    product_name        VARCHAR(50),
    product_description VARCHAR(2000),
    category_id         BIGINT,
    weight_class        smallint,
    warranty_period     INTERVAL YEAR TO MONTH,
    supplier_id         INTEGER,
    product_status      VARCHAR(20),
    list_price          NUMERIC(8, 2),
    min_price           NUMERIC(8, 2),
    catalog_url         VARCHAR(50)
);

ALTER TABLE product_information
    ADD CONSTRAINT product_status_lov CHECK ( product_status IN ( 'orderable', 'planned', 'under development', 'obsolete' ) );

COMMENT ON COLUMN product_information.product_id IS
    'Primary key column.';

--CREATE INDEX oe.prod_supplier_ix ON
--    oe.product_information (
--        supplier_id
--    ASC );

ALTER TABLE product_information ADD CONSTRAINT product_information_pk PRIMARY KEY ( product_id );

--OrderItems
CREATE TABLE order_items (
    order_id     BIGINT NOT NULL,
    line_item_id BIGINT NOT NULL,
    product_id   BIGINT NOT NULL,
    unit_price   NUMERIC(8, 2),
    quantity     NUMERIC(8)
);

COMMENT ON COLUMN order_items.order_id IS
    'Part of concatenated primary key, references orders.order_id.';

COMMENT ON COLUMN order_items.line_item_id IS
    'Part of concatenated primary key.';

COMMENT ON COLUMN order_items.product_id IS
    'References product_information.product_id.';

ALTER TABLE order_items ADD CONSTRAINT order_items_pk PRIMARY KEY ( order_id, line_item_id );

ALTER TABLE order_items
    ADD CONSTRAINT order_items_order_id_fk FOREIGN KEY ( order_id )
        REFERENCES orders ( order_id )
            ON DELETE CASCADE;

ALTER TABLE order_items
    ADD CONSTRAINT order_items_product_id_fk FOREIGN KEY ( product_id )
        REFERENCES product_information ( product_id );

--ProductDescription
CREATE TABLE product_descriptions (
    product_id             BIGINT NOT NULL,
    language_id            VARCHAR(3) NOT NULL,
    translated_name        VARCHAR(50) NOT NULL,
    translated_description VARCHAR(2000) NOT NULL
);

COMMENT ON COLUMN product_descriptions.product_id IS
    'Primary key column.';

COMMENT ON COLUMN product_descriptions.language_id IS
    'Primary key column.';

ALTER TABLE product_descriptions ADD CONSTRAINT product_descriptions_pk PRIMARY KEY ( product_id, language_id );

ALTER TABLE product_descriptions
    ADD CONSTRAINT pd_product_id_fk FOREIGN KEY ( product_id )
        REFERENCES product_information ( product_id );

--Warehouse
CREATE TABLE warehouses (
    warehouse_id    INTEGER NOT NULL,
    warehouse_spec  TEXT,
    warehouse_name  VARCHAR(35),
    location_id     INTEGER,
    wh_geo_location NUMERIC(14, 4)
);
COMMENT ON COLUMN warehouses.warehouse_id IS
    'Primary key column.';

COMMENT ON COLUMN warehouses.wh_geo_location IS
    'Primary key column, references hr.locations.location_id.';

ALTER TABLE warehouses ADD CONSTRAINT warehouses_pk PRIMARY KEY ( warehouse_id );

--Inventories
CREATE TABLE inventories (
    product_id       INTEGER NOT NULL,
    warehouse_id     INTEGER NOT NULL,
    quantity_on_hand NUMERIC(8) NOT NULL
);

COMMENT ON COLUMN inventories.product_id IS
    'Part of concatenated primary key, references product_information.product_id.';

COMMENT ON COLUMN inventories.warehouse_id IS
    'Part of concatenated primary key, references warehouses.warehouse_id.';

ALTER TABLE inventories ADD CONSTRAINT inventory_pk PRIMARY KEY ( product_id, warehouse_id );

ALTER TABLE inventories
    ADD CONSTRAINT inventories_product_id_fk FOREIGN KEY ( product_id )
        REFERENCES product_information ( product_id );

ALTER TABLE inventories
    ADD CONSTRAINT inventories_warehouses_fk FOREIGN KEY ( warehouse_id )
        REFERENCES warehouses ( warehouse_id );

--PurchaseOrder
--CREATE domain IF NOT EXISTS jsonb AS json;
CREATE TABLE purchase_order (
id          VARCHAR(32) NOT NULL PRIMARY KEY,
date_loaded TIMESTAMP WITH TIME ZONE,
po_document JSONB);