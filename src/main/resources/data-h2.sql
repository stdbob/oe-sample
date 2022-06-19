--Categories
INSERT INTO categories_tab  VALUES ('hardware1', 'monitors', 11, 11);
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
  VALUES ('hardware', 'computer hardware and peripherals', 10,10);

INSERT INTO categories_tab
  VALUES ('software', 'computer software', 20,20);

INSERT INTO categories_tab
  VALUES ('office equipment', 'office furniture and supplies', 30,30);

INSERT INTO categories_tab
  VALUES ('online catalog'
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
--Promotions
INSERT INTO promotions (promo_id, promo_name)
  VALUES (1, 'everyday low price');

INSERT INTO promotions (promo_id, promo_name)
  VALUES (2, 'blowout sale');


--Customers
INSERT INTO customers VALUES
    (101,'Constantin','Welles','514 W Superior St','46901','Kokomo','IN','US',
    ('+1 317 123 4104'),'us','AMERICA','100','Constantin.Welles@ANHINGA.EXAMPLE.COM',
    149,-86.13631, 40.485424,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (102,'Harrison','Pacino','2515 Bloyd Ave','46218','Indianapolis','IN','US',
    ('+1 317 123 4111'),'us','AMERICA','100','Harrison.Pacino@ANI.EXAMPLE.COM',
    149,-86.120133, 39.795766,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (103,'Manisha','Taylor','8768 N State Rd 37','47404','Bloomington','IN','US',
    ('+1 812 123 4115'),'us','AMERICA','100','Manisha.Taylor@AUKLET.EXAMPLE.COM',
    149,-86.5173, 39.302695,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (104,'Harrison','Sutherland','6445 Bay Harbor Ln','46254','Indianapolis','IN','US',
    ('+1 317 123 4126'),'us','AMERICA','100','Harrison.Sutherland@GODWIT.EXAMPLE.COM',
    149,-86.272743, 39.849678,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (105,'Matthias','MacGraw','4019 W 3Rd St','47404','Bloomington','IN','US',
    ('+1 812 123 4129'),'us','AMERICA','100','Matthias.MacGraw@GOLDENEYE.EXAMPLE.COM',
    NULL,-86.58332, 39.164783,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (106,'Matthias','Hannah','1608 Portage Ave','46616','South Bend','IN','US',
    ('+1 219 123 4136'),'us','AMERICA','100','Matthias.Hannah@GREBE.EXAMPLE.COM',
    149,-86.27021, 41.696023,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (107,'Matthias','Cruise','23943 Us Highway 33','46517','Elkhart','IN','US',
    ('+1 219 123 4138'),'us','AMERICA','100','Matthias.Cruise@GROSBEAK.EXAMPLE.COM',
    NULL,-85.91393, 41.631143,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (108,'Meenakshi','Mason','136 E Market St # 800','46204','Indianapolis','IN','US',
    ('+1 317 123 4141'),'us','AMERICA','100','Meenakshi.Mason@JACANA.EXAMPLE.COM',
    149,-86.155533, 39.768174,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (109,'Christian','Cage','1905 College St','46628','South Bend','IN','US',
    ('+1 219 123 4142'),'us','AMERICA','100','Christian.Cage@KINGLET.EXAMPLE.COM',
    149,-86.27639, 41.701348,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (110,'Charlie','Sutherland','3512 Rockville Rd # 137C','46222','Indianapolis','IN','US',
    ('+1 317 123 4146'),'us','AMERICA','200','Charlie.Sutherland@LIMPKIN.EXAMPLE.COM',
    149,-86.219783, 39.762173,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (111,'Charlie','Pacino','1303 E University St','47401','Bloomington','IN','US',
    ('+1 812 123 4150'),'us','AMERICA','200','Charlie.Pacino@LONGSPUR.EXAMPLE.COM',
    149,-86.5175, 39.160261,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (112,'Guillaume','Jackson','115 N Weinbach Ave','47711','Evansville','IN','US',
    ('+1 812 123 4151'),'us','AMERICA','200','Guillaume.Jackson@MOORHEN.EXAMPLE.COM',
    145,-87.52901, 37.978385,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (113,'Daniel','Costner','2067 Rollett Ln','47712','Evansville','IN','US',
    ('+1 812 123 4153'),'us','AMERICA','200','Daniel.Costner@PARULA.EXAMPLE.COM',
    149,-87.6354, 37.955373,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (114,'Dianne','Derek','1105 E Allendale Dr','47401','Bloomington','IN','US',
    ('+1 812 123 4157'),'us','AMERICA','200','Dianne.Derek@SAW-WHET.EXAMPLE.COM',
    149,-86.52167, 39.131013,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (115,'Geraldine','Schneider','18305 Van Dyke St','48234','Detroit','MI','US',
    ('+1 313 123 4159'),'us','AMERICA','200','Geraldine.Schneider@SCAUP.EXAMPLE.COM',
    149,-83.024565, 42.438298,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (116,'Geraldine','Martin','Lucas Dr Bldg 348','48242','Detroit','MI','US',
    ('+1 313 123 4160'),'us','AMERICA','200','Geraldine.Martin@SCOTER.EXAMPLE.COM',
    149,-83.366535, 42.206862,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (117,'Guillaume','Edwards','1801 Monroe Ave Nw','49505','Grand Rapids','MI','US',
    ('+1 616 123 4162'),'us','AMERICA','200','Guillaume.Edwards@SHRIKE.EXAMPLE.COM',
    145,-85.67059, 42.995694,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (118,'Maurice','Mahoney','4925 Kendrick St Se','49512','Grand Rapids','MI','US',
    ('+1 616 123 4181'),'us','AMERICA','200','Maurice.Mahoney@SNIPE.EXAMPLE.COM',
    149,-85.54467, 42.872615,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (119,'Maurice','Hasan','3310 Dixie Ct','48601','Saginaw','MI','US',
    ('+1 517 123 4191'),'us','AMERICA','200','Maurice.Hasan@STILT.EXAMPLE.COM',
    149,-83.89048, 43.366886,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (120,'Diane','Higgins','113 Washington Sq N','48933','Lansing','MI','US',
    ('+1 517 123 4199'),'us','AMERICA','200','Diane.Higgins@TANAGER.EXAMPLE.COM',
    149,-84.55249, 42.733738,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (121,'Dianne','Sen','2500 S Pennsylvania Ave','48910','Lansing','MI','US',
    ('+1 517 123 4201'),'us','AMERICA','200','Dianne.Sen@TATTLER.EXAMPLE.COM',
    149,-84.53837, 42.706292,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (122,'Maurice','Daltrey','3213 S Cedar St','48910','Lansing','MI','US',
    ('+1 517 123 4206'),'us','AMERICA','200','Maurice.Daltrey@TEAL.EXAMPLE.COM',
    NULL,-84.54811, 42.698823,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (123,'Elizabeth','Brown','8110 Jackson Rd','48103','Ann Arbor','MI','US',
    ('+1 313 123 4219'),'us','AMERICA','200','Elizabeth.Brown@THRASHER.EXAMPLE.COM',
    149,-83.890694, 42.292947,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (124,'Diane','Mason','6654 W Lafayette St','48226','Detroit','MI','US',
    ('+1 313 123 4222'),'us','AMERICA','200','Diane.Mason@TROGON.EXAMPLE.COM',
    149,-83.049285, 42.330868,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (144,'Sivaji','Landis','221 3Rd Ave Se # 300','52401','Cedar Rapids','IA','US',
    ('+1 319 123 4301'),'us','AMERICA','500','Sivaji.Landis@GOLDENEYE.COM',
    149,-91.66643, 41.977151,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (145,'Mammutti','Pacino',
    '2120 Heights Dr','54701','Eau Claire','WI','US',
    ('+1 745 123 4306'),'us','AMERICA','500','Mammutti.Pacino@GREBE.COM',
    145,-91.51556, 44.795509,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (146,'Elia','Fawcett',
    '8989 N Port Washington Rd','53217','Milwaukee','WI','US',
    ('+1 414 123 4307'),'us','AMERICA','500','Elia.Fawcett@JACANA.COM',
    NULL,-87.91422, 43.180714,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (147,'Ishwarya','Roberts',
    '6555 W Good Hope Rd','53223','Milwaukee','WI','US',
    ('+1 414 123 4308'),'us','AMERICA','600','Ishwarya.Roberts@LAPWING.COM',
    NULL,-87.99294, 43.148558,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (148,'Gustav','Steenburgen',
    '1314 N Stoughton Rd','53714','Madison','WI','US',
    ('+1 608 123 4309'),'us','AMERICA','600','Gustav.Steenburgen@PINTAIL.COM',
    149,-89.32103, 43.11362,NULL,NULL,NULL,NULL);
INSERT INTO customers VALUES
    (149,'Markus','Rampling',
    '4715 Sprecher Rd','53704','Madison','WI','US',
    ('+1 608 123 4318'),'us','AMERICA','600','Markus.Rampling@PUFFIN.COM',
    145,-89.31665, 43.130717,NULL,NULL,NULL,NULL);
--Orders
--Orders
INSERT INTO orders VALUES (2458
	,'2007-08-16 14:34:12.234359-08:00'

	,'direct'
	,101
	,0
	,78279.6
	,153
	,NULL);
INSERT INTO orders VALUES (2397
	,'2007-11-19 15:41:54.696211-08:00'

	,'direct'
	,102
	,1
	,42283.2
	,154
	,NULL);
INSERT INTO orders VALUES (2454
	,'2007-10-02 16:49:34.678340-08:00'

	,'direct'
	,103
	,1
	,6653.4
	,154
	,NULL);
INSERT INTO orders VALUES (2354
	,'2008-07-14 17:18:23.234567-08:00'

	,'direct'
	,104
	,0
	,46257
	,155
	,NULL);
INSERT INTO orders VALUES (2358
	,'2008-01-08 18:03:12.654278-08:00'

	,'direct'
	,105
	,2
	,7826
	,155
	,NULL);
INSERT INTO orders VALUES (2381
	,'2008-05-14 19:59:08.843679-08:00'

	,'direct'
	,106
	,3
	,23034.6
	,156
	,NULL);
INSERT INTO orders VALUES (2440
	,'2007-08-31 20:53:06.008765-08:00'

	,'direct'
	,107
	,3
	,70576.9
	,156
	,NULL);
INSERT INTO orders VALUES (2357
	,'2006-01-08 21:19:44.123456-08:00'

	,'direct'
	,108
	,5
	,59872.4
	,158
	,NULL);
INSERT INTO orders VALUES (2394
	,'2008-02-10 22:22:35.564789-08:00'

	,'direct'
	,109
	,5
	,21863
	,158
	,NULL);
INSERT INTO orders VALUES (2435
	,'2007-09-02 22:22:53.134567-08:00'

	,'direct'
	,144
	,6
	,62303
	,159
	,NULL);
INSERT INTO orders VALUES (2455
	,'2007-09-20 10:34:11.456789-08:00'

	,'direct'
	,145
	,7
	,14087.5
	,160
	,NULL);
INSERT INTO orders VALUES (2379
	,'2007-05-16 01:22:24.234567-08:00'

	,'direct'
	,146
	,8
	,17848.2
	,161
	,NULL);
INSERT INTO orders VALUES (2396
	,'2006-02-02 02:34:56.345678-08:00'

	,'direct'
	,147
	,8
	,34930
	,161
	,NULL);
INSERT INTO orders VALUES (2406
	,'2007-06-29 03:41:20.098765-08:00'

	,'direct'
	,148
	,8
	,2854.2
	,161
	,NULL);
INSERT INTO orders VALUES (2434
	,'2007-09-13 04:49:30.647893-08:00'

	,'direct'
	,149
	,8
	,268651.8
	,161
	,NULL);
INSERT INTO orders VALUES (2436
	,'2007-09-02 05:18:04.378034-08:00'

	,'direct'
	,116
	,8
	,6394.8
	,161
	,NULL);
INSERT INTO orders VALUES (2446
	,'2007-07-27 06:03:08.302945-08:00'

	,'direct'
	,117
	,8
	,103679.3
	,161
	,NULL);
INSERT INTO orders VALUES (2447
	,'2008-07-27 07:59:10.223344-08:00'

	,'direct'
	,101
	,8
	,33893.6
	,161
	,NULL);
INSERT INTO orders VALUES (2432
	,'2007-09-14 08:53:40.223345-08:00'

	,'direct'
	,102
	,10
	,10523
	,163
	,NULL);
INSERT INTO orders VALUES (2433
	,'2007-09-13 09:19:00.654279-08:00'

	,'direct'
	,103
	,10
	,78
	,163
	,NULL);
INSERT INTO orders VALUES (2355
	,'2006-01-26 10:22:51.962632-08:00'

	,'online'
	,104
	,8
	,94513.5
	,NULL
	,NULL);
INSERT INTO orders VALUES (2356
	,'2008-01-26 10:22:41.934562-08:00'

	,'online'
	,105
	,5
	,29473.8
	,NULL
	,NULL);
INSERT INTO orders VALUES (2359
	,'2006-01-08 22:34:13.112233-08:00'

	,'online'
	,106
	,9
	,5543.1
	,NULL
	,NULL);
INSERT INTO orders VALUES (2360
	,'2007-11-14 13:22:31.223344-08:00'

	,'online'
	,107
	,4
	,990.4
	,NULL
	,NULL);
INSERT INTO orders VALUES (2361
	,'2007-11-13 14:34:21.986210-08:00'

	,'online'
	,108
	,8
	,120131.3
	,NULL
	,NULL);
INSERT INTO orders VALUES (2362
	,'2007-11-13 15:41:10.619477-08:00'

	,'online'
	,109
	,4
	,92829.4
	,NULL
	,NULL);
INSERT INTO orders VALUES (2363
	,'2007-10-23 16:49:56.346122-08:00'

	,'online'
	,144
	,0
	,10082.3
	,NULL
	,NULL);
INSERT INTO orders VALUES (2364
	,'2007-08-28 17:18:45.942399-08:00'

	,'online'
	,145
	,4
	,9500
	,NULL
	,NULL);
INSERT INTO orders VALUES (2365
	,'2007-08-28 18:03:34.003399-08:00'

	,'online'
	,146
	,9
	,27455.3
	,NULL
	,NULL);
INSERT INTO orders VALUES (2366
	,'2007-08-28 19:59:23.144778-08:00'
	,'online'
	,147
	,5
	,37319.4
	,NULL
	,NULL);

--ProductInformation
INSERT INTO product_information VALUES (1797, 'Inkjet C/8/HQ', 'Inkjet printer, color, 8 pages per minute, high resolution (photo quality). Memory: 16MB. Dimensions (HxWxD): 7.3 x 17.5 x 14 inch. Paper size: A4, US Letter, envelopes. Interface: Centronics parallel, IEEE 1284 compliant.'
, 12,3
, INTERVAL '+02-00' YEAR TO MONTH
, 102094
, 'orderable'
, 349
, 288
, 'http://www.supp-102094.com/cat/hw/p1797.html');
INSERT INTO product_information VALUES (2459, 'LaserPro 1200/8/BW', 'Professional black and white laserprinter, resolution 1200 dpi, 8 pages per second. Dimensions (HxWxD): 22.37 x 19.86 x 21.92 inch. Software: Enhanced driver support for SPNIX v4.0; MS-DOS Built-in printer drivers: ZoomSmart scaling technology, billboard, handout, mirror, watermark, print preview, quick sets, emulate laserprinter margins.'
, 12,5
, INTERVAL '+03-00' YEAR TO MONTH
, 102099
, 'under development'
, 699
, 568
, 'http://www.supp-102099.com/cat/hw/p2459.html');
INSERT INTO product_information VALUES (3127, 'LaserPro 600/6/BW', 'Standard black and white laserprinter, resolution 600 dpi, 6 pages per second. Interface: Centronics parallel, IEEE 1284 compliant. Memory: 8MB 96KB receiver buffer. MS-DOS ToolBox utilities for SPNIX AutoCAM v.17 compatible driver.'
, 12,4
, INTERVAL '+03-00' YEAR TO MONTH
, 102087
, 'orderable'
, 498
, 444
, 'http://www.supp-102087.com/cat/hw/p3127.html');
INSERT INTO product_information VALUES (2264, 'CDW 20/48/I', 'CD-ROM drive: read 20x, write 48x (internal)'
, 17,2
, INTERVAL '+00-09' YEAR TO MONTH
, 102060
, 'orderable'
, 223
, 181
, 'http://www.supp-102060.com/cat/hw/p2264.html');
INSERT INTO product_information VALUES (2211, 'Wrist Pad', 'A foam strip to support your wrists when using a keyboard'
, 16,1
, INTERVAL '+01-00' YEAR TO MONTH
, 102072
, 'orderable'
, 4
, 3
, 'http://www.supp-102072.com/cat/hw/p2211.html');
INSERT INTO product_information VALUES (1781, 'CDW 20/48/E', 'CD Writer, read 48x, write 20x'
, 17,2
, INTERVAL '+00-09' YEAR TO MONTH
, 102060
, 'orderable'
, 233
, 206
, 'http://www.supp-102060.com/cat/hw/p1781.html');
INSERT INTO product_information VALUES (2337, 'Business Cards - 1000/2L', 'Business cards box, capacity 1000, 2-sided with different language on each side. Use form BC111-2, Rev. 12/1999 (hardcopy or online) when ordering - complete all fields marked with an asterisk and check box for second language (English is always on side 1).'
, 32,1
, INTERVAL '+00-00' YEAR TO MONTH
, 103091
, 'orderable'
, 300
, 246
, 'http://www.supp-103091.com/cat/off/p2337.html');
INSERT INTO product_information VALUES (2058, 'Mouse +WP', 'Combination of a mouse and a wrist pad for more comfortable typing and mouse operation.'
, 16,1
, INTERVAL '+01-00' YEAR TO MONTH
, 102055
, 'orderable'
, 23
, 19
, 'http://www.supp-102055.com/cat/hw/p2058.html');
INSERT INTO product_information VALUES (2289, 'KB 101/ES', 'Standard PC/AT Enhanced Keyboard (101/102-Key). Input locale: Spanish.'
, 16,1
, INTERVAL '+01-00' YEAR TO MONTH
, 102055
, 'orderable'
, 48
, 38
, 'http://www.supp-102055.com/cat/hw/p2289.html');
INSERT INTO product_information VALUES (1910, 'FG Stock - H', 'Fiberglass Stock - heavy duty, 1 thick'
, 39,3
, INTERVAL '+00-00' YEAR TO MONTH
, 103083
, 'orderable'
, 14
, 11
, 'http://www.supp-103083.com/cat/off/p1910.html');
INSERT INTO product_information VALUES (2359, 'LCD Monitor 9/PM', 'Liquid Cristal Display 9 inch passive monitor. Enjoy the productivity that a small monitor can bring via more workspace on your desk. Easy setup with plug-and-play compatibility.'
, 11,3
, INTERVAL '+00-03' YEAR TO MONTH
, 102061
, 'orderable'
, 249
, 206
, 'http://www.www.supp-102061.com/cat/hw/p2359.html');
INSERT INTO product_information VALUES (3106, 'KB 101/EN', 'Standard PC/AT Enhanced Keyboard (101/102-Key). Input locale: English (US).'
, 16,1
, INTERVAL '+01-00' YEAR TO MONTH
, 102066
, 'orderable'
, 48
, 41
, 'http://www.supp-102066.com/cat/hw/p3106.html');
INSERT INTO product_information VALUES (3117, 'Mouse C/E', 'Ergonomic, cordless mouse. With track-ball for maximum comfort and ease of use.'
, 16,1
, INTERVAL '+01-00' YEAR TO MONTH
, 102099
, 'orderable'
, 41
, 35
, 'http://www.supp-102099.com/cat/hw/p3117.html');
INSERT INTO product_information VALUES (2976, 'Drive Mount - D', 'Drive Mount for desktop PC'
, 19,2
, INTERVAL '+01-00' YEAR TO MONTH
, 102057
, 'orderable'
, 52
, 44
, 'http://www.supp-102057.com/cat/hw/p2976.html');
INSERT INTO product_information VALUES (2721, 'PC Bag - L/S', 'Black Leather Computer Case - single laptop capacity with pockets for manuals, additional hardware, and work papers. Adjustable protective straps and removable pocket for power supply and cables.'
, 39,2
, INTERVAL '+01-00' YEAR TO MONTH
, 103095
, 'orderable'
, 87
, 70
, 'http://www.supp-103095.com/cat/off/p2721.html');
INSERT INTO product_information VALUES (2471, 'SPNIX3.3 SU', 'Operating System Software: SPNIX V3.3 - Base Server License Upgrade to V4.0.'
, 24,1
, INTERVAL '+01-00' YEAR TO MONTH
, 103092
, 'orderable'
, 500
, 439
, 'http://www.supp-103092.com/cat/sw/p2471.html');
INSERT INTO product_information VALUES (3208, 'Pencils - Wood', 'Box of 2 dozen wooden pencils. Specify lead type when ordering: 2H (double hard), H (hard), HB (hard black), B (soft black).'
, 32,1
, INTERVAL '+00-00' YEAR TO MONTH
, 103097
, 'orderable'
, 2
, 1
, 'http://www.supp-103097.com/cat/off/p3208.html');
--
----OrderItems
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
INSERT INTO order_items VALUES (2379, 1,3106,    42, 92);
INSERT INTO order_items VALUES (2381, 1,3117,    38,110);
INSERT INTO order_items VALUES (2394, 1,3117,    41, 90);
INSERT INTO order_items VALUES (2396, 1,3106,    44,150);
INSERT INTO order_items VALUES (2397, 1,2976,    52,  2);
INSERT INTO order_items VALUES (2406, 1,2721,    85,  5);
INSERT INTO order_items VALUES (2432, 1,2976,    49,  3);
INSERT INTO order_items VALUES (2433, 1,1910,    13,  6);
INSERT INTO order_items VALUES (2434, 1,2211,   3.3, 81);
INSERT INTO order_items VALUES (2435, 1,2289,    48, 35);
INSERT INTO order_items VALUES (2436, 1,3208,   1.1,  8);
INSERT INTO order_items VALUES (2440, 1,2289,    48, 19);
INSERT INTO order_items VALUES (2446, 1,2289,    48, 47);
INSERT INTO order_items VALUES (2447, 1,2264, 199.1, 29);
INSERT INTO order_items VALUES (2454, 1,2289,    43,120);
INSERT INTO order_items VALUES (2455, 1,2471, 482.9,  3);
INSERT INTO order_items VALUES (2458, 1,3117,    38,140);

--ProductDescription
INSERT INTO product_descriptions VALUES (2289, 'US', 'KB 101/ES', 'Standard PC/AT Enhanced Keyboard (101/102-Key).-Input locale: Spanish.');
INSERT INTO product_descriptions VALUES (3106, 'US', 'KB 101/EN', 'Standard PC/AT Enhanced Keyboard (101/102-Key).-Input locale: English (US).');
INSERT INTO product_descriptions VALUES (3117, 'US', 'Mouse C/E', 'Ergonomic, cordless mouse. With track-ball-for maximum comfort and ease of use.');

--Warehouses
INSERT INTO warehouses VALUES (1,NULL,'Southlake, Texas',1400,NULL);
INSERT INTO warehouses VALUES (2,NULL,'San Francisco',1500,NULL);
INSERT INTO warehouses VALUES (3,NULL,'New Jersey',1600,NULL);
INSERT INTO warehouses VALUES (4,NULL,'Seattle, Washington',1700,NULL);
INSERT INTO warehouses VALUES (5,NULL,'Toronto',1800,NULL);
INSERT INTO warehouses VALUES (6,NULL,'Sydney',2200,NULL);
INSERT INTO warehouses VALUES (7,NULL,'Mexico City',3200,NULL);
INSERT INTO warehouses VALUES (8,NULL,'Beijing',2000,NULL);
INSERT INTO warehouses VALUES (9,NULL,'Bombay',2100,NULL);

UPDATE warehouses SET warehouse_spec = '<?xml version="1.0"?>
<Warehouse>
<Building>Owned</Building>
<Area>25000</Area>
<Docks>2</Docks>
<DockType>Rear load</DockType>
<WaterAccess>Y</WaterAccess>
<RailAccess>N</RailAccess>
<Parking>Street</Parking>
<VClearance>10 ft</VClearance>
</Warehouse>' WHERE warehouse_id = 1;
UPDATE warehouses SET warehouse_spec = '<?xml version="1.0"?>
<Warehouse>
<Building>Rented</Building>
<Area>50000</Area>
<Docks>1</Docks>
<DockType>Side load</DockType>
<WaterAccess>Y</WaterAccess>
<RailAccess>N</RailAccess>
<Parking>Lot</Parking>
<VClearance>12 ft</VClearance>
</Warehouse>'
 WHERE warehouse_id = 2;

UPDATE warehouses SET warehouse_spec ='<?xml version="1.0"?>
<Warehouse>
<Building>Rented</Building>
<Area>85700</Area>
<DockType></DockType>
<WaterAccess>N</WaterAccess>
<RailAccess>N</RailAccess>
<Parking>Street</Parking>
<VClearance>11.5 ft</VClearance>
</Warehouse>'
 WHERE warehouse_id = 3;

UPDATE warehouses SET warehouse_spec = '<?xml version="1.0"?>
<Warehouse>
<Building>Owned</Building>
<Area>103000</Area>
<Docks>3</Docks>
<DockType>Side load</DockType>
<WaterAccess>N</WaterAccess>
<RailAccess>Y</RailAccess>
<Parking>Lot</Parking>
<VClearance>15 ft</VClearance>
</Warehouse>'
 WHERE warehouse_id = 4;

--Inventories
INSERT INTO inventories VALUES(1781,2,106);
INSERT INTO inventories VALUES(1797,6,39);
--1910
INSERT INTO inventories VALUES(2058,6,66);
--2211
INSERT INTO inventories VALUES(2264,6,63);
--
INSERT INTO inventories VALUES(2337,6,60);
INSERT INTO inventories VALUES(2359,6,51);
--
INSERT INTO inventories VALUES(2471,6,37);
--2721
--2976
--3106
INSERT INTO inventories VALUES(3117,6,148);
INSERT INTO inventories VALUES(3127,6,149);
--3208

--PurchaseOrder
CREATE ALIAS jsonb for "org.h2.value.ValueJson.fromJson(java.lang.String)";

INSERT INTO purchase_order VALUES('0-TEST', '2012-09-17 18:47:52.69Z', jsonb('{"PONumber":7357, "1":"Felicia''s Journey"}'));
INSERT INTO purchase_order VALUES('1-MSULLIVA-20141102', '2014-11-02 18:47:52.69Z',  jsonb('{"PONumber":1,"Reference":"MSULLIVA-20141102","Requestor":"Martha Sullivan","User":"MSULLIVA","CostCenter":"A50","ShippingInstructions":{"name":"Martha Sullivan","Address":{"street":"200 Sporting Green","city":"South San Francisco","state":"CA","zipCode":99236,"country":"United States of America"},"Phone":[{"type":"Office","number":"979-555-6598"}]},"Special Instructions":"Surface Mail","LineItems":[{"ItemNumber":1,"Part":{"Description":"Run Lola Run","UnitPrice":19.95,"UPCCode":43396040144},"Quantity":7.0},{"ItemNumber":2,"Part":{"Description":"Felicia''s Journey","UnitPrice":19.95,"UPCCode":12236101345},"Quantity":1.0},{"ItemNumber":3,"Part":{"Description":"Lost and Found","UnitPrice":19.95,"UPCCode":85391756323},"Quantity":8.0},{"ItemNumber":4,"Part":{"Description":"Karaoke: Rock & Roll Hits of 80''s & 90''s 8","UnitPrice":19.95,"UPCCode":13023009592},"Quantity":8.0},{"ItemNumber":5,"Part":{"Description":"Theremin: An Electronic Odyssey","UnitPrice":19.95,"UPCCode":27616864451},"Quantity":8.0}]}'));
INSERT INTO purchase_order VALUES('2-MSULLIVA-20141113', '2014-11-13 18:47:52.69Z',  jsonb('{"PONumber":2,"Reference":"MSULLIVA-20141113","Requestor":"Martha Sullivan","User":"MSULLIVA","CostCenter":"A50","ShippingInstructions":{"name":"Martha Sullivan","Address":{"street":"200 Sporting Green","city":"South San Francisco","state":"CA","zipCode":99236,"country":"United States of America"},"Phone":[{"type":"Office","number":"716-555-2648"}]},"Special Instructions":"Next Day Air","LineItems":[{"ItemNumber":1,"Part":{"Description":"Menace II Society","UnitPrice":19.95,"UPCCode":794043416521},"Quantity":3.0},{"ItemNumber":2,"Part":{"Description":"Best of Musikladen Live: Procol Harum","UnitPrice":19.95,"UPCCode":13023027862},"Quantity":5.0},{"ItemNumber":3,"Part":{"Description":"Anywhere But Here","UnitPrice":27.95,"UPCCode":24543000365},"Quantity":9.0},{"ItemNumber":4,"Part":{"Description":"Stardom","UnitPrice":27.95,"UPCCode":25192126024},"Quantity":8.0},{"ItemNumber":5,"Part":{"Description":"The Hollywood Knights","UnitPrice":19.95,"UPCCode":43396218949},"Quantity":9.0}]}'));
INSERT INTO purchase_order VALUES('3-TRAJS-20140518', '2014-05-18 18:47:52.69Z',  jsonb('{"PONumber":3,"Reference":"TRAJS-20140518","Requestor":"Trenna Rajs","User":"TRAJS","CostCenter":"A50","ShippingInstructions":{"name":"Trenna Rajs","Address":{"street":"200 Sporting Green","city":"South San Francisco","state":"CA","zipCode":99236,"country":"United States of America"},"Phone":[{"type":"Office","number":"905-555-5489"}]},"Special Instructions":"Courier","LineItems":[{"ItemNumber":1,"Part":{"Description":"Tora! Tora! Tora!","UnitPrice":19.95,"UPCCode":24543013174},"Quantity":2.0},{"ItemNumber":2,"Part":{"Description":"The Beastmaster","UnitPrice":19.95,"UPCCode":13131201598},"Quantity":4.0},{"ItemNumber":3,"Part":{"Description":"Heavy Traffic","UnitPrice":19.95,"UPCCode":27616852854},"Quantity":6.0}]}'));
INSERT INTO purchase_order VALUES('4-TRAJS-20140520', '2014-05-20 18:47:52.69Z',  jsonb('{"PONumber":4,"Reference":"TRAJS-20140520","Requestor":"Trenna Rajs","User":"TRAJS","CostCenter":"A50","ShippingInstructions":{"name":"Trenna Rajs","Address":{"street":"200 Sporting Green","city":"South San Francisco","state":"CA","zipCode":99236,"country":"United States of America"},"Phone":[{"type":"Office","number":"741-2-5738"}]},"Special Instructions":"Ground","LineItems":[{"ItemNumber":1,"Part":{"Description":"Mistress","UnitPrice":19.95,"UPCCode":13023015692},"Quantity":6.0},{"ItemNumber":2,"Part":{"Description":"Haunted","UnitPrice":27.95,"UPCCode":707729114840},"Quantity":6.0},{"ItemNumber":3,"Part":{"Description":"The Sand Pebbles","UnitPrice":19.95,"UPCCode":24543013082},"Quantity":7.0}]}'));
INSERT INTO purchase_order VALUES('5-MSULLIVA-20141121', '2014-11-21 18:47:52.69Z',  jsonb('{"PONumber":5,"Reference":"MSULLIVA-20141121","Requestor":"Martha Sullivan","User":"MSULLIVA","CostCenter":"A50","ShippingInstructions":{"name":"Martha Sullivan","Address":{"street":"200 Sporting Green","city":"South San Francisco","state":"CA","zipCode":99236,"country":"United States of America"},"Phone":[{"type":"Office","number":"928-555-8133"}]},"Special Instructions":"Air Mail","LineItems":[{"ItemNumber":1,"Part":{"Description":"Anaconda","UnitPrice":19.95,"UPCCode":43396817593},"Quantity":9.0},{"ItemNumber":2,"Part":{"Description":"Tron","UnitPrice":27.95,"UPCCode":786936161878},"Quantity":2.0},{"ItemNumber":3,"Part":{"Description":"The Evening Star","UnitPrice":19.95,"UPCCode":97363290247},"Quantity":6.0}]}'));
INSERT INTO purchase_order VALUES('6-TRAJS-20140530', '2014-05-30 18:47:52.69Z',  jsonb('{"PONumber":6,"Reference":"TRAJS-20140530","Requestor":"Trenna Rajs","User":"TRAJS","CostCenter":"A50","ShippingInstructions":{"name":"Trenna Rajs","Address":{"street":"200 Sporting Green","city":"South San Francisco","state":"CA","zipCode":99236,"country":"United States of America"},"Phone":[{"type":"Office","number":"382-555-8799"}]},"Special Instructions":"Next Day Air","LineItems":[{"ItemNumber":1,"Part":{"Description":"La Cucaracha","UnitPrice":19.95,"UPCCode":97368397545},"Quantity":8.0},{"ItemNumber":2,"Part":{"Description":"Safe","UnitPrice":19.95,"UPCCode":43396060180},"Quantity":7.0},{"ItemNumber":3,"Part":{"Description":"Greatest Moments in Super Bowl History","UnitPrice":19.95,"UPCCode":696306010920},"Quantity":7.0}]}'));
INSERT INTO purchase_order VALUES('7-VJONES-20140503', '2014-05-03 18:47:52.69Z',  jsonb('{"PONumber":7,"Reference":"VJONES-20140503","Requestor":"Vance Jones","User":"VJONES","CostCenter":"A50","ShippingInstructions":{"name":"Vance Jones","Address":{"street":"200 Sporting Green","city":"South San Francisco","state":"CA","zipCode":99236,"country":"United States of America"},"Phone":[{"type":"Office","number":"713-555-2743"}]},"Special Instructions":"Hand Carry","LineItems":[{"ItemNumber":1,"Part":{"Description":"The Kentucky Fried Movie","UnitPrice":19.95,"UPCCode":13131111798},"Quantity":3.0},{"ItemNumber":2,"Part":{"Description":"The Loves of Carmen","UnitPrice":19.95,"UPCCode":43396086494},"Quantity":4.0},{"ItemNumber":3,"Part":{"Description":"Two Girls And A Guy","UnitPrice":19.95,"UPCCode":24543016403},"Quantity":7.0},{"ItemNumber":4,"Part":{"Description":"Fear and Loathing in Las Vegas","UnitPrice":19.95,"UPCCode":25192033926},"Quantity":4.0}]}'));
INSERT INTO purchase_order VALUES('8-VJONES-20140504', '2014-05-04 18:47:52.69Z',  jsonb('{"PONumber":8,"Reference":"VJONES-20140504","Requestor":"Vance Jones","User":"VJONES","CostCenter":"A50","ShippingInstructions":{"name":"Vance Jones","Address":{"street":"200 Sporting Green","city":"South San Francisco","state":"CA","zipCode":99236,"country":"United States of America"},"Phone":[{"type":"Office","number":"632-555-9938"}]},"Special Instructions":"Counter to Counter","LineItems":[{"ItemNumber":1,"Part":{"Description":"Digimon: The Movie","UnitPrice":19.95,"UPCCode":24543011347},"Quantity":4.0},{"ItemNumber":2,"Part":{"Description":"Fair Game","UnitPrice":19.95,"UPCCode":85391407225},"Quantity":8.0},{"ItemNumber":3,"Part":{"Description":"Barbra Streisand: Timeless- Live In Concert","UnitPrice":19.95,"UPCCode":74645402093},"Quantity":2.0}]}'));
INSERT INTO purchase_order VALUES('9-AHUNOLD-20141130', '2014-11-30 18:47:52.69Z',  jsonb('{"PONumber":9,"Reference":"AHUNOLD-20141130","Requestor":"Alexander Hunold","User":"AHUNOLD","CostCenter":"A60","ShippingInstructions":{"name":"Alexander Hunold","Address":{"street":"2014 Oxford Rd","city":"Southlake,","state":"TX","zipCode":26192,"country":"United States of America"},"Phone":[{"type":"Office","number":"784-555-7990"}]},"Special Instructions":"Counter to Counter","LineItems":[{"ItemNumber":1,"Part":{"Description":"Fatal Fury Ova","UnitPrice":19.95,"UPCCode":13023041394},"Quantity":7.0},{"ItemNumber":2,"Part":{"Description":"Hard Rain","UnitPrice":19.95,"UPCCode":97363321378},"Quantity":5.0},{"ItemNumber":3,"Part":{"Description":"The Guardian","UnitPrice":19.95,"UPCCode":13131086898},"Quantity":9.0},{"ItemNumber":4,"Part":{"Description":"The Real McCoy","UnitPrice":19.95,"UPCCode":25192039720},"Quantity":6.0},{"ItemNumber":5,"Part":{"Description":"Guess Who''s Coming to Dinner","UnitPrice":19.95,"UPCCode":43396054196},"Quantity":1.0},{"ItemNumber":6,"Part":{"Description":"That Old Feeling","UnitPrice":19.95,"UPCCode":25192025921},"Quantity":2.0}]}'));
INSERT INTO purchase_order VALUES('10-STOBIAS-20140515', '2014-05-15 18:47:52.69Z',  jsonb('{"PONumber":10,"Reference":"STOBIAS-20140515","Requestor":"Sigal Tobias","User":"STOBIAS","CostCenter":"A30","ShippingInstructions":{"name":"Sigal Tobias","Address":{"street":"2004 Blacksmiths Court","city":"Seattle","state":"WA","zipCode":98199,"country":"United States of America"},"Phone":[{"type":"Office","number":"710-555-7994"}]},"Special Instructions":"Surface Mail","LineItems":[{"ItemNumber":1,"Part":{"Description":"The Manchurian Candidate","UnitPrice":19.95,"UPCCode":27616701329},"Quantity":3.0},{"ItemNumber":2,"Part":{"Description":"The Great Santini","UnitPrice":19.95,"UPCCode":85391637424},"Quantity":5.0},{"ItemNumber":3,"Part":{"Description":"Mr. Accident","UnitPrice":19.95,"UPCCode":27616857637},"Quantity":2.0},{"ItemNumber":4,"Part":{"Description":"Bear In Blue House: Shapes Sounds & Colors W/ Bear","UnitPrice":19.95,"UPCCode":43396054523},"Quantity":1.0},{"ItemNumber":5,"Part":{"Description":"The Sea Wolves","UnitPrice":19.95,"UPCCode":12569070929},"Quantity":6.0}]}'));

