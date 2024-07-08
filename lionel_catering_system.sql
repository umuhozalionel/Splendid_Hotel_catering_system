-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2015 at 05:11 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lionel_catering_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `catering_member`
--

CREATE TABLE IF NOT EXISTS `catering_member` (
  `ctm_id` int(11) NOT NULL,
  `ct_name` varchar(111) NOT NULL,
  `ctm_member` varchar(111) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catering_member`
--

INSERT INTO `catering_member` (`ctm_id`, `ct_name`, `ctm_member`) VALUES
(7, 'Team1', 'Jaques,samuel,Rose,Desire\r\n'),
(9, 'Team2', 'Kalisa, Paul, keza, peter'),
(10, 'Team3', 'Emmanuel, janvier , ancilla, safi\r\n'),
(11, 'team4', 'anaclet, benjamin , aloys, desire');

-- --------------------------------------------------------

--
-- Table structure for table `catering_team`
--

CREATE TABLE IF NOT EXISTS `catering_team` (
  `ct_id` int(11) NOT NULL,
  `ct_name` varchar(100) NOT NULL,
  `ct_leader` varchar(111) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catering_team`
--

INSERT INTO `catering_team` (`ct_id`, `ct_name`, `ct_leader`) VALUES
(1, 'Team1', 'Karangwa Paul'),
(2, 'Team2', 'Kagaju clement'),
(3, 'Team3', 'Muhorakeye Christine'),
(4, 'Team4', 'Gasarasi Jean paul '),
(5, 'Team 5', 'Sekamana jaques');

-- --------------------------------------------------------

--
-- Table structure for table `combo`
--

CREATE TABLE IF NOT EXISTS `combo` (
  `id` int(11) NOT NULL,
  `comboname` varchar(100) NOT NULL,
  `combolist` varchar(100) NOT NULL,
  `mcat` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `combo`
--

INSERT INTO `combo` (`id`, `comboname`, `combolist`, `mcat`) VALUES
(1, '250', '1 soup/3 main course/1 salad/1 desert/rice/soft drinks', 'lunch_and_dinner'),
(2, '315', '1 soup/4 main course/1 salad/1 desert/rice/soft drinks', 'lunch_and_dinner'),
(3, '400', '1 soup/4 main course/2 salad/2 desert/rice/soft drinks', 'lunch_and_dinner');

-- --------------------------------------------------------

--
-- Table structure for table `functionhall`
--

CREATE TABLE IF NOT EXISTS `functionhall` (
  `id` int(11) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `functionhall`
--

INSERT INTO `functionhall` (`id`, `picture`, `description`) VALUES
(1, 'IMAG0020.jpg', 'salle polyvarente'),
(2, 'IMAG0003.jpg', 'rest room'),
(3, 'IMAG0004.jpg', 'dining hall'),
(4, 'IMAG0018.jpg', 'metting room'),
(5, 'IMAG0002.jpg', 'Prentice'),
(6, 'IMAG0001.jpg', 'all i do id fuck');

-- --------------------------------------------------------

--
-- Table structure for table `maincategory`
--

CREATE TABLE IF NOT EXISTS `maincategory` (
  `mc_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maincategory`
--

INSERT INTO `maincategory` (`mc_id`, `name`) VALUES
(3, 'lunch_and_dinner');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL,
  `mcat` varchar(100) NOT NULL,
  `scat` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `price` varchar(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `mcat`, `scat`, `name`, `description`, `price`, `image`) VALUES
(1, 'lunch_and_dinner', 'Chicken', 'Chicken Cordon Bleu', 'Chicken Cordon Bleu', '3000', '297368_343362655748812_392826044_n.jpg'),
(2, 'lunch_and_dinner', 'Chicken', 'Thai Chicken in Pumpkin Curries', 'Thai Chicken in Pumpkin Curries', '3590', 'Thai Chicken in Pumpkin Curries.jpg'),
(3, 'lunch_and_dinner', 'Chicken', 'Chicken Galantina', 'Chicken Galantina', '4000', 'Chicken Galantina.jpg'),
(4, 'lunch_and_dinner', 'beef', 'Baby Back Ribs', 'Baby Back Ribs', '2450', 'Baby Back Ribs.jpg'),
(5, 'lunch_and_dinner', 'beef', 'Beef tenderloin with rosemary', 'Beef tenderloin with rosemary', '3200', 'Beef tenderloin with rosemary.jpg'),
(6, 'lunch_and_dinner', 'beef', 'Savory Spare Ribs', 'Savory Spare Ribs', '2500', 'Savory Spare Ribs.jpg'),
(7, 'lunch_and_dinner', 'Soup', 'Pancit Molo', 'Pancit Molo', '1500', 'Pancit Molo.jpg'),
(8, 'lunch_and_dinner', 'Fish', 'Fish Fillet in Tartar Sauce', 'Fish Fillet in Tartar Sauce', '1500', 'Fish Fillet in Tartar Sauce.jpg'),
(9, 'lunch_and_dinner', 'Fish', 'Fish Shawarma', 'Fish Shawarma', '4650', 'Fish Shawarma.jpg'),
(10, 'lunch_and_dinner', 'Fish', 'Fish Sweet & Sour', 'Fish Sweet & Sour', '7000', 'Fish Sweet & Sour.jpg'),
(11, 'lunch_and_dinner', 'salad', 'Macaroni Salad', 'Macaroni Salad', '2000', 'aa.jpg'),
(12, 'lunch_and_dinner', 'Soup', 'corn soup', 'corn soup', '7500', 'corn soup.jpg'),
(13, 'lunch_and_dinner', 'Soup', 'cauliflower soup', 'cauliflower soup', '10000', 'cauliflowersoup.jpg'),
(14, 'lunch_and_dinner', 'Soup', 'creamy mushroom soup', 'creamy mushroom soup', '1206', 'CREAMY MUSHROOM SOUP.jpg'),
(15, 'lunch_and_dinner', 'salad', 'Chicken Macaroni', 'Chicken Macaroni', '1200', 'Chicken Macaroni.jpg'),
(16, 'lunch_and_dinner', 'salad', 'Vegetable Salad', 'Vegetable Salad', '15000', 'Vegetable Salad.jpg'),
(17, 'lunch_and_dinner', 'dessert', 'Buko Pandan', 'Buko Pandan', '4546', 'Buko Pandan,d.jpg'),
(18, 'lunch_and_dinner', 'dessert', 'leche flan', 'leche flan', '16768', 'leche flan,d.jpg'),
(19, 'lunch_and_dinner', 'dessert', 'Black Sambo', 'Black Sambo', '4450', 'Black Sambo,d.jpg'),
(20, 'lunch_and_dinner', 'dessert', 'Brazo de Mercedes', 'Brazo de Mercedes', '6500', 'Brazo de Mercedes,d.jpg'),
(21, 'lunch_and_dinner', 'beef', 'Beef Misono', 'Beef Misono', '7500', 'b,Beef Misono.jpg'),
(22, 'lunch_and_dinner', 'beef', 'beef  salpicao', 'beef  salpicao', '3500', 'b,Beef Salpicao.jpg'),
(23, 'lunch_and_dinner', 'beef', 'beef teriyaki', 'beef teriyaki', '5600', 'b,Beef Teriyaki.jpg'),
(24, 'lunch_and_dinner', 'pork', 'Pork Estofado', 'Pork Estofado', '2500', 'p,Pork Estofado.jpg'),
(25, 'lunch_and_dinner', 'pork', 'Pork Roast', 'Pork Roast', '5000', 'Pork Roast.jpg'),
(26, 'lunch_and_dinner', 'fish', 'Steamed Fish', 'Steamed Fish', '3000', 'f,Steamed Fish.jpg'),
(27, 'lunch_and_dinner', 'fish', 'Fish Salpicao', 'Fish Salpicao', '7970', 'Fish Salpicao..jpg'),
(28, 'lunch_and_dinner', 'pasta_noddles', 'Pancit Guisado', 'Pancit Guisado\r\n', '6000', 'Pancit Guisado.jpg'),
(29, 'lunch_and_dinner', 'pasta_noddles', 'lasagna', 'lasagna', '6800', 's,lasagna.jpg'),
(30, 'lunch_and_dinner', 'vegetables', 'chop suey', 'chop suey', '7000', 'v,chop suey.jpg'),
(31, 'lunch_and_dinner', 'vegetables', 'Vegetable Salad', 'Vegetable Salad', '', 'Vegetable Salad.jpg'),
(32, 'specialty', 'pork', 'barbequed pork', 'barbequed pork', '100', 'barbequed pork.jpg'),
(33, 'specialty', 'pork', 'glazed pork', 'glazed pork', '200', 'glazed pork.jpg'),
(34, 'specialty', 'chicken', 'Chicken Cordon Bleu', 'Chicken Cordon Bleu', '400', 'Chicken Cordon Bleu.jpg'),
(35, 'specialty', 'dessert', 'chocolate cake', 'chocolate cake', '400', 'chocolate cake..jpg'),
(36, 'specialty', 'dessert', 'empanada', 'empanada', '300', 'empanada.jpg'),
(37, 'specialty', 'chicken', 'chicken lollipop', 'chicken lollipop', '250', 'chicken lollipop.jpg'),
(38, 'specialty', 'fish', 'Rellenong Bangus', 'Rellenong Bangus', '200', 'Rellenong Bangus.jpg'),
(39, 'specialty', 'fish', 'Seafood Thermido', 'Seafood Thermido', '150', 'Seafood Thermido.jpg'),
(40, 'specialty', 'beef', 'tenderloin,', 'tenderloin,', '250', 'tenderloin,.jpg'),
(41, 'specialty', 'chicken', 'Chicken a la King', 'Chicken a la King', '121', 'Chicken a la King.jpg'),
(42, 'specialty', 'chicken', 'Chicken Galantina', 'Chicken Galantina', '200', 'Chicken galintina.jpg'),
(43, 'specialty', 'soup', 'Butternut Squash soup', 'Butternut Squash soup', '75', 'Butternut Squash soup.jpg'),
(44, 'specialty', 'soup', 'Ball soup', 'Ball soup', '75', 'Ball soup.jpg'),
(45, 'specialty', 'soup', 'Cream of Broccoli soup', 'Cream of Broccoli soup', '120', 'Cream of Broccoli soup.jpg'),
(46, 'specialty', 'soup', 'Roasted Carrot Soup', 'Roasted Carrot Soup', '120', 'Roaste Carrot Soup.jpg'),
(47, 'specialty', 'drinks', 'softdrinks', 'softdrinks', '15', 'cola-cola.jpg'),
(48, 'merienda', 'drinks', 'softdrinks', 'softdrinks', '', 'cola-cola.jpg'),
(49, 'lunch_and_dinner', 'drinks', 'softdrinks', 'softdrinks', '', 'cola-cola.jpg'),
(50, 'specialty', 'dessert', 'buko pie', 'buko pie', '50', 'buko pie.jpg'),
(51, 'merienda', 'pasta_noddles', 'lasagna', 'lasagna', '', 's,lasagna.jpg'),
(52, 'merienda', 'dessert', 'Brazo de Mercedes', 'Brazo de Mercedes', '', 'Brazo de Mercedes,d.jpg'),
(53, 'merienda', 'dessert', 'Buko Pandan', 'Buko Pandan\r\n', '', 'Buko Pandan,d.jpg'),
(54, 'merienda', 'dessert', 'Mango Float ', 'Mango Float', '', 'Mango Float ,d.jpg'),
(55, 'merienda', 'dessert', 'leche flan', 'leche flan', '', 'leche flan,d.jpg'),
(56, 'merienda', 'meat', 'barbeque pork', 'barbeque pork', '', 'barbequed pork.jpg'),
(57, 'merienda', 'meat', 'chicken lollipop', 'chicken lollipop', '', 'chicken lollipop.jpg'),
(58, 'merienda', 'meat', 'Chicken Cordon Bleu', 'Chicken Cordon Bleu', '', 'Chicken Cordon Bleu.jpg'),
(59, 'merienda', 'meat', 'Chicken galintina', 'Chicken galintina', '', 'Chicken galintina.jpg'),
(60, 'merienda', 'bread', 'egg sandwich', 'egg sandwich', '', 'egg sandwich.jpg'),
(61, 'merienda', 'bread', 'garlic bread', 'garlic bread', '', 'garlic bread.jpg'),
(62, 'merienda', 'bread', 'garlic cheese  breadgarlic ', 'garlic cheese  bread', '', 'garlic cheese  bread.jpg'),
(63, 'merienda', 'bread', 'toasted bread', 'toasted bread', '', 'toasted bread.jpg'),
(64, 'merienda', 'pasta_noddles', 'Spaghetti alla Boscaiola', 'Spaghetti alla Boscaiola', '', 'Spaghetti alla Boscaiola.jpg'),
(65, 'merienda', 'pasta_noddles', 'spaghetti meat balls', 'spaghetti meat balls', '', 'spaghetti meat balls.jpg'),
(66, 'merienda', 'pasta_noddles', 'Spaghetti Squash', 'Spaghetti Squash', '', 'Spaghetti Squash.JPG'),
(67, 'merienda', 'pasta_noddles', 'spaghetti with sausage', 'spaghetti with sausage', '1500', 'spaghetti with sausage.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menu_res`
--

CREATE TABLE IF NOT EXISTS `menu_res` (
  `id` int(11) NOT NULL,
  `res_id` varchar(100) NOT NULL,
  `menu` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_res`
--

INSERT INTO `menu_res` (`id`, `res_id`, `menu`, `price`) VALUES
(1, 'RS-YND2MO05', '32', '1000'),
(2, 'RS-YND2MO05', '33', '2000'),
(3, 'RS-YND2MO05', '34', '4000'),
(4, 'RS-YND2MO05', '35', '4000'),
(5, 'RS-YND2MO05', '36', '3000'),
(6, 'RS-YND2MO05', '37', '2500'),
(7, 'RS-YND2MO05', '38', '2000'),
(8, 'RS-YND2MO05', '39', '1500'),
(9, 'RS-YND2MO05', '40', '2500'),
(10, 'RS-YND2MO05', '41', '1210'),
(11, 'RS-YND2MO05', '42', '2000'),
(12, 'RS-YND2MO05', '43', '7500'),
(13, 'RS-YND2MO05', '44', '755'),
(14, 'RS-YND2MO05', '45', '1206'),
(15, 'RS-YND2MO05', '46', '1200'),
(16, 'RS-YND2MO05', '47', '1500'),
(17, 'RS-EALAJTOO', '7', '1300'),
(18, 'RS-EALAJTOO', '4', '3000'),
(19, 'RS-EALAJTOO', '5', '3590'),
(20, 'RS-EALAJTOO', '22', '4000'),
(21, 'RS-EALAJTOO', '24', '2450'),
(22, 'RS-EALAJTOO', '25', '3200'),
(23, 'RS-VFZQV07I', '51', '5500'),
(24, 'RS-VFZQV07I', '64', '1500'),
(25, 'RS-VFZQV07I', '60', '1650'),
(26, 'RS-VFZQV07I', '61', '4650'),
(27, 'RS-VFZQV07I', '62', '7000'),
(28, 'RS-VFZQV07I', '56', '4550'),
(29, 'RS-VFZQV07I', '58', '2500'),
(30, 'RS-VFZQV07I', '52', '10000'),
(31, 'RS-VFZQV07I', '48', ''),
(32, 'RS-5DE23GUU', '32', '100'),
(33, 'RS-5DE23GUU', '33', '200'),
(34, 'RS-5DE23GUU', '34', '400'),
(35, 'RS-5DE23GUU', '35', '400'),
(36, 'RS-5DE23GUU', '36', '300'),
(37, 'RS-5DE23GUU', '37', '250'),
(38, 'RS-5DE23GUU', '38', '200'),
(39, 'RS-5DE23GUU', '39', '150'),
(40, 'RS-5DE23GUU', '40', '250'),
(41, 'RS-5DE23GUU', '41', '121'),
(42, 'RS-5DE23GUU', '42', '200'),
(43, 'RS-5DE23GUU', '43', '75'),
(44, 'RS-5DE23GUU', '44', '75'),
(45, 'RS-5DE23GUU', '45', '120'),
(46, 'RS-5DE23GUU', '46', '120'),
(47, 'RS-5DE23GUU', '47', '15'),
(48, 'RS-5DE23GUU', '50', '50'),
(49, 'RS-L53U323T', '7', ''),
(50, 'RS-L53U323T', '4', ''),
(51, 'RS-L53U323T', '5', ''),
(52, 'RS-L53U323T', '24', ''),
(53, 'RS-L53U323T', '8', ''),
(54, 'RS-L53U323T', '11', ''),
(55, 'RS-L53U323T', '17', ''),
(56, 'RS-L53U323T', '49', ''),
(57, 'RS-YWL6SFX7', '7', ''),
(58, 'RS-YWL6SFX7', '4', ''),
(59, 'RS-YWL6SFX7', '6', ''),
(60, 'RS-YWL6SFX7', '25', ''),
(61, 'RS-YWL6SFX7', '2', ''),
(62, 'RS-YWL6SFX7', '11', ''),
(63, 'RS-YWL6SFX7', '17', ''),
(64, 'RS-YWL6SFX7', '49', ''),
(65, 'RS-AX4JS5QE', '7', ''),
(66, 'RS-AX4JS5QE', '4', ''),
(67, 'RS-AX4JS5QE', '5', ''),
(68, 'RS-AX4JS5QE', '24', ''),
(69, 'RS-AX4JS5QE', '15', ''),
(70, 'RS-AX4JS5QE', '17', ''),
(71, 'RS-E05OAHSO', '7', ''),
(72, 'RS-E05OAHSO', '4', ''),
(73, 'RS-E05OAHSO', '5', ''),
(74, 'RS-E05OAHSO', '6', ''),
(75, 'RS-E05OAHSO', '25', ''),
(76, 'RS-E05OAHSO', '15', ''),
(77, 'RS-E05OAHSO', '17', ''),
(78, 'RS-E05OAHSO', '49', ''),
(79, 'RS-TZUJLA4J', '7', ''),
(80, 'RS-TZUJLA4J', '12', ''),
(81, 'RS-TZUJLA4J', '4', ''),
(82, 'RS-TZUJLA4J', '21', ''),
(83, 'RS-TZUJLA4J', '2', ''),
(84, 'RS-TZUJLA4J', '16', ''),
(85, 'RS-TZUJLA4J', '17', ''),
(86, 'RS-R6ELDSB7', '51', ''),
(87, 'RS-R6ELDSB7', '64', ''),
(88, 'RS-R6ELDSB7', '60', ''),
(89, 'RS-R6ELDSB7', '61', ''),
(90, 'RS-R6ELDSB7', '62', ''),
(91, 'RS-R6ELDSB7', '56', ''),
(92, 'RS-R6ELDSB7', '57', ''),
(93, 'RS-R6ELDSB7', '52', ''),
(94, 'RS-R6ELDSB7', '53', ''),
(95, 'RS-R6ELDSB7', '48', ''),
(96, 'RS-LZ7TS4ND', '7', ''),
(97, 'RS-LZ7TS4ND', '11', ''),
(98, 'RS-LZ7TS4ND', '15', ''),
(99, 'RS-LZ7TS4ND', '17', ''),
(100, 'RS-LZ7TS4ND', '18', ''),
(101, 'RS-LZ7TS4ND', '49', ''),
(102, 'RS-LZ7TS4ND', '4', ''),
(103, 'RS-LZ7TS4ND', '24', ''),
(104, 'RS-LZ7TS4ND', '1', ''),
(105, 'RS-LZ7TS4ND', '8', ''),
(106, 'RS-YT0HPN0S', '7', ''),
(107, 'RS-YT0HPN0S', '11', ''),
(108, 'RS-YT0HPN0S', '17', ''),
(109, 'RS-YT0HPN0S', '49', ''),
(110, 'RS-YT0HPN0S', '25', ''),
(111, 'RS-YT0HPN0S', '3', ''),
(112, 'RS-YT0HPN0S', '8', ''),
(113, 'RS-YKW302D0', '7', ''),
(114, 'RS-YKW302D0', '15', ''),
(115, 'RS-YKW302D0', '19', ''),
(116, 'RS-YKW302D0', '49', ''),
(117, 'RS-YKW302D0', '4', ''),
(118, 'RS-YKW302D0', '22', ''),
(119, 'RS-YKW302D0', '1', ''),
(120, 'RS-YKW302D0', '8', ''),
(121, 'RS-ZJAVI45V', '7', ''),
(122, 'RS-ZJAVI45V', '15', ''),
(123, 'RS-ZJAVI45V', '17', ''),
(124, 'RS-ZJAVI45V', '49', ''),
(125, 'RS-ZJAVI45V', '25', ''),
(126, 'RS-ZJAVI45V', '8', ''),
(127, 'RS-N7YN5XB6', '7', ''),
(128, 'RS-N7YN5XB6', '11', ''),
(129, 'RS-N7YN5XB6', '17', ''),
(130, 'RS-N7YN5XB6', '49', ''),
(131, 'RS-N7YN5XB6', '25', ''),
(132, 'RS-N7YN5XB6', '2', ''),
(133, 'RS-N7YN5XB6', '8', ''),
(134, 'RS-KKWIJAED', '7', ''),
(135, 'RS-KKWIJAED', '11', ''),
(136, 'RS-KKWIJAED', '17', ''),
(137, 'RS-KKWIJAED', '49', ''),
(138, 'RS-KKWIJAED', '23', ''),
(139, 'RS-KKWIJAED', '2', ''),
(140, 'RS-KKWIJAED', '8', ''),
(141, 'RS-TVBQ3QAW', '7', ''),
(142, 'RS-TVBQ3QAW', '11', ''),
(143, 'RS-TVBQ3QAW', '17', ''),
(144, 'RS-TVBQ3QAW', '49', ''),
(145, 'RS-TVBQ3QAW', '6', ''),
(146, 'RS-TVBQ3QAW', '21', ''),
(147, 'RS-TVBQ3QAW', '2', ''),
(148, 'RS-NP7DDHC2', '7', ''),
(149, 'RS-NP7DDHC2', '15', ''),
(150, 'RS-NP7DDHC2', '17', ''),
(151, 'RS-NP7DDHC2', '49', ''),
(152, 'RS-NP7DDHC2', '2', ''),
(153, 'RS-NP7DDHC2', '3', ''),
(154, 'RS-NP7DDHC2', '10', ''),
(155, 'RS-0JHO0H0M', '12', ''),
(156, 'RS-0JHO0H0M', '11', ''),
(157, 'RS-0JHO0H0M', '49', ''),
(158, 'RS-0JHO0H0M', '4', ''),
(159, 'RS-0JHO0H0M', '5', ''),
(160, 'RS-0JHO0H0M', '21', ''),
(161, 'RS-PDVJOLHQ', '51', ''),
(162, 'RS-PDVJOLHQ', '64', ''),
(163, 'RS-PDVJOLHQ', '60', ''),
(164, 'RS-PDVJOLHQ', '61', ''),
(165, 'RS-PDVJOLHQ', '62', ''),
(166, 'RS-PDVJOLHQ', '58', ''),
(167, 'RS-PDVJOLHQ', '59', ''),
(168, 'RS-PDVJOLHQ', '52', ''),
(169, 'RS-PDVJOLHQ', '53', ''),
(170, 'RS-PDVJOLHQ', '48', ''),
(171, 'RS-AEJT5M73', '7', ''),
(172, 'RS-AEJT5M73', '14', ''),
(173, 'RS-AEJT5M73', '11', ''),
(174, 'RS-AEJT5M73', '17', ''),
(175, 'RS-AEJT5M73', '49', ''),
(176, 'RS-AEJT5M73', '4', ''),
(177, 'RS-AEJT5M73', '5', ''),
(178, 'RS-AEJT5M73', '24', ''),
(179, 'RS-AEJT5M73', '1', ''),
(180, 'RS-AEJT5M73', '9', ''),
(181, 'RS-P25QLSZV', '7', ''),
(182, 'RS-P25QLSZV', '11', ''),
(183, 'RS-P25QLSZV', '17', ''),
(184, 'RS-P25QLSZV', '49', ''),
(185, 'RS-P25QLSZV', '25', ''),
(186, 'RS-P25QLSZV', '2', ''),
(187, 'RS-P25QLSZV', '8', ''),
(188, 'RS-VDY5DRRU', '32', '100'),
(189, 'RS-VDY5DRRU', '33', '200'),
(190, 'RS-VDY5DRRU', '34', '400'),
(191, 'RS-VDY5DRRU', '35', '400'),
(192, 'RS-VDY5DRRU', '36', '300'),
(193, 'RS-VDY5DRRU', '37', '250'),
(194, 'RS-VDY5DRRU', '38', '200'),
(195, 'RS-VDY5DRRU', '39', '150'),
(196, 'RS-VDY5DRRU', '40', '250'),
(197, 'RS-VDY5DRRU', '41', '121'),
(198, 'RS-VDY5DRRU', '42', '200'),
(199, 'RS-VDY5DRRU', '43', '75'),
(200, 'RS-VDY5DRRU', '44', '75'),
(201, 'RS-VDY5DRRU', '45', '120'),
(202, 'RS-VDY5DRRU', '46', '120'),
(203, 'RS-VDY5DRRU', '47', '15'),
(204, 'RS-VDY5DRRU', '50', '50'),
(205, 'RS-JLAXFBH2', '7', ''),
(206, 'RS-JLAXFBH2', '15', ''),
(207, 'RS-JLAXFBH2', '20', ''),
(208, 'RS-JLAXFBH2', '49', ''),
(209, 'RS-JLAXFBH2', '4', ''),
(210, 'RS-JLAXFBH2', '24', ''),
(211, 'RS-JLAXFBH2', '1', ''),
(212, 'RS-JLAXFBH2', '2', ''),
(213, 'RS-GVEEXJZ2', '11', ''),
(214, 'RS-GVEEXJZ2', '15', ''),
(215, 'RS-GVEEXJZ2', '16', ''),
(216, 'RS-ZEM2WGLW', '11', ''),
(217, 'RS-ZEM2WGLW', '5', ''),
(218, 'RS-ZEM2WGLW', '24', ''),
(219, 'RS-ZEM2WGLW', '27', ''),
(220, 'RS-MTFAY4FN', '11', ''),
(221, 'RS-MTFAY4FN', '24', '');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `id` int(11) NOT NULL,
  `res_id` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `motif` varchar(100) NOT NULL,
  `venueaddress` varchar(100) NOT NULL,
  `type_events` varchar(100) NOT NULL,
  `type_res` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `pax` varchar(100) NOT NULL,
  `combo` int(11) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `type_catering` varchar(100) NOT NULL,
  `team` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `resdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `res_id`, `firstname`, `lastname`, `address`, `contact`, `motif`, `venueaddress`, `type_events`, `type_res`, `date`, `pax`, `combo`, `amount`, `type_catering`, `team`, `status`, `time`, `resdate`) VALUES
(0, 'RS-MTFAY4FN', 'YT', 'UYH', 'UIG', '072333443', 'YR5TGH', 'RYUGOIJ', 'DFGYHJ', 'catering', '10/03/2015', '334', 3, '146960', 'lunch_and_dinner', 'Team2', 'Approved', '13:00AM', '09/16/2015');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `sc_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`sc_id`, `name`) VALUES
(1, 'Soup'),
(2, 'salad'),
(3, 'Bread'),
(4, 'Meat'),
(5, 'Drinks'),
(6, 'Dessert'),
(7, 'beef'),
(8, 'Pork'),
(9, 'Chicken'),
(10, 'Fish'),
(11, 'pasta_noddles'),
(12, 'Vegetables');

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE IF NOT EXISTS `suggestion` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `comment` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suggestion`
--

INSERT INTO `suggestion` (`id`, `name`, `subject`, `comment`) VALUES
(4, 'Muhoza', 'Food', 'Oh God Good Service Enough'),
(5, 'liza', 'Services', 'very good in services..more power  luv aaaaaaaaa!!!!!!!!!!!!!'),
(6, 'christian', 'Food', 'No Body Than you'),
(7, 'kagabo', 'Food', 'Precious!!!!!!!!!'),
(8, 'liza Dumaran', 'Food', 'The food is the best....amazing....'),
(9, 'Manuel', 'Food', 'your food is very good'),
(11, 'Kajuga Jean', 'Food', 'Murakaze basaza'),
(19, 'lionel', 'Food', 'hgduwahgdwqiksadlwqsda'),
(27, 'ewdtfeqa', 'Food', 'safasfasz'),
(34, 'fdghjvk', 'Food', 'esrtyugoihoyiufydtoi');

-- --------------------------------------------------------

--
-- Table structure for table `type_of_reservation`
--

CREATE TABLE IF NOT EXISTS `type_of_reservation` (
  `tr_id` int(11) NOT NULL,
  `tr_description` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_of_reservation`
--

INSERT INTO `type_of_reservation` (`tr_id`, `tr_description`) VALUES
(1, 'catering'),
(2, 'catering'),
(3, 'catering'),
(4, 'catering'),
(5, 'catering'),
(6, 'catering'),
(7, 'catering'),
(8, 'catering'),
(9, 'functionroom'),
(10, 'functionroom'),
(11, 'functionroom'),
(12, 'functionroom'),
(13, 'catering'),
(14, 'catering'),
(15, 'catering'),
(16, 'functionroom'),
(17, 'catering'),
(18, 'catering'),
(19, 'catering'),
(20, 'catering'),
(21, 'catering'),
(22, 'catering'),
(23, 'functionroom'),
(24, 'catering'),
(25, 'catering'),
(26, 'catering'),
(27, 'catering'),
(28, 'catering'),
(29, 'catering'),
(30, 'catering'),
(31, 'catering'),
(32, 'catering'),
(33, 'catering'),
(34, 'catering'),
(35, 'catering'),
(36, 'catering'),
(37, 'catering'),
(38, 'catering'),
(39, 'catering'),
(40, 'catering'),
(41, 'catering'),
(42, 'catering'),
(43, 'functionroom'),
(44, 'catering'),
(45, 'catering'),
(46, 'catering'),
(47, 'catering'),
(48, 'catering'),
(49, 'catering'),
(50, 'catering'),
(51, 'catering'),
(52, 'catering'),
(53, 'catering'),
(54, 'functionroom'),
(55, 'catering'),
(56, 'functionroom'),
(57, 'catering'),
(58, 'catering'),
(59, 'catering'),
(60, 'catering'),
(61, 'catering'),
(62, 'catering'),
(63, 'catering'),
(64, 'functionroom'),
(65, 'catering'),
(66, 'catering'),
(67, 'catering'),
(68, 'catering'),
(69, 'catering'),
(70, 'catering'),
(71, 'catering'),
(72, 'catering'),
(73, 'catering'),
(74, 'catering'),
(75, 'catering'),
(76, 'catering'),
(77, 'catering'),
(78, 'catering'),
(79, 'catering'),
(80, 'catering'),
(81, 'catering'),
(82, 'catering'),
(83, 'catering'),
(84, 'catering'),
(85, 'catering'),
(86, 'catering'),
(87, 'catering'),
(88, 'catering'),
(89, 'catering');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `power` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `power`) VALUES
(1, 'Lionel', 'toni', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catering_member`
--
ALTER TABLE `catering_member`
  ADD PRIMARY KEY (`ctm_id`);

--
-- Indexes for table `catering_team`
--
ALTER TABLE `catering_team`
  ADD PRIMARY KEY (`ct_id`);

--
-- Indexes for table `combo`
--
ALTER TABLE `combo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `functionhall`
--
ALTER TABLE `functionhall`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maincategory`
--
ALTER TABLE `maincategory`
  ADD PRIMARY KEY (`mc_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_res`
--
ALTER TABLE `menu_res`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`sc_id`);

--
-- Indexes for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_of_reservation`
--
ALTER TABLE `type_of_reservation`
  ADD PRIMARY KEY (`tr_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catering_member`
--
ALTER TABLE `catering_member`
  MODIFY `ctm_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `catering_team`
--
ALTER TABLE `catering_team`
  MODIFY `ct_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `combo`
--
ALTER TABLE `combo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `functionhall`
--
ALTER TABLE `functionhall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `maincategory`
--
ALTER TABLE `maincategory`
  MODIFY `mc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `menu_res`
--
ALTER TABLE `menu_res`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=222;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `sc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `type_of_reservation`
--
ALTER TABLE `type_of_reservation`
  MODIFY `tr_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
