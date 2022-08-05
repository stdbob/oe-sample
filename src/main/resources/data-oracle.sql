INSERT INTO categories_tab  VALUES ('hardware1', 'monitors', 11,11);

--CAST(MULTISET(SELECT o.product_id
--  FROM oc_product_information o
--  WHERE o.category_id = 11) as product_ref_list_typ))) ;

INSERT INTO categories_tab
  VALUES ('hardware2', 'printers', 12,12);
INSERT INTO categories_tab
  VALUES ('hardware3', 'harddisks', 13,13);
INSERT INTO categories_tab
  VALUES ('hardware4', 'memory components/upgrades', 14,14);
INSERT INTO categories_tab
  VALUES ('hardware5', 'processors, sound and video cards, network cards, motherboards', 15,15);
INSERT INTO categories_tab
  VALUES ('hardware6', 'keyboards, mouses, mouse pads', 16,16);
INSERT INTO categories_tab
  VALUES ('hardware7'
         , 'other peripherals (CD-ROM, DVD, tape cartridge drives, ...)', 17,17);
INSERT INTO categories_tab
  VALUES ('hardware8'
         , 'miscellaneous hardware (cables, screws, power supplies ...)', 19,19);
INSERT INTO categories_tab
  VALUES ('software1', 'spreadsheet software', 21,21);
INSERT INTO categories_tab
  VALUES ('software2', 'word processing software', 22,22);
INSERT INTO categories_tab
  VALUES ('software3', 'database software', 23,23);
INSERT INTO categories_tab
  VALUES ('software4', 'operating systems', 24,24);
INSERT INTO categories_tab
  VALUES ('software5', 'software development tools (including languages)', 25,25);
INSERT INTO categories_tab
  VALUES ('software6', 'miscellaneous software', 29,29);
INSERT INTO categories_tab
  VALUES ('office1', 'capitalizable assets (desks, chairs, phones ...)', 31,31);
INSERT INTO categories_tab
  VALUES ('office2'
         , 'office supplies for daily use (pencils, erasers, staples, ...)', 32,32);
INSERT INTO categories_tab
  VALUES ('office3', 'manuals, other books', 33,33);
INSERT INTO categories_tab
  VALUES ('office4', 'miscellaneous office supplies', 39,39);
INSERT INTO categories_tab
  VALUES (composite_category_typ('hardware', 'computer hardware and peripherals', 10,10);

INSERT INTO categories_tab
  VALUES (composite_category_typ('software', 'computer software', 20,20);

INSERT INTO categories_tab
  VALUES (composite_category_typ('office equipment', 'office furniture and supplies', 30,30);

INSERT INTO categories_tab
  VALUES (catalog_typ('online catalog'
         , 'catalog of computer hardware, software, and office equipment'
         , 90,90);

UPDATE categories_tab
  SET parent_category_id = 90
  WHERE category_id IN (10, 20, 30);

UPDATE categories_tab
  SET parent_category_id = 10
  WHERE category_id IN (11, 12, 13, 14, 15, 16, 17, 19);

UPDATE categories_tab
  SET parent_category_id = 20
  WHERE category_id IN (21, 22, 23, 24, 25, 29);

UPDATE categories_tab
  SET parent_category_id = 30
  WHERE category_id IN (31, 32, 33, 39);

--Promotions
INSERT INTO promotions (promo_id, promo_name)
  VALUES (1, 'everyday low price');

INSERT INTO promotions (promo_id, promo_name)
  VALUES (2, 'blowout sale');

--purchaseorder
--Customers
INSERT INTO customers VALUES
    (101,'Constantin','Welles',cust_address_typ
    ('514 W Superior St','46901','Kokomo','IN','US'),PHONE_LIST_TYP
    ('+1 317 123 4104'),'us','AMERICA','100','Constantin.Welles@ANHINGA.EXAMPLE.COM',
    149,
    MDSYS.SDO_GEOMETRY(2001, 8307, MDSYS.SDO_POINT_TYPE (-86.13631, 40.485424,NULL),
    NULL,NULL));
INSERT INTO customers VALUES
    (102,'Harrison','Pacino',cust_address_typ
    ('2515 Bloyd Ave','46218','Indianapolis','IN','US'),PHONE_LIST_TYP
    ('+1 317 123 4111'),'us','AMERICA','100','Harrison.Pacino@ANI.EXAMPLE.COM',
    149,MDSYS.SDO_GEOMETRY
    (2001, 8307, MDSYS.SDO_POINT_TYPE
    (-86.120133, 39.795766,NULL),NULL,NULL));
INSERT INTO customers VALUES
    (103,'Manisha','Taylor',cust_address_typ
    ('8768 N State Rd 37','47404','Bloomington','IN','US'),PHONE_LIST_TYP
    ('+1 812 123 4115'),'us','AMERICA','100','Manisha.Taylor@AUKLET.EXAMPLE.COM',
    149,MDSYS.SDO_GEOMETRY
    (2001, 8307, MDSYS.SDO_POINT_TYPE
    (-86.5173, 39.302695,NULL),NULL,NULL));
INSERT INTO customers VALUES
    (104,'Harrison','Sutherland',cust_address_typ
    ('6445 Bay Harbor Ln','46254','Indianapolis','IN','US'),PHONE_LIST_TYP
    ('+1 317 123 4126'),'us','AMERICA','100','Harrison.Sutherland@GODWIT.EXAMPLE.COM',
    149,MDSYS.SDO_GEOMETRY
    (2001, 8307, MDSYS.SDO_POINT_TYPE
    (-86.272743, 39.849678,NULL),NULL,NULL));
INSERT INTO customers VALUES
    (105,'Matthias','MacGraw',cust_address_typ
    ('4019 W 3Rd St','47404','Bloomington','IN','US'),PHONE_LIST_TYP
    ('+1 812 123 4129'),'us','AMERICA','100','Matthias.MacGraw@GOLDENEYE.EXAMPLE.COM',
    NULL,MDSYS.SDO_GEOMETRY
    (2001, 8307, MDSYS.SDO_POINT_TYPE
    (-86.58332, 39.164783,NULL),NULL,NULL));
INSERT INTO customers VALUES
    (106,'Matthias','Hannah',cust_address_typ
    ('1608 Portage Ave','46616','South Bend','IN','US'),PHONE_LIST_TYP
    ('+1 219 123 4136'),'us','AMERICA','100','Matthias.Hannah@GREBE.EXAMPLE.COM',
    149,MDSYS.SDO_GEOMETRY
    (2001, 8307, MDSYS.SDO_POINT_TYPE
    (-86.27021, 41.696023,NULL),NULL,NULL));
INSERT INTO customers VALUES
    (107,'Matthias','Cruise',cust_address_typ
    ('23943 Us Highway 33','46517','Elkhart','IN','US'),PHONE_LIST_TYP
    ('+1 219 123 4138'),'us','AMERICA','100','Matthias.Cruise@GROSBEAK.EXAMPLE.COM',
    NULL,MDSYS.SDO_GEOMETRY
    (2001, 8307, MDSYS.SDO_POINT_TYPE
    (-85.91393, 41.631143,NULL),NULL,NULL));
INSERT INTO customers VALUES
    (108,'Meenakshi','Mason',cust_address_typ
    ('136 E Market St # 800','46204','Indianapolis','IN','US'),PHONE_LIST_TYP
    ('+1 317 123 4141'),'us','AMERICA','100','Meenakshi.Mason@JACANA.EXAMPLE.COM',
    149,MDSYS.SDO_GEOMETRY
    (2001, 8307, MDSYS.SDO_POINT_TYPE
    (-86.155533, 39.768174,NULL),NULL,NULL));
INSERT INTO customers VALUES
    (109,'Christian','Cage',cust_address_typ
    ('1905 College St','46628','South Bend','IN','US'),PHONE_LIST_TYP
    ('+1 219 123 4142'),'us','AMERICA','100','Christian.Cage@KINGLET.EXAMPLE.COM',
    149,MDSYS.SDO_GEOMETRY
    (2001, 8307, MDSYS.SDO_POINT_TYPE
    (-86.27639, 41.701348,NULL),NULL,NULL));
INSERT INTO customers VALUES
    (110,'Charlie','Sutherland',cust_address_typ
    ('3512 Rockville Rd # 137C','46222','Indianapolis','IN','US'),PHONE_LIST_TYP
    ('+1 317 123 4146'),'us','AMERICA','200','Charlie.Sutherland@LIMPKIN.EXAMPLE.COM',
    149,MDSYS.SDO_GEOMETRY
    (2001, 8307, MDSYS.SDO_POINT_TYPE
    (-86.219783, 39.762173,NULL),NULL,NULL));
INSERT INTO customers VALUES
    (111,'Charlie','Pacino',cust_address_typ
    ('1303 E University St','47401','Bloomington','IN','US'),PHONE_LIST_TYP
    ('+1 812 123 4150'),'us','AMERICA','200','Charlie.Pacino@LONGSPUR.EXAMPLE.COM',
    149,MDSYS.SDO_GEOMETRY
    (2001, 8307, MDSYS.SDO_POINT_TYPE
    (-86.5175, 39.160261,NULL),NULL,NULL));
INSERT INTO customers VALUES
    (112,'Guillaume','Jackson',cust_address_typ
    ('115 N Weinbach Ave','47711','Evansville','IN','US'),PHONE_LIST_TYP
    ('+1 812 123 4151'),'us','AMERICA','200','Guillaume.Jackson@MOORHEN.EXAMPLE.COM',
    145,MDSYS.SDO_GEOMETRY
    (2001, 8307, MDSYS.SDO_POINT_TYPE
    (-87.52901, 37.978385,NULL),NULL,NULL));
INSERT INTO customers VALUES
    (113,'Daniel','Costner',cust_address_typ
    ('2067 Rollett Ln','47712','Evansville','IN','US'),PHONE_LIST_TYP
    ('+1 812 123 4153'),'us','AMERICA','200','Daniel.Costner@PARULA.EXAMPLE.COM',
    149,MDSYS.SDO_GEOMETRY
    (2001, 8307, MDSYS.SDO_POINT_TYPE
    (-87.6354, 37.955373,NULL),NULL,NULL));
INSERT INTO customers VALUES
    (114,'Dianne','Derek',cust_address_typ
    ('1105 E Allendale Dr','47401','Bloomington','IN','US'),PHONE_LIST_TYP
    ('+1 812 123 4157'),'us','AMERICA','200','Dianne.Derek@SAW-WHET.EXAMPLE.COM',
    149,MDSYS.SDO_GEOMETRY
    (2001, 8307, MDSYS.SDO_POINT_TYPE
    (-86.52167, 39.131013,NULL),NULL,NULL));
INSERT INTO customers VALUES
    (115,'Geraldine','Schneider',cust_address_typ
    ('18305 Van Dyke St','48234','Detroit','MI','US'),PHONE_LIST_TYP
    ('+1 313 123 4159'),'us','AMERICA','200','Geraldine.Schneider@SCAUP.EXAMPLE.COM',
    149,MDSYS.SDO_GEOMETRY
    (2001, 8307, MDSYS.SDO_POINT_TYPE
    (-83.024565, 42.438298,NULL),NULL,NULL));
INSERT INTO customers VALUES
    (116,'Geraldine','Martin',cust_address_typ
    ('Lucas Dr Bldg 348','48242','Detroit','MI','US'),PHONE_LIST_TYP
    ('+1 313 123 4160'),'us','AMERICA','200','Geraldine.Martin@SCOTER.EXAMPLE.COM',
    149,MDSYS.SDO_GEOMETRY
    (2001, 8307, MDSYS.SDO_POINT_TYPE
    (-83.366535, 42.206862,NULL),NULL,NULL));
INSERT INTO customers VALUES
    (117,'Guillaume','Edwards',cust_address_typ
    ('1801 Monroe Ave Nw','49505','Grand Rapids','MI','US'),PHONE_LIST_TYP
    ('+1 616 123 4162'),'us','AMERICA','200','Guillaume.Edwards@SHRIKE.EXAMPLE.COM',
    145,MDSYS.SDO_GEOMETRY
    (2001, 8307, MDSYS.SDO_POINT_TYPE
    (-85.67059, 42.995694,NULL),NULL,NULL));
INSERT INTO customers VALUES
    (118,'Maurice','Mahoney',cust_address_typ
    ('4925 Kendrick St Se','49512','Grand Rapids','MI','US'),PHONE_LIST_TYP
    ('+1 616 123 4181'),'us','AMERICA','200','Maurice.Mahoney@SNIPE.EXAMPLE.COM',
    149,MDSYS.SDO_GEOMETRY
    (2001, 8307, MDSYS.SDO_POINT_TYPE
    (-85.54467, 42.872615,NULL),NULL,NULL));
INSERT INTO customers VALUES
    (119,'Maurice','Hasan',cust_address_typ
    ('3310 Dixie Ct','48601','Saginaw','MI','US'),PHONE_LIST_TYP
    ('+1 517 123 4191'),'us','AMERICA','200','Maurice.Hasan@STILT.EXAMPLE.COM',
    149,MDSYS.SDO_GEOMETRY
    (2001, 8307, MDSYS.SDO_POINT_TYPE
    (-83.89048, 43.366886,NULL),NULL,NULL));
INSERT INTO customers VALUES
    (120,'Diane','Higgins',cust_address_typ
    ('113 Washington Sq N','48933','Lansing','MI','US'),PHONE_LIST_TYP
    ('+1 517 123 4199'),'us','AMERICA','200','Diane.Higgins@TANAGER.EXAMPLE.COM',
    149,MDSYS.SDO_GEOMETRY
    (2001, 8307, MDSYS.SDO_POINT_TYPE
    (-84.55249, 42.733738,NULL),NULL,NULL));
INSERT INTO customers VALUES
    (121,'Dianne','Sen',cust_address_typ
    ('2500 S Pennsylvania Ave','48910','Lansing','MI','US'),PHONE_LIST_TYP
    ('+1 517 123 4201'),'us','AMERICA','200','Dianne.Sen@TATTLER.EXAMPLE.COM',
    149,MDSYS.SDO_GEOMETRY
    (2001, 8307, MDSYS.SDO_POINT_TYPE
    (-84.53837, 42.706292,NULL),NULL,NULL));
INSERT INTO customers VALUES
    (122,'Maurice','Daltrey',cust_address_typ
    ('3213 S Cedar St','48910','Lansing','MI','US'),PHONE_LIST_TYP
    ('+1 517 123 4206'),'us','AMERICA','200','Maurice.Daltrey@TEAL.EXAMPLE.COM',
    NULL,MDSYS.SDO_GEOMETRY
    (2001, 8307, MDSYS.SDO_POINT_TYPE
    (-84.54811, 42.698823,NULL),NULL,NULL));
INSERT INTO customers VALUES
    (123,'Elizabeth','Brown',cust_address_typ
    ('8110 Jackson Rd','48103','Ann Arbor','MI','US'),PHONE_LIST_TYP
    ('+1 313 123 4219'),'us','AMERICA','200','Elizabeth.Brown@THRASHER.EXAMPLE.COM',
    149,MDSYS.SDO_GEOMETRY
    (2001, 8307, MDSYS.SDO_POINT_TYPE
    (-83.890694, 42.292947,NULL),NULL,NULL));
INSERT INTO customers VALUES
    (124,'Diane','Mason',cust_address_typ
    ('6654 W Lafayette St','48226','Detroit','MI','US'),PHONE_LIST_TYP
    ('+1 313 123 4222'),'us','AMERICA','200','Diane.Mason@TROGON.EXAMPLE.COM',
    149,MDSYS.SDO_GEOMETRY
    (2001, 8307, MDSYS.SDO_POINT_TYPE
    (-83.049285, 42.330868,NULL),NULL,NULL));

--Orders
INSERT INTO orders VALUES (2458
	,TO_TIMESTAMP('16-AUG-07 02.34.12.234359 PM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'direct'
	,101
	,0
	,78279.6
	,153
	,NULL);
INSERT INTO orders VALUES (2397
	,TO_TIMESTAMP('19-NOV-07 03.41.54.696211 PM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'direct'
	,102
	,1
	,42283.2
	,154
	,NULL);
INSERT INTO orders VALUES (2454
	,TO_TIMESTAMP('02-OCT-07 04.49.34.678340 PM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'direct'
	,103
	,1
	,6653.4
	,154
	,NULL);
INSERT INTO orders VALUES (2354
	,TO_TIMESTAMP('14-JUL-08 05.18.23.234567 PM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'direct'
	,104
	,0
	,46257
	,155
	,NULL);
INSERT INTO orders VALUES (2358
	,TO_TIMESTAMP('08-JAN-08 06.03.12.654278 PM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'direct'
	,105
	,2
	,7826
	,155
	,NULL);
INSERT INTO orders VALUES (2381
	,TO_TIMESTAMP('14-MAY-08 07.59.08.843679 PM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'direct'
	,106
	,3
	,23034.6
	,156
	,NULL);
INSERT INTO orders VALUES (2440
	,TO_TIMESTAMP('31-AUG-07 08.53.06.008765 PM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'direct'
	,107
	,3
	,70576.9
	,156
	,NULL);
INSERT INTO orders VALUES (2357
	,TO_TIMESTAMP('08-JAN-06 09.19.44.123456 PM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'direct'
	,108
	,5
	,59872.4
	,158
	,NULL);
INSERT INTO orders VALUES (2394
	,TO_TIMESTAMP('10-FEB-08 10.22.35.564789 PM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'direct'
	,109
	,5
	,21863
	,158
	,NULL);
INSERT INTO orders VALUES (2435
	,TO_TIMESTAMP('02-SEP-07 10.22.53.134567 PM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'direct'
	,144
	,6
	,62303
	,159
	,NULL);
INSERT INTO orders VALUES (2455
	,TO_TIMESTAMP('20-SEP-07 10.34.11.456789 AM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'direct'
	,145
	,7
	,14087.5
	,160
	,NULL);
INSERT INTO orders VALUES (2379
	,TO_TIMESTAMP('16-MAY-07 01.22.24.234567 AM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'direct'
	,146
	,8
	,17848.2
	,161
	,NULL);
INSERT INTO orders VALUES (2396
	,TO_TIMESTAMP('02-FEB-06 02.34.56.345678 AM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'direct'
	,147
	,8
	,34930
	,161
	,NULL);
INSERT INTO orders VALUES (2406
	,TO_TIMESTAMP('29-JUN-07 03.41.20.098765 AM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'direct'
	,148
	,8
	,2854.2
	,161
	,NULL);
INSERT INTO orders VALUES (2434
	,TO_TIMESTAMP('13-SEP-07 04.49.30.647893 AM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'direct'
	,149
	,8
	,268651.8
	,161
	,NULL);
INSERT INTO orders VALUES (2436
	,TO_TIMESTAMP('02-SEP-07 05.18.04.378034 AM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'direct'
	,116
	,8
	,6394.8
	,161
	,NULL);
INSERT INTO orders VALUES (2446
	,TO_TIMESTAMP('27-JUL-07 06.03.08.302945 AM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'direct'
	,117
	,8
	,103679.3
	,161
	,NULL);
INSERT INTO orders VALUES (2447
	,TO_TIMESTAMP('27-JUL-08 07.59.10.223344 AM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'direct'
	,101
	,8
	,33893.6
	,161
	,NULL);
INSERT INTO orders VALUES (2432
	,TO_TIMESTAMP('14-SEP-07 08.53.40.223345 AM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'direct'
	,102
	,10
	,10523
	,163
	,NULL);
INSERT INTO orders VALUES (2433
	,TO_TIMESTAMP('13-SEP-07 09.19.00.654279 AM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'direct'
	,103
	,10
	,78
	,163
	,NULL);
INSERT INTO orders VALUES (2355
	,TO_TIMESTAMP('26-JAN-06 10.22.51.962632 AM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'online'
	,104
	,8
	,94513.5
	,NULL
	,NULL);
INSERT INTO orders VALUES (2356
	,TO_TIMESTAMP('26-JAN-08 10.22.41.934562 AM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'online'
	,105
	,5
	,29473.8
	,NULL
	,NULL);
INSERT INTO orders VALUES (2359
	,TO_TIMESTAMP('08-JAN-06 10.34.13.112233 PM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'online'
	,106
	,9
	,5543.1
	,NULL
	,NULL);
INSERT INTO orders VALUES (2360
	,TO_TIMESTAMP('14-NOV-07 01.22.31.223344 PM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'online'
	,107
	,4
	,990.4
	,NULL
	,NULL);
INSERT INTO orders VALUES (2361
	,TO_TIMESTAMP('13-NOV-07 02.34.21.986210 PM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'online'
	,108
	,8
	,120131.3
	,NULL
	,NULL);
INSERT INTO orders VALUES (2362
	,TO_TIMESTAMP('13-NOV-07 03.41.10.619477 PM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'online'
	,109
	,4
	,92829.4
	,NULL
	,NULL);
INSERT INTO orders VALUES (2363
	,TO_TIMESTAMP('23-OCT-07 04.49.56.346122 PM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'online'
	,144
	,0
	,10082.3
	,NULL
	,NULL);
INSERT INTO orders VALUES (2364
	,TO_TIMESTAMP('28-AUG-07 05.18.45.942399 PM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'online'
	,145
	,4
	,9500
	,NULL
	,NULL);
INSERT INTO orders VALUES (2365
	,TO_TIMESTAMP('28-AUG-07 06.03.34.003399 PM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'online'
	,146
	,9
	,27455.3
	,NULL
	,NULL);
INSERT INTO orders VALUES (2366
	,TO_TIMESTAMP('28-AUG-07 07.59.23.144778 PM'
	,'DD-MON-RR HH.MI.SS.FF AM'
	,'NLS_DATE_LANGUAGE=American')
	,'online'
	,147
	,5
	,37319.4
	,NULL
	,NULL);

--OrderItems
INSERT INTO order_items VALUES (2355, 1,2289,    46,200);
INSERT INTO order_items VALUES (2356, 1,2264, 199.1, 38);
INSERT INTO order_items VALUES (2357, 1,2211,   3.3,140);
INSERT INTO order_items VALUES (2358, 1,1781, 226.6,  9);
INSERT INTO order_items VALUES (2359, 1,2337, 270.6,  1);
INSERT INTO order_items VALUES (2360, 1,2058,    23, 29);
INSERT INTO order_items VALUES (2361, 1,2289,    46,180);
INSERT INTO order_items VALUES (2362, 1,2289,    48,200);
INSERT INTO order_items VALUES (2363, 1,2264, 199.1,  9);
INSERT INTO order_items VALUES (2364, 1,1910,    14,  6);
INSERT INTO order_items VALUES (2365, 1,2289,    48, 92);
INSERT INTO order_items VALUES (2366, 1,2359, 226.6,  8);
INSERT INTO order_items VALUES (2367, 1,2289,    48, 99);
INSERT INTO order_items VALUES (2354, 1,3106,    48, 61);
INSERT INTO order_items VALUES (2368, 1,3106,    48,150);
INSERT INTO order_items VALUES (2369, 1,3150,    18,  3);
INSERT INTO order_items VALUES (2370, 1,1910,    14,  9);
INSERT INTO order_items VALUES (2371, 1,2274,   157,  6);
INSERT INTO order_items VALUES (2372, 1,3106,    48,  6);
INSERT INTO order_items VALUES (2373, 1,1820,    49,  8);
INSERT INTO order_items VALUES (2374, 1,2422,   150, 10);
INSERT INTO order_items VALUES (2375, 1,3106,    42,140);
INSERT INTO order_items VALUES (2376, 1,2270,    60, 14);
INSERT INTO order_items VALUES (2377, 1,2289,    42,130);
INSERT INTO order_items VALUES (2378, 1,2403, 113.3, 20);
INSERT INTO order_items VALUES (2379, 1,3106,    42, 92);
INSERT INTO order_items VALUES (2380, 1,3106,    42, 26);
INSERT INTO order_items VALUES (2381, 1,3117,    38,110);
INSERT INTO order_items VALUES (2382, 1,3106,    42,160);
INSERT INTO order_items VALUES (2383, 1,2409, 194.7, 37);
INSERT INTO order_items VALUES (2384, 1,2289,    43, 95);
INSERT INTO order_items VALUES (2385, 1,2289,    43,200);
INSERT INTO order_items VALUES (2386, 1,2330,   1.1,  7);
INSERT INTO order_items VALUES (2387, 1,2211,   3.3, 52);
INSERT INTO order_items VALUES (2388, 1,2289,    43,150);
INSERT INTO order_items VALUES (2389, 1,3106,    43,180);
INSERT INTO order_items VALUES (2390, 1,1910,    14,  4);
INSERT INTO order_items VALUES (2391, 1,1787,   101,  5);
INSERT INTO order_items VALUES (2392, 1,3106,    43, 63);
INSERT INTO order_items VALUES (2393, 1,3051,    12, 10);
INSERT INTO order_items VALUES (2394, 1,3117,    41, 90);
INSERT INTO order_items VALUES (2395, 1,2211,   3.3,110);
INSERT INTO order_items VALUES (2396, 1,3106,    44,150);
INSERT INTO order_items VALUES (2397, 1,2976,    52,  2);
INSERT INTO order_items VALUES (2398, 1,2471, 482.9,  5);
INSERT INTO order_items VALUES (2399, 1,2289,    44,120);
INSERT INTO order_items VALUES (2400, 1,2976,    52,  4);
INSERT INTO order_items VALUES (2401, 1,2492,    41,  4);
INSERT INTO order_items VALUES (2402, 1,2536,    75,  8);
INSERT INTO order_items VALUES (2403, 1,2522,    44,  5);
INSERT INTO order_items VALUES (2404, 1,2721,    85,  6);
INSERT INTO order_items VALUES (2405, 1,2638,   137,  9);
INSERT INTO order_items VALUES (2406, 1,2721,    85,  5);
INSERT INTO order_items VALUES (2407, 1,2721,    85,  5);
INSERT INTO order_items VALUES (2408, 1,2751,    61,  3);
INSERT INTO order_items VALUES (2409, 1,2810,     6,  8);
INSERT INTO order_items VALUES (2410, 1,2976,    46, 10);
INSERT INTO order_items VALUES (2411, 1,3082,    81,  2);
INSERT INTO order_items VALUES (2412, 1,3106,    46,170);
INSERT INTO order_items VALUES (2413, 1,3108,    77,200);
INSERT INTO order_items VALUES (2414, 1,3208,   1.1,  8);
INSERT INTO order_items VALUES (2415, 1,2751,    62,  5);
INSERT INTO order_items VALUES (2416, 1,2870,   4.4, 10);
INSERT INTO order_items VALUES (2417, 1,2870,   4.4,  9);

--ProductDescription //TODO
INSERT INTO product_descriptions VALUES (1726-
, 'US'-
, UNISTR(-
'LCD Monitor 11/PM'-
), UNISTR(-
'Liquid Cristal Display 11 inch passive monitor. The virtually-flat,-
high-resolution screen delivers outstanding image quality with reduced glare.'-
));
INSERT INTO product_descriptions VALUES (2359-
, 'US'-
, UNISTR(-
'LCD Monitor 9/PM'-
), UNISTR(-
'Liquid Cristal Display 9 inch passive monitor. Enjoy the productivity that-
a small monitor can bring via more workspace on your desk. Easy setup with-
plug-and-play compatibility.'-
));

--ProductInformation
INSERT INTO product_information VALUES (1726-
, 'LCD Monitor 11/PM'-
, 'Liquid Cristal Display 11 inch passive monitor. The virtually-flat,-
high-resolution screen delivers outstanding image quality with reduced glare.'
, 11,3
, to_yminterval('+00-03')
, 102067
, 'under development'
, 259
, 208
, 'http://www.www.supp-102067.com/cat/hw/p1726.html');
INSERT INTO product_information VALUES (2359-
, 'LCD Monitor 9/PM'-
, 'Liquid Cristal Display 9 inch passive monitor. Enjoy the productivity that-
a small monitor can bring via more workspace on your desk. Easy setup with-
plug-and-play compatibility.'
, 11,3
, to_yminterval('+00-03')
, 102061
, 'orderable'
, 249
, 206
, 'http://www.www.supp-102061.com/cat/hw/p2359.html');

--Warehouse
INSERT INTO warehouses VALUES (1,NULL,'Southlake, Texas',1400,
	MDSYS.SDO_GEOMETRY(2001, 8307,
	MDSYS.SDO_POINT_TYPE(-103.00195, 36.500374, NULL), NULL, NULL));
INSERT INTO warehouses VALUES (2,NULL,'San Francisco',1500,
	MDSYS.SDO_GEOMETRY(2001, 8307,
	MDSYS.SDO_POINT_TYPE(-124.21014, 41.998016, NULL), NULL, NULL));
INSERT INTO warehouses VALUES (3,NULL,'New Jersey',1600,
	MDSYS.SDO_GEOMETRY(2001, 8307,
	MDSYS.SDO_POINT_TYPE(-74.695305, 41.35733, NULL), NULL, NULL));
INSERT INTO warehouses VALUES (4,NULL,'Seattle, Washington',1700,
	MDSYS.SDO_GEOMETRY(2001, 8307,
	MDSYS.SDO_POINT_TYPE(-123.61526, 46.257458, NULL), NULL, NULL));
INSERT INTO warehouses VALUES (5,NULL,'Toronto',1800,NULL);
INSERT INTO warehouses VALUES (6,NULL,'Sydney',2200,NULL);
INSERT INTO warehouses VALUES (7,NULL,'Mexico City',3200,NULL);
INSERT INTO warehouses VALUES (8,NULL,'Beijing',2000,NULL);
INSERT INTO warehouses VALUES (9,NULL,'Bombay',2100,NULL);

--Inventories
INSERT INTO inventories VALUES(1733,1,106);
INSERT INTO inventories VALUES(1734,1,106);
INSERT INTO inventories VALUES(1737,1,106);
INSERT INTO inventories VALUES(1738,1,107);
INSERT INTO inventories VALUES(1745,1,108);
INSERT INTO inventories VALUES(1748,1,108);
INSERT INTO inventories VALUES(2278,1,125);
INSERT INTO inventories VALUES(2316,1,131);
INSERT INTO inventories VALUES(2319,1,117);
INSERT INTO inventories VALUES(2322,1,118);
INSERT INTO inventories VALUES(2323,1,118);
INSERT INTO inventories VALUES(2370,1,125);
INSERT INTO inventories VALUES(2373,1,126);
INSERT INTO inventories VALUES(2377,1,126);
INSERT INTO inventories VALUES(2380,1,127);
INSERT INTO inventories VALUES(2387,1,128);
INSERT INTO inventories VALUES(2408,1,131);
INSERT INTO inventories VALUES(2418,1,133);
INSERT INTO inventories VALUES(2419,1,133);
INSERT INTO inventories VALUES(2457,1,89);
INSERT INTO inventories VALUES(2638,1,132);
INSERT INTO inventories VALUES(2878,1,170);
INSERT INTO inventories VALUES(2879,1,170);
INSERT INTO inventories VALUES(3000,1,175);
INSERT INTO inventories VALUES(3003,1,175);
INSERT INTO inventories VALUES(3004,1,176);
INSERT INTO inventories VALUES(3099,1,205);
INSERT INTO inventories VALUES(3124,1,209);
INSERT INTO inventories VALUES(3134,1,196);
INSERT INTO inventories VALUES(3139,1,197);
INSERT INTO inventories VALUES(3140,1,197);
INSERT INTO inventories VALUES(3143,1,197);
INSERT INTO inventories VALUES(3204,1,221);
INSERT INTO inventories VALUES(3300,1,222);
INSERT INTO inventories VALUES(3301,1,222);
INSERT INTO inventories VALUES(3391,1,251);
INSERT INTO inventories VALUES(1733,2,96);
INSERT INTO inventories VALUES(1734,2,96);
INSERT INTO inventories VALUES(1737,2,96);
INSERT INTO inventories VALUES(1738,2,96);
INSERT INTO inventories VALUES(1739,2,97);
INSERT INTO inventories VALUES(1740,2,97);
INSERT INTO inventories VALUES(1742,2,97);
INSERT INTO inventories VALUES(1745,2,98);
INSERT INTO inventories VALUES(1748,2,98);
INSERT INTO inventories VALUES(1749,2,98);
INSERT INTO inventories VALUES(1750,2,98);
INSERT INTO inventories VALUES(1755,2,99);
INSERT INTO inventories VALUES(1763,2,100);
INSERT INTO inventories VALUES(1768,2,101);
INSERT INTO inventories VALUES(1769,2,101);
INSERT INTO inventories VALUES(1770,2,104);
INSERT INTO inventories VALUES(1772,2,105);
INSERT INTO inventories VALUES(1774,2,114);
INSERT INTO inventories VALUES(1775,2,114);
INSERT INTO inventories VALUES(1778,2,115);
INSERT INTO inventories VALUES(1779,2,115);
INSERT INTO inventories VALUES(1780,2,115);
INSERT INTO inventories VALUES(1781,2,106);
INSERT INTO inventories VALUES(1787,2,107);
INSERT INTO inventories VALUES(1788,2,107);
INSERT INTO inventories VALUES(1794,2,117);
INSERT INTO inventories VALUES(1799,2,118);
INSERT INTO inventories VALUES(1801,2,118);