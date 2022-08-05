---!!! Not tested against any Oracle database - used only as reference model for h2, postgresql !!!---
--Categories
CREATE TABLE oe.categories_tab (
    category_name        VARCHAR2(50),
    category_description VARCHAR2(1000),
    category_id          NUMBER(2),
    parent_category_id   NUMBER(2),
);

ALTER TABLE oe.categories_tab ADD CONSTRAINT category_pk PRIMARY KEY ( category_id );

--Promotions
CREATE TABLE oe.promotions (
    promo_id   NUMBER(6) NOT NULL,
    promo_name VARCHAR2(20 BYTE)
);

ALTER TABLE oe.promotions ADD CONSTRAINT promo_id_pk PRIMARY KEY ( promo_id );

--Purchase Order
CREATE TABLE oe.purchaseorder

) ;

--TODO
--CREATE TABLE j_purchaseorder
--  (id          VARCHAR2 (32) NOT NULL PRIMARY KEY,
--   date_loaded TIMESTAMP (6) WITH TIME ZONE,
--   po_document VARCHAR2 (23767)
--   CONSTRAINT ensure_json CHECK (po_document IS JSON));
ALTER TABLE oe.purchaseorder ADD CONSTRAINT oid_pk_purchaseorder PRIMARY KEY ( oid );

--Customers
CREATE OR REPLACE TYPE cust_address_typ AS OBJECT (
    street_address VARCHAR2(40),
    postal_code    VARCHAR2(10),
    city           VARCHAR2(30),
    state_province VARCHAR2(10),
    country_id     CHAR(2)
) FINAL;


CREATE OR REPLACE TYPE phone_list_typ IS
    VARRAY(5) OF unknown;

CREATE TABLE oe.customers (
    customer_id       NUMBER(6) NOT NULL,
    cust_first_name   VARCHAR2(20 BYTE) NOT NULL,
    cust_last_name    VARCHAR2(20 BYTE) NOT NULL,
    cust_address      cust_address_typ,
    phone_numbers     phone_list_typ,
    nls_language      VARCHAR2(3 BYTE),
    nls_territory     VARCHAR2(30 BYTE),
    credit_limit      NUMBER(9, 2),
    cust_email        VARCHAR2(30 BYTE),
    account_mgr_id    NUMBER(6),
    cust_geo_location NUMBER(14, 4),
    date_of_birth     DATE,
    marital_status    VARCHAR2(20 BYTE),
    gender            VARCHAR2(1 BYTE),
    income_level      VARCHAR2(20 BYTE)
);

ALTER TABLE oe.customers ADD CONSTRAINT customer_id_min CHECK ( customer_id > 0 );

ALTER TABLE oe.customers ADD CONSTRAINT customer_credit_limit_max CHECK ( credit_limit <= 5000 );

COMMENT ON COLUMN oe.customers.customer_id IS
    'Primary key column.';

COMMENT ON COLUMN oe.customers.cust_first_name IS
    'NOT NULL constraint.';

COMMENT ON COLUMN oe.customers.cust_last_name IS
    'NOT NULL constraint.';

COMMENT ON COLUMN oe.customers.cust_address IS
    'Object column of type address_typ.';

COMMENT ON COLUMN oe.customers.phone_numbers IS
    'Varray column of type phone_list_typ';

COMMENT ON COLUMN oe.customers.credit_limit IS
    'Check constraint.';

COMMENT ON COLUMN oe.customers.account_mgr_id IS
    'References hr.employees.employee_id.';

COMMENT ON COLUMN oe.customers.cust_geo_location IS
    'SDO (spatial) column.';
CREATE INDEX OE.CUST_UPPER_NAME_IX ON OE.CUSTOMERS
    (
     UPPER(&quot;CUST_LAST_NAME&quot;),UPPER(&quot;CUST_FIRST_NAME&quot;)
    )
;
CREATE INDEX oe.cust_account_manager_ix ON
    oe.customers (
        account_mgr_id
    ASC );

CREATE INDEX oe.cust_lname_ix ON
    oe.customers (
        cust_last_name
    ASC );

CREATE INDEX oe.cust_email_ix ON
    oe.customers (
        cust_email
    ASC );

ALTER TABLE oe.customers ADD CONSTRAINT customers_pk PRIMARY KEY ( customer_id );

--Orders
CREATE TABLE oe.orders (
    order_id     NUMBER(12) NOT NULL,
    order_date   TIMESTAMP WITH LOCAL TIME ZONE NOT NULL,
    order_mode   VARCHAR2(8 BYTE),
    customer_id  NUMBER(6) NOT NULL,
    order_status NUMBER(2),
    order_total  NUMBER(8, 2),
    sales_rep_id NUMBER(6),
    promotion_id NUMBER(6)
);

ALTER TABLE oe.orders
    ADD CONSTRAINT order_mode_lov CHECK ( order_mode IN ( 'direct', 'online' ) );

ALTER TABLE oe.orders ADD CONSTRAINT order_total_min CHECK ( order_total >= 0 );

COMMENT ON COLUMN oe.orders.order_id IS
    'PRIMARY KEY column.';

COMMENT ON COLUMN oe.orders.order_date IS
    'TIMESTAMP WITH LOCAL TIME ZONE column, NOT NULL constraint.';

COMMENT ON COLUMN oe.orders.order_mode IS
    'CHECK constraint.';

COMMENT ON COLUMN oe.orders.order_status IS
    '0: Not fully entered, 1: Entered, 2: Canceled - bad credit, -&lt;br&gt;3: Canceled - by customer, 4: Shipped - whole order, -&lt;br&gt;5: Shipped - replacement items, 6: Shipped - backlog on items, -&lt;br&gt;7: Shipped - special delivery, 8: Shipped - billed, 9: Shipped - payment plan,-&lt;br&gt;10: Shipped - paid';

COMMENT ON COLUMN oe.orders.order_total IS
    'CHECK constraint.';

COMMENT ON COLUMN oe.orders.sales_rep_id IS
    'References hr.employees.employee_id.';

COMMENT ON COLUMN oe.orders.promotion_id IS
    'Sales promotion ID. Used in SH schema';

CREATE INDEX oe.ord_sales_rep_ix ON
    oe.orders (
        sales_rep_id
    ASC );

CREATE INDEX oe.ord_customer_ix ON
    oe.orders (
        customer_id
    ASC );

CREATE INDEX oe.ord_order_date_ix ON
    oe.orders (
        order_date
    ASC );

ALTER TABLE oe.orders ADD CONSTRAINT order_pk PRIMARY KEY ( order_id );

ALTER TABLE oe.orders
    ADD CONSTRAINT orders_customer_id_fk FOREIGN KEY ( customer_id )
        REFERENCES oe.customers ( customer_id )
            ON DELETE SET NULL;

--OrderItems
CREATE TABLE oe.order_items (
    order_id     NUMBER(12) NOT NULL,
    line_item_id NUMBER(3) NOT NULL,
    product_id   NUMBER(6) NOT NULL,
    unit_price   NUMBER(8, 2),
    quantity     NUMBER(8)
);

COMMENT ON COLUMN oe.order_items.order_id IS
    'Part of concatenated primary key, references orders.order_id.';

COMMENT ON COLUMN oe.order_items.line_item_id IS
    'Part of concatenated primary key.';

COMMENT ON COLUMN oe.order_items.product_id IS
    'References product_information.product_id.';

CREATE UNIQUE INDEX oe.order_items_uk ON
    oe.order_items (
        order_id
    ASC,
        product_id
    ASC );

CREATE INDEX oe.item_order_ix ON
    oe.order_items (
        order_id
    ASC );

CREATE INDEX oe.item_product_ix ON
    oe.order_items (
        product_id
    ASC );

ALTER TABLE oe.order_items ADD CONSTRAINT order_items_pk PRIMARY KEY ( order_id,
                                                                       line_item_id );

ALTER TABLE oe.order_items
    ADD CONSTRAINT order_items_order_id_fk FOREIGN KEY ( order_id )
        REFERENCES oe.orders ( order_id )
            ON DELETE CASCADE;

ALTER TABLE oe.order_items
    ADD CONSTRAINT order_items_product_id_fk FOREIGN KEY ( product_id )
        REFERENCES oe.product_information ( product_id );


--ProductDescription
CREATE TABLE oe.product_descriptions (
    product_id             NUMBER(6) NOT NULL,
    language_id            VARCHAR2(3 BYTE) NOT NULL,
    translated_name        NVARCHAR2(50) NOT NULL,
    translated_description NVARCHAR2(2000) NOT NULL
);

COMMENT ON COLUMN oe.product_descriptions.product_id IS
    'Primary key column.';

COMMENT ON COLUMN oe.product_descriptions.language_id IS
    'Primary key column.';

CREATE UNIQUE INDEX oe.prd_desc_pk ON
    oe.product_descriptions (
        product_id
    ASC,
        language_id
    ASC );

CREATE INDEX oe.prod_name_ix ON
    oe.product_descriptions (
        translated_name
    ASC );

ALTER TABLE oe.product_descriptions ADD CONSTRAINT product_descriptions_pk PRIMARY KEY ( product_id,
                                                                                         language_id );

ALTER TABLE oe.product_descriptions
    ADD CONSTRAINT pd_product_id_fk FOREIGN KEY ( product_id )
        REFERENCES oe.product_information ( product_id );

--ProductInformation
CREATE TABLE oe.product_information (
    product_id          NUMBER(6) NOT NULL,
    product_name        VARCHAR2(50 BYTE),
    product_description VARCHAR2(2000 BYTE),
    category_id         NUMBER(2),
    weight_class        NUMBER(1),
    warranty_period     INTERVAL YEAR TO MONTH,
    supplier_id         NUMBER(6),
    product_status      VARCHAR2(20 BYTE),
    list_price          NUMBER(8, 2),
    min_price           NUMBER(8, 2),
    catalog_url         VARCHAR2(50 BYTE)
);

ALTER TABLE oe.product_information
    ADD CONSTRAINT product_status_lov CHECK ( product_status IN ( 'orderable', 'planned', 'under development', 'obsolete' ) );

COMMENT ON COLUMN oe.product_information.product_id IS
    'Primary key column.';

COMMENT ON COLUMN oe.product_information.product_description IS
    'Primary language description corresponding to translated_description in&lt;br&gt;oe.product_descriptions, added to provide non-NLS text columns for OC views&lt;br&gt;to accss.';

COMMENT ON COLUMN oe.product_information.category_id IS
    'Low cardinality column, can be used for bitmap index.&lt;br&gt;Schema SH uses it as foreign key';

COMMENT ON COLUMN oe.product_information.weight_class IS
    'Low cardinality column, can be used for bitmap index.';

COMMENT ON COLUMN oe.product_information.warranty_period IS
    'INTERVAL YEAER TO MONTH column, low cardinality, can be used for bitmap&lt;br&gt;index.';

COMMENT ON COLUMN oe.product_information.supplier_id IS
    'Offers possibility of extensions outside Common Schema.';

COMMENT ON COLUMN oe.product_information.product_status IS
    'Check constraint. Appropriate for complex rules, such as &amp;quot;All products in&lt;br&gt;status PRODUCTION must have at least one inventory entry.&amp;quot; Also appropriate&lt;br&gt;for a trigger auditing status change.';

CREATE INDEX oe.prod_supplier_ix ON
    oe.product_information (
        supplier_id
    ASC );

ALTER TABLE oe.product_information ADD CONSTRAINT product_information_pk PRIMARY KEY ( product_id );

--Warehouse
CREATE TABLE oe.warehouses (
    warehouse_id    NUMBER(3) NOT NULL,
    warehouse_spec  XMLTYPE,
    warehouse_name  VARCHAR2(35 BYTE),
    location_id     NUMBER(4),
    wh_geo_location NUMBER(14, 4)
) XMLTYPE COLUMN warehouse_spec STORE AS BINARY XML (
    STORAGE ( PCTINCREASE 0 MINEXTENTS 1 MAXEXTENTS UNLIMITED FREELISTS 1 BUFFER_POOL DEFAULT )
    RETENTION
    ENABLE STORAGE IN ROW
    NOCACHE
);

COMMENT ON COLUMN oe.warehouses.warehouse_id IS
    'Primary key column.';

COMMENT ON COLUMN oe.warehouses.wh_geo_location IS
    'Primary key column, references hr.locations.location_id.';

CREATE INDEX oe.whs_location_ix ON
    oe.warehouses (
        location_id
    ASC );

ALTER TABLE oe.warehouses ADD CONSTRAINT warehouses_pk PRIMARY KEY ( warehouse_id );

--Inventories
CREATE TABLE oe.inventories (
    product_id       NUMBER(6) NOT NULL,
    warehouse_id     NUMBER(3) NOT NULL,
    quantity_on_hand NUMBER(8) NOT NULL
);

COMMENT ON COLUMN oe.inventories.product_id IS
    'Part of concatenated primary key, references product_information.product_id.';

COMMENT ON COLUMN oe.inventories.warehouse_id IS
    'Part of concatenated primary key, references warehouses.warehouse_id.';

CREATE INDEX oe.inventory_ix ON
    oe.inventories (
        warehouse_id
    ASC,
        product_id
    ASC );

CREATE INDEX oe.inv_product_ix ON
    oe.inventories (
        product_id
    ASC );

ALTER TABLE oe.inventories ADD CONSTRAINT inventory_pk PRIMARY KEY ( product_id,
                                                                     warehouse_id );

ALTER TABLE oe.inventories
    ADD CONSTRAINT inventories_product_id_fk FOREIGN KEY ( product_id )
        REFERENCES oe.product_information ( product_id );

ALTER TABLE oe.inventories
    ADD CONSTRAINT inventories_warehouses_fk FOREIGN KEY ( warehouse_id )
        REFERENCES oe.warehouses ( warehouse_id );