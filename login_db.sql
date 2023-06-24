-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2022 at 06:01 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(15) NOT NULL,
  `Item_name` varchar(222) NOT NULL,
  `Price` int(12) NOT NULL,
  `image` varchar(255) NOT NULL,
  `Quantity` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `Item_name`, `Price`, `image`, `Quantity`) VALUES
(150, 'Putoline Classic Scooter 74100 Engine Oil 1 L', 900, '1669979158.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categorios`
--

CREATE TABLE `categorios` (
  `id` int(11) NOT NULL,
  `Item_name` varchar(191) NOT NULL,
  `Vehical_type` varchar(191) NOT NULL,
  `Descriptions` varchar(200) NOT NULL,
  `Price` int(100) NOT NULL,
  `Quntitiy` int(100) NOT NULL,
  `image` varchar(191) NOT NULL,
  `Popular` tinyint(4) NOT NULL DEFAULT 0,
  `Vehical` tinyint(15) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorios`
--

INSERT INTO `categorios` (`id`, `Item_name`, `Vehical_type`, `Descriptions`, `Price`, `Quntitiy`, `image`, `Popular`, `Vehical`) VALUES
(30, 'Mobil 1 – 0W-20 – Advanced Full Synthetic Motor Oil – 208L', 'passenger cars, SUV’s, vans, and light trucks.', '\"Helps to reduce oil aging resulting in long lasting protection Outstanding low temperature capabilities Quick cold weather starting and fast protection helps to extend engine life Excellent overall l', 100, 0, '1669960861.jpg', 1, 0),
(32, 'Mobil Super 2000 5W-30 – Semi Synthetic Motor Oil – 1L', 'Passenger cars, SUV’s, light trucks and vans', '\"Excellent wear protection Excellent engine cleanliness Excellent high temperature protection Excellent fuel economy\"', 275, 2, '1669962402.jpg', 1, 0),
(33, 'Mobil Super 1000 10W-30- Mineral Multigrade Motor Oil – 4L', 'Passenger cars, SUV’s, light trucks and vans', '\"Extended protection against engine wear and deposits formation Engine protection during start up Helps combat sludge\"', 975, 4, '1669962487.jpg', 1, 0),
(34, 'Mobil 1 ESP – 5W-30 – Advanced Full Synthetic Motor Oil – 1L', 'latest passenger cars, SUVs and  light vans.', '\" Helps to reduce particulate build-up in Diesel Particulate Filters Helps to reduce poisoning of Gasoline Catalytic Converters Helps to reduce deposits and sludge build-up to enable long and clean en', 300, 1, '1669962593.jpg', 1, 0),
(35, 'MAK Elite SAE 15W-40 Premium Petrol Engine Oil for Passenger Car – 4L', 'new generation petrol cars', '\"Meets API SJ / CF specifications Blended with premium quality group II base oil Excellent thermo-oxidative stability\"', 752, 4, '1669962762.jpg', 0, 0),
(36, 'MAK Evolv 0W 20 Premium Synthetic Petrol Engine Oil for Hybrid Vehicles – 4L', 'for latest generation petrol and hybrid passenger cars', '\"Performance Level: API SN, ILSAC GF5 . Enhanced oxidation stability reduces sludge & deposit  formation in engine and thus reduce engine maintenance. Better flow ability and excellent anti-wear chara', 900, 4, '1669962868.jpg', 0, 0),
(37, 'MAK Elite SAE 10W-30 Supreme Petrol Engine Oil – 4L', 'ultra modern petrol cars', '\"Higher engine power Better fuel economy Engine durability Engine cleanliness  .Formulated using superior quality high viscosity index base oils and state-of-the art additive technology               ', 1500, 4, '1669963025.jpg', 0, 0),
(38, '\"SUPREME PETRA SAE 15W-40\"', 'passenger cars', '\"Protects Engines from wear. Preserves power and performance. Protection against in-service oil degradation. American Petroleum Institute Classification.\"', 500, 4, '1669963225.png', 0, 0),
(39, 'POWER P+', 'passenger cars and light commercial vehicles.', '\"Protects Engines from wear. Preserves power and performance. Protection against in-service oil degradation .High quality mono grade engine oil for use in petrol passenger car and light-duty commercia', 980, 750, '1669963338.png', 0, 0),
(40, '\"SUPREME PETRA SAE 10W-30\"', 'petrol passenger car', '\"Outstanding performance during maximum oil change interval Excellent low and high temperature capabilities Better protection of emission systems Better protection of emission systems\"', 2000, 4, '1669963454.png', 1, 0),
(41, '\"SUPREME PETRA SAE 0W-20 FULLY SYNTHETIC HYBRID OIL\"', 'car ', '\" Fully Synthetic Hybrid Petrol Engine Oil Maintain engine cleanliness Reduce wear & tear Prolong engine life\"', 850, 4, '1669963617.png', 1, 0),
(42, '\"SUPREME GOLD SAE 5W-40\"', 'passenger ca', '\"Reduces maintenance cost Protect engines from wear High thermal stability and oxidation stability Maximum durability American Petroleum Institute Classification\"', 750, 4, '1669963820.jpg', 0, 0),
(43, 'Toyota Genuine Motor Oil SN 0W-20 Synthetic', 'Toyota for Petrol engines', '\"Toyota Motor Oil SN 0W-20  Standard : SAE-0W-20, API-SN, ILSAC-GF-5  Product Volume : 4L  Made in japan Toyota Engine Oil 0W-20 Petrol 4 Liter Made in Japan 08880-83709 5000km Synthetic 100% Genuine\"', 3500, 0, '1669963930.jpg', 1, 0),
(44, 'Toyota 10W-30 Engine Oil 4L', 'Petrol engines', '\"Toyota Motor Oil SN 10W-30 Standard Genuine canned oil\"', 9050, 0, '1669964005.jpg', 1, 0),
(45, 'Toyota Motor Oil 15W-40 SN', 'Petrol engines', 'Standard   : SAE-15W-40, API – SN     Superior lubricating performance under extreme conditions. Made in Singapore.', 300, 0, '1669964097.jpg', 0, 0),
(46, 'Mobil Delvac 1 5W-40 – Advanced Full Synthetic Motor Oil – 1L', 'Mobil Delvac 1 5W-40 is recommended for use in all super high performance diesel applications', '\"SAE Oil Weight -5W-40 Oil Type-Full Synthetic Mobil Delvac 1 5W-40 maintains outstanding performance at high temperatures. It is also fully compatible with conventional oils.\"', 690, 1, '1669964329.jpg', 1, 0),
(47, 'Mobil Delvac 1340 SAE-40 Mineral Monograde Motor Oil – 5L', 'heavy duty trucking', '\"Prolonged engine life Less wear Excellent protection against ring sticking Long-term deposit/wear control\"', 3000, 5, '1669964418.jpg', 1, 0),
(48, 'Mobil Delvac 1340 SAE-40 Mineral Monograde Motor Oil – 20L', 'heavy duty trucking', '\"Prolonged engine life Less wear Excellent protection against ring sticking Long-term deposit/wear control\"', 1800, 20, '1669964493.jpg', 0, 0),
(49, 'Mobil Delvac City Logistics 10W-30 – Mineral Multigrade Motor Oil – 6L', 'European, and American manufacturers On-highway medium and light duty trucking', '\"Oil Type-Mineral Multigrade                       Mobil Delvac City Logistics 10W-30 provides protection on diesel engines under the conditions of frequent start-ups, stop and go driving in urban are', 7800, 6, '1669964597.jpg', 1, 0),
(50, 'Mobil Delvac MX 15W-40 – Mineral Multigrade Motor Oil – 208L', 'light and heavy-duty trucking', '\"Reduced sludge build-up, deposits and viscosity increase Deposit control and acid neutralisation Wear protection and viscosity control Cleaner engines and longer component life Improved viscosity con', 600, 0, '1669964719.jpg', 0, 0),
(51, 'MAK DZL Zenith 10W-30 Semi Synthetic Premium Diesel Engine Oil – 5L', 'new-age diesel passenger cars, multi utility vehicles (MUVs) and sports utility vehicles (SUVs', '\"Brand: Mak Product Name: DZL Zenith 10W-30 Semi Synthetic Premium Diesel Engine Oil Net Volume: 5 Litre Suitability: Diesel passenger cars, multi utility vehicles and sports utility vehicles Viscosit', 900, 5, '1669964782.jpg', 1, 0),
(52, 'D-TRON', 'Long distance diesel trucking', 'LKR 9,474.00', 3500, 0, '1669964931.jpg', 1, 0),
(53, 'POWER D40+', 'transport, off highway, earth moving, mining and agricultural operations under all service conditions, along with a wide range of passenger car and light truck', '\"Excellent overall engine cleanliness in all service conditions Resists wear Protectsengine parts from corrosion Extended oil drain Intervals\"', 2500, 1, '1669965033.png', 0, 0),
(54, 'LUKOIL AVANTGARDE ULTRA 15W-40', 'It is recommended for use in four-stroke diesel engines of heavy-duty trucks', '\"ENGINE CLEANLINESS Improved detergency and dispersancy  MAXIMUM PROTECTION Excellent protection against wear  OXIDATION RESISTANCE Excellent resistance to oxidation and corrosion  EASY COLD START Pro', 1500, 5, '1669965123.jpg', 1, 0),
(55, 'LUKOIL GENESIS ARMORTECH DX1 5W-30', 'Recommended for all-season use in gasoline engines equipped with Three Way Catalyst of General Motors cars', '\"\"\"THE LAST API LEVEL Highest performance level according to API classification LSPI PROTECTION Protects against LSPI (Low Speed Pre Ignition) phenomenon, which occurs in TGDI (Turbocharged gasoline d', 890, 3, '1669965247.jpg', 0, 0),
(56, 'LUKOIL GENESIS ARMORTECH JP 0W-20', 'Recommended for all-season use in gasoline engines equipped with Three Way Catalyst of Japanese OEMs: Toyota, Honda, Infiniti, Lexus, Mazda, Nissan, Suzuki, Subaru, Acura and others', '\"EASY COLD START Excellent low-temperature properties provide an easy cold start HIGH VISCOSITY INDEX Stable viscosity across a broad temperature rangе ADVANCED FUEL ECONOMY Excellent fuel economy due', 250, 3, '1669965309.jpg', 1, 0),
(57, 'LUKOIL LUXE 10W-30', 'Intended for use in gasoline and diesel engines of passenger cars, vans and light trucks', '\"High-quality semi-synthetic engine oil. Produced using a highly effective additive package of foreign production .                               Excellent resistance to oxidation and corrosion Helps ', 850, 3, '1669965385.jpg', 0, 0),
(58, '\"Delo® Gold Ultra Multifunctional Diesel Engine Oil\"', '• Four-stroke gasoline engines in mixed fleets of diesel and gasoline engines • Commercial road transport • Off-highway vehicles and plant • Agricultural tractors and farm machinery', '\" High performance,  multigrade, heavy-duty  diesel engine oil specifically  designed to lubricate a  wide range of engines  requiring API CI-4 or ACEA  E7 performance lubricants,  including those fit', 900, 1, '1669965475.jpg', 1, 0),
(59, 'Delo® Sports Synthetic Blend SAE 10W-30', '• Light-duty diesel engines fitted with common rail fuel injection systems  where HDMO type oils of API CI-4 or lower performance are required. • Other diesel powered passenger car and light ', '\"Delo® Sports Synthetic  Blend SAE 10W-30 is a high  performance, multigrade, diesel  engine oil specifically designed  to meet the requirements of  sports utility, sports activity,  pick-up and 4x4 t', 3500, 1, '1669965596.jpg', 0, 0),
(60, '\"Delo® Gold Multigrade  Multifunctional Diesel Engine Oil \"', '• Mixed fleets of diesel engines (high speed, four-stroke, turbocharged or naturally  aspirated) ', '\"• Delo® Gold Multigrade is a  high performance, multigrade,  heavy-duty diesel engine  oil specifically designed to  lubricate a wide range of diesel  engines requiring API CH-4  performance lubrican', 5000, 5, '1669966078.jpg', 1, 0),
(61, ' Lanka Super DS SAE 15W-40', '• Mixed fleets of diesel engines (high speed, four-stroke, turbocharged or  naturally aspirated)', '\" Heavy-duty diesel engine  oil specifically formulated  to meet API CH-4. Robust  performance designed  for use in diesel engines  in commercial fleets  and off-highway vehicles.\"', 800, 1, '1669966158.jpg', 0, 0),
(62, ' Lanka Super DS SAE 20W-50 ', ' Mixed fleets of diesel engines (high speed, four-stroke, turbocharged or  naturally aspirated)', '\" Heavy-duty diesel engine  oil specifically formulated  to meet API CH-4. Robust  performance designed  for use in diesel engines  in commercial fleets  and off-highway vehicles.\"', 1750, 1, '1669966277.jpg', 1, 0),
(63, 'Havoline Super 4T SAE 20W-50', ' motorcycle engines', '\"• Havoline® Super 4T with Havoline C.O.R.E.+  Technology lubricates,  protects, and cleans as  you ride. • Havoline C.O.R.E.+  Technology delivers four  key benefits: • Cleans and protects  – maintai', 580, 1, '1669966529.jpg', 1, 0),
(64, 'Havoline Super 4T SAE 20W-40', 'motorcycle engines ', '\"Havoline C.O.R.E.+ Technology delivers four key benefits:  Cleans and protects – maintains efficient engine performance  Oxidation stability – protects against oil degradation  Reduces engine heat da', 900, 1, '1669966619.jpg', 0, 0),
(66, '\"Mobil 1 Racing 4T 10W-40  Fully Synthetic Motorcycle Oil – 1L\"', ' four-stroke motorcycle engines', '\"Consistent power due to reduced frictional losses Overall optimized balance of engine performance and fuel economy Helps to extend engine life Fluid film protection at all operating temperatures mini', 680, 1, '1669966846.jpg', 0, 0),
(67, 'Mobil 1 Racing 2T Fully Synthetic Motorcycle Oil – 1L', 'motorcycles', '\"Helps to extend life for critical engine parts Helps to protect against pre-mature wear and engine seizing Exceptional engine cleaning power helping to result in extended spark plug and valve life, r', 2000, 1, '1669966989.jpg', 1, 0),
(68, 'Mobil Super 4T 20W-50 Motorcycle Oil – 1L', 'four-stroke motorcycle engine', '\"Helps extend engine life Helps keep engines clean for smoother operation Protects critical engine components Year round engine protection and performance\"', 1800, 1, '1669967225.jpg', 0, 0),
(69, 'CALTEX Havoline Supermatic 4T Semi Synthetic SAE 10W-30 1L', 'Latest generation, four-stroke scooter engines Air and liquid-cooled four-stroke scooter engines Particularly suitable for Japanese high performance scooters Scooters fitted with exhaust cata', '\"Smoother Ride Highly effective friction modifier reduces engine friction to ensure minimum power loss, which in turn can mean reduced fuel consumption or improved performance power release and accele', 2580, 1, '1669978702.png', 1, 0),
(70, 'Castrol POWER1 2T Scooter Motorcycle Oil 1L', 'For 2-Stroke engines Castrol POWER1 2T is a low smoke oil for modern 2T scooters. Its unique formulation protects the exhaust system from the build up of excessive carbon deposits which can l', '\"Type: Fully Synthetic. Power Protection Formula keeps exhaust systems clean. Low-ash formulation helps to reduce spark plug fouling. Excellent high temperature detergency, compatible with modern cata', 3500, 1, '1669978772.png', 0, 0),
(71, 'Castrol POWER1 Racing 4T 5W-40 Motorcycle Oil 1L', 'Castrol POWER1 Scooter 4T with Scootek Technology™ is specially designed to deliver superior acceleration at the touch of the throttle. It reduces internal losses in the engine and resists th', '\"Fully synthetic 4-stroke engine oil Acceleration and power right up to max rpm Perfect for sustained operation at high rpm Oil consumption control and volatility Shear stability Quick build-up of max', 890, 1, '1669978872.jpg', 1, 0),
(72, 'Putoline 70700 Classic Scooter Engine Oil 1 L', '\"Classic Scooter X is a high-grade 2-stroke scooter oil. Its unique, synthetic formulation gives it the following properties: Provides complete protection for classic 2-stroke scooter engines', '\"Provides exceptional oil film strength Minimises carbon deposits and fouling on the spark plug Extends the service life of the engine Classic Scooter X has been specially formulated for high-performa', 1470, 1, '1669978948.png', 1, 0),
(73, 'Putoline Classic Scooter 74100 Engine Oil 1 L', 'Classic Scooter is a premium-grade scooter oil. It is suitable for Lambretta, Vespa and other classic and modern 2-stroke scooters, pre-mix or injector. In regular use it provides full protec', '\"Classic Scooter contains a red dye to visually indicate fuel shortcoming. Mixing ratio: 2 - 4%. Imported from UK (Sizes & Specifications are based on the UK Market).\"', 900, 1, '1669979158.png', 1, 0),
(74, 'PUTOLINE SEMI SYNTHETIC 2 STROKE OIL FOR MOTORCYCLES, SCOOTERS, ETC', 'S2 is a semi-synthetic 2-stroke oil. The product is suitable for Road and Off Road motorcycles, scooters and ATVs that are used under regular conditions. Use S2 for both pre-mix and autolube ', '\"S2 2 stroke engine oil, semi-sintetico, 5 L Ideal for on and off bike and scooter atv and quad, etc. Suitable for car, mix and Pre-Lube systems Ratio is 2 to 4% API TC JASO FD. putoline-sgrassante S2', 809, 1, '1669979224.jpg', 0, 0),
(75, 'ACTRON 2T', '\"Air and water cooled two stroke motorcycle and three wheeler engines Latest generation of two stroke scooter engines Japanese two stroke engines fitted to stationary and portable power equip', '\"Powerful throttle response Reduces exhaust smoke Extends engine life Maximizes spark plug life\"', 500, 1, '1669979434.png', 1, 0),
(76, 'Laugfs ACTRON 4T Three Wheeler Oil – SAE 20W-50', 'Actron 4T SAE 20W-50 is a Premium performance, shear stable, Multigrade; multifunctional fluid specifically designed for use in Four Stroke Three Wheeler engines requiring JASOMA / MA 2 lubri', '\"Excellent Engine and transmission Cleanliness Reduces Wear Preserves full Power and Performance Easy starting and riding, even at high temperatures\"', 1800, 1, '1669979539.png', 0, 0),
(77, ' Caltex Delo® Gear EP5 SAE 80W-90', 'recommended for use in spiral bevel and  hypoid differentials, power dividers, and oil-lubricated steering axle wheel bearings.', '\"Long gear life – Extreme pressure properties help protect hypoid and other types  of gears from scuffing and wear. Rust and corrosion protection – Effective inhibitor package helps protect against  r', 3800, 1, '1669980346.jpg', 1, 0),
(78, 'CALTEX Delo MTF SAE 80W-90', '\"Havoline® Manual Transmission Fluid SAE 80W-90 is high performance, multigrade manual transmission fluid (MTF) suitable for use in Asian passenger car manual transmissions and transaxles. It', '\"Longer transmission life Minimizes fleet maintenance costs  Prolonged oil service life\"', 1000, 1, '1669980484.jpg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(22) NOT NULL,
  `name` varchar(222) NOT NULL,
  `number` int(25) NOT NULL,
  `email` varchar(200) NOT NULL,
  `method` varchar(255) NOT NULL,
  `flat` varchar(20) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(191) NOT NULL,
  `state` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `pin_code` varchar(22) NOT NULL,
  `total_product` varchar(222) NOT NULL,
  `total_price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `number`, `email`, `method`, `flat`, `street`, `city`, `state`, `country`, `pin_code`, `total_product`, `total_price`) VALUES
(1, 'dulshan', 1, 'user@gmail.com', 'cash on delivery', 'rathnapura', 'kalawana', 'Mombai', 'Sabaragamuwa', 'India', '70338', 'Mobil Super 2000 5W-30 – Semi Synthetic Motor Oil – 1L (1) ', 200),
(2, 'dulshan', 2, 'user@gmail.com', 'cash on delivery', 'rathnapura', 'kalawana', 'Mombai', 'Sabaragamuwa', 'India', '70338', 'Mobil Super 2000 5W-30 – Semi Synthetic Motor Oil – 1L (1) ', 200),
(3, 'dulshan', 3, 'user@gmail.com', 'cash on delivery', 'rathnapura', 'kalawana', 'Mombai', 'Sabaragamuwa', 'India', '70338', 'Mobil Super 2000 5W-30 – Semi Synthetic Motor Oil – 1L (1) ', 200),
(4, 'dulshan', 1, 'user@gmail.com', 'cash on delivery', 'rathnapura', 'kalawana', 'kalawana', 'Sabaragamuwa', 'India', '70338', 'Mobil Super 2000 5W-30 – Semi Synthetic Motor Oil – 1L (1) , MAK Elite SAE 15W-40 Premium Petrol Engine Oil for Passenger Car – 4L (1) ', 100),
(5, 'dulshan', 756656, 'sfgdfffdf@gmail.com', 'paypal', 'rathnapura', 'kalawana', 'kalawana', 'Sabaragamuwa', 'sri lanaka', '70338', 'Mobil Super 2000 5W-30 – Semi Synthetic Motor Oil – 1L (1) , MAK Elite SAE 15W-40 Premium Petrol Engine Oil for Passenger Car – 4L (1) , Mobil 1 – 0W-20 – Advanced Full Synthetic Motor Oil – 208L (1) , Mobil Super 1000 10W', 210),
(6, 'dulshan', 8, 'user@gmail.com', 'cash on delivery', 'rathnapura', 'kalawana', 'Mombai', 'Sabaragamuwa', 'India', '70338', 'MAK Elite SAE 15W-40 Premium Petrol Engine Oil for Passenger Car – 4L (1) , Mobil 1 – 0W-20 – Advanced Full Synthetic Motor Oil – 208L (1) , Mobil Super 1000 10W-30- Mineral Multigrade Motor Oil – 4L (1) ,  (1) ', 5),
(7, 'Dulshan', 1469, 'a2dmin@gmail.com', 'paypal', 'rathnapura', 'kalawana', 'kahawatta', 'Sabaragamuwa', 'India', '70338', 'Putoline Classic Scooter 74100 Engine Oil 1 L (1) ', 900);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ordersitems`
--

CREATE TABLE `ordersitems` (
  `orderid` int(15) NOT NULL,
  `id` int(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id`, `name`, `image`, `price`) VALUES
(1, 'Samsung J2 Pro', '1.jpg', 100.00),
(2, 'HP Notebook', '2.jpg', 299.00),
(3, 'Panasonic T44 Lite', '3.jpg', 125.00);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password_hash`, `role_as`) VALUES
(1, 'dulshan', 'dulshan@gmail.com', '$2y$10$BPM9xQsF1lb0ZOIGUS8/j.RQ5UaaspGbiuf3TDAwGEGPYMdnWBe5u', 0),
(2, 'dulshan', 'dulan1@gmail.com', '$2y$10$XY5lwKCc/ab/7e.6RN/5ceob6xBj2mHJypVj2sFNvOCoZvTv4b3Uu', 1),
(3, 'sulakshana', 'dulan11@gmail.com', '$2y$10$Mh2D6JQQjRQNHYeYtPd9heXSQtO0DX5jy0r44Ex0pppz6S1TFPK/m', 0),
(4, 'dulshan', 'dulan15@gmail.com', '$2y$10$yd/uIURWV/f0AtM50ST9nOyxMLzDwDwKieArs.dKR7LCSScx9q9sq', 1),
(5, 'user', 'user@gmail.com', '$2y$10$MWPI29YLnt2NRxP8mEX2d.2F5YVSD9Mo/jvqCIgr/WFUqheV1CI7q', 0),
(6, 'admin', 'admin@gmail.com', '$2y$10$7kMh/UcOuk5MNx3j2YHPXeXpHWiGKWZ.iLYarZoDsPC1Nqu02ORmG', 1),
(7, 'dulshan', 'adan@gmail.com', '$2y$10$yMrxysYYSrMimjTQWms19OLSyOPpe.MD2lKm8WQh/8KD.fERo7Y96', 0),
(8, 'dulshan', 'a2dmin@gmail.com', '$2y$10$V5KOHdb0gJNrvQw8FQ6OY.Ct0ifsvsEHUN4E2tEFQzIXLDCWMFJEy', 0),
(9, 'dulshan', 'a5dmin@gmail.com', '$2y$10$JDYKXROS9TeHQWvuJbDHhuOx.R7yYQXj6U5MVnY2h577OSt0UOHV.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `id` int(20) NOT NULL,
  `userid` varchar(10) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `address` varchar(191) NOT NULL,
  `city` varchar(50) NOT NULL,
  `zip` int(50) NOT NULL,
  `mobile` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorios`
--
ALTER TABLE `categorios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `ordersitems`
--
ALTER TABLE `ordersitems`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `categorios`
--
ALTER TABLE `categorios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(22) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ordersitems`
--
ALTER TABLE `ordersitems`
  MODIFY `orderid` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
