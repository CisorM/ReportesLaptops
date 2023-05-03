-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-05-2023 a las 06:24:58
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `equiposdoctorpantalla`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportes`
--

CREATE TABLE `reportes` (
  `id` int(11) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `procesador` varchar(50) NOT NULL,
  `memoria` int(11) NOT NULL,
  `almacenamiento` int(11) NOT NULL,
  `negocio` varchar(50) NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reportes`
--

INSERT INTO `reportes` (`id`, `modelo`, `procesador`, `memoria`, `almacenamiento`, `negocio`, `precio`) VALUES
(1, 'Lenovo', 'Intel Core i5-11va', 16, 256, 'Cosmos', '695.00'),
(2, 'HP', 'i5-8va', 8, 256, 'C.C Paris', '800.00'),
(3, 'HP', 'i7-7ma', 16, 512, 'C.C Paris', '595.00'),
(4, 'HP', 'i3-10ma', 8, 128, 'C.C Paris', '495.00'),
(5, 'HP', 'i5-11era', 8, 256, 'C.C Cosmos', '800.00'),
(6, 'HP', 'i7-13era', 16, 512, 'C.C Cosmos', '1200.00'),
(7, 'HP', 'i3-8va', 4, 128, 'C.C Cosmos', '500.00'),
(8, 'DELL', 'i5-5ta', 8, 256, 'C.C Paris', '700.00'),
(9, 'DELL', 'i7-4ta', 16, 512, 'C.C Paris', '395.00'),
(10, 'DELL', 'i3-5ta', 4, 128, 'C.C Paris', '250.00'),
(40, 'HP', 'i5-10210U', 8, 256, 'C.C Paris', '800.00'),
(41, 'DELL', 'i7-10700', 16, 512, 'C.C Cosmos', '1200.00'),
(42, 'Lenovo', 'i3-10110U', 4, 128, 'C.C Paris', '400.00'),
(43, 'HP', 'i7-10510U', 16, 512, 'C.C Cosmos', '1300.00'),
(44, 'DELL', 'i5-10300H', 8, 256, 'C.C Paris', '700.00'),
(45, 'Lenovo', 'i5-10210U', 8, 256, 'C.C Cosmos', '800.00'),
(46, 'HP', 'i3-10110U', 4, 128, 'C.C Paris', '350.00'),
(47, 'DELL', 'i7-10700H', 16, 512, 'C.C Cosmos', '1250.00'),
(48, 'Lenovo', 'i5-10210U', 8, 512, 'C.C Paris', '900.00'),
(49, 'HP', 'i5-10300H', 8, 256, 'C.C Cosmos', '750.00'),
(50, 'DELL', 'i3-10100', 8, 256, 'C.C Paris', '600.00'),
(51, 'Lenovo', 'i3-10110U', 4, 256, 'C.C Cosmos', '450.00'),
(52, 'HP', 'i5-10210U', 8, 512, 'C.C Paris', '900.00'),
(53, 'HP', 'AMD Ryzen 5', 8, 256, 'C.C Paris', '890.00'),
(54, 'HP', 'AMD Ryzen 5', 16, 512, 'C.C Cosmos', '110.00'),
(55, 'HP', 'AMD Ryzen 7', 8, 512, 'C.C Paris', '10.00'),
(56, 'HP', 'AMD Ryzen 7', 16, 1, 'C.C Cosmos', '680.00'),
(57, 'HP', 'AMD Ryzen 9', 16, 512, 'C.C Paris', '555.00'),
(58, 'HP', 'AMD Ryzen 9', 32, 1, 'C.C Cosmos', '290.00'),
(59, 'DELL', 'AMD Ryzen 5', 8, 256, 'C.C Paris', '870.00'),
(60, 'DELL', 'AMD Ryzen 5', 16, 512, 'C.C Cosmos', '118.00'),
(61, 'DELL', 'AMD Ryzen 7', 8, 512, 'C.C Paris', '985.00'),
(62, 'DELL', 'AMD Ryzen 7', 16, 1, 'C.C Cosmos', '795.00'),
(63, 'DELL', 'AMD Ryzen 9', 16, 512, 'C.C Paris', '1000.00'),
(64, 'DELL', 'AMD Ryzen 9', 32, 1, 'C.C Cosmos', '685.00'),
(65, 'Lenovo', 'AMD Ryzen 5', 8, 256, 'C.C Paris', '860.00'),
(66, 'Lenovo', 'AMD Ryzen 5', 16, 512, 'C.C Cosmos', '795.00'),
(67, 'Lenovo', 'AMD Ryzen 7', 8, 512, 'C.C Paris', '975.00'),
(68, 'Lenovo', 'AMD Ryzen 7', 16, 1, 'C.C Cosmos', '795.00'),
(69, 'Lenovo', 'AMD Ryzen 9', 16, 512, 'C.C Paris', '795.00'),
(70, 'Lenovo', 'AMD Ryzen 9', 32, 1, 'C.C Cosmos', '795.00'),
(71, 'HP', 'AMD Ryzen 5', 8, 256, 'C.C Paris', '795.00'),
(72, 'HP', 'AMD Ryzen 5', 16, 512, 'C.C Cosmos', '795.00'),
(73, 'HP', 'AMD Ryzen 7', 8, 512, 'C.C Paris', '795.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `reportes`
--
ALTER TABLE `reportes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reportes`
--
ALTER TABLE `reportes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
