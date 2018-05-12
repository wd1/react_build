-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 11, 2018 at 11:51 AM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lensselect`
--

-- --------------------------------------------------------

--
-- Table structure for table `bifocal_size`
--

CREATE TABLE `bifocal_size` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc_short` varchar(255) DEFAULT NULL,
  `desc_long` varchar(1024) DEFAULT NULL,
  `inc_cost` float NOT NULL,
  `width` int(11) NOT NULL,
  `unit` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bifocal_size`
--

INSERT INTO `bifocal_size` (`id`, `name`, `desc_short`, `desc_long`, `inc_cost`, `width`, `unit`) VALUES
(1, 'Lined Bifocal 28mm', 'Standard size, 28mm wide lined bifocals. ', 'Lined bifocal lenses correct for two focal lengths, one on top, usually for distance, and a D-shaped bottom segment for reading. The Lined Bifocal FT28 has a 28 millimeter bifocal segment width.', 49, 28, 'mm'),
(2, 'Lined Bifocal 35mm', '35mm wide lined bifocals. ', 'Lined bifocal lenses correct for two focal lengths, one on top, usually for distance, and a D-shaped bottom segment for reading. The Lined Bifocal FT35 has a 35 millimeter bifocal segment width.', 69, 35, 'mm');

-- --------------------------------------------------------

--
-- Table structure for table `frame_type`
--

CREATE TABLE `frame_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc_short` varchar(255) NOT NULL,
  `desc_long` varchar(1024) NOT NULL,
  `inc_cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `frame_type`
--

INSERT INTO `frame_type` (`id`, `name`, `desc_short`, `desc_long`, `inc_cost`) VALUES
(1, 'Full Rimmed Frame', 'Frame with a Rim encircling the entire lens.', 'Full-Rimmed frames are the most common frame type, with a rim encircling each lens entirely. We can make lenses for 99% of full-rimmed frames.', 0),
(2, 'Semi-Rimless Frame', 'Partially rimmed frame with a grooved lens.', 'Semi-Rimless frames have a groove around the lens\' rim, and are secured to the frame with a thin cord. They usually have a rim on the top of the frame, but sometimes are rimless on the sides of the frame instead. We can make lenses for 99% of Semi-Rimless frames. We do not recommend lenses in the standard plastic material for this frame type because there is an increased risk of chipping.', 15),
(3, 'Drilled Rimless Frame', 'No frame rim with drill holes through the lenses.', 'Drilled-Rimless frames don\'t have a rim and are secured with drill holes through the lenses. We recommend the Trivex lens material for all Rx\'s below +/- 3.00 diopters for maximum durability. FREE lens polish!', 45),
(4, 'High Wrap Frame', 'High curvature frame that wraps.', 'High wrap frames wrap around the face to restrict unwanted light. We make lenses for most high wrap frames, but the allowable prescription range is limited. We do not recommend high wrap frames for Rx\'s stronger than +/- 2.00 diopters combined power. ', 40);

-- --------------------------------------------------------

--
-- Table structure for table `lens_material`
--

CREATE TABLE `lens_material` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc_short` varchar(255) NOT NULL,
  `desc_long` varchar(1024) NOT NULL,
  `inc_cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lens_material`
--

INSERT INTO `lens_material` (`id`, `name`, `desc_short`, `desc_long`, `inc_cost`) VALUES
(1, 'Plastic\r\n', 'Standard lens material. Great for low prescriptions. ', 'The Plastic CR-39 (1.49 index) lens material is a great choice for lower prescriptions and full-rimmed frame applications. Plastic lenses have excellent optical clarity and are available in virtually all lens types. The Plastic CR-39 material cannot be used with rimless style frames.', 39),
(2, 'Polycarbonate', 'Thinner and lighter material with full UV protection and increased shatter resistance. ', 'The Polycarbonate (1.59 index) lens material is a great choice for mid-range prescriptions. Polycarbonate lenses are thinner and lighter than standard plastic, have increased impact resistance and 100% UV protection. The high impact resistance makes polycarbonate the perfect choice for kids and sports enthusiasts.', 49),
(3, 'Trivex', 'Durable material with excellent optical clarity & full UV protection. Recommended for rimless style frames.', 'The Trivex (1.53 index) lens material is a great choice for lower and mid-range prescriptions, with enhanced durability in rimless style frames. Trivex lenses are thinner and lighter than standard plastic, with excellent optical clarity and Full UV protection.', 69),
(4, 'High Index 1.67', 'Thin and light material for higher prescriptions. Full UV protection. ', 'The High Index (1.67 index) lens material is a great choice for high-power prescriptions. High Index 1.67 lenses are thinner and lighter than every material except High Index 1.74. They have 100% UV protection and work well with most frame styles.', 99),
(5, 'High Index 1.74', 'Thinnest and lightest eyeglass lens material. Includes Anti-Glare! Full UV protection. ', 'The High Index (1.74 index) lens material is the thinnest and lightest lens material in the world, and is the best choice for high-power prescriptions, or anyone who wants the thinnest lens for their application. They have 100% UV protection and work well with most frame styles other than drilled rimless.', 169);

-- --------------------------------------------------------

--
-- Table structure for table `lens_type`
--

CREATE TABLE `lens_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc_short` varchar(255) NOT NULL,
  `desc_long` varchar(1024) NOT NULL,
  `inc_cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lens_type`
--

INSERT INTO `lens_type` (`id`, `name`, `desc_short`, `desc_long`, `inc_cost`) VALUES
(1, 'Single Vision', 'One prescription power throughout entire lens. ', 'Single vision lenses correct for one focal length, usually for distance, intermediate, or reading.', 39),
(2, 'Lined Bifocal', 'Distance power on top and a D-Shaped segment for reading.', 'Lined bifocal lenses correct for two focal lengths, one on top, usually for distance, and a D-shaped bottom segment for reading. Choose from standard 28 millimeter or larger 35 millimeter bifocal segment widths.', 49),
(3, 'Lined Trifocal', 'Distance power on top, with a D-Shaped segment containing intermediate and reading powers. ', 'Lined trifocal lenses correct for three focal lengths, one on top, usually for distance, and a D-shaped bottom segment that contains both intermediate and reading. Choose from standard 28mm or wider 35mm segments.', 69),
(4, 'Progressive (no-line)', 'Distance power on top, with a gradually increasing power down the lens for intermediate and reading viewing. ', 'Progressive (no-line) lenses correct for distance, intermediate, and reading. Also referred to as \'no-line bifocal\' and \'no-line trifocals,\' progressive lenses look like single vision lenses, with a corridor of increasing power as you travel down the lens. We offer both Traditional and Digital (High-Definition) progressive lenses.', 59),
(5, 'Non Prescription', 'Lenses without a prescription. ', 'Non-prescription lenses do not contain a prescription correction. They are traditionally used as sunglass lenses or for custom cosmetic or safety applications.', 39);

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('phpmyadmin', '[{\"db\":\"lensselect\",\"table\":\"trifocal_size\"},{\"db\":\"lensselect\",\"table\":\"trifocal_width\"},{\"db\":\"lensselect\",\"table\":\"bifocal_size\"},{\"db\":\"lensselect\",\"table\":\"bifocal_width\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Table structure for table `progressive_lens_tech`
--

CREATE TABLE `progressive_lens_tech` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc_short` varchar(255) NOT NULL,
  `desc_long` varchar(1024) NOT NULL,
  `inc_cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `progressive_lens_tech`
--

INSERT INTO `progressive_lens_tech` (`id`, `name`, `desc_short`, `desc_long`, `inc_cost`) VALUES
(4, 'Traditional Progressive (no-line)', 'Traditional progressive lens technology with various designs that optimize specific zones (distance, intermediate, &/or reading).', 'Traditional Progressive (no-line) lenses are pre-molded designs with optimized distance, reading, or intermediate zones. At ReplaceALens, we offer hand-picked, well-tested progressives that are proven throughout the industry.', 59),
(5, 'Digital (HD) Progressive (no-line)', 'Customized progressive lens with wider fields of view and smoother vision.', 'Digital (HD) progressive (no-line) lenses correct for every focal length, including distance, intermediate, and reading. Digital (HD) progressives have custom lens designs, allowing for the best peripheral vision, wide corridors, and smooth visual fields. Also referred to as \'no-line bifocals\' and \'no-line trifocals,\' progressive lenses look like single vision lenses, with a corridor of increasing power as you travel down the lens.', 139),
(6, 'Progressives By Brand', 'Browse Progressive Lenses by BRAND.', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `specialty_lens_type`
--

CREATE TABLE `specialty_lens_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc_short` varchar(255) NOT NULL,
  `desc_long` varchar(1024) NOT NULL,
  `inc_cost` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specialty_lens_type`
--

INSERT INTO `specialty_lens_type` (`id`, `name`, `desc_short`, `desc_long`, `inc_cost`) VALUES
(1, 'Clear', 'Lenses that are always clear. ', '', 0),
(2, 'Transitions Signature VII', 'Color changing lenses that turn from clear indoors to dark outside. They do not turn dark in the car.', '', 60),
(3, 'Transitions XTRActive', 'Light tint indoors to dark sunglass outside.', '', 90),
(4, 'Polarized', 'Full-time dark lenses that eliminate glare and reflections. Tint Included.', '', 50),
(5, 'Drivewear', 'Polarized & Transitions lens that turns from light yellow to a darker red.', '', 140),
(6, 'Tinted', 'Eyeglass lenses that are dyed to a specific shade and density. ', '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `trifocal_size`
--

CREATE TABLE `trifocal_size` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc_short` varchar(255) NOT NULL,
  `desc_long` varchar(1024) NOT NULL,
  `inc_cost` float NOT NULL,
  `width` int(11) NOT NULL,
  `width_unit` varchar(5) NOT NULL,
  `interm_height` int(11) NOT NULL,
  `unit` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trifocal_size`
--

INSERT INTO `trifocal_size` (`id`, `name`, `desc_short`, `desc_long`, `inc_cost`, `width`, `width_unit`, `interm_height`, `unit`) VALUES
(1, 'Lined Trifocal 7x28', 'Standard size, 7x28 lined trifocals (7mm tall intermediate zone, 28mm wide segment)', 'Lined trifocal lenses correct for three focal lengths, one on top, usually for distance, and a D-shaped bottom segment that contains both intermediate and reading. 7x28 segment size.', 69, 0, 'mm', 0, 'mm'),
(2, 'Lined Trifocal 8x35', '8x35 lined trifocals (8mm tall intermediate zone, 35mm wide segment) ', 'Lined trifocal lenses correct for three focal lengths, one on top, usually for distance, and a D-shaped bottom segment that contains both intermediate and reading. 8x35 (8mm tall intermediate zone, 35mm wide trifocal) segment size.', 89, 0, 'mm', 0, 'mm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bifocal_size`
--
ALTER TABLE `bifocal_size`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `frame_type`
--
ALTER TABLE `frame_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `lens_material`
--
ALTER TABLE `lens_material`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `lens_type`
--
ALTER TABLE `lens_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Indexes for table `progressive_lens_tech`
--
ALTER TABLE `progressive_lens_tech`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `specialty_lens_type`
--
ALTER TABLE `specialty_lens_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `trifocal_size`
--
ALTER TABLE `trifocal_size`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bifocal_size`
--
ALTER TABLE `bifocal_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `frame_type`
--
ALTER TABLE `frame_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lens_material`
--
ALTER TABLE `lens_material`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `lens_type`
--
ALTER TABLE `lens_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `progressive_lens_tech`
--
ALTER TABLE `progressive_lens_tech`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `specialty_lens_type`
--
ALTER TABLE `specialty_lens_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trifocal_size`
--
ALTER TABLE `trifocal_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
