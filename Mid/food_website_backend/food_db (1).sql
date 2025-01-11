-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2024 at 02:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(3, 'merchant', 'c2c1a1062d882a63ac9feba30087514409dd3856');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 2, 'shelby', 'gg@gmail.com', '222', 'please try to include late night delivery'),
(2, 3, 'tipta banik', 'tba@gmail.com', '789', 'ur food delivery was good,keep it up'),
(3, 1, 'abdul', 'ab@gmail.com', '123', 'it was good'),
(4, 0, 'abdul guddu', 'ag@gmail.com', '222', 'hi there');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(2, 2, 'shelby', '222', 'gg@gmail.com', 'credit card', '4, 25, f-block, bashundhara, dhaka, dhaka, bangladesh - 1229', 'dish-4 (340 x 2) - ', 680, '2024-05-23', ''),
(3, 3, 'tipta banik', '789', 'tba@gmail.com', 'cash on delivery', '4, 125, banik para, hathazari, chittagong, chittagong, bangladesh - 1440', 'new-york steak (340 x 3) - ', 1020, '2024-05-25', 'completed'),
(4, 1, 'abdullah', '123', 'ab@gmail.com', 'cash on delivery', '4, 25, F-block, Bashundhara, Dhaka, Dhaka, Bangladesh - 1229', 'Americano Cheese burger (245 x 4) - ', 980, '2024-05-27', 'completed'),
(5, 2, 'shelby', '222', 'gg@gmail.com', 'cash on delivery', '4, 25, f-block, bashundhara, dhaka, dhaka, bangladesh - 1229', 'Americano Cheese burger (245 x 2) - ', 490, '2024-06-01', 'completed'),
(6, 4, 'harun', '444', 'h@gmail.com', 'cash on delivery', '25, 125, uttara, uttara, dhaka, dhaka, bangladesh - 1225', 'Americano Cheese burger (245 x 1) - ', 245, '2024-07-06', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
(1, 'Neapolitan pizza', 'fast food', 100, 'pizza-1.png'),
(2, 'spicy cheese pizza', 'fast food', 250, 'pizza-2.png'),
(3, 'pepperoni blust pizza', 'fast food', 300, 'pizza-3.png'),
(4, 'cheese blust', 'fast food', 400, 'pizza-4.png'),
(5, 'cheesy mushroom', 'fast food', 500, 'pizza-5.png'),
(6, 'Americano Cheese burger', 'fast food', 245, 'burger-1.png'),
(7, 'crispy chicken burger', 'fast food', 300, 'burger-2.png'),
(8, 'strawberry milkshake', 'desserts', 100, 'dessert-1.png'),
(9, 'choco browney', 'desserts', 200, 'dessert-2.png'),
(10, 'whipped oreo', 'desserts', 240, 'dessert-3.png'),
(11, 'choco cupcake', 'desserts', 300, 'dessert-4.png'),
(12, 'two-seasoned icy', 'desserts', 340, 'dessert-5.png'),
(13, 'seasoned-strawberry pastry', 'desserts', 400, 'dessert-6.png'),
(14, 'Chow mein(Regular)', 'main dish', 150, 'dish-1.png'),
(15, 'mixed-seaFood chowmein', 'main dish', 200, 'dish-2.png'),
(16, 'sphagetti mexicano', 'main dish', 300, 'dish-3.png'),
(17, 'new-york steak', 'main dish', 340, 'dish-4.png'),
(19, 'tangerine- Essenco', 'drinks', 100, 'drink-1.png'),
(20, 'Espresso', 'drinks', 140, 'drink-2.png'),
(21, 'Sour-mate', 'drinks', 230, 'drink-3.png'),
(22, 'Raspberry tea', 'drinks', 300, 'drink-4.png'),
(23, 'strawberry icy', 'drinks', 320, 'drink-5.png'),
(26, 'burger-5', 'fast food', 250, 'burger-3.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(1, 'abdullah', 'ab@gmail.com', '123', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', '4, 25, F-block, Bashundhara, Dhaka, Dhaka, Bangladesh - 1229'),
(2, 'shelby', 'gg@gmail.com', '222', '8aefb06c426e07a0a671a1e2488b4858d694a730', '4, 25, f-block, bashundhara, dhaka, dhaka, bangladesh - 1229'),
(3, 'tipta banik', 'tba@gmail.com', '789', '8aefb06c426e07a0a671a1e2488b4858d694a730', '4, 125, banik para, hathazari, chittagong, chittagong, bangladesh - 1440'),
(4, 'harun', 'h@gmail.com', '444', 'cfa1150f1787186742a9a884b73a43d8cf219f9b', '25, 125, uttara, uttara, dhaka, dhaka, bangladesh - 1225');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
