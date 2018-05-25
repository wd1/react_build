/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.31-MariaDB : Database - lensselect
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lensselect` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `lensselect`;

/*Table structure for table `bifocal_size` */

DROP TABLE IF EXISTS `bifocal_size`;

CREATE TABLE `bifocal_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `desc_short` varchar(255) DEFAULT NULL,
  `desc_long` varchar(1024) DEFAULT NULL,
  `inc_cost` float NOT NULL,
  `width` int(11) NOT NULL,
  `unit` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `bifocal_size` */

insert  into `bifocal_size`(`id`,`name`,`desc_short`,`desc_long`,`inc_cost`,`width`,`unit`) values (1,'Lined Bifocal 28mm','Standard size, 28mm wide lined bifocals. ','Lined bifocal lenses correct for two focal lengths, one on top, usually for distance, and a D-shaped bottom segment for reading. The Lined Bifocal FT28 has a 28 millimeter bifocal segment width.',49,28,'mm'),(2,'Lined Bifocal 35mm','35mm wide lined bifocals. ','Lined bifocal lenses correct for two focal lengths, one on top, usually for distance, and a D-shaped bottom segment for reading. The Lined Bifocal FT35 has a 35 millimeter bifocal segment width.',69,35,'mm');

/*Table structure for table `frame_type` */

DROP TABLE IF EXISTS `frame_type`;

CREATE TABLE `frame_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `desc_short` varchar(255) NOT NULL,
  `desc_long` varchar(1024) NOT NULL,
  `inc_cost` float NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `frame_type` */

insert  into `frame_type`(`id`,`name`,`desc_short`,`desc_long`,`inc_cost`,`image_url`) values (1,'Full Rimmed Frame','Frame with a Rim encircling the entire lens.','Full-Rimmed frames are the most common frame type, with a rim encircling each lens entirely. We can make lenses for 99% of full-rimmed frames.',0,'//cdn3.volusion.com/zrdfe.utzda/v/vspfiles/photos/categories/1817-T.jpg'),(2,'Semi-Rimless Frame','Partially rimmed frame with a grooved lens.','Semi-Rimless frames have a groove around the lens\' rim, and are secured to the frame with a thin cord. They usually have a rim on the top of the frame, but sometimes are rimless on the sides of the frame instead. We can make lenses for 99% of Semi-Rimless frames. We do not recommend lenses in the standard plastic material for this frame type because there is an increased risk of chipping.',15,'//cdn3.volusion.com/zrdfe.utzda/v/vspfiles/photos/categories/1830-T.jpg'),(3,'Drilled Rimless Frame','No frame rim with drill holes through the lenses.','Drilled-Rimless frames don\'t have a rim and are secured with drill holes through the lenses. We recommend the Trivex lens material for all Rx\'s below +/- 3.00 diopters for maximum durability. FREE lens polish!',45,'//cdn3.volusion.com/zrdfe.utzda/v/vspfiles/photos/categories/1843-T.jpg'),(4,'High Wrap Frame','High curvature frame that wraps.','High wrap frames wrap around the face to restrict unwanted light. We make lenses for most high wrap frames, but the allowable prescription range is limited. We do not recommend high wrap frames for Rx\'s stronger than +/- 2.00 diopters combined power. ',40,'//cdn3.volusion.com/zrdfe.utzda/v/vspfiles/photos/categories/1846-T.jpg');

/*Table structure for table `lens_material` */

DROP TABLE IF EXISTS `lens_material`;

CREATE TABLE `lens_material` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `desc_short` varchar(255) NOT NULL,
  `desc_long` varchar(1024) NOT NULL,
  `inc_cost` float NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `lens_material` */

insert  into `lens_material`(`id`,`name`,`desc_short`,`desc_long`,`inc_cost`,`img_url`) values (1,'Plastic\r\n','Standard lens material. Great for low prescriptions. ','The Plastic CR-39 (1.49 index) lens material is a great choice for lower prescriptions and full-rimmed frame applications. Plastic lenses have excellent optical clarity and are available in virtually all lens types. The Plastic CR-39 material cannot be used with rimless style frames.',39,'//cdn3.volusion.com/zrdfe.utzda/v/vspfiles/photos/categories/1893-T.jpg'),(2,'Polycarbonate','Thinner and lighter material with full UV protection and increased shatter resistance. ','The Polycarbonate (1.59 index) lens material is a great choice for mid-range prescriptions. Polycarbonate lenses are thinner and lighter than standard plastic, have increased impact resistance and 100% UV protection. The high impact resistance makes polycarbonate the perfect choice for kids and sports enthusiasts.',49,'//cdn3.volusion.com/zrdfe.utzda/v/vspfiles/photos/categories/1894-T.jpg'),(3,'Trivex','Durable material with excellent optical clarity & full UV protection. Recommended for rimless style frames.','The Trivex (1.53 index) lens material is a great choice for lower and mid-range prescriptions, with enhanced durability in rimless style frames. Trivex lenses are thinner and lighter than standard plastic, with excellent optical clarity and Full UV protection.',69,'//cdn3.volusion.com/zrdfe.utzda/v/vspfiles/photos/categories/1895-T.jpg'),(4,'High Index 1.67','Thin and light material for higher prescriptions. Full UV protection. ','The High Index (1.67 index) lens material is a great choice for high-power prescriptions. High Index 1.67 lenses are thinner and lighter than every material except High Index 1.74. They have 100% UV protection and work well with most frame styles.',99,'//cdn3.volusion.com/zrdfe.utzda/v/vspfiles/photos/categories/1896-T.jpg'),(5,'High Index 1.74','Thinnest and lightest eyeglass lens material. Includes Anti-Glare! Full UV protection. ','The High Index (1.74 index) lens material is the thinnest and lightest lens material in the world, and is the best choice for high-power prescriptions, or anyone who wants the thinnest lens for their application. They have 100% UV protection and work well with most frame styles other than drilled rimless.',169,'//cdn3.volusion.com/zrdfe.utzda/v/vspfiles/photos/categories/1897-T.jpg');

/*Table structure for table `lens_type` */

DROP TABLE IF EXISTS `lens_type`;

CREATE TABLE `lens_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `desc_short` varchar(255) NOT NULL,
  `desc_long` varchar(1024) NOT NULL,
  `inc_cost` int(11) NOT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `lens_type` */

insert  into `lens_type`(`id`,`name`,`desc_short`,`desc_long`,`inc_cost`,`img_url`) values (1,'Single Vision','One prescription power throughout entire lens. ','Single vision lenses correct for one focal length, usually for distance, intermediate, or reading.',39,'//cdn3.volusion.com/zrdfe.utzda/v/vspfiles/photos/categories/1818-T.jpg'),(2,'Lined Bifocal','Distance power on top and a D-Shaped segment for reading.','Lined bifocal lenses correct for two focal lengths, one on top, usually for distance, and a D-shaped bottom segment for reading. Choose from standard 28 millimeter or larger 35 millimeter bifocal segment widths.',49,'//cdn3.volusion.com/zrdfe.utzda/v/vspfiles/photos/categories/1819-T.jpg'),(3,'Lined Trifocal','Distance power on top, with a D-Shaped segment containing intermediate and reading powers. ','Lined trifocal lenses correct for three focal lengths, one on top, usually for distance, and a D-shaped bottom segment that contains both intermediate and reading. Choose from standard 28mm or wider 35mm segments.',69,'//cdn3.volusion.com/zrdfe.utzda/v/vspfiles/photos/categories/1820-T.jpg'),(4,'Progressive (no-line)','Distance power on top, with a gradually increasing power down the lens for intermediate and reading viewing. ','Progressive (no-line) lenses correct for distance, intermediate, and reading. Also referred to as \'no-line bifocal\' and \'no-line trifocals,\' progressive lenses look like single vision lenses, with a corridor of increasing power as you travel down the lens. We offer both Traditional and Digital (High-Definition) progressive lenses.',59,'//cdn3.volusion.com/zrdfe.utzda/v/vspfiles/photos/categories/1845-T.jpg'),(5,'Non Prescription','Lenses without a prescription. ','Non-prescription lenses do not contain a prescription correction. They are traditionally used as sunglass lenses or for custom cosmetic or safety applications.',39,'//cdn3.volusion.com/zrdfe.utzda/v/vspfiles/photos/categories/1851-T.jpg');

/*Table structure for table `pma__bookmark` */

DROP TABLE IF EXISTS `pma__bookmark`;

CREATE TABLE `pma__bookmark` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

/*Data for the table `pma__bookmark` */

/*Table structure for table `pma__central_columns` */

DROP TABLE IF EXISTS `pma__central_columns`;

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin,
  PRIMARY KEY (`db_name`,`col_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

/*Data for the table `pma__central_columns` */

/*Table structure for table `pma__column_info` */

DROP TABLE IF EXISTS `pma__column_info`;

CREATE TABLE `pma__column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

/*Data for the table `pma__column_info` */

/*Table structure for table `pma__designer_settings` */

DROP TABLE IF EXISTS `pma__designer_settings`;

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

/*Data for the table `pma__designer_settings` */

/*Table structure for table `pma__export_templates` */

DROP TABLE IF EXISTS `pma__export_templates`;

CREATE TABLE `pma__export_templates` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

/*Data for the table `pma__export_templates` */

/*Table structure for table `pma__favorite` */

DROP TABLE IF EXISTS `pma__favorite`;

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

/*Data for the table `pma__favorite` */

/*Table structure for table `pma__history` */

DROP TABLE IF EXISTS `pma__history`;

CREATE TABLE `pma__history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

/*Data for the table `pma__history` */

/*Table structure for table `pma__navigationhiding` */

DROP TABLE IF EXISTS `pma__navigationhiding`;

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

/*Data for the table `pma__navigationhiding` */

/*Table structure for table `pma__pdf_pages` */

DROP TABLE IF EXISTS `pma__pdf_pages`;

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

/*Data for the table `pma__pdf_pages` */

/*Table structure for table `pma__recent` */

DROP TABLE IF EXISTS `pma__recent`;

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

/*Data for the table `pma__recent` */

insert  into `pma__recent`(`username`,`tables`) values ('phpmyadmin','[{\"db\":\"lensselect\",\"table\":\"trifocal_size\"},{\"db\":\"lensselect\",\"table\":\"trifocal_width\"},{\"db\":\"lensselect\",\"table\":\"bifocal_size\"},{\"db\":\"lensselect\",\"table\":\"bifocal_width\"}]');

/*Table structure for table `pma__relation` */

DROP TABLE IF EXISTS `pma__relation`;

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

/*Data for the table `pma__relation` */

/*Table structure for table `pma__savedsearches` */

DROP TABLE IF EXISTS `pma__savedsearches`;

CREATE TABLE `pma__savedsearches` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

/*Data for the table `pma__savedsearches` */

/*Table structure for table `pma__table_coords` */

DROP TABLE IF EXISTS `pma__table_coords`;

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

/*Data for the table `pma__table_coords` */

/*Table structure for table `pma__table_info` */

DROP TABLE IF EXISTS `pma__table_info`;

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

/*Data for the table `pma__table_info` */

/*Table structure for table `pma__table_uiprefs` */

DROP TABLE IF EXISTS `pma__table_uiprefs`;

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

/*Data for the table `pma__table_uiprefs` */

/*Table structure for table `pma__tracking` */

DROP TABLE IF EXISTS `pma__tracking`;

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

/*Data for the table `pma__tracking` */

/*Table structure for table `pma__userconfig` */

DROP TABLE IF EXISTS `pma__userconfig`;

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

/*Data for the table `pma__userconfig` */

/*Table structure for table `pma__usergroups` */

DROP TABLE IF EXISTS `pma__usergroups`;

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N',
  PRIMARY KEY (`usergroup`,`tab`,`allowed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

/*Data for the table `pma__usergroups` */

/*Table structure for table `pma__users` */

DROP TABLE IF EXISTS `pma__users`;

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`,`usergroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

/*Data for the table `pma__users` */

/*Table structure for table `progressive_lens_tech` */

DROP TABLE IF EXISTS `progressive_lens_tech`;

CREATE TABLE `progressive_lens_tech` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `desc_short` varchar(255) NOT NULL,
  `desc_long` varchar(1024) NOT NULL,
  `inc_cost` float NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `progressive_lens_tech` */

insert  into `progressive_lens_tech`(`id`,`name`,`desc_short`,`desc_long`,`inc_cost`) values (4,'Traditional Progressive (no-line)','Traditional progressive lens technology with various designs that optimize specific zones (distance, intermediate, &/or reading).','Traditional Progressive (no-line) lenses are pre-molded designs with optimized distance, reading, or intermediate zones. At ReplaceALens, we offer hand-picked, well-tested progressives that are proven throughout the industry.',59),(5,'Digital (HD) Progressive (no-line)','Customized progressive lens with wider fields of view and smoother vision.','Digital (HD) progressive (no-line) lenses correct for every focal length, including distance, intermediate, and reading. Digital (HD) progressives have custom lens designs, allowing for the best peripheral vision, wide corridors, and smooth visual fields. Also referred to as \'no-line bifocals\' and \'no-line trifocals,\' progressive lenses look like single vision lenses, with a corridor of increasing power as you travel down the lens.',139),(6,'Progressives By Brand','Browse Progressive Lenses by BRAND.','',0);

/*Table structure for table `specialty_lens_type` */

DROP TABLE IF EXISTS `specialty_lens_type`;

CREATE TABLE `specialty_lens_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `desc_short` varchar(255) NOT NULL,
  `desc_long` varchar(1024) NOT NULL,
  `inc_cost` float NOT NULL,
  `img_url` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `specialty_lens_type` */

insert  into `specialty_lens_type`(`id`,`name`,`desc_short`,`desc_long`,`inc_cost`,`img_url`) values (1,'Clear','Lenses that are always clear. ','',0,'//cdn3.volusion.com/zrdfe.utzda/v/vspfiles/photos/categories/1898-T.jpg'),(2,'Transitions Signature VII','Color changing lenses that turn from clear indoors to dark outside. They do not turn dark in the car.','',60,'//cdn3.volusion.com/zrdfe.utzda/v/vspfiles/photos/categories/1899-T.jpg'),(3,'Transitions XTRActive','Light tint indoors to dark sunglass outside.','',90,'//cdn3.volusion.com/zrdfe.utzda/v/vspfiles/photos/categories/1900-T.jpg'),(4,'Polarized','Full-time dark lenses that eliminate glare and reflections. Tint Included.','',50,'//cdn3.volusion.com/zrdfe.utzda/v/vspfiles/photos/categories/1901-T.jpg'),(5,'Drivewear','Polarized & Transitions lens that turns from light yellow to a darker red.','',140,'//cdn3.volusion.com/zrdfe.utzda/v/vspfiles/photos/categories/1902-T.jpg'),(6,'Tinted','Eyeglass lenses that are dyed to a specific shade and density. ','',10,'//cdn3.volusion.com/zrdfe.utzda/v/vspfiles/photos/categories/1903-T.jpg');

/*Table structure for table `trifocal_size` */

DROP TABLE IF EXISTS `trifocal_size`;

CREATE TABLE `trifocal_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `desc_short` varchar(255) NOT NULL,
  `desc_long` varchar(1024) NOT NULL,
  `inc_cost` float NOT NULL,
  `width` int(11) NOT NULL,
  `width_unit` varchar(5) NOT NULL,
  `interm_height` int(11) NOT NULL,
  `unit` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `trifocal_size` */

insert  into `trifocal_size`(`id`,`name`,`desc_short`,`desc_long`,`inc_cost`,`width`,`width_unit`,`interm_height`,`unit`) values (1,'Lined Trifocal 7x28','Standard size, 7x28 lined trifocals (7mm tall intermediate zone, 28mm wide segment)','Lined trifocal lenses correct for three focal lengths, one on top, usually for distance, and a D-shaped bottom segment that contains both intermediate and reading. 7x28 segment size.',69,0,'mm',0,'mm'),(2,'Lined Trifocal 8x35','8x35 lined trifocals (8mm tall intermediate zone, 35mm wide segment) ','Lined trifocal lenses correct for three focal lengths, one on top, usually for distance, and a D-shaped bottom segment that contains both intermediate and reading. 8x35 (8mm tall intermediate zone, 35mm wide trifocal) segment size.',89,0,'mm',0,'mm');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
