-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 06, 2023 at 03:08 PM
-- Server version: 8.0.32-0ubuntu0.22.04.2
-- PHP Version: 8.1.2-1ubuntu2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cake_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `category_id` int NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `category_id`, `created`, `modified`, `filename`, `email`) VALUES
(13, 'France blog ', 'Hello everyone!!! \r\n\r\nToday i would like to share my experience Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim nec dui nunc mattis enim. Enim lobortis scelerisque fermentum dui faucibus in ornare. Ante metus dictum at tempor commodo ullamcorper. Sit amet venenatis urna cursus eget. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. Curabitur vitae nunc sed velit. Commodo sed egestas egestas fringilla. Pellentesque sit amet porttitor eget dolor morbi non arcu. Purus ut faucibus pulvinar elementum integer enim neque. Tincidunt eget nullam non nisi est sit amet. Sed id semper risus in hendrerit. Ullamcorper sit amet risus nullam eget felis. Lorem ipsum dolor sit amet. Dictumst vestibulum rhoncus est pellentesque. Fringilla ut morbi tincidunt augue interdum velit euismod in. In egestas erat imperdiet sed euismod nisi porta. Quam pellentesque nec nam aliquam sem et. Eros in cursus turpis massa tincidunt dui ut ornare.\r\n\r\nConsectetur lorem donec massa sapien faucibus et molestie. Pretium aenean pharetra magna ac placerat vestibulum lectus mauris ultrices. Faucibus a pellentesque sit amet porttitor eget dolor morbi. Vel pretium lectus quam id leo in. Viverra nam libero justo laoreet sit amet cursus. Semper feugiat nibh sed pulvinar proin gravida hendrerit. Sit amet massa vitae tortor. Amet risus nullam eget felis eget nunc lobortis mattis aliquam. Nulla facilisi cras fermentum odio eu feugiat. Turpis egestas sed tempus urna et pharetra pharetra massa massa. Vitae sapien pellentesque habitant morbi. Id venenatis a condimentum vitae sapien. Fringilla urna porttitor rhoncus dolor purus non. Pharetra magna ac placerat vestibulum lectus. Id venenatis a condimentum vitae. In eu mi bibendum neque egestas. Aliquet porttitor lacus luctus accumsan. Orci dapibus ultrices in iaculis nunc. Amet consectetur adipiscing elit duis tristique sollicitudin. Quisque non tellus orci ac auctor augue.', 1, '2023-03-22 06:21:05', '2023-04-05 04:59:11', 'paris.jpg', 'adershjha@gmail.com'),
(14, 'USA Blog (edit checks)', '(edit!)Still can get over the time i visited USA, seems like yesterday Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim nec dui nunc mattis enim. Enim lobortis scelerisque fermentum dui faucibus in ornare. Ante metus dictum at tempor commodo ullamcorper. Sit amet venenatis urna cursus eget. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. Curabitur vitae nunc sed velit. Commodo sed egestas egestas fringilla. Pellentesque sit amet porttitor eget dolor morbi non arcu. Purus ut faucibus pulvinar elementum integer enim neque. Tincidunt eget nullam non nisi est sit amet. Sed id semper risus in hendrerit. Ullamcorper sit amet risus nullam eget felis. Lorem ipsum dolor sit amet. Dictumst vestibulum rhoncus est pellentesque. Fringilla ut morbi tincidunt augue interdum velit euismod in. In egestas erat imperdiet sed euismod nisi porta. Quam pellentesque nec nam aliquam sem et. Eros in cursus turpis massa tincidunt dui ut ornare.\r\n\r\nConsectetur lorem donec massa sapien faucibus et molestie. Pretium aenean pharetra magna ac placerat vestibulum lectus mauris ultrices. Faucibus a pellentesque sit amet porttitor eget dolor morbi. Vel pretium lectus quam id leo in. Viverra nam libero justo laoreet sit amet cursus. Semper feugiat nibh sed pulvinar proin gravida hendrerit. Sit amet massa vitae tortor. Amet risus nullam eget felis eget nunc lobortis mattis aliquam. Nulla facilisi cras fermentum odio eu feugiat. Turpis egestas sed tempus urna et pharetra pharetra massa massa. Vitae sapien pellentesque habitant morbi. Id venenatis a condimentum vitae sapien. Fringilla urna porttitor rhoncus dolor purus non. Pharetra magna ac placerat vestibulum lectus. Id venenatis a condimentum vitae. In eu mi bibendum neque egestas. Aliquet porttitor lacus luctus accumsan. Orci dapibus ultrices in iaculis nunc. Amet consectetur adipiscing elit duis tristique sollicitudin. Quisque non tellus orci ac auctor augue.', 1, '2023-03-22 06:22:10', '2023-04-05 04:59:25', 'usa.jpg', 'adershjha@gmail.com'),
(15, 'Bengal\'s Famous cuisine', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim nec dui nunc mattis enim. Enim lobortis scelerisque fermentum dui faucibus in ornare. Ante metus dictum at tempor commodo ullamcorper. Sit amet venenatis urna cursus eget. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. Curabitur vitae nunc sed velit. Commodo sed egestas egestas fringilla. Pellentesque sit amet porttitor eget dolor morbi non arcu. Purus ut faucibus pulvinar elementum integer enim neque. Tincidunt eget nullam non nisi est sit amet. Sed id semper risus in hendrerit. Ullamcorper sit amet risus nullam eget felis. Lorem ipsum dolor sit amet. Dictumst vestibulum rhoncus est pellentesque. Fringilla ut morbi tincidunt augue interdum velit euismod in. In egestas erat imperdiet sed euismod nisi porta. Quam pellentesque nec nam aliquam sem et. Eros in cursus turpis massa tincidunt dui ut ornare.\r\n\r\nConsectetur lorem donec massa sapien faucibus et molestie. Pretium aenean pharetra magna ac placerat vestibulum lectus mauris ultrices. Faucibus a pellentesque sit amet porttitor eget dolor morbi. Vel pretium lectus quam id leo in. Viverra nam libero justo laoreet sit amet cursus. Semper feugiat nibh sed pulvinar proin gravida hendrerit. Sit amet massa vitae tortor. Amet risus nullam eget felis eget nunc lobortis mattis aliquam. Nulla facilisi cras fermentum odio eu feugiat. Turpis egestas sed tempus urna et pharetra pharetra massa massa. Vitae sapien pellentesque habitant morbi. Id venenatis a condimentum vitae sapien. Fringilla urna porttitor rhoncus dolor purus non. Pharetra magna ac placerat vestibulum lectus. Id venenatis a condimentum vitae. In eu mi bibendum neque egestas. Aliquet porttitor lacus luctus accumsan. Orci dapibus ultrices in iaculis nunc. Amet consectetur adipiscing elit duis tristique sollicitudin. Quisque non tellus orci ac auctor augue.', 2, '2023-03-22 06:22:58', '2023-03-22 06:22:58', 'home.jpeg', 'adershjha@gmail.com'),
(16, 'Shimla Trip', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim nec dui nunc mattis enim. Enim lobortis scelerisque fermentum dui faucibus in ornare. Ante metus dictum at tempor commodo ullamcorper. Sit amet venenatis urna cursus eget. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. Curabitur vitae nunc sed velit. Commodo sed egestas egestas fringilla. Pellentesque sit amet porttitor eget dolor morbi non arcu. Purus ut faucibus pulvinar elementum integer enim neque. Tincidunt eget nullam non nisi est sit amet. Sed id semper risus in hendrerit. Ullamcorper sit amet risus nullam eget felis. Lorem ipsum dolor sit amet. Dictumst vestibulum rhoncus est pellentesque. Fringilla ut morbi tincidunt augue interdum velit euismod in. In egestas erat imperdiet sed euismod nisi porta. Quam pellentesque nec nam aliquam sem et. Eros in cursus turpis massa tincidunt dui ut ornare.\r\n\r\nConsectetur lorem donec massa sapien faucibus et molestie. Pretium aenean pharetra magna ac placerat vestibulum lectus mauris ultrices. Faucibus a pellentesque sit amet porttitor eget dolor morbi. Vel pretium lectus quam id leo in. Viverra nam libero justo laoreet sit amet cursus. Semper feugiat nibh sed pulvinar proin gravida hendrerit. Sit amet massa vitae tortor. Amet risus nullam eget felis eget nunc lobortis mattis aliquam. Nulla facilisi cras fermentum odio eu feugiat. Turpis egestas sed tempus urna et pharetra pharetra massa massa. Vitae sapien pellentesque habitant morbi. Id venenatis a condimentum vitae sapien. Fringilla urna porttitor rhoncus dolor purus non. Pharetra magna ac placerat vestibulum lectus. Id venenatis a condimentum vitae. In eu mi bibendum neque egestas. Aliquet porttitor lacus luctus accumsan. Orci dapibus ultrices in iaculis nunc. Amet consectetur adipiscing elit duis tristique sollicitudin. Quisque non tellus orci ac auctor augue.', 1, '2023-03-22 06:23:34', '2023-04-05 04:59:42', 'mountains.jpeg', 'adershjha@gmail.com'),
(17, 'Mohan and Co. Ladakh Trip', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim nec dui nunc mattis enim. Enim lobortis scelerisque fermentum dui faucibus in ornare. Ante metus dictum at tempor commodo ullamcorper. Sit amet venenatis urna cursus eget. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. Curabitur vitae nunc sed velit. Commodo sed egestas egestas fringilla. Pellentesque sit amet porttitor eget dolor morbi non arcu. Purus ut faucibus pulvinar elementum integer enim neque. Tincidunt eget nullam non nisi est sit amet. Sed id semper risus in hendrerit. Ullamcorper sit amet risus nullam eget felis. Lorem ipsum dolor sit amet. Dictumst vestibulum rhoncus est pellentesque. Fringilla ut morbi tincidunt augue interdum velit euismod in. In egestas erat imperdiet sed euismod nisi porta. Quam pellentesque nec nam aliquam sem et. Eros in cursus turpis massa tincidunt dui ut ornare.\r\n\r\nConsectetur lorem donec massa sapien faucibus et molestie. Pretium aenean pharetra magna ac placerat vestibulum lectus mauris ultrices. Faucibus a pellentesque sit amet porttitor eget dolor morbi. Vel pretium lectus quam id leo in. Viverra nam libero justo laoreet sit amet cursus. Semper feugiat nibh sed pulvinar proin gravida hendrerit. Sit amet massa vitae tortor. Amet risus nullam eget felis eget nunc lobortis mattis aliquam. Nulla facilisi cras fermentum odio eu feugiat. Turpis egestas sed tempus urna et pharetra pharetra massa massa. Vitae sapien pellentesque habitant morbi. Id venenatis a condimentum vitae sapien. Fringilla urna porttitor rhoncus dolor purus non. Pharetra magna ac placerat vestibulum lectus. Id venenatis a condimentum vitae. In eu mi bibendum neque egestas. Aliquet porttitor lacus luctus accumsan. Orci dapibus ultrices in iaculis nunc. Amet consectetur adipiscing elit duis tristique sollicitudin. Quisque non tellus orci ac auctor augue.', 1, '2023-03-22 06:24:53', '2023-03-22 06:24:53', 'greyb-fevicon.jpg', 'Mohan@gmail.com'),
(18, 'Punjab\'s Famous cuisine', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim nec dui nunc mattis enim. Enim lobortis scelerisque fermentum dui faucibus in ornare. Ante metus dictum at tempor commodo ullamcorper. Sit amet venenatis urna cursus eget. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. Curabitur vitae nunc sed velit. Commodo sed egestas egestas fringilla. Pellentesque sit amet porttitor eget dolor morbi non arcu. Purus ut faucibus pulvinar elementum integer enim neque. Tincidunt eget nullam non nisi est sit amet. Sed id semper risus in hendrerit. Ullamcorper sit amet risus nullam eget felis. Lorem ipsum dolor sit amet. Dictumst vestibulum rhoncus est pellentesque. Fringilla ut morbi tincidunt augue interdum velit euismod in. In egestas erat imperdiet sed euismod nisi porta. Quam pellentesque nec nam aliquam sem et. Eros in cursus turpis massa tincidunt dui ut ornare.\r\n\r\nConsectetur lorem donec massa sapien faucibus et molestie. Pretium aenean pharetra magna ac placerat vestibulum lectus mauris ultrices. Faucibus a pellentesque sit amet porttitor eget dolor morbi. Vel pretium lectus quam id leo in. Viverra nam libero justo laoreet sit amet cursus. Semper feugiat nibh sed pulvinar proin gravida hendrerit. Sit amet massa vitae tortor. Amet risus nullam eget felis eget nunc lobortis mattis aliquam. Nulla facilisi cras fermentum odio eu feugiat. Turpis egestas sed tempus urna et pharetra pharetra massa massa. Vitae sapien pellentesque habitant morbi. Id venenatis a condimentum vitae sapien. Fringilla urna porttitor rhoncus dolor purus non. Pharetra magna ac placerat vestibulum lectus. Id venenatis a condimentum vitae. In eu mi bibendum neque egestas. Aliquet porttitor lacus luctus accumsan. Orci dapibus ultrices in iaculis nunc. Amet consectetur adipiscing elit duis tristique sollicitudin. Quisque non tellus orci ac auctor augue.', 1, '2023-03-22 06:25:44', '2023-03-22 06:25:44', 'greyb-fevicon.jpg', 'Mohan@gmail.com'),
(19, 'Trip to Kedarnath', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim nec dui nunc mattis enim. Enim lobortis scelerisque fermentum dui faucibus in ornare. Ante metus dictum at tempor commodo ullamcorper. Sit amet venenatis urna cursus eget. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. Curabitur vitae nunc sed velit. Commodo sed egestas egestas fringilla. Pellentesque sit amet porttitor eget dolor morbi non arcu. Purus ut faucibus pulvinar elementum integer enim neque. Tincidunt eget nullam non nisi est sit amet. Sed id semper risus in hendrerit. Ullamcorper sit amet risus nullam eget felis. Lorem ipsum dolor sit amet. Dictumst vestibulum rhoncus est pellentesque. Fringilla ut morbi tincidunt augue interdum velit euismod in. In egestas erat imperdiet sed euismod nisi porta. Quam pellentesque nec nam aliquam sem et. Eros in cursus turpis massa tincidunt dui ut ornare.\r\n\r\nConsectetur lorem donec massa sapien faucibus et molestie. Pretium aenean pharetra magna ac placerat vestibulum lectus mauris ultrices. Faucibus a pellentesque sit amet porttitor eget dolor morbi. Vel pretium lectus quam id leo in. Viverra nam libero justo laoreet sit amet cursus. Semper feugiat nibh sed pulvinar proin gravida hendrerit. Sit amet massa vitae tortor. Amet risus nullam eget felis eget nunc lobortis mattis aliquam. Nulla facilisi cras fermentum odio eu feugiat. Turpis egestas sed tempus urna et pharetra pharetra massa massa. Vitae sapien pellentesque habitant morbi. Id venenatis a condimentum vitae sapien. Fringilla urna porttitor rhoncus dolor purus non. Pharetra magna ac placerat vestibulum lectus. Id venenatis a condimentum vitae. In eu mi bibendum neque egestas. Aliquet porttitor lacus luctus accumsan. Orci dapibus ultrices in iaculis nunc. Amet consectetur adipiscing elit duis tristique sollicitudin. Quisque non tellus orci ac auctor augue.', 1, '2023-03-22 06:26:26', '2023-03-22 06:26:26', 'greyb-fevicon.jpg', 'Mohan@gmail.com'),
(20, 'Goa Trip', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim nec dui nunc mattis enim. Enim lobortis scelerisque fermentum dui faucibus in ornare. Ante metus dictum at tempor commodo ullamcorper. Sit amet venenatis urna cursus eget. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. Curabitur vitae nunc sed velit. Commodo sed egestas egestas fringilla. Pellentesque sit amet porttitor eget dolor morbi non arcu. Purus ut faucibus pulvinar elementum integer enim neque. Tincidunt eget nullam non nisi est sit amet. Sed id semper risus in hendrerit. Ullamcorper sit amet risus nullam eget felis. Lorem ipsum dolor sit amet. Dictumst vestibulum rhoncus est pellentesque. Fringilla ut morbi tincidunt augue interdum velit euismod in. In egestas erat imperdiet sed euismod nisi porta. Quam pellentesque nec nam aliquam sem et. Eros in cursus turpis massa tincidunt dui ut ornare.\r\n\r\nConsectetur lorem donec massa sapien faucibus et molestie. Pretium aenean pharetra magna ac placerat vestibulum lectus mauris ultrices. Faucibus a pellentesque sit amet porttitor eget dolor morbi. Vel pretium lectus quam id leo in. Viverra nam libero justo laoreet sit amet cursus. Semper feugiat nibh sed pulvinar proin gravida hendrerit. Sit amet massa vitae tortor. Amet risus nullam eget felis eget nunc lobortis mattis aliquam. Nulla facilisi cras fermentum odio eu feugiat. Turpis egestas sed tempus urna et pharetra pharetra massa massa. Vitae sapien pellentesque habitant morbi. Id venenatis a condimentum vitae sapien. Fringilla urna porttitor rhoncus dolor purus non. Pharetra magna ac placerat vestibulum lectus. Id venenatis a condimentum vitae. In eu mi bibendum neque egestas. Aliquet porttitor lacus luctus accumsan. Orci dapibus ultrices in iaculis nunc. Amet consectetur adipiscing elit duis tristique sollicitudin. Quisque non tellus orci ac auctor augue.', 1, '2023-03-22 06:27:16', '2023-03-22 06:27:16', 'greyb-fevicon.jpg', 'Mohan@gmail.com'),
(21, 'Italian Cuisine', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim nec dui nunc mattis enim. Enim lobortis scelerisque fermentum dui faucibus in ornare. Ante metus dictum at tempor commodo ullamcorper. Sit amet venenatis urna cursus eget. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. Curabitur vitae nunc sed velit. Commodo sed egestas egestas fringilla. Pellentesque sit amet porttitor eget dolor morbi non arcu. Purus ut faucibus pulvinar elementum integer enim neque. Tincidunt eget nullam non nisi est sit amet. Sed id semper risus in hendrerit. Ullamcorper sit amet risus nullam eget felis. Lorem ipsum dolor sit amet. Dictumst vestibulum rhoncus est pellentesque. Fringilla ut morbi tincidunt augue interdum velit euismod in. In egestas erat imperdiet sed euismod nisi porta. Quam pellentesque nec nam aliquam sem et. Eros in cursus turpis massa tincidunt dui ut ornare.\r\n\r\nConsectetur lorem donec massa sapien faucibus et molestie. Pretium aenean pharetra magna ac placerat vestibulum lectus mauris ultrices. Faucibus a pellentesque sit amet porttitor eget dolor morbi. Vel pretium lectus quam id leo in. Viverra nam libero justo laoreet sit amet cursus. Semper feugiat nibh sed pulvinar proin gravida hendrerit. Sit amet massa vitae tortor. Amet risus nullam eget felis eget nunc lobortis mattis aliquam. Nulla facilisi cras fermentum odio eu feugiat. Turpis egestas sed tempus urna et pharetra pharetra massa massa. Vitae sapien pellentesque habitant morbi. Id venenatis a condimentum vitae sapien. Fringilla urna porttitor rhoncus dolor purus non. Pharetra magna ac placerat vestibulum lectus. Id venenatis a condimentum vitae. In eu mi bibendum neque egestas. Aliquet porttitor lacus luctus accumsan. Orci dapibus ultrices in iaculis nunc. Amet consectetur adipiscing elit duis tristique sollicitudin. Quisque non tellus orci ac auctor augue.', 1, '2023-03-22 06:27:52', '2023-03-22 06:27:52', 'greyb-fevicon.jpg', 'Mohan@gmail.com'),
(22, 'Amsterdam Trip', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Enim nec dui nunc mattis enim. Enim lobortis scelerisque fermentum dui faucibus in ornare. Ante metus dictum at tempor commodo ullamcorper. Sit amet venenatis urna cursus eget. Arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales. Curabitur vitae nunc sed velit. Commodo sed egestas egestas fringilla. Pellentesque sit amet porttitor eget dolor morbi non arcu. Purus ut faucibus pulvinar elementum integer enim neque. Tincidunt eget nullam non nisi est sit amet. Sed id semper risus in hendrerit. Ullamcorper sit amet risus nullam eget felis. Lorem ipsum dolor sit amet. Dictumst vestibulum rhoncus est pellentesque. Fringilla ut morbi tincidunt augue interdum velit euismod in. In egestas erat imperdiet sed euismod nisi porta. Quam pellentesque nec nam aliquam sem et. Eros in cursus turpis massa tincidunt dui ut ornare.\r\n\r\nConsectetur lorem donec massa sapien faucibus et molestie. Pretium aenean pharetra magna ac placerat vestibulum lectus mauris ultrices. Faucibus a pellentesque sit amet porttitor eget dolor morbi. Vel pretium lectus quam id leo in. Viverra nam libero justo laoreet sit amet cursus. Semper feugiat nibh sed pulvinar proin gravida hendrerit. Sit amet massa vitae tortor. Amet risus nullam eget felis eget nunc lobortis mattis aliquam. Nulla facilisi cras fermentum odio eu feugiat. Turpis egestas sed tempus urna et pharetra pharetra massa massa. Vitae sapien pellentesque habitant morbi. Id venenatis a condimentum vitae sapien. Fringilla urna porttitor rhoncus dolor purus non. Pharetra magna ac placerat vestibulum lectus. Id venenatis a condimentum vitae. In eu mi bibendum neque egestas. Aliquet porttitor lacus luctus accumsan. Orci dapibus ultrices in iaculis nunc. Amet consectetur adipiscing elit duis tristique sollicitudin. Quisque non tellus orci ac auctor augue.', 1, '2023-03-22 06:28:30', '2023-03-22 06:28:30', 'greyb-fevicon.jpg', 'Mohan@gmail.com'),
(23, 'edited', 'edited', 1, '2023-03-22 06:54:34', '2023-03-31 09:56:43', 'home.jpeg', 'adershjha@gmail.com'),
(24, 'edit 2', 'edit 2', 1, '2023-03-22 06:56:04', '2023-03-31 09:58:53', '', 'adershjha@gmail.com'),
(25, 'edit 3 with image', 'edit 3 with image', 1, '2023-03-22 06:57:29', '2023-03-31 10:01:58', 'clouds.jpg', 'adershjha@gmail.com'),
(26, 'grey', 'grey', 1, '2023-03-22 10:57:21', '2023-03-22 10:57:21', 'greyb-fevicon.jpg', 'adershjha@gmail.com'),
(28, 'dc to marvel edit ', 'vds edit', 1, '2023-03-23 08:19:24', '2023-04-03 08:06:35', '', 'adershjha@gmail.com'),
(39, 'clouds to paris', 'clouds to paris ', 1, '2023-03-27 06:16:48', '2023-03-31 05:33:59', 'paris.jpg', 'adershjha@gmail.com'),
(46, 'check image', 'home', 1, '2023-03-27 07:48:16', '2023-03-31 10:12:57', '', 'adershjha@gmail.com'),
(47, 'home', 'sd', 1, '2023-03-27 07:48:40', '2023-03-27 07:48:55', 'clouds.jpg', 'adershjha@gmail.com'),
(49, 'new without image', 'without image', 1, '2023-03-31 10:45:46', '2023-03-31 10:45:46', 'default.jpg', 'adershjha@gmail.com'),
(54, 'phone blog edited', 'new phone blog edited', 1, '2023-04-04 07:31:35', '2023-04-04 07:35:20', 'clouds.jpg', 'adershjha@gmail.com'),
(55, ' 3', ' 34', 1, '2023-04-04 11:07:44', '2023-04-04 13:05:24', 'Screenshot from 2023-03-24 12-58-09.png', 'adershjha@gmail.com'),
(59, '3fr edited', 'edited', 1, '2023-04-04 13:07:34', '2023-04-05 07:30:35', 'clouds.jpg', 'adershjha@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `parent_id` int DEFAULT NULL,
  `lft` int NOT NULL,
  `rght` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `lft`, `rght`, `name`, `description`, `created`, `modified`) VALUES
(1, NULL, 1, 2, 'Travel', 'Travel bogs collection', '2023-03-17 07:54:54', '2023-03-17 07:54:54'),
(2, NULL, 3, 4, 'Food Blogs', 'Collection of food blogs', '2023-03-17 07:55:38', '2023-03-17 07:55:38'),
(3, NULL, 5, 6, 'Educational', 'educational blog collection', '2023-04-05 05:25:04', '2023-04-05 05:25:04'),
(4, NULL, 7, 8, 'sea', 'sea blogs', '2023-04-05 08:01:16', '2023-04-05 08:01:16');

-- --------------------------------------------------------

--
-- Table structure for table `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20230317062834, 'CreateArticles', '2023-03-17 01:02:12', '2023-03-17 01:02:12', 0),
(20230317063018, 'CreateCategories', '2023-03-17 01:02:12', '2023-03-17 01:02:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`, `created`, `modified`) VALUES
(2, 'adershjha@gmail.com', '$2y$10$vubUZaqEGCq6zWFKP/WyCuvebHauAmJyOaHPZrylwB2Xnt.fqymCe', 'admin', NULL, NULL),
(4, 'Roy@gmail.com', '$2y$10$TESQxcOgU.4tux2/g0m9m.zpnOLhxN7waFOABJ.C5hKnWRym9s6Vy', 'author', NULL, NULL),
(5, 'Mohan@gmail.com', '$2y$10$aLmj5yZtlJ07BqVnP6eFt.zU5/Iyi51t2wo5WUUfj/7NkrCZ4wi/2', 'admin', NULL, NULL),
(7, 'rohan@gmail.com', '$2y$10$8bdXqWA9zjWZz6o.WymY0uUgu7S26yFgnQt1Jxi.VQjuzNd.vLb7u', 'author', NULL, NULL),
(9, 'aj@gmail.com', '$2y$10$zOOuAM.9GhXqzA5qokVac.h3Qtvi65lGCnnV/nPIQj1yz7fSXpZiS', 'admin', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
