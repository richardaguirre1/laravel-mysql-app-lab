-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-01-2025 a las 17:04:44
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud-laravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `due_date` datetime DEFAULT NULL,
  `status` enum('Pendiente','En Progreso','Completada') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `due_date`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Tarea nueva', 'Tarea nueva', '2025-01-13 00:00:00', 'Pendiente', '2025-01-05 17:37:44', '2025-01-05 17:37:44'),
(5, 'Task Title 1', 'This is a description for task 1', '2025-01-23 00:00:00', 'En Progreso', '2025-01-04 14:58:57', '2025-01-03 14:58:57'),
(6, 'Task Title 2', 'This is a description for task 2', '2025-01-09 00:00:00', 'Pendiente', '2024-12-31 14:58:57', '2025-01-04 14:58:57'),
(7, 'Task Title 3', 'This is a description for task 3', '2025-01-26 00:00:00', 'Completada', '2025-01-02 14:58:57', '2025-01-03 14:58:57'),
(8, 'Task Title 4', 'This is a description for task 4', '2025-02-02 00:00:00', 'Completada', '2024-12-29 14:58:57', '2025-01-01 14:58:57'),
(9, 'Task Title 5', 'This is a description for task 5', '2025-01-18 00:00:00', 'En Progreso', '2024-12-28 14:58:57', '2025-01-01 14:58:57'),
(10, 'Task Title 6', 'This is a description for task 6', '2025-01-13 00:00:00', 'En Progreso', '2024-12-31 14:58:57', '2025-01-04 14:58:57'),
(11, 'Task Title 7', 'This is a description for task 7', '2025-01-18 00:00:00', 'En Progreso', '2024-12-31 14:58:57', '2025-01-04 14:58:57'),
(12, 'Task Title 8', 'This is a description for task 8', '2025-01-17 00:00:00', 'En Progreso', '2025-01-01 14:58:57', '2025-01-05 14:58:57'),
(13, 'Task Title 9', 'This is a description for task 9', '2025-01-23 00:00:00', 'En Progreso', '2024-12-31 14:58:57', '2025-01-05 14:58:57'),
(14, 'Task Title 10', 'This is a description for task 10', '2025-01-14 00:00:00', 'Pendiente', '2025-01-01 14:58:57', '2025-01-01 14:58:57'),
(15, 'Task Title 11', 'This is a description for task 11', '2025-01-22 00:00:00', 'Completada', '2024-12-27 14:58:57', '2025-01-02 14:58:57'),
(16, 'Task Title 12', 'This is a description for task 12', '2025-02-03 00:00:00', 'Completada', '2024-12-29 14:58:57', '2025-01-02 14:58:57'),
(17, 'Task Title 13', 'This is a description for task 13', '2025-02-02 00:00:00', 'Completada', '2025-01-03 14:58:57', '2025-01-02 14:58:57'),
(18, 'Task Title 14', 'This is a description for task 14', '2025-01-23 00:00:00', 'Pendiente', '2024-12-30 14:58:57', '2025-01-02 14:58:57'),
(19, 'Task Title 15', 'This is a description for task 15', '2025-01-07 00:00:00', 'Pendiente', '2024-12-27 14:58:57', '2025-01-02 14:58:57'),
(20, 'Task Title 16', 'This is a description for task 16', '2025-02-02 00:00:00', 'En Progreso', '2025-01-01 14:58:57', '2025-01-01 14:58:57'),
(21, 'Task Title 17', 'This is a description for task 17', '2025-01-15 00:00:00', 'Completada', '2025-01-02 14:58:57', '2025-01-01 14:58:57'),
(22, 'Task Title 18', 'This is a description for task 18', '2025-02-03 00:00:00', 'Completada', '2024-12-30 14:58:57', '2025-01-03 14:58:57'),
(23, 'Task Title 19', 'This is a description for task 19', '2025-01-17 00:00:00', 'En Progreso', '2025-01-05 14:58:57', '2025-01-04 14:58:57'),
(24, 'Task Title 20', 'This is a description for task 20', '2025-01-08 00:00:00', 'Completada', '2025-01-05 14:58:57', '2025-01-02 14:58:57'),
(25, 'Task Title 21', 'This is a description for task 21', '2025-01-15 00:00:00', 'En Progreso', '2025-01-04 14:58:57', '2025-01-02 14:58:57'),
(26, 'Task Title 22', 'This is a description for task 22', '2025-01-14 00:00:00', 'En Progreso', '2025-01-05 14:58:57', '2025-01-05 14:58:57'),
(27, 'Task Title 23', 'This is a description for task 23', '2025-01-07 00:00:00', 'Pendiente', '2024-12-27 14:58:57', '2025-01-04 14:58:57'),
(28, 'Task Title 24', 'This is a description for task 24', '2025-01-06 00:00:00', 'Completada', '2025-01-03 14:58:57', '2025-01-04 14:58:57'),
(29, 'Task Title 25', 'This is a description for task 25', '2025-02-02 00:00:00', 'Completada', '2024-12-29 14:58:57', '2025-01-03 14:58:57'),
(30, 'Task Title 26', 'This is a description for task 26', '2025-01-11 00:00:00', 'En Progreso', '2025-01-02 14:58:57', '2025-01-05 14:58:57'),
(31, 'Task Title 27', 'This is a description for task 27', '2025-01-24 00:00:00', 'Completada', '2024-12-28 14:58:57', '2025-01-05 14:58:57'),
(32, 'Task Title 28', 'This is a description for task 28', '2025-01-27 00:00:00', 'En Progreso', '2025-01-02 14:58:57', '2025-01-04 14:58:57'),
(33, 'Task Title 29', 'This is a description for task 29', '2025-01-06 00:00:00', 'En Progreso', '2025-01-01 14:58:57', '2025-01-02 14:58:57'),
(34, 'Task Title 30', 'This is a description for task 30', '2025-01-07 00:00:00', 'En Progreso', '2024-12-28 14:58:57', '2025-01-05 14:58:57'),
(35, 'Task Title 31', 'This is a description for task 31', '2025-01-11 00:00:00', 'En Progreso', '2024-12-29 14:58:57', '2025-01-03 14:58:57'),
(36, 'Task Title 32', 'This is a description for task 32', '2025-01-30 00:00:00', 'Completada', '2024-12-27 14:58:57', '2025-01-05 14:58:57'),
(37, 'Task Title 33', 'This is a description for task 33', '2025-01-17 00:00:00', 'Completada', '2024-12-30 14:58:57', '2025-01-03 14:58:57'),
(38, 'Task Title 34', 'This is a description for task 34', '2025-01-15 00:00:00', 'Pendiente', '2025-01-01 14:58:57', '2025-01-03 14:58:57'),
(39, 'Task Title 35', 'This is a description for task 35', '2025-01-26 00:00:00', 'Pendiente', '2025-01-01 14:58:57', '2025-01-04 14:58:57'),
(40, 'Task Title 36', 'This is a description for task 36', '2025-01-28 00:00:00', 'Pendiente', '2025-01-03 14:58:57', '2025-01-05 14:58:57'),
(41, 'Task Title 37', 'This is a description for task 37', '2025-01-10 00:00:00', 'En Progreso', '2024-12-30 14:58:57', '2025-01-01 14:58:57'),
(42, 'Task Title 38', 'This is a description for task 38', '2025-01-17 00:00:00', 'En Progreso', '2024-12-27 14:58:57', '2025-01-03 14:58:57'),
(43, 'Task Title 39', 'This is a description for task 39', '2025-01-25 00:00:00', 'Completada', '2025-01-04 14:58:57', '2025-01-05 14:58:57'),
(44, 'Task Title 40', 'This is a description for task 40', '2025-01-20 00:00:00', 'Completada', '2025-01-02 14:58:57', '2025-01-02 14:58:57'),
(45, 'Task Title 41', 'This is a description for task 41', '2025-01-11 00:00:00', 'Pendiente', '2025-01-04 14:58:57', '2025-01-04 14:58:57'),
(46, 'Task Title 42', 'This is a description for task 42', '2025-01-13 00:00:00', 'En Progreso', '2024-12-27 14:58:57', '2025-01-03 14:58:57'),
(47, 'Task Title 43', 'This is a description for task 43', '2025-01-06 00:00:00', 'En Progreso', '2025-01-01 14:58:57', '2025-01-01 14:58:57'),
(48, 'Task Title 44', 'This is a description for task 44', '2025-01-06 00:00:00', 'En Progreso', '2025-01-03 14:58:57', '2025-01-05 14:58:57'),
(49, 'Task Title 45', 'This is a description for task 45', '2025-01-13 00:00:00', 'Pendiente', '2025-01-01 14:58:57', '2025-01-04 14:58:57'),
(50, 'Task Title 46', 'This is a description for task 46', '2025-01-24 00:00:00', 'Pendiente', '2024-12-31 14:58:57', '2025-01-04 14:58:57'),
(51, 'Task Title 47', 'This is a description for task 47', '2025-01-29 00:00:00', 'Pendiente', '2024-12-28 14:58:57', '2025-01-03 14:58:57'),
(52, 'Task Title 48', 'This is a description for task 48', '2025-01-08 00:00:00', 'Pendiente', '2024-12-30 14:58:57', '2025-01-05 14:58:57'),
(53, 'Task Title 49', 'This is a description for task 49', '2025-01-26 00:00:00', 'Pendiente', '2024-12-28 14:58:57', '2025-01-02 14:58:57'),
(54, 'Task Title 50', 'This is a description for task 50', '2025-01-30 00:00:00', 'Pendiente', '2024-12-31 14:58:57', '2025-01-05 14:58:57'),
(55, 'Task Title 51', 'This is a description for task 51', '2025-01-20 00:00:00', 'En Progreso', '2024-12-30 14:58:57', '2025-01-05 14:58:57'),
(56, 'Task Title 52', 'This is a description for task 52', '2025-01-24 00:00:00', 'Completada', '2025-01-03 14:58:57', '2025-01-03 14:58:57'),
(57, 'Task Title 53', 'This is a description for task 53', '2025-01-07 00:00:00', 'Completada', '2024-12-28 14:58:57', '2025-01-02 14:58:57'),
(58, 'Task Title 54', 'This is a description for task 54', '2025-01-22 00:00:00', 'Pendiente', '2024-12-28 14:58:57', '2025-01-02 14:58:57'),
(59, 'Task Title 55', 'This is a description for task 55', '2025-01-18 00:00:00', 'Completada', '2025-01-04 14:58:57', '2025-01-05 14:58:57'),
(60, 'Task Title 56', 'This is a description for task 56', '2025-01-08 00:00:00', 'Pendiente', '2024-12-29 14:58:57', '2025-01-01 14:58:57'),
(61, 'Task Title 57', 'This is a description for task 57', '2025-01-28 00:00:00', 'Completada', '2025-01-02 14:58:57', '2025-01-01 14:58:57'),
(62, 'Task Title 58', 'This is a description for task 58', '2025-01-06 00:00:00', 'Completada', '2025-01-03 14:58:57', '2025-01-03 14:58:57'),
(63, 'Task Title 59', 'This is a description for task 59', '2025-01-05 00:00:00', 'En Progreso', '2025-01-02 14:58:57', '2025-01-04 14:58:57'),
(64, 'Task Title 60', 'This is a description for task 60', '2025-01-22 00:00:00', 'Completada', '2024-12-29 14:58:57', '2025-01-05 14:58:57'),
(65, 'Task Title 61', 'This is a description for task 61', '2025-01-10 00:00:00', 'En Progreso', '2024-12-30 14:58:57', '2025-01-03 14:58:57'),
(66, 'Task Title 62', 'This is a description for task 62', '2025-01-12 00:00:00', 'Completada', '2025-01-01 14:58:57', '2025-01-02 14:58:57'),
(67, 'Task Title 63', 'This is a description for task 63', '2025-01-21 00:00:00', 'En Progreso', '2025-01-03 14:58:57', '2025-01-01 14:58:57'),
(68, 'Task Title 64', 'This is a description for task 64', '2025-01-10 00:00:00', 'Completada', '2025-01-02 14:58:57', '2025-01-02 14:58:57'),
(69, 'Task Title 65', 'This is a description for task 65', '2025-01-22 00:00:00', 'Completada', '2025-01-02 14:58:57', '2025-01-04 14:58:57'),
(70, 'Task Title 66', 'This is a description for task 66', '2025-01-27 00:00:00', 'En Progreso', '2024-12-29 14:58:57', '2025-01-02 14:58:57'),
(71, 'Task Title 67', 'This is a description for task 67', '2025-01-29 00:00:00', 'Completada', '2024-12-27 14:58:57', '2025-01-02 14:58:57'),
(72, 'Task Title 68', 'This is a description for task 68', '2025-02-03 00:00:00', 'En Progreso', '2025-01-05 14:58:57', '2025-01-04 14:58:57'),
(73, 'Task Title 69', 'This is a description for task 69', '2025-01-18 00:00:00', 'Pendiente', '2025-01-03 14:58:57', '2025-01-04 14:58:57'),
(74, 'Task Title 70', 'This is a description for task 70', '2025-01-10 00:00:00', 'En Progreso', '2024-12-29 14:58:57', '2025-01-01 14:58:57'),
(75, 'Task Title 71', 'This is a description for task 71', '2025-01-22 00:00:00', 'Completada', '2025-01-05 14:58:57', '2025-01-03 14:58:57'),
(76, 'Task Title 72', 'This is a description for task 72', '2025-01-06 00:00:00', 'Completada', '2025-01-04 14:58:57', '2025-01-04 14:58:57'),
(77, 'Task Title 73', 'This is a description for task 73', '2025-01-26 00:00:00', 'Completada', '2024-12-27 14:58:57', '2025-01-03 14:58:57'),
(78, 'Task Title 74', 'This is a description for task 74', '2025-01-13 00:00:00', 'Pendiente', '2025-01-02 14:58:57', '2025-01-02 14:58:57'),
(79, 'Task Title 75', 'This is a description for task 75', '2025-01-27 00:00:00', 'En Progreso', '2025-01-05 14:58:57', '2025-01-02 14:58:57'),
(80, 'Task Title 76', 'This is a description for task 76', '2025-01-14 00:00:00', 'En Progreso', '2024-12-28 14:58:57', '2025-01-03 14:58:57'),
(81, 'Task Title 77', 'This is a description for task 77', '2025-01-13 00:00:00', 'En Progreso', '2025-01-01 14:58:57', '2025-01-03 14:58:57'),
(82, 'Task Title 78', 'This is a description for task 78', '2025-01-30 00:00:00', 'Completada', '2025-01-05 14:58:57', '2025-01-03 14:58:57'),
(83, 'Task Title 79', 'This is a description for task 79', '2025-01-11 00:00:00', 'En Progreso', '2024-12-31 14:58:57', '2025-01-02 14:58:57'),
(84, 'Task Title 80', 'This is a description for task 80', '2025-01-10 00:00:00', 'En Progreso', '2025-01-01 14:58:57', '2025-01-02 14:58:57'),
(86, 'Task Title 82', 'This is a description for task 82', '2025-01-23 00:00:00', 'Pendiente', '2025-01-04 14:58:57', '2025-01-02 14:58:57'),
(87, 'Task Title 83', 'This is a description for task 83', '2025-01-19 00:00:00', 'Pendiente', '2024-12-30 14:58:57', '2025-01-01 14:58:57'),
(88, 'Task Title 84', 'This is a description for task 84', '2025-01-10 00:00:00', 'Completada', '2025-01-05 14:58:57', '2025-01-04 14:58:57'),
(89, 'Task Title 85', 'This is a description for task 85', '2025-01-29 00:00:00', 'Completada', '2025-01-03 14:58:57', '2025-01-02 14:58:57'),
(90, 'Task Title 86', 'This is a description for task 86', '2025-01-14 00:00:00', 'En Progreso', '2025-01-03 14:58:57', '2025-01-04 14:58:57'),
(91, 'Task Title 87', 'This is a description for task 87', '2025-01-09 00:00:00', 'En Progreso', '2024-12-30 14:58:57', '2025-01-03 14:58:57'),
(92, 'Task Title 88', 'This is a description for task 88', '2025-01-08 00:00:00', 'En Progreso', '2025-01-01 14:58:57', '2025-01-05 14:58:57'),
(93, 'Task Title 89', 'This is a description for task 89', '2025-01-14 00:00:00', 'Pendiente', '2025-01-05 14:58:57', '2025-01-03 14:58:57'),
(94, 'Task Title 90', 'This is a description for task 90', '2025-01-18 00:00:00', 'Completada', '2025-01-01 14:58:57', '2025-01-05 14:58:57'),
(95, 'Task Title 91', 'This is a description for task 91', '2025-02-03 00:00:00', 'Completada', '2025-01-01 14:58:57', '2025-01-05 14:58:57'),
(96, 'Task Title 92', 'This is a description for task 92', '2025-01-18 00:00:00', 'Completada', '2024-12-29 14:58:57', '2025-01-04 14:58:57'),
(98, 'Task Title 94', 'This is a description for task 94', '2025-01-08 00:00:00', 'En Progreso', '2025-01-01 14:58:57', '2025-01-03 14:58:57'),
(99, 'Task Title 95', 'This is a description for task 95', '2025-01-07 00:00:00', 'Pendiente', '2024-12-29 14:58:57', '2025-01-02 14:58:57'),
(100, 'Task Title 96', 'This is a description for task 96', '2025-01-26 00:00:00', 'Pendiente', '2024-12-30 14:58:57', '2025-01-01 14:58:57'),
(101, 'Task Title 97', 'This is a description for task 97', '2025-01-22 00:00:00', 'Pendiente', '2024-12-29 14:58:57', '2025-01-04 14:58:57'),
(102, 'Task Title 98', 'This is a description for task 98', '2025-01-15 00:00:00', 'Completada', '2025-01-03 14:58:57', '2025-01-01 14:58:57'),
(103, 'Task Title 99', 'This is a description for task 99', '2025-01-11 00:00:00', 'En Progreso', '2024-12-31 14:58:57', '2025-01-02 14:58:57'),
(104, 'Task Title 100', 'This is a description for task 100', '2025-01-13 00:00:00', 'Pendiente', '2024-12-31 14:58:57', '2025-01-03 14:58:57'),
(132, 'Tarea 1000', 'Tarea 1000', '2025-01-06 00:00:00', 'Pendiente', '2025-01-05 18:01:18', '2025-01-05 18:01:18');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
