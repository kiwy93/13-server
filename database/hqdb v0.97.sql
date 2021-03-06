-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 30, 2012 at 03:41 PM
-- Server version: 5.1.44
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hqdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `name` varchar(40) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `fbid` varchar(100) NOT NULL,
  PRIMARY KEY (`fbid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`name`, `address`, `phone`, `email`, `fbid`) VALUES
('Hunar Khanna', NULL, NULL, 'hunur.khanna@gmail.com', '1475356349');

-- --------------------------------------------------------

--
-- Table structure for table `batch_request`
--

CREATE TABLE IF NOT EXISTS `batch_request` (
  `outlet_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(15) NOT NULL,
  PRIMARY KEY (`outlet_id`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch_request`
--


-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE IF NOT EXISTS `inventory` (
  `outlet_id` int(11) NOT NULL,
  `product_barcode` int(20) NOT NULL,
  `stock` int(11) NOT NULL,
  `selling_price` double NOT NULL,
  `min_stock` int(11) NOT NULL,
  `status` varchar(15) NOT NULL,
  PRIMARY KEY (`outlet_id`,`product_barcode`),
  KEY `product_barcode` (`product_barcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`outlet_id`, `product_barcode`, `stock`, `selling_price`, `min_stock`, `status`) VALUES
(4, 11521340, 3315, 21.8, 2415, 'ADDED'),
(4, 11760294, 4715, 82.4, 3065, 'ADDED'),
(4, 12008016, 1975, 32.05, 100, 'ADDED'),
(4, 13523279, 2905, 85.5, 100, 'ADDED'),
(4, 15521955, 3680, 95.45, 1180, 'ADDED'),
(4, 16543556, 4740, 3.45, 3840, 'ADDED'),
(4, 16686549, 4545, 97.25, 3845, 'ADDED'),
(4, 16948044, 590, 34.25, 100, 'ADDED'),
(4, 18121244, 4775, 41.5, 2925, 'ADDED'),
(4, 18164847, 2560, 79.3, 160, 'ADDED'),
(4, 18175970, 1380, 85.05, 100, 'ADDED'),
(4, 18243337, 5385, 60.05, 2035, 'ADDED'),
(4, 19619262, 4340, 86.65, 890, 'ADDED'),
(4, 20151308, 1980, 20.65, 380, 'ADDED'),
(4, 20219909, 4410, 42.5, 3660, 'ADDED'),
(4, 20909394, 4540, 27.95, 1690, 'ADDED'),
(4, 21884433, 1050, 22.85, 100, 'ADDED'),
(4, 22016225, 4930, 55.8, 4230, 'ADDED'),
(4, 23946308, 2035, 94, 1785, 'ADDED'),
(4, 24067314, 5085, 90.85, 1885, 'ADDED'),
(4, 24768324, 1695, 10.4, 100, 'ADDED'),
(4, 26264360, 4520, 45.7, 2370, 'ADDED'),
(4, 26653184, 1865, 29.2, 100, 'ADDED'),
(4, 27693372, 5155, 65.4, 4755, 'ADDED'),
(4, 28127291, 2515, 86.4, 1565, 'ADDED'),
(4, 28323264, 5360, 44.9, 3510, 'ADDED'),
(4, 28366167, 815, 98.05, 100, 'ADDED'),
(4, 30011470, 1300, 31.55, 100, 'ADDED'),
(4, 30300675, 5300, 51.5, 4400, 'ADDED'),
(4, 30364600, 2275, 70.15, 1275, 'ADDED'),
(4, 31129261, 1295, 71.65, 100, 'ADDED'),
(4, 31555897, 820, 61, 100, 'ADDED'),
(4, 32592458, 5335, 97.35, 4435, 'ADDED'),
(4, 32703379, 3665, 53.15, 100, 'ADDED'),
(4, 33188933, 1215, 40.85, 100, 'ADDED'),
(4, 33464262, 3300, 85.25, 100, 'ADDED'),
(4, 33491310, 575, 37.85, 100, 'ADDED'),
(4, 34571368, 4640, 78.3, 2690, 'ADDED'),
(4, 34994031, 1390, 51.4, 100, 'ADDED'),
(4, 35412528, 4350, 56.65, 100, 'ADDED'),
(4, 35653240, 2310, 68.4, 100, 'ADDED'),
(4, 35760875, 2610, 14.45, 100, 'ADDED'),
(4, 36002736, 4310, 24.05, 100, 'ADDED'),
(4, 36092718, 4015, 56.6, 2815, 'ADDED'),
(4, 36795157, 3225, 80.6, 1675, 'ADDED'),
(4, 37676915, 4835, 78.95, 2135, 'ADDED'),
(4, 38004786, 5410, 90.15, 3010, 'ADDED'),
(4, 40098529, 4490, 83.45, 990, 'ADDED'),
(4, 40155785, 1990, 41.8, 1290, 'ADDED'),
(4, 40443390, 3425, 33.85, 100, 'ADDED'),
(4, 40924160, 1525, 45.6, 100, 'ADDED'),
(4, 41660339, 2430, 30.2, 100, 'ADDED'),
(4, 43741253, 5155, 30, 4405, 'ADDED'),
(4, 46547386, 4920, 82.65, 4370, 'ADDED'),
(4, 47974430, 4895, 35.4, 4045, 'ADDED'),
(4, 50148962, 1495, 46.35, 895, 'ADDED'),
(4, 51312536, 5200, 40.35, 1350, 'ADDED'),
(4, 51336619, 3195, 36.05, 1895, 'ADDED'),
(4, 51808477, 2810, 47.1, 1710, 'ADDED'),
(4, 52240015, 4930, 1.25, 680, 'ADDED'),
(4, 54053173, 655, 37.9, 100, 'ADDED'),
(4, 54528680, 4065, 83.5, 2465, 'ADDED'),
(4, 55659812, 1740, 46.3, 100, 'ADDED'),
(4, 56208845, 1220, 96.3, 100, 'ADDED'),
(4, 59030623, 3325, 26.85, 2625, 'ADDED'),
(4, 61187597, 3605, 9.95, 3155, 'ADDED'),
(4, 63502056, 965, 74.8, 100, 'ADDED'),
(4, 64677697, 865, 4.75, 100, 'ADDED'),
(4, 65201080, 2200, 92.5, 1250, 'ADDED'),
(4, 65871735, 4460, 71.25, 760, 'ADDED'),
(4, 66752080, 3315, 93.8, 1215, 'ADDED'),
(4, 66765410, 920, 18.4, 220, 'ADDED'),
(4, 67531375, 890, 21.15, 100, 'ADDED'),
(4, 67775131, 3705, 82.9, 100, 'ADDED'),
(4, 67859788, 5350, 14.45, 2800, 'ADDED'),
(4, 68508930, 1460, 65.3, 100, 'ADDED'),
(4, 69693583, 3355, 57.6, 3205, 'ADDED'),
(4, 70525778, 1820, 87.45, 100, 'ADDED'),
(4, 75506105, 2580, 66.65, 100, 'ADDED'),
(4, 76409993, 1910, 96.15, 1010, 'ADDED'),
(4, 77464010, 3330, 86.25, 780, 'ADDED'),
(4, 78107011, 560, 52.25, 100, 'ADDED'),
(4, 79951082, 4295, 7.55, 100, 'ADDED'),
(4, 80796672, 1835, 80.6, 100, 'ADDED'),
(4, 81856054, 1965, 19.7, 815, 'ADDED'),
(4, 81889450, 1660, 64.85, 100, 'ADDED'),
(4, 82129140, 2840, 36.75, 100, 'ADDED'),
(4, 83024065, 1595, 63.2, 295, 'ADDED'),
(4, 83829674, 4470, 71.25, 4020, 'ADDED'),
(4, 83920592, 2540, 65.7, 100, 'ADDED'),
(4, 86377180, 4020, 18.15, 2670, 'ADDED'),
(4, 86747844, 3895, 38.3, 2645, 'ADDED'),
(4, 88491799, 1205, 94.35, 655, 'ADDED'),
(4, 88723081, 2925, 4.15, 100, 'ADDED'),
(4, 90114604, 2905, 2.75, 100, 'ADDED'),
(4, 90359597, 850, 85.45, 100, 'ADDED'),
(4, 90713781, 4400, 90.65, 3850, 'ADDED'),
(4, 91000270, 2290, 66.45, 2140, 'ADDED'),
(4, 93404773, 2050, 6.2, 100, 'ADDED'),
(4, 93719528, 3130, 23.05, 830, 'ADDED');

-- --------------------------------------------------------

--
-- Table structure for table `online_transaction`
--

CREATE TABLE IF NOT EXISTS `online_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(100) NOT NULL,
  `fbid` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(15) NOT NULL DEFAULT 'PENDING',
  PRIMARY KEY (`id`),
  KEY `fbid` (`fbid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `online_transaction`
--


-- --------------------------------------------------------

--
-- Table structure for table `online_transaction_details`
--

CREATE TABLE IF NOT EXISTS `online_transaction_details` (
  `id` int(11) NOT NULL,
  `barcode` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`,`barcode`),
  KEY `barcode` (`barcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online_transaction_details`
--


-- --------------------------------------------------------

--
-- Table structure for table `outlet`
--

CREATE TABLE IF NOT EXISTS `outlet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `outlet`
--

INSERT INTO `outlet` (`id`, `s_name`, `address`) VALUES
(1, 'Admin', 'Abc, Singapore'),
(3, 'huansd', 'adasd'),
(4, 'Online', 'NA');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `name` varchar(150) NOT NULL,
  `category` varchar(100) NOT NULL,
  `barcode` int(11) NOT NULL,
  `cost_price` float NOT NULL,
  `manufacturer` varchar(30) NOT NULL,
  `image` varchar(250) NOT NULL DEFAULT '/images/noimage.jpeg',
  PRIMARY KEY (`barcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`name`, `category`, `barcode`, `cost_price`, `manufacturer`, `image`) VALUES
('Money Clip', 'Breakfast Foods', 11521340, 21.8, '3315', 'http://www.smokescenenyc.com/money-clips.jpg'),
('4 ink colour ball pen', 'Tobacco Papers', 11760294, 82.4, '4715', 'http://naijaintellect.files.wordpress.com/2012/07/ballpoint-pen-parts-2.jpg'),
('Duffle cooler bag', 'Toys & Games', 12008016, 32.05, '1975', 'http://www.robbinssports.com/images/A4-N8106-Two-Color-Athletic-Duffle.jpg'),
('Silver Round Zipper Tin', 'Gourmet Food', 13523279, 85.5, '2905', 'http://www.chinawholesalegift.com/pic3/2010-9/13/coin-bank-tin-in-round-shape-with-zipper-20555433960.jpg'),
('ASSORTED COLOUR JELLY BEANS IN SCREW CAP JAR', 'Automotive', 15521955, 95.45, '3680', 'http://www.execugifts.com.au/images/MM4Z1V461VIP9MMNGibELBGtGtMf/Assorted-Colour-Jelly-Beans-In-Screw-Cap-Jar.jpg'),
('ANTI STRESS SOCCER BALL', 'Bakery', 16543556, 3.45, '4740', 'http://www.redpromotional.com.au/image/cache/data/Products/S13-500x500.jpg'),
('Non-woven shopper bag', 'Tools, Auto & Industrial', 16686549, 97.25, '4545', 'http://royallink.com.sg/Categories/Shopping%20Bag/SB003%20-%20Khaki%20Shopper%20Bag.jpg'),
('Tape measure w/ carabiner hook.', 'Athletic & Outdoor Clothing', 16948044, 34.25, '590', 'http://www.premium-partners.com/Upload/Picture_3465_22.jpg'),
('Bath Salts Bottle', 'Video On Demand', 18121244, 41.5, '4775', 'http://4.bp.blogspot.com/_Yoa2qeMANqQ/TUiuJBjJSPI/AAAAAAAABTo/KGMzCgayfSQ/s1600/DSCF0359.JPG'),
('Standard 12 inch (30cm) Balloons', 'Video Games', 18164847, 79.3, '2560', 'http://www.damascusfair.org/Blue_Balloona.gif'),
('Rectangular Keyring', 'MP3 Downloads', 18175970, 85.05, '1380', 'http://dist.imagecollection.com.au/images/products/D482.jpg'),
('Highlighter pen with memo pad', 'Grocery, Health & Beauty', 18243337, 60.05, '5385', 'http://www.freshpromotions.com.au/products/memo-pad-holder1.jpg'),
('Sports Towel', 'Hair Removal', 19619262, 86.65, '4340', 'http://www.acasports.co.uk/images/products/full/speedo_sports_towel_blue.jpg'),
('Cotton Hatbands', 'Cell Phones & Service', 20151308, 20.65, '1980', 'http://www.stateside.com.au/images/Hatbands_lge.jpg'),
('Techno Flash Drive 256MB', 'Bottle', 20219909, 42.5, '4410', 'http://upload.wikimedia.org/wikipedia/commons/thumb/8/86/SanDisk_Cruzer_Micro.png/220px-SanDisk_Cruzer_Micro.png'),
('Ladies Aston Short Sleeve', 'Printers & Ink', 20909394, 27.95, '4540', 'http://image.made-in-china.com/2f0j00fvIteMRgOucC/Ladies-Check-Short-Sleeve-Shirt.jpg'),
('A4 Portfolio', 'Video Games for Kids', 21884433, 22.85, '1050', 'http://www.ad-promotion-gift.com/pupload/2400/MARKSMAN_CLASSICAL_A4_PORTFOLIO_14695.jpg'),
('Wired Backpack', 'Home & Garden', 22016225, 55.8, '4930', 'http://www.backcountry.com/images/items/medium/QKS/QKS4882/BK.jpg'),
('Trend Wine Cooler', 'Industrial & Scientific', 23946308, 94, '2035', 'http://i.ebayimg.com/00/s/NTAwWDUwMA==/$(KGrHqV,!i0E9gve!qvOBP)tcG7bFg~~48_35.JPG'),
('Travel Clock', 'MP3 & Media Players', 24067314, 90.85, '5085', 'http://www.gemnation.com/images/watches/Pane/PAM00173.jpg'),
('CONTOUR BALLPOINT PEN ', 'Outdoor Power Equipment', 24768324, 10.4, '1695', 'http://www.proprofs.com/flashcards/upload/q6326015.jpg'),
('White paper shopping bag ', 'Team Sports', 26264360, 45.7, '4520', 'http://www.webstaurantstore.com/white-shopping-bag-with-handles-13-x-7-x-17-250-bundle/white-shopping-bag-with-handles-13-x-7-x-17-250-bundle.jpg'),
('Whistle Keyring', 'Accessories', 26653184, 29.2, '1865', 'http://www.freshpromotions.com.au/products/metal-whistle-keyring.jpg'),
('Blue ink ball pen ', 'Nursery', 27693372, 65.4, '5155', 'http://www.earthinpictures.com/stuff/office_and_school/stationery/blue_plastic_pen.jpg'),
('Acrylic Beanie ', 'Guinness', 28127291, 86.4, '2515', 'http://cache0.bigcartel.com/product_images/72354267/no_fit_state_american_apparel_black_2_beanie.jpg'),
('New Orleans Mug', 'Kindle DX', 28323264, 44.9, '5360', 'http://www.positiveratio.com/wp-content/uploads/2012/04/Coffee-Mug.jpg'),
('Urban Sticky Note Holder', 'Training Pants', 28366167, 98.05, '815', 'http://www.qualitylogoproducts.com/custom-bags/deluxe-sticky-noteholder-extralarge.jpg'),
('Goggles', 'Outdoor Recreation', 30011470, 31.55, '1300', 'http://www.adhesive.com/catImages/accessory/L/AA1GOGGCHSP-goggles_L.jpg'),
('Mesh Sports Cap', 'Shower & Bath Products', 30300675, 51.5, '5300', 'http://www.baeshiow.com.tw/WMPics/PrdtGroup/Cap/Sports_Cap/Sports_Cap.jpg'),
('5 Panel Trucker Mesh Cap', 'Drinks', 30364600, 70.15, '2275', 'http://rlv.zcache.com/certified_freight_relocation_engineer_red_mesh_cap_hat-p148327882594052637enxqa_400.jpg'),
('Mulberry', 'Jewelry', 31129261, 71.65, '1295', '/images/noimage.jpeg'),
('Pillow Pack', 'Kindle Store', 31555897, 61, '820', '/images/noimage.jpeg'),
('A5 Eco Notepad', 'Liquor', 32592458, 97.35, '5335', '/images/noimage.jpeg'),
('Hourglass with blue sand', 'Home Care', 32703379, 53.15, '3665', '/images/noimage.jpeg'),
('White Lip Balm Pot', 'Seasonal', 33188933, 40.85, '1215', '/images/noimage.jpeg'),
('Koeskin Zip Round Portfolio', 'Travel Wipes', 33464262, 85.25, '3300', '/images/noimage.jpeg'),
('Two tone jute shopping bag', 'Bath Products', 33491310, 37.85, '575', '/images/noimage.jpeg'),
('CLASSIC PAPER STRING STRAW HAT ', 'Golf', 34571368, 78.3, '4640', '/images/noimage.jpeg'),
('Dill', 'Toys, Kids & Baby', 34994031, 51.4, '1390', '/images/noimage.jpeg'),
('Fennel, Sweet', 'Boardgames', 35412528, 56.65, '4350', '/images/noimage.jpeg'),
('Symphony Gold Top Pen', 'Shampoo', 35653240, 68.4, '2310', '/images/noimage.jpeg'),
('Ball pen with rubber grip', 'Fan Shop', 35760875, 14.45, '2610', '/images/noimage.jpeg'),
('A5 Leather Compendium', 'Health & Safety', 36002736, 24.05, '4310', '/images/noimage.jpeg'),
('Silver Round Zipper Tin', 'Condiments & Dressings', 36092718, 56.6, '4015', '/images/noimage.jpeg'),
('Metal ball pen', 'Nursery', 36795157, 80.6, '3225', '/images/noimage.jpeg'),
('ROUND METAL CASE FLASHLIGHT KEYTAG ', 'Home & Garden', 37676915, 78.95, '4835', '/images/noimage.jpeg'),
('Java Mini Mug', 'Grocery, Health & Beauty', 38004786, 90.15, '5410', '/images/noimage.jpeg'),
('Mens Short Sleeve Metro Shirt ', 'Industrial & Scientific', 40098529, 83.45, '4490', '/images/noimage.jpeg'),
('Vision Memo Set', 'Desktops & Servers', 40155785, 41.8, '1990', '/images/noimage.jpeg'),
('BALL POINT PEN', 'Rice Pasta & Grains', 40443390, 33.85, '3425', '/images/noimage.jpeg'),
('Pen and pencil set', 'Oil', 40924160, 45.6, '1525', '/images/noimage.jpeg'),
('MEGA KLAPPER', 'Jewelry', 41660339, 30.2, '2430', '/images/noimage.jpeg'),
('Aircraft Keyring', 'Accessories', 43741253, 30, '5155', '/images/noimage.jpeg'),
('Piggy bank', 'Toys & Games', 46547386, 82.65, '4920', '/images/noimage.jpeg'),
('HITME Ball pen with light bulb', 'Food', 47974430, 35.4, '4895', '/images/noimage.jpeg'),
('Mini Cyber Brushes', 'All Sports & Outdoors', 50148962, 46.35, '1495', '/images/noimage.jpeg'),
('Emergency raincoat hermetic bag', 'Toys, Kids & Baby', 51312536, 40.35, '5200', '/images/noimage.jpeg'),
('A4 Leather Binder Retractable', 'Grocery, Health & Beauty', 51336619, 36.05, '3195', '/images/noimage.jpeg'),
('Corniche 4 pcs shoulder picnic pack', 'Blu-ray', 51808477, 47.1, '2810', '/images/noimage.jpeg'),
('20 pcs Small first aid kit', 'Blu-ray', 52240015, 1.25, '4930', '/images/noimage.jpeg'),
('Aquatic ball set', 'Home Appliances', 54053173, 37.9, '655', '/images/noimage.jpeg'),
('SIM Card Data Saver - with Phone Book', 'Magazines', 54528680, 83.5, '4065', '/images/noimage.jpeg'),
('SOLIS - Y224 Engraved', 'Motorcycle & ATV', 55659812, 46.3, '1740', '/images/noimage.jpeg'),
('Poly Cotton Bucket Hat', 'Health & Personal Care', 56208845, 96.3, '1220', '/images/noimage.jpeg'),
('BHC Golf Visor With Magnetic Marker', 'Stop Smoking', 59030623, 26.85, '3325', '/images/noimage.jpeg'),
('Business Card Holder', 'Musical Instruments', 61187597, 9.95, '3605', '/images/noimage.jpeg'),
('12 colour pencil in tin box ', 'Musical Instruments', 63502056, 74.8, '965', '/images/noimage.jpeg'),
('Concord', 'Team Sports', 64677697, 4.75, '865', '/images/noimage.jpeg'),
('Map of Australia Keyring', 'Furniture & DÈcor', 65201080, 92.5, '2200', '/images/noimage.jpeg'),
('Papaya', 'Seasonal', 65871735, 71.25, '4460', '/images/noimage.jpeg'),
('Rock Rose', 'Ready To Drink', 66752080, 93.8, '3315', '/images/noimage.jpeg'),
('WHITE MICROFIBRE LENS CLOTH', 'Grocery, Health & Beauty', 66765410, 18.4, '920', '/images/noimage.jpeg'),
('Flash Sports Bag', 'Jewelry', 67531375, 21.15, '890', '/images/noimage.jpeg'),
('LIGHT BULB PAPERCLIPS ON MAGNETIC BASE', 'Bath Products', 67775131, 82.9, '3705', '/images/noimage.jpeg'),
('Wooden Mirror', 'Natural & Organic', 67859788, 14.45, '5350', '/images/noimage.jpeg'),
('Outdoors Kit', 'Video Games', 68508930, 65.3, '1460', '/images/noimage.jpeg'),
('First Aid kit in EVA', 'MP3 Downloads', 69693583, 57.6, '3355', '/images/noimage.jpeg'),
('Tentacle USB Hub', 'Grocery', 70525778, 87.45, '1820', '/images/noimage.jpeg'),
('Corporate Colour Mini Jelly Beans In 6cm Canister  ', 'Incontinence Supplies', 75506105, 66.65, '2580', '/images/noimage.jpeg'),
('Optically Secure', 'Musical Instruments', 76409993, 96.15, '1910', '/images/noimage.jpeg'),
('Metal twist ball pen', 'Wipes Refills', 77464010, 86.25, '3330', '/images/noimage.jpeg'),
('BIG WAVE TRANSPARENT KEYTAG', 'Clothing & Accessories', 78107011, 52.25, '560', '/images/noimage.jpeg'),
('Anti-stress football', 'Skin Care', 79951082, 7.55, '4295', '/images/noimage.jpeg'),
('Clip it', 'Books, newspapers & more', 80796672, 80.6, '1835', '/images/noimage.jpeg'),
('ERGO EXTRA', 'Accessories', 81856054, 19.7, '1965', '/images/noimage.jpeg'),
('Cinnamon, Cassia', 'Health & Personal Care', 81889450, 64.85, '1660', '/images/noimage.jpeg'),
('Transparent solar calculator', 'Personal Care', 82129140, 36.75, '2840', '/images/noimage.jpeg'),
('Larkspur', 'MP3 Downloads', 83024065, 63.2, '1595', '/images/noimage.jpeg'),
('Non woven Kit Bag', 'Digital Downloads', 83829674, 71.25, '4470', '/images/noimage.jpeg'),
('Wine opener', 'Shoes', 83920592, 65.7, '2540', '/images/noimage.jpeg'),
('SIM CARD BACKUP', 'Body Care', 86377180, 18.15, '4020', '/images/noimage.jpeg'),
('Torch Tape Measure', 'Incontinence Supplies', 86747844, 38.3, '3895', '/images/noimage.jpeg'),
('fluro whistle', 'Toiletries', 88491799, 94.35, '1205', '/images/noimage.jpeg'),
('Vibe Pen', 'Video Games', 88723081, 4.15, '2925', '/images/noimage.jpeg'),
('Stevia', 'Musical Instruments', 90114604, 2.75, '2905', '/images/noimage.jpeg'),
('Double Wine Bottle Carrier', 'Fan Shop', 90359597, 85.45, '850', '/images/noimage.jpeg'),
('Fabio VOIP Earphone and Microphone', 'Video On Demand', 90713781, 90.65, '4400', '/images/noimage.jpeg'),
('Classic mechanical pencil', 'Vacuums & Storage', 91000270, 66.45, '2290', '/images/noimage.jpeg'),
('Ultra Vista Ballpoint pen', 'Athletic & Outdoor Clothing', 93404773, 6.2, '2050', '/images/noimage.jpeg'),
('Lemon Grass', 'Health & Personal Care', 93719528, 23.05, '3130', '/images/noimage.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `request_details`
--

CREATE TABLE IF NOT EXISTS `request_details` (
  `outlet_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `barcode` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `received` tinyint(1) NOT NULL,
  PRIMARY KEY (`outlet_id`,`date`,`barcode`),
  KEY `barcode` (`barcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_details`
--


-- --------------------------------------------------------

--
-- Table structure for table `revenue`
--

CREATE TABLE IF NOT EXISTS `revenue` (
  `outlet_id` int(11) NOT NULL,
  `revenue` double NOT NULL,
  `barcode` int(20) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`outlet_id`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `revenue`
--


-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `id` int(11) NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`,`outlet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--


-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE IF NOT EXISTS `transaction_details` (
  `id` int(11) NOT NULL,
  `outlet_id` int(11) NOT NULL,
  `barcode` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`,`outlet_id`,`barcode`),
  KEY `outlet_id` (`outlet_id`),
  KEY `barcode` (`barcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_details`
--


--
-- Constraints for dumped tables
--

--
-- Constraints for table `batch_request`
--
ALTER TABLE `batch_request`
  ADD CONSTRAINT `batch_request_ibfk_1` FOREIGN KEY (`outlet_id`) REFERENCES `outlet` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`outlet_id`) REFERENCES `outlet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`product_barcode`) REFERENCES `product` (`barcode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `online_transaction`
--
ALTER TABLE `online_transaction`
  ADD CONSTRAINT `online_transaction_ibfk_1` FOREIGN KEY (`fbid`) REFERENCES `account` (`fbid`);

--
-- Constraints for table `online_transaction_details`
--
ALTER TABLE `online_transaction_details`
  ADD CONSTRAINT `online_transaction_details_ibfk_1` FOREIGN KEY (`id`) REFERENCES `online_transaction` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `online_transaction_details_ibfk_2` FOREIGN KEY (`barcode`) REFERENCES `inventory` (`product_barcode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `request_details`
--
ALTER TABLE `request_details`
  ADD CONSTRAINT `request_details_ibfk_3` FOREIGN KEY (`outlet_id`) REFERENCES `batch_request` (`outlet_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `request_details_ibfk_4` FOREIGN KEY (`barcode`) REFERENCES `inventory` (`product_barcode`) ON DELETE CASCADE;

--
-- Constraints for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_ibfk_1` FOREIGN KEY (`id`) REFERENCES `transaction` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_details_ibfk_2` FOREIGN KEY (`outlet_id`) REFERENCES `inventory` (`outlet_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_details_ibfk_3` FOREIGN KEY (`barcode`) REFERENCES `inventory` (`product_barcode`) ON DELETE CASCADE ON UPDATE CASCADE;
