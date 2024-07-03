PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
COMMIT;
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;

INSERT INTO auth_permission VALUES(1,1,'add_logentry','Can add log entry');
INSERT INTO auth_permission VALUES(2,1,'change_logentry','Can change log entry');
INSERT INTO auth_permission VALUES(3,1,'delete_logentry','Can delete log entry');
INSERT INTO auth_permission VALUES(4,1,'view_logentry','Can view log entry');
INSERT INTO auth_permission VALUES(5,2,'add_permission','Can add permission');
INSERT INTO auth_permission VALUES(6,2,'change_permission','Can change permission');
INSERT INTO auth_permission VALUES(7,2,'delete_permission','Can delete permission');
INSERT INTO auth_permission VALUES(8,2,'view_permission','Can view permission');
INSERT INTO auth_permission VALUES(9,3,'add_group','Can add group');
INSERT INTO auth_permission VALUES(10,3,'change_group','Can change group');
INSERT INTO auth_permission VALUES(11,3,'delete_group','Can delete group');
INSERT INTO auth_permission VALUES(12,3,'view_group','Can view group');
INSERT INTO auth_permission VALUES(13,4,'add_user','Can add user');
INSERT INTO auth_permission VALUES(14,4,'change_user','Can change user');
INSERT INTO auth_permission VALUES(15,4,'delete_user','Can delete user');
INSERT INTO auth_permission VALUES(16,4,'view_user','Can view user');
INSERT INTO auth_permission VALUES(17,5,'add_contenttype','Can add content type');
INSERT INTO auth_permission VALUES(18,5,'change_contenttype','Can change content type');
INSERT INTO auth_permission VALUES(19,5,'delete_contenttype','Can delete content type');
INSERT INTO auth_permission VALUES(20,5,'view_contenttype','Can view content type');
INSERT INTO auth_permission VALUES(21,6,'add_session','Can add session');
INSERT INTO auth_permission VALUES(22,6,'change_session','Can change session');
INSERT INTO auth_permission VALUES(23,6,'delete_session','Can delete session');
INSERT INTO auth_permission VALUES(24,6,'view_session','Can view session');
INSERT INTO auth_permission VALUES(25,7,'add_orderitem','Can add order item');
INSERT INTO auth_permission VALUES(26,7,'change_orderitem','Can change order item');
INSERT INTO auth_permission VALUES(27,7,'delete_orderitem','Can delete order item');
INSERT INTO auth_permission VALUES(28,7,'view_orderitem','Can view order item');
INSERT INTO auth_permission VALUES(29,8,'add_order','Can add order');
INSERT INTO auth_permission VALUES(30,8,'change_order','Can change order');
INSERT INTO auth_permission VALUES(33,9,'add_shippingaddress','Can add shipping address');
INSERT INTO auth_permission VALUES(34,9,'change_shippingaddress','Can change shipping address');
INSERT INTO auth_permission VALUES(35,9,'delete_shippingaddress','Can delete shipping address');
INSERT INTO auth_permission VALUES(36,9,'view_shippingaddress','Can view shipping address');
INSERT INTO auth_permission VALUES(37,10,'add_product','Can add product');
INSERT INTO auth_permission VALUES(38,10,'change_product','Can change product');
INSERT INTO auth_permission VALUES(39,10,'delete_product','Can delete product');
INSERT INTO auth_permission VALUES(40,10,'view_product','Can view product');
INSERT INTO auth_permission VALUES(41,11,'add_customer','Can add customer');
INSERT INTO auth_permission VALUES(42,11,'change_customer','Can change customer');
INSERT INTO auth_permission VALUES(43,11,'delete_customer','Can delete customer');
INSERT INTO auth_permission VALUES(44,11,'view_customer','Can view customer');
INSERT INTO auth_permission VALUES(45,12,'add_category','Can add category');
INSERT INTO auth_permission VALUES(46,12,'change_category','Can change category');
INSERT INTO auth_permission VALUES(47,12,'delete_category','Can delete category');
INSERT INTO auth_permission VALUES(48,12,'view_category','Can view category');
INSERT INTO auth_permission VALUES(49,12,'add_categoryforrent','Can add category for rent');
INSERT INTO auth_permission VALUES(50,12,'change_categoryforrent','Can change category for rent');
INSERT INTO auth_permission VALUES(51,12,'delete_categoryforrent','Can delete category for rent');
INSERT INTO auth_permission VALUES(52,12,'view_categoryforrent','Can view category for rent');
INSERT INTO auth_permission VALUES(53,13,'add_categoryforsale','Can add category for sale');
INSERT INTO auth_permission VALUES(54,13,'change_categoryforsale','Can change category for sale');
INSERT INTO auth_permission VALUES(55,13,'delete_categoryforsale','Can delete category for sale');
INSERT INTO auth_permission VALUES(56,13,'view_categoryforsale','Can view category for sale');
COMMIT;
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;

INSERT INTO app_order VALUES(1,'2024-06-06 16:42:10.013398',NULL,0,1);
INSERT INTO app_order VALUES(2,'2024-06-06 16:44:08.664499',NULL,0,8);
INSERT INTO app_order VALUES(3,'2024-06-09 16:32:59.184086',NULL,0,6);
COMMIT;
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;

INSERT INTO auth_user VALUES(1,'pbkdf2_sha256$390000$S9W1eCCfpHiAVlHVdtLjQP$svkVTEKEO2kV4p2Y0e1sQ55eN9XN8sA16Xr7hBKPpVQ=','2024-06-19 03:07:07.853900',1,'admin','','thanhxuan261203@gmail.com',1,1,'2024-05-06 11:38:20.361203','');
INSERT INTO auth_user VALUES(2,'pbkdf2_sha256$390000$nB332Ati3UXB34BHv9f74w$MDJM0hJNw0dPb/XXP1d3KgjvAfIA+Cr69Pz+mqX1vmU=',NULL,0,'xuanthanh261203','','',0,1,'2024-05-27 15:45:28.315178','');
INSERT INTO auth_user VALUES(3,'pbkdf2_sha256$390000$7feIqiWBrpyFyWX3xbOw1a$9QMnZhjlttY6EEqME/x46oOKofASJ4WABu8pZjeAVNI=',NULL,0,'xuanthanh26','','',0,1,'2024-05-27 15:47:03.690879','');
INSERT INTO auth_user VALUES(4,'pbkdf2_sha256$390000$Nux7by1xgoJlXuVv7hiI28$J/bBqjsrXXdRm9RRN97sHAtkcX3GG73acG7KybcpPSE=',NULL,0,'admin1','thanh','thanhxuan261203@gmail.com',0,1,'2024-05-27 16:21:16.525063','ha');
INSERT INTO auth_user VALUES(5,'pbkdf2_sha256$390000$MhZ9kO39KQA78JPJQCRJ6X$FJwjAyUszWeotVTNwxuZ7OQH/gr8wnvE0Bbc/S5I9OY=',NULL,0,'test1','by','hhh@gmail.com',0,1,'2024-06-03 17:17:57.055095','thanh');
INSERT INTO auth_user VALUES(6,'pbkdf2_sha256$390000$x9CTPAe8xc4lcG10Kce4LA$2yh9w49oaZw9dOr0CSvue6fD7bBrYt7A5pglVYo+/Qw=','2024-06-09 16:32:54.447134',0,'test12','by','hhsh@gmail.com',0,1,'2024-06-03 17:20:12.473913','thanh');
INSERT INTO auth_user VALUES(7,'pbkdf2_sha256$390000$1inJKrGKjcUMAjEB3GfSYC$l0DrGNCxAs+IDrsXAJdAZALl50mdJKPs9jmnX2sBZQA=','2024-06-05 16:30:55.973297',0,'admin5','bui','ttt@gmail.com',0,1,'2024-06-05 16:02:13.154600','thanh');
INSERT INTO auth_user VALUES(8,'pbkdf2_sha256$390000$6CLDTfatpmDIut32zzUCUh$tnhefPhw6R8GmKCrkqMxd8Bs6Lq79RBagD/RtCG7JsM=','2024-06-06 16:44:06.836679',0,'thanh1','thanh','111@gmail.com',0,1,'2024-06-06 15:31:09.282522','ha');
COMMIT;
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;

INSERT INTO app_orderitem VALUES(25,2,'23:43:09.535917',1,2);
INSERT INTO app_orderitem VALUES(26,2,'23:43:10.221482',1,3);
INSERT INTO app_orderitem VALUES(27,2,'23:44:08.668496',2,2);
INSERT INTO app_orderitem VALUES(28,2,'23:44:09.183608',2,3);
INSERT INTO app_orderitem VALUES(29,1,'23:34:31.764106',3,9);
INSERT INTO app_orderitem VALUES(30,5,'23:34:32.262682',3,8);
INSERT INTO app_orderitem VALUES(31,2,'09:40:57.431546',3,2);
INSERT INTO app_orderitem VALUES(32,2,'09:40:58.217968',3,1);
INSERT INTO app_orderitem VALUES(33,2,'09:40:58.906415',3,3);
COMMIT;
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;

COMMIT;
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;

INSERT INTO app_product VALUES(1,'Cho thuê Mandarin Garden',22000000.0,'rent','apartment','150m2 3 ngủ 2 WC full nội thất đẹp giá: 22 triệu (Hiếm)','1234','ha noi','curd-total.png');
INSERT INTO app_product VALUES(2,'Cho thuê căn hộ 2 ngủ tại Mandari',21000000.0,'rent','apartment','135m2 đủ nội thất sang trọng giá chỉ từ 21tr.','1234','ha noi','buffalo-ghee.png');
INSERT INTO app_product VALUES(3,'Cho thuê căn hộ Mandarin Garden, Hoàng Minh Giám',24000000.0,'rent','apartment','3 phòng ngủ full đồ giá chỉ 24 triệu/tháng','1234','ha noi','milk-shake-strawberry.png');
INSERT INTO app_product VALUES(4,'Cho thuê Mandarin Garden',12.0,'sale','detached','nha dep rong mat','1234','ha noi','kulfi.png');
INSERT INTO app_product VALUES(7,'Cho thuê Mandarin Garden',12.0,'sale','detached','nha dep rong mat','12','ha noi','');
INSERT INTO app_product VALUES(8,'test cho thuê',12.0,'rent','apartment','123','12','hà nội','436230461_978261213516561_31985146326522912_n.jpg');
INSERT INTO app_product VALUES(9,'test nhà bán',123.0,'sale','apartment','12','123','hhh','vn-11134231-7r98o-lsoyiqg32g1w14resize_ss400x400crop_w1200_h1200_cT.jpg');
COMMIT;
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;

COMMIT;
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
COMMIT;
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;

INSERT INTO django_admin_log VALUES(1,'1','Cho thuê Mandarin Garden',1,'[{"added": {}}]',10,1,'2024-05-07 11:29:51.602162');
INSERT INTO django_admin_log VALUES(2,'2','Cho thuê căn hộ 2 ngủ tại Mandari',1,'[{"added": {}}]',10,1,'2024-05-07 11:31:02.698055');
INSERT INTO django_admin_log VALUES(3,'3','Cho thuê căn hộ Mandarin Garden, Hoàng Minh Giám',1,'[{"added": {}}]',10,1,'2024-05-07 11:32:27.292299');
INSERT INTO django_admin_log VALUES(4,'4','Cho thuê Mandarin Garden',1,'[{"added": {}}]',10,1,'2024-05-07 12:10:37.150250');
INSERT INTO django_admin_log VALUES(5,'3','Cho thuê căn hộ Mandarin Garden, Hoàng Minh Giám',2,'[{"changed": {"fields": ["Area", "Location"]}}]',10,1,'2024-05-07 12:30:11.335705');
INSERT INTO django_admin_log VALUES(6,'2','Cho thuê căn hộ 2 ngủ tại Mandari',2,'[{"changed": {"fields": ["Area", "Location", "Image"]}}]',10,1,'2024-05-07 12:30:18.947798');
INSERT INTO django_admin_log VALUES(7,'1','Cho thuê Mandarin Garden',2,'[{"changed": {"fields": ["Area", "Location", "Image"]}}]',10,1,'2024-05-07 12:30:26.915358');
INSERT INTO django_admin_log VALUES(8,'3','Cho thuê căn hộ Mandarin Garden, Hoàng Minh Giám',2,'[{"changed": {"fields": ["Image"]}}]',10,1,'2024-05-07 12:31:15.313609');
INSERT INTO django_admin_log VALUES(9,'4','Cho thuê Mandarin Garden',2,'[{"changed": {"fields": ["Image"]}}]',10,1,'2024-05-07 12:59:53.671492');
INSERT INTO django_admin_log VALUES(10,'3','Cho thuê căn hộ Mandarin Garden, Hoàng Minh Giám',2,'[{"changed": {"fields": ["Image"]}}]',10,1,'2024-05-07 13:00:01.211793');
INSERT INTO django_admin_log VALUES(11,'2','Cho thuê căn hộ 2 ngủ tại Mandari',2,'[{"changed": {"fields": ["Image"]}}]',10,1,'2024-05-07 13:00:09.195955');
INSERT INTO django_admin_log VALUES(12,'1','Cho thuê Mandarin Garden',2,'[{"changed": {"fields": ["Image"]}}]',10,1,'2024-05-07 13:00:17.742852');
INSERT INTO django_admin_log VALUES(13,'5','Cho thuê Mandarin Garden 2',1,'[{"added": {}}]',10,1,'2024-05-08 15:42:54.993382');
INSERT INTO django_admin_log VALUES(14,'5','Cho thuê Mandarin Garden 2',3,'',10,1,'2024-05-08 15:43:24.486689');
INSERT INTO django_admin_log VALUES(15,'6','Cho thuê Mandarin Garden 12',1,'[{"added": {}}]',10,1,'2024-05-08 15:45:37.777047');
INSERT INTO django_admin_log VALUES(16,'6','Cho thuê Mandarin Garden 12',3,'',10,1,'2024-05-08 15:45:49.532750');
INSERT INTO django_admin_log VALUES(17,'1','thanhxuan',1,'[{"added": {}}]',11,1,'2024-05-19 15:08:39.221820');
INSERT INTO django_admin_log VALUES(18,'7','Cho thuê Mandarin Garden',1,'[{"added": {}}]',10,1,'2024-05-19 15:15:59.772581');
INSERT INTO django_admin_log VALUES(19,'1','01',1,'[{"added": {}}]',8,1,'2024-05-19 15:30:37.142923');
INSERT INTO django_admin_log VALUES(20,'1','1',1,'[{"added": {}}]',7,1,'2024-05-19 15:36:11.271257');
INSERT INTO django_admin_log VALUES(21,'1','1',3,'',7,1,'2024-05-19 16:29:39.237482');
INSERT INTO django_admin_log VALUES(22,'1','1',3,'',8,1,'2024-05-19 16:31:57.423967');
INSERT INTO django_admin_log VALUES(23,'2','2',1,'[{"added": {}}]',8,1,'2024-05-19 16:32:05.898006');
INSERT INTO django_admin_log VALUES(24,'2','2',1,'[{"added": {}}]',7,1,'2024-05-19 16:33:10.981341');
INSERT INTO django_admin_log VALUES(25,'3','3',1,'[{"added": {}}]',7,1,'2024-05-19 16:33:16.895605');
INSERT INTO django_admin_log VALUES(26,'8','test cho thuê',1,'[{"added": {}}]',10,1,'2024-05-19 17:00:05.372713');
INSERT INTO django_admin_log VALUES(27,'4','4',1,'[{"added": {}}]',7,1,'2024-05-19 17:00:21.316511');
INSERT INTO django_admin_log VALUES(28,'4','4',3,'',7,1,'2024-05-19 17:01:53.626648');
INSERT INTO django_admin_log VALUES(29,'5','5',1,'[{"added": {}}]',7,1,'2024-05-19 17:02:00.741791');
INSERT INTO django_admin_log VALUES(30,'9','test nhà bán',1,'[{"added": {}}]',10,1,'2024-05-19 17:03:32.809685');
INSERT INTO django_admin_log VALUES(31,'6','6',1,'[{"added": {}}]',7,1,'2024-05-19 17:03:41.680673');
INSERT INTO django_admin_log VALUES(32,'7','7',1,'[{"added": {}}]',7,1,'2024-05-20 14:37:59.065925');
INSERT INTO django_admin_log VALUES(33,'7','7',2,'[{"changed": {"fields": ["Quantity"]}}]',7,1,'2024-05-20 14:41:12.942486');
INSERT INTO django_admin_log VALUES(34,'7','7',2,'[{"changed": {"fields": ["Quantity"]}}]',7,1,'2024-05-20 14:41:20.522426');
INSERT INTO django_admin_log VALUES(35,'6','6',3,'',7,1,'2024-05-22 11:26:59.102880');
INSERT INTO django_admin_log VALUES(36,'7','7',3,'',7,1,'2024-05-22 11:27:22.266078');
INSERT INTO django_admin_log VALUES(37,'22','22',3,'',7,1,'2024-06-06 16:37:51.015244');
INSERT INTO django_admin_log VALUES(38,'21','21',3,'',7,1,'2024-06-06 16:37:51.018249');
INSERT INTO django_admin_log VALUES(39,'1','thanhxuan',3,'',11,1,'2024-06-06 16:37:55.326271');
INSERT INTO django_admin_log VALUES(40,'2','2',3,'',8,1,'2024-06-06 16:38:01.586954');
INSERT INTO django_admin_log VALUES(41,'1','For rent',1,'[{"added": {}}]',12,1,'2024-06-18 14:58:45.046486');
INSERT INTO django_admin_log VALUES(42,'2','căn hộ chung cư',1,'[{"added": {}}]',12,1,'2024-06-18 14:59:21.172985');
INSERT INTO django_admin_log VALUES(43,'8','test cho thuê',2,'[{"changed": {"fields": ["Category"]}}]',10,1,'2024-06-18 14:59:35.015090');
INSERT INTO django_admin_log VALUES(44,'2','căn hộ chung cư',3,'',12,1,'2024-06-19 03:25:55.427939');
INSERT INTO django_admin_log VALUES(45,'1','For rent',3,'',12,1,'2024-06-19 03:25:55.431940');
INSERT INTO django_admin_log VALUES(46,'3','Cho thuê căn hộ chung cư',1,'[{"added": {}}]',12,1,'2024-06-19 03:26:55.072032');
INSERT INTO django_admin_log VALUES(47,'4','Cho thuê nhà riêng',1,'[{"added": {}}]',12,1,'2024-06-19 03:27:11.131570');
INSERT INTO django_admin_log VALUES(48,'5','Cho thuê thự liền kề',1,'[{"added": {}}]',12,1,'2024-06-19 03:28:55.948765');
INSERT INTO django_admin_log VALUES(49,'1','Bán biệt thự liền kề',1,'[{"added": {}}]',13,1,'2024-06-19 03:28:57.292030');
INSERT INTO django_admin_log VALUES(50,'6','Cho thuê nhà mặt phố',1,'[{"added": {}}]',12,1,'2024-06-19 03:29:30.075921');
INSERT INTO django_admin_log VALUES(51,'2','Bán nhà mặt phố',1,'[{"added": {}}]',13,1,'2024-06-19 03:29:31.425475');
INSERT INTO django_admin_log VALUES(52,'7','Cho thuê shophouse, nhà phố thương mại',1,'[{"added": {}}]',12,1,'2024-06-19 03:33:27.132661');
INSERT INTO django_admin_log VALUES(53,'3','Bán shophouse, nhà phố thương mại',1,'[{"added": {}}]',13,1,'2024-06-19 03:33:28.345408');
INSERT INTO django_admin_log VALUES(54,'8','Cho thuê đất',1,'[{"added": {}}]',12,1,'2024-06-19 03:33:49.154238');
INSERT INTO django_admin_log VALUES(55,'4','Bán đất',1,'[{"added": {}}]',13,1,'2024-06-19 03:34:03.757344');
INSERT INTO django_admin_log VALUES(56,'5','Bán nhà riêng',1,'[{"added": {}}]',13,1,'2024-06-19 03:38:24.358060');
INSERT INTO django_admin_log VALUES(57,'6','Bán căn hộ chung cư',1,'[{"added": {}}]',13,1,'2024-06-19 03:38:40.504642');
INSERT INTO django_admin_log VALUES(58,'9','test nhà bán',2,'[{"changed": {"fields": ["Category for sale", "Category for rent"]}}]',10,1,'2024-06-19 03:41:21.420661');
INSERT INTO django_admin_log VALUES(59,'7','Nha cho thue',1,'[{"added": {}}]',13,1,'2024-06-22 17:41:54.284777');
INSERT INTO django_admin_log VALUES(60,'8','Cho thue can ho chung chu',1,'[{"added": {}}]',13,1,'2024-06-22 17:42:15.396697');
COMMIT;
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;

COMMIT;
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;

INSERT INTO django_content_type VALUES(1,'admin','logentry');
INSERT INTO django_content_type VALUES(2,'auth','permission');
INSERT INTO django_content_type VALUES(3,'auth','group');
INSERT INTO django_content_type VALUES(4,'auth','user');
INSERT INTO django_content_type VALUES(5,'contenttypes','contenttype');
INSERT INTO django_content_type VALUES(6,'sessions','session');
INSERT INTO django_content_type VALUES(7,'app','orderitem');
INSERT INTO django_content_type VALUES(8,'app','order');
INSERT INTO django_content_type VALUES(9,'app','shippingaddress');
INSERT INTO django_content_type VALUES(10,'app','product');
INSERT INTO django_content_type VALUES(11,'app','customer');
INSERT INTO django_content_type VALUES(12,'app','categoryforrent');
INSERT INTO django_content_type VALUES(13,'app','categoryforsale');
COMMIT;
PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;

COMMIT;
PRAGMA foreign_keys=OFF;
