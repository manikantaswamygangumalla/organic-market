-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2023 at 11:42 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(56, 34, 26, 'apple', 200, 1, 'app.jpg'),
(57, 31, 27, 'ice apple', 70, 1, 'iceappke.webp');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(13, 31, 'sai', '8374916518', 'sai@gmail.com', 'credit card', 'flat no. Priyadarshini nagar church street Ravulapalem Andhra Pradesh  india - 533238', ', mutton meat ( 1 )', 800, '16-Nov-2023', 'completed'),
(14, 31, 'Basheer sayyed', '8374916518', 'sdkhdfdkfh@gmail.com', 'paytm', 'flat no. Priyadarshini nagar gfjjgh Ravulapalem Andhra Pradesh  india - 533238', ', ladies finger ( 1 )', 40, '16-Nov-2023', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`) VALUES
(26, 'apple', 'fruits', 'Dozen 200/-', 200, 'app.jpg'),
(27, 'ice apple', 'fruits', 'Dozen 70/-', 70, 'iceappke.webp'),
(28, 'pine apple', 'fruits', 'each one 50/-', 50, 'pineapple-health-benefits-and-ways-to-enjoy.jpg'),
(29, 'Jack fruit', 'fruits', 'Dozen 50/-', 50, 'download.jpeg'),
(30, 'strawberry', 'fruits', 'one packet 100/-', 100, 'stra.jpg'),
(31, 'Dragon fruit', 'fruits', 'each one 100/-', 100, 'dragon.jpg'),
(32, 'guava', 'fruits', '1 kg 100/-', 100, 'GUAVA_800x.jpg'),
(33, 'Black berry', 'fruits', '1 kg 120/-', 120, 'blackberry-fruit-seeds.jpg'),
(34, 'Grapes', 'fruits', '1 kg 80/-', 80, 'gra.jpg'),
(35, 'Green apple', 'fruits', '1 kg 200/-', 200, 'Greenapple_800x.webp'),
(36, 'Kiwi', 'fruits', '1 packet 100/-', 100, 'kiwi-fruit_625x350_81445871711.jpg'),
(37, 'white grapes', 'fruits', '1 kg 120/-', 120, 'wg.jpg'),
(38, 'Custard apple', 'fruits', 'Dozen 300/-', 300, 'custard.jpg'),
(39, 'sapota', 'fruits', '1 kg 50/-', 50, 'sapota.jpeg'),
(40, 'Star fruit', 'fruits', 'Dozen 80/-', 80, 'star.jpg'),
(41, 'mango', 'fruits', 'Dozen 200/-', 200, 'mango.jpg'),
(42, 'carrot', 'vegitables', '1 kg 50/-', 50, 'carrot.jpeg'),
(43, 'ladies finger', 'vegitables', '1 kg 40/-', 40, 'ladies.jpg'),
(44, 'Bottle guard', 'vegitables', 'Each one 30/-', 30, 'Lauki-Bottle-Gourd-Seeds-Buy-Online-2021.jpg'),
(45, 'Oninons', 'vegitables', '1 kg 100/-', 100, 'onion.jpeg'),
(46, 'Peas', 'vegitables', '1 kg 50/-', 50, 'peas.jpeg'),
(47, 'Potato', 'vegitables', '1 kg 40/-', 40, 'potato.jpeg'),
(48, 'Tomato', 'vegitables', '1 kg 40/-', 40, 'tamo.jpg'),
(49, 'Beet root', 'vegitables', '1 kg 50/-', 50, 'beetroot.webp'),
(50, 'capsicum', 'vegitables', '1 kg 60/-', 60, 'capsicum.webp'),
(51, 'cucumber', 'vegitables', 'each one 30/-', 30, 'cucumber.webp'),
(52, 'green beans', 'vegitables', '1 kg 100/-', 100, 'greenbeans_800x.webp'),
(53, 'Green chilli', 'vegitables', '1 kg 40/-', 40, 'green-chilli_759.avif'),
(54, 'Spring onion', 'vegitables', '1 kg 100/-', 100, 'spring-onion.jpg'),
(55, 'Sweet potato', 'vegitables', '1 kg 60/-', 60, 'sweet potATO.jpg'),
(56, 'Ridge guard', 'vegitables', '1 kg 50/-', 50, 'ridge.avif'),
(57, 'elephant', 'vegitables', '1 kg 50/-', 50, 'elephant.webp'),
(58, 'Fish', 'fish', 'one fish 150/-', 150, 'fishes'),
(59, 'mutton meat', 'meat', '1 kg 800/-', 800, 'mutton.webp'),
(60, 'Chicken', 'meat', '1 kg 250/-', 250, 'chicken.webp'),
(61, 'fish pieces', 'fish', '7 big pieces 200/- ', 200, 'tpe.webp'),
(62, 'Prawns', 'fish', '1 kg 300/-', 300, 'prawns.webp'),
(63, 'Crabs', 'fish', '10 crabs 300/-', 300, 'crabs.webp');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `image`) VALUES
(31, 'Sayyed basheer', 'basheer786999@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'user', 'WIN_20230902_09_51_41_Pro.jpg'),
(32, 'admin', 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'admin', ''),
(33, 'chitti babu', 'chittibabu@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user', 'WIN_20231115_11_53_15_Pro.jpg'),
(34, 'Sayyed basheer', 'daddy@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', 'user', 'app.jpg'),
(35, 'Sayyed basheer', 'red@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user', 'blackberry-fruit-seeds.jpg'),
(36, 'Sayyed basheer', 'basheer786@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user', 'brinjal.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
