-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-02-2021 a las 06:47:31
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mdeis_grupo4_cars_insurance`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `branch_offices`
--

CREATE TABLE `branch_offices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_min` double(12,2) NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `branch_offices`
--

INSERT INTO `branch_offices` (`id`, `name`, `address`, `discount_min`, `state_id`, `created_at`, `updated_at`) VALUES
(1, 'Sucursal Sz 1', 'address', 10.00, 1, '2021-02-17 00:21:00', '2021-02-17 09:31:18'),
(2, 'Sucursal Sz 2', 'address', 2.50, 1, '2021-02-17 00:21:46', '2021-02-17 00:21:46'),
(3, 'Sucursal Lpaz 1', 'address', 2.50, 2, '2021-02-17 00:21:46', '2021-02-17 00:21:46'),
(4, 'Sucursal Lpaz 2', 'address', 2.50, 2, '2021-02-17 00:21:46', '2021-02-17 00:21:46'),
(5, 'Sucursal Cbba 1', 'address', 2.50, 3, '2021-02-17 00:21:46', '2021-02-17 00:21:46'),
(6, 'Sucursal Cbba 2', 'address', 2.50, 3, '2021-02-17 00:21:46', '2021-02-17 00:21:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(25, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(26, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(27, 5, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(28, 5, 'code', 'text', 'Code', 1, 1, 1, 1, 1, 1, '{}', 4),
(29, 5, 'vehicle_type_id', 'text', 'Vehicle Type Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(30, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(31, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(32, 5, 'vehicle_model_belongsto_vehicle_type_relationship', 'relationship', 'Vehicle Type', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\VehicleType\",\"table\":\"vehicle_types\",\"type\":\"belongsTo\",\"column\":\"vehicle_type_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"branch_offices\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(34, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(35, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(36, 6, 'code', 'text', 'Code', 1, 1, 1, 1, 1, 1, '{}', 4),
(37, 6, 'logo', 'image', 'Logo', 0, 1, 1, 1, 1, 1, '{}', 5),
(38, 6, 'vehicle_model_id', 'text', 'Vehicle Model Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(39, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(40, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(41, 6, 'vehicle_make_belongsto_vehicle_model_relationship', 'relationship', 'Vehicle Model', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\VehicleModel\",\"table\":\"vehicle_models\",\"type\":\"belongsTo\",\"column\":\"vehicle_model_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"branch_offices\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(42, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(43, 7, 'license_plate', 'text', 'License Plate', 1, 1, 1, 1, 1, 1, '{}', 4),
(44, 7, 'price_vehicle', 'text', 'Price Vehicle', 1, 1, 1, 1, 1, 1, '{}', 5),
(45, 7, 'vehicle_make_id', 'text', 'Vehicle Make Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(46, 7, 'year_id', 'text', 'Year Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(47, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(48, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(49, 7, 'vehicle_belongsto_vehicle_make_relationship', 'relationship', 'Vehicle Make', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\VehicleMake\",\"table\":\"vehicle_makes\",\"type\":\"belongsTo\",\"column\":\"vehicle_make_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"branch_offices\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(50, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(51, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(52, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(53, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(54, 7, 'vehicle_belongsto_year_relationship', 'relationship', 'Year', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Year\",\"table\":\"years\",\"type\":\"belongsTo\",\"column\":\"year_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"branch_offices\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(55, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(56, 9, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(57, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(58, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(59, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(60, 10, 'percentage', 'text', 'Percentage', 1, 1, 1, 1, 1, 1, '{}', 4),
(61, 10, 'vehicle_type_id', 'text', 'Vehicle Type Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(62, 10, 'state_id', 'text', 'State Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(63, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 5),
(64, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(65, 10, 'state_vehicle_type_belongsto_vehicle_type_relationship', 'relationship', 'Vehicle Type', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\VehicleType\",\"table\":\"vehicle_types\",\"type\":\"belongsTo\",\"column\":\"vehicle_type_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"branch_offices\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(66, 10, 'state_vehicle_type_belongsto_state_relationship', 'relationship', 'State', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\State\",\"table\":\"states\",\"type\":\"belongsTo\",\"column\":\"state_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"branch_offices\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(67, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(68, 11, 'first_name', 'text', 'First Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(69, 11, 'last_name', 'text', 'Last Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(70, 11, 'phone_number', 'number', 'Phone Number', 1, 1, 1, 1, 1, 1, '{}', 4),
(71, 11, 'dni', 'text', 'Dni', 1, 1, 1, 1, 1, 1, '{}', 5),
(72, 11, 'gender', 'text', 'Gender', 1, 1, 1, 1, 1, 1, '{}', 6),
(73, 11, 'active', 'checkbox', 'Active', 1, 1, 1, 1, 1, 1, '{}', 7),
(74, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(75, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(76, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(77, 12, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(78, 12, 'address', 'text', 'Address', 1, 1, 1, 1, 1, 1, '{}', 4),
(79, 12, 'discount_min', 'number', 'Discount Min', 1, 1, 1, 1, 1, 1, '{}', 5),
(80, 12, 'state_id', 'text', 'State Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(81, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(82, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(83, 12, 'branch_office_belongsto_state_relationship', 'relationship', 'State', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\State\",\"table\":\"states\",\"type\":\"belongsTo\",\"column\":\"state_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"branch_offices\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(84, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(85, 13, 'policy_number', 'number', 'Policy Number', 0, 1, 1, 0, 0, 1, '{}', 5),
(86, 13, 'policy_effective_date', 'timestamp', 'Policy Effective Date', 1, 1, 1, 0, 0, 1, '{}', 6),
(87, 13, 'total_amount', 'number', 'Total Amount', 1, 1, 1, 0, 0, 1, '{}', 7),
(88, 13, 'active', 'checkbox', 'Active', 1, 1, 1, 1, 0, 1, '{}', 8),
(89, 13, 'date_start', 'timestamp', 'Date Start', 1, 1, 1, 1, 1, 1, '{}', 9),
(90, 13, 'date_end', 'timestamp', 'Date End', 1, 1, 1, 1, 1, 1, '{}', 10),
(91, 13, 'type', 'select_dropdown', 'Type', 1, 1, 1, 0, 0, 1, '{\"default\":\"1\",\"options\":{\"1\":\"Quotation\",\"2\":\"Policy\"}}', 11),
(92, 13, 'discount', 'number', 'Discount', 1, 1, 1, 0, 0, 1, '{}', 12),
(93, 13, 'amount', 'number', 'Amount', 1, 1, 1, 0, 0, 1, '{}', 13),
(94, 13, 'vehicle_id', 'text', 'Vehicle Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(95, 13, 'driver_id', 'text', 'Driver Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(96, 13, 'branch_office_id', 'text', 'Branch Office Id', 1, 1, 1, 1, 1, 1, '{}', 4),
(97, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 14),
(98, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 15),
(99, 13, 'policy_belongsto_branch_office_relationship', 'relationship', 'BranchOffice', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\BranchOffice\",\"table\":\"branch_offices\",\"type\":\"belongsTo\",\"column\":\"branch_office_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"branch_offices\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(100, 13, 'policy_belongsto_vehicle_relationship', 'relationship', 'Vehicle', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Vehicle\",\"table\":\"vehicles\",\"type\":\"belongsTo\",\"column\":\"vehicle_id\",\"key\":\"id\",\"label\":\"license_plate\",\"pivot_table\":\"branch_offices\",\"pivot\":\"0\",\"taggable\":\"0\"}', 17),
(101, 13, 'policy_belongsto_driver_relationship', 'relationship', 'Driver', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Driver\",\"table\":\"drivers\",\"type\":\"belongsTo\",\"column\":\"driver_id\",\"key\":\"id\",\"label\":\"first_name\",\"pivot_table\":\"branch_offices\",\"pivot\":\"0\",\"taggable\":\"0\"}', 18),
(102, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(103, 15, 'key', 'text', 'Key', 1, 1, 1, 1, 1, 1, '{}', 2),
(104, 15, 'table_name', 'text', 'Table Name', 0, 1, 1, 1, 1, 1, '{}', 3),
(105, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 1, '{}', 4),
(106, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-02-17 00:30:45', '2021-02-17 00:30:45'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-02-17 00:30:45', '2021-02-17 00:30:45'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-02-17 00:30:45', '2021-02-17 00:30:45'),
(4, 'vehicle_types', 'vehicle-types', 'Vehicle Type', 'Vehicle Types', 'voyager-company', 'App\\VehicleType', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":\"id\"}', '2021-02-17 00:53:00', '2021-02-17 00:53:00'),
(5, 'vehicle_models', 'vehicle-models', 'Vehicle Model', 'Vehicle Models', 'voyager-company', 'App\\VehicleModel', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2021-02-17 00:54:04', '2021-02-17 00:57:17'),
(6, 'vehicle_makes', 'vehicle-makes', 'Vehicle Make', 'Vehicle Makes', 'voyager-company', 'App\\VehicleMake', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2021-02-17 01:03:17', '2021-02-17 01:04:32'),
(7, 'vehicles', 'vehicles', 'Vehicle', 'Vehicles', 'voyager-company', 'App\\Vehicle', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"license_plate\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2021-02-17 01:05:50', '2021-02-17 01:08:35'),
(8, 'years', 'years', 'Year', 'Years', 'voyager-company', 'App\\Year', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":\"id\"}', '2021-02-17 01:07:41', '2021-02-17 01:07:41'),
(9, 'states', 'states', 'State', 'States', 'voyager-company', 'App\\State', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"name\",\"order_direction\":\"asc\",\"default_search_key\":\"id\"}', '2021-02-17 01:12:16', '2021-02-17 01:12:16'),
(10, 'state_vehicle_types', 'state-vehicle-types', 'State Vehicle Type', 'State Vehicle Types', 'voyager-company', 'App\\StateVehicleType', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2021-02-17 01:13:49', '2021-02-17 09:30:45'),
(11, 'drivers', 'drivers', 'Driver', 'Drivers', NULL, 'App\\Driver', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"first_name\",\"order_direction\":\"asc\",\"default_search_key\":\"id\"}', '2021-02-17 01:17:15', '2021-02-17 01:17:15'),
(12, 'branch_offices', 'branch-offices', 'Branch Office', 'Branch Offices', 'voyager-company', 'App\\BranchOffice', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2021-02-17 01:21:40', '2021-02-17 01:22:27'),
(13, 'policies', 'policies', 'Policy', 'Policies', 'voyager-company', 'App\\Policy', NULL, 'App\\Http\\Controllers\\PolicyController', NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2021-02-17 03:45:59', '2021-02-17 07:26:52'),
(15, 'permissions', 'permissions', 'Permission', 'Permissions', 'voyager-lock', 'TCG\\Voyager\\Models\\Permission', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"key\",\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2021-02-17 07:44:53', '2021-02-17 08:01:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `drivers`
--

CREATE TABLE `drivers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `drivers`
--

INSERT INTO `drivers` (`id`, `first_name`, `last_name`, `phone_number`, `dni`, `gender`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Name', 'Last Name', '70000000', '70000000', 'M', 1, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(2, 'Name', 'Last Name', '70000000', '70000000', 'M', 1, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(3, 'Name', 'Last Name', '70000000', '70000000', 'M', 1, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(4, 'Name', 'Last Name', '70000000', '70000000', 'M', 1, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(5, 'Name', 'Last Name', '70000000', '70000000', 'M', 1, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(6, 'Name', 'Last Name', '70000000', '70000000', 'M', 1, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(7, 'Name', 'Last Name', '70000000', '70000000', 'M', 1, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(8, 'Name', 'Last Name', '70000000', '70000000', 'M', 1, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(9, 'Name', 'Last Name', '70000000', '70000000', 'M', 1, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(10, 'Name', 'Last Name', '70000000', '70000000', 'M', 1, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(11, 'Name', 'Last Name', '70000000', '70000000', 'M', 1, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(12, 'Name', 'Last Name', '70000000', '70000000', 'M', 1, '2021-02-17 00:21:47', '2021-02-17 00:21:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2021-02-17 00:30:46', '2021-02-17 00:30:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-02-17 00:30:47', '2021-02-17 00:30:47', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2021-02-17 00:30:47', '2021-02-17 07:45:06', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 4, '2021-02-17 00:30:47', '2021-02-17 07:45:06', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-02-17 00:30:47', '2021-02-17 00:30:47', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 6, '2021-02-17 00:30:47', '2021-02-17 07:45:06', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-02-17 00:30:47', '2021-02-17 03:58:14', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-02-17 00:30:47', '2021-02-17 03:58:14', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-02-17 00:30:47', '2021-02-17 03:58:14', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-02-17 00:30:47', '2021-02-17 03:58:14', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 7, '2021-02-17 00:30:47', '2021-02-17 07:45:06', 'voyager.settings.index', NULL),
(11, 1, 'Vehicle Types', '', '_self', 'voyager-company', NULL, 22, 1, '2021-02-17 00:53:01', '2021-02-17 03:59:14', 'voyager.vehicle-types.index', NULL),
(12, 1, 'Vehicle Models', '', '_self', 'voyager-company', NULL, 22, 2, '2021-02-17 00:54:05', '2021-02-17 03:59:15', 'voyager.vehicle-models.index', NULL),
(13, 1, 'Vehicle Makes', '', '_self', 'voyager-company', NULL, 22, 3, '2021-02-17 01:03:17', '2021-02-17 03:59:20', 'voyager.vehicle-makes.index', NULL),
(14, 1, 'Vehicles', '', '_self', 'voyager-company', NULL, 22, 4, '2021-02-17 01:05:51', '2021-02-17 03:59:24', 'voyager.vehicles.index', NULL),
(15, 1, 'Years', '', '_self', 'voyager-company', NULL, 21, 2, '2021-02-17 01:07:41', '2021-02-17 03:58:31', 'voyager.years.index', NULL),
(16, 1, 'States', '', '_self', 'voyager-company', NULL, 21, 1, '2021-02-17 01:12:16', '2021-02-17 03:58:31', 'voyager.states.index', NULL),
(17, 1, 'State Vehicle Types', '', '_self', 'voyager-company', NULL, 21, 3, '2021-02-17 01:13:49', '2021-02-17 03:58:34', 'voyager.state-vehicle-types.index', NULL),
(18, 1, 'Drivers', '', '_self', 'voyager-company', '#000000', NULL, 10, '2021-02-17 01:17:15', '2021-02-17 07:45:06', 'voyager.drivers.index', 'null'),
(19, 1, 'Branch Offices', '', '_self', 'voyager-company', NULL, NULL, 11, '2021-02-17 01:21:40', '2021-02-17 07:45:06', 'voyager.branch-offices.index', NULL),
(20, 1, 'Policies', '', '_self', 'voyager-company', NULL, NULL, 12, '2021-02-17 03:45:59', '2021-02-17 07:45:06', 'voyager.policies.index', NULL),
(21, 1, 'Config', '', '_self', 'voyager-settings', '#000000', NULL, 8, '2021-02-17 03:58:04', '2021-02-17 07:45:06', NULL, ''),
(22, 1, 'Vehicles', '', '_self', 'voyager-company', '#000000', NULL, 9, '2021-02-17 03:59:02', '2021-02-17 07:45:06', NULL, ''),
(23, 1, 'Permissions', '', '_self', 'voyager-lock', NULL, NULL, 3, '2021-02-17 07:44:53', '2021-02-17 07:45:06', 'voyager.permissions.index', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2018_12_10_103745_create_vehicle_types_table', 1),
(24, '2018_12_10_103746_create_velicle_models_table', 1),
(25, '2018_12_10_103747_create_vehicle_makes_table', 1),
(26, '2021_02_16_031302_create_states_table', 1),
(27, '2021_02_16_031303_create_branch_offices_table', 1),
(28, '2021_02_16_031304_create_state_vehicle_types_table', 1),
(29, '2021_02_16_031305_create_years_table', 1),
(30, '2021_02_16_031429_create_vehicles_table', 1),
(31, '2021_02_16_031559_create_drivers_table', 1),
(32, '2021_02_16_034024_create_policies_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2021-02-17 00:30:47', '2021-02-17 00:30:47'),
(2, 'browse_bread', NULL, '2021-02-17 00:30:47', '2021-02-17 00:30:47'),
(3, 'browse_database', NULL, '2021-02-17 00:30:47', '2021-02-17 00:30:47'),
(4, 'browse_media', NULL, '2021-02-17 00:30:47', '2021-02-17 00:30:47'),
(5, 'browse_compass', NULL, '2021-02-17 00:30:47', '2021-02-17 00:30:47'),
(6, 'browse_menus', 'menus', '2021-02-17 00:30:47', '2021-02-17 00:30:47'),
(7, 'read_menus', 'menus', '2021-02-17 00:30:47', '2021-02-17 00:30:47'),
(8, 'edit_menus', 'menus', '2021-02-17 00:30:47', '2021-02-17 00:30:47'),
(9, 'add_menus', 'menus', '2021-02-17 00:30:47', '2021-02-17 00:30:47'),
(10, 'delete_menus', 'menus', '2021-02-17 00:30:47', '2021-02-17 00:30:47'),
(11, 'browse_roles', 'roles', '2021-02-17 00:30:47', '2021-02-17 00:30:47'),
(12, 'read_roles', 'roles', '2021-02-17 00:30:47', '2021-02-17 00:30:47'),
(13, 'edit_roles', 'roles', '2021-02-17 00:30:47', '2021-02-17 00:30:47'),
(14, 'add_roles', 'roles', '2021-02-17 00:30:47', '2021-02-17 00:30:47'),
(15, 'delete_roles', 'roles', '2021-02-17 00:30:47', '2021-02-17 00:30:47'),
(16, 'browse_users', 'users', '2021-02-17 00:30:47', '2021-02-17 00:30:47'),
(17, 'read_users', 'users', '2021-02-17 00:30:47', '2021-02-17 00:30:47'),
(18, 'edit_users', 'users', '2021-02-17 00:30:47', '2021-02-17 00:30:47'),
(19, 'add_users', 'users', '2021-02-17 00:30:47', '2021-02-17 00:30:47'),
(20, 'delete_users', 'users', '2021-02-17 00:30:47', '2021-02-17 00:30:47'),
(21, 'browse_settings', 'settings', '2021-02-17 00:30:48', '2021-02-17 00:30:48'),
(22, 'read_settings', 'settings', '2021-02-17 00:30:48', '2021-02-17 00:30:48'),
(23, 'edit_settings', 'settings', '2021-02-17 00:30:48', '2021-02-17 00:30:48'),
(24, 'add_settings', 'settings', '2021-02-17 00:30:48', '2021-02-17 00:30:48'),
(25, 'delete_settings', 'settings', '2021-02-17 00:30:48', '2021-02-17 00:30:48'),
(26, 'browse_vehicle_types', 'vehicle_types', '2021-02-17 00:53:00', '2021-02-17 00:53:00'),
(27, 'read_vehicle_types', 'vehicle_types', '2021-02-17 00:53:00', '2021-02-17 00:53:00'),
(28, 'edit_vehicle_types', 'vehicle_types', '2021-02-17 00:53:00', '2021-02-17 00:53:00'),
(29, 'add_vehicle_types', 'vehicle_types', '2021-02-17 00:53:00', '2021-02-17 00:53:00'),
(30, 'delete_vehicle_types', 'vehicle_types', '2021-02-17 00:53:01', '2021-02-17 00:53:01'),
(31, 'browse_vehicle_models', 'vehicle_models', '2021-02-17 00:54:05', '2021-02-17 00:54:05'),
(32, 'read_vehicle_models', 'vehicle_models', '2021-02-17 00:54:05', '2021-02-17 00:54:05'),
(33, 'edit_vehicle_models', 'vehicle_models', '2021-02-17 00:54:05', '2021-02-17 00:54:05'),
(34, 'add_vehicle_models', 'vehicle_models', '2021-02-17 00:54:05', '2021-02-17 00:54:05'),
(35, 'delete_vehicle_models', 'vehicle_models', '2021-02-17 00:54:05', '2021-02-17 00:54:05'),
(36, 'browse_vehicle_makes', 'vehicle_makes', '2021-02-17 01:03:17', '2021-02-17 01:03:17'),
(37, 'read_vehicle_makes', 'vehicle_makes', '2021-02-17 01:03:17', '2021-02-17 01:03:17'),
(38, 'edit_vehicle_makes', 'vehicle_makes', '2021-02-17 01:03:17', '2021-02-17 01:03:17'),
(39, 'add_vehicle_makes', 'vehicle_makes', '2021-02-17 01:03:17', '2021-02-17 01:03:17'),
(40, 'delete_vehicle_makes', 'vehicle_makes', '2021-02-17 01:03:17', '2021-02-17 01:03:17'),
(41, 'browse_vehicles', 'vehicles', '2021-02-17 01:05:50', '2021-02-17 01:05:50'),
(42, 'read_vehicles', 'vehicles', '2021-02-17 01:05:50', '2021-02-17 01:05:50'),
(43, 'edit_vehicles', 'vehicles', '2021-02-17 01:05:50', '2021-02-17 01:05:50'),
(44, 'add_vehicles', 'vehicles', '2021-02-17 01:05:50', '2021-02-17 01:05:50'),
(45, 'delete_vehicles', 'vehicles', '2021-02-17 01:05:50', '2021-02-17 01:05:50'),
(46, 'browse_years', 'years', '2021-02-17 01:07:41', '2021-02-17 01:07:41'),
(47, 'read_years', 'years', '2021-02-17 01:07:41', '2021-02-17 01:07:41'),
(48, 'edit_years', 'years', '2021-02-17 01:07:41', '2021-02-17 01:07:41'),
(49, 'add_years', 'years', '2021-02-17 01:07:41', '2021-02-17 01:07:41'),
(50, 'delete_years', 'years', '2021-02-17 01:07:41', '2021-02-17 01:07:41'),
(51, 'browse_states', 'states', '2021-02-17 01:12:16', '2021-02-17 01:12:16'),
(52, 'read_states', 'states', '2021-02-17 01:12:16', '2021-02-17 01:12:16'),
(53, 'edit_states', 'states', '2021-02-17 01:12:16', '2021-02-17 01:12:16'),
(54, 'add_states', 'states', '2021-02-17 01:12:16', '2021-02-17 01:12:16'),
(55, 'delete_states', 'states', '2021-02-17 01:12:16', '2021-02-17 01:12:16'),
(56, 'browse_state_vehicle_types', 'state_vehicle_types', '2021-02-17 01:13:49', '2021-02-17 01:13:49'),
(57, 'read_state_vehicle_types', 'state_vehicle_types', '2021-02-17 01:13:49', '2021-02-17 01:13:49'),
(58, 'edit_state_vehicle_types', 'state_vehicle_types', '2021-02-17 01:13:49', '2021-02-17 01:13:49'),
(59, 'add_state_vehicle_types', 'state_vehicle_types', '2021-02-17 01:13:49', '2021-02-17 01:13:49'),
(60, 'delete_state_vehicle_types', 'state_vehicle_types', '2021-02-17 01:13:49', '2021-02-17 01:13:49'),
(61, 'browse_drivers', 'drivers', '2021-02-17 01:17:15', '2021-02-17 01:17:15'),
(62, 'read_drivers', 'drivers', '2021-02-17 01:17:15', '2021-02-17 01:17:15'),
(63, 'edit_drivers', 'drivers', '2021-02-17 01:17:15', '2021-02-17 01:17:15'),
(64, 'add_drivers', 'drivers', '2021-02-17 01:17:15', '2021-02-17 01:17:15'),
(65, 'delete_drivers', 'drivers', '2021-02-17 01:17:15', '2021-02-17 01:17:15'),
(66, 'browse_branch_offices', 'branch_offices', '2021-02-17 01:21:40', '2021-02-17 01:21:40'),
(67, 'read_branch_offices', 'branch_offices', '2021-02-17 01:21:40', '2021-02-17 01:21:40'),
(68, 'edit_branch_offices', 'branch_offices', '2021-02-17 01:21:40', '2021-02-17 01:21:40'),
(69, 'add_branch_offices', 'branch_offices', '2021-02-17 01:21:40', '2021-02-17 01:21:40'),
(70, 'delete_branch_offices', 'branch_offices', '2021-02-17 01:21:40', '2021-02-17 01:21:40'),
(71, 'browse_policies', 'policies', '2021-02-17 03:45:59', '2021-02-17 03:45:59'),
(72, 'read_policies', 'policies', '2021-02-17 03:45:59', '2021-02-17 03:45:59'),
(73, 'edit_policies', 'policies', '2021-02-17 03:45:59', '2021-02-17 03:45:59'),
(74, 'add_policies', 'policies', '2021-02-17 03:45:59', '2021-02-17 03:45:59'),
(75, 'delete_policies', 'policies', '2021-02-17 03:45:59', '2021-02-17 03:45:59'),
(76, 'browse_permissions', 'permissions', '2021-02-17 07:44:53', '2021-02-17 07:44:53'),
(77, 'read_permissions', 'permissions', '2021-02-17 07:44:53', '2021-02-17 07:44:53'),
(78, 'edit_permissions', 'permissions', '2021-02-17 07:44:53', '2021-02-17 07:44:53'),
(79, 'add_permissions', 'permissions', '2021-02-17 07:44:53', '2021-02-17 07:44:53'),
(80, 'delete_permissions', 'permissions', '2021-02-17 07:44:53', '2021-02-17 07:44:53'),
(82, 'quotation_policies', 'policies', '2021-02-17 07:49:06', '2021-02-17 08:01:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(82, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `policies`
--

CREATE TABLE `policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `policy_number` int(11) UNSIGNED DEFAULT NULL,
  `policy_effective_date` date NOT NULL,
  `total_amount` double(12,2) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `type` tinyint(4) NOT NULL,
  `discount` double(12,2) NOT NULL,
  `amount` double(12,2) NOT NULL,
  `vehicle_id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) UNSIGNED NOT NULL,
  `branch_office_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `policies`
--

INSERT INTO `policies` (`id`, `policy_number`, `policy_effective_date`, `total_amount`, `active`, `date_start`, `date_end`, `type`, `discount`, `amount`, `vehicle_id`, `driver_id`, `branch_office_id`, `created_at`, `updated_at`) VALUES
(1, 1001, '2021-02-16', 300.00, 0, '2021-02-16', '2022-02-16', 1, 0.00, 300.00, 1, 1, 1, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(2, 1002, '2021-02-16', 600.00, 1, '2021-02-16', '2023-02-16', 2, 0.00, 300.00, 2, 2, 1, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(3, 1003, '2021-02-16', 300.00, 0, '2021-02-16', '2022-02-16', 2, 0.00, 300.00, 3, 3, 1, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(4, 1004, '2021-02-16', 400.00, 1, '2021-02-16', '2022-02-16', 2, 0.00, 400.00, 4, 4, 1, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(5, 1005, '2021-02-16', 450.00, 1, '2021-02-16', '2022-02-16', 2, 0.00, 450.00, 5, 5, 1, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(6, 1006, '2021-02-16', 1800.00, 0, '2021-02-16', '2024-02-16', 1, 0.00, 600.00, 6, 6, 1, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(7, 1007, '2021-02-16', 300.00, 0, '2021-02-16', '2022-02-16', 1, 0.00, 300.00, 7, 7, 1, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(8, 1008, '2021-02-16', 550.00, 0, '2021-02-16', '2022-02-16', 1, 0.00, 550.00, 8, 8, 2, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(9, 1009, '2021-02-16', 345.00, 0, '2021-02-16', '2022-02-16', 1, 0.00, 345.00, 9, 9, 2, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(10, 1010, '2021-02-16', 800.00, 1, '2021-02-16', '2022-02-16', 2, 0.00, 800.00, 10, 10, 2, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(11, 1011, '2021-02-16', 450.00, 0, '2021-02-16', '2022-02-16', 2, 0.00, 450.00, 11, 11, 2, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(12, 1012, '2021-02-16', 1500.00, 1, '2021-02-16', '2026-02-16', 2, 0.00, 1500.00, 12, 12, 2, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(13, 1013, '2021-02-17', 31000.00, 1, '2021-02-16', '2022-07-07', 1, 0.00, 31000.00, 1, 1, 1, '2021-02-17 06:27:41', '2021-02-17 06:27:41'),
(14, 1014, '2021-02-17', 0.00, 1, '2021-02-16', '2021-02-16', 1, 0.00, 0.00, 1, 1, 2, '2021-02-17 06:38:58', '2021-02-17 06:38:58'),
(15, 1015, '2021-02-17', 0.00, 1, '2021-02-16', '2021-02-16', 1, 0.00, 0.00, 1, 1, 1, '2021-02-17 06:39:24', '2021-02-17 06:39:24'),
(16, 1016, '2021-02-17', 8323.33, 1, '2021-02-16', '2021-03-16', 2, 833.33, 8333.33, 1, 1, 1, '2021-02-17 06:58:26', '2021-02-17 09:31:33'),
(17, 1017, '2021-02-17', 25833.33, 1, '2021-02-16', '2021-12-23', 2, 0.00, 25833.33, 1, 1, 1, '2021-02-17 07:12:52', '2021-02-17 09:24:38'),
(18, 1018, '2021-02-17', 99990.00, 1, '2021-02-17', '2022-12-29', 2, 10000.00, 100000.00, 1, 1, 1, '2021-02-17 09:34:02', '2021-02-17 09:35:47'),
(19, 1019, '2021-02-17', 90000.00, 1, '2021-02-17', '2022-12-30', 2, 10000.00, 100000.00, 1, 1, 1, '2021-02-17 09:37:27', '2021-02-17 09:37:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2021-02-17 00:26:49', '2021-02-17 00:26:49'),
(2, 'user', 'Normal User', '2021-02-17 00:30:47', '2021-02-17 00:30:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `states`
--

INSERT INTO `states` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Santa Cruz', '2021-02-17 00:21:46', '2021-02-17 00:21:46'),
(2, 'La Paz', '2021-02-17 00:21:46', '2021-02-17 00:21:46'),
(3, 'Cochabamba', '2021-02-17 00:21:46', '2021-02-17 00:21:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `state_vehicle_types`
--

CREATE TABLE `state_vehicle_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `percentage` double(12,2) NOT NULL,
  `vehicle_type_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `state_vehicle_types`
--

INSERT INTO `state_vehicle_types` (`id`, `percentage`, `vehicle_type_id`, `state_id`, `created_at`, `updated_at`) VALUES
(1, 10.00, 1, 1, '2021-02-17 00:21:00', '2021-02-17 09:30:27'),
(2, 3.00, 1, 2, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(3, 2.80, 1, 3, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(4, 3.50, 2, 1, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(5, 2.50, 2, 2, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(6, 2.40, 2, 3, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(7, 3.50, 3, 1, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(8, 2.50, 3, 2, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(9, 2.40, 3, 3, '2021-02-17 00:21:47', '2021-02-17 00:21:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$/cvMDrVUYzC1xIogQWEkJuss0t90Hl2hjKwCJjJ4UXVGFUkb6ids6', NULL, NULL, '2021-02-17 00:24:03', '2021-02-17 00:26:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `license_plate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_vehicle` double(12,2) NOT NULL,
  `vehicle_make_id` bigint(20) UNSIGNED NOT NULL,
  `year_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vehicles`
--

INSERT INTO `vehicles` (`id`, `license_plate`, `price_vehicle`, `vehicle_make_id`, `year_id`, `created_at`, `updated_at`) VALUES
(1, 'PLC001', 10000.00, 1, 1, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(2, 'PLC002', 12000.00, 2, 2, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(3, 'PLC003', 13000.00, 3, 3, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(4, 'PLC004', 15000.00, 4, 4, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(5, 'PLC005', 17000.00, 5, 5, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(6, 'PLC006', 22000.00, 6, 6, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(7, 'PLC007', 10000.00, 1, 2, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(8, 'PLC008', 12000.00, 2, 3, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(9, 'PLC009', 13000.00, 3, 4, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(10, 'PLC0010', 15000.00, 4, 5, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(11, 'PLC0011', 17000.00, 5, 6, '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(12, 'PLC0012', 22000.00, 6, 1, '2021-02-17 00:21:47', '2021-02-17 00:21:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehicle_makes`
--

CREATE TABLE `vehicle_makes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_model_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vehicle_makes`
--

INSERT INTO `vehicle_makes` (`id`, `name`, `code`, `logo`, `vehicle_model_id`, `created_at`, `updated_at`) VALUES
(1, 'Vehiculo 1', '001', NULL, 1, '2021-02-17 00:21:46', '2021-02-17 00:21:46'),
(2, 'Vehiculo 2', '002', NULL, 2, '2021-02-17 00:21:46', '2021-02-17 00:21:46'),
(3, 'Vehiculo 3', '003', NULL, 3, '2021-02-17 00:21:46', '2021-02-17 00:21:46'),
(4, 'Vehiculo 4', '004', NULL, 4, '2021-02-17 00:21:46', '2021-02-17 00:21:46'),
(5, 'Vehiculo 5', '005', NULL, 5, '2021-02-17 00:21:46', '2021-02-17 00:21:46'),
(6, 'Vehiculo 6', '006', NULL, 6, '2021-02-17 00:21:46', '2021-02-17 00:21:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehicle_models`
--

CREATE TABLE `vehicle_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_type_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vehicle_models`
--

INSERT INTO `vehicle_models` (`id`, `name`, `code`, `vehicle_type_id`, `created_at`, `updated_at`) VALUES
(1, 'Modelo 1', '001', 1, '2021-02-17 00:21:46', '2021-02-17 00:21:46'),
(2, 'Modelo 2', '002', 1, '2021-02-17 00:21:46', '2021-02-17 00:21:46'),
(3, 'Modelo 3', '003', 1, '2021-02-17 00:21:46', '2021-02-17 00:21:46'),
(4, 'Modelo 4', '004', 2, '2021-02-17 00:21:46', '2021-02-17 00:21:46'),
(5, 'Modelo 5', '005', 3, '2021-02-17 00:21:46', '2021-02-17 00:21:46'),
(6, 'Modelo 6', '006', 3, '2021-02-17 00:21:46', '2021-02-17 00:21:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehicle_types`
--

CREATE TABLE `vehicle_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `vehicle_types`
--

INSERT INTO `vehicle_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Vagoneta', '2021-02-17 00:21:46', '2021-02-17 00:21:46'),
(2, 'Jeep', '2021-02-17 00:21:46', '2021-02-17 00:21:46'),
(3, 'Camioneta', '2021-02-17 00:21:46', '2021-02-17 00:21:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `years`
--

CREATE TABLE `years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `years`
--

INSERT INTO `years` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '2016', '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(2, '2017', '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(3, '2018', '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(4, '2019', '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(5, '2020', '2021-02-17 00:21:47', '2021-02-17 00:21:47'),
(6, '2021', '2021-02-17 00:21:47', '2021-02-17 00:21:47');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `branch_offices`
--
ALTER TABLE `branch_offices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_offices_state_id_foreign` (`state_id`);

--
-- Indices de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indices de la tabla `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indices de la tabla `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indices de la tabla `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `policy_number` (`policy_number`),
  ADD KEY `policies_vehicle_id_foreign` (`vehicle_id`),
  ADD KEY `policies_driver_id_foreign` (`driver_id`),
  ADD KEY `policies_branch_office_id_foreign` (`branch_office_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indices de la tabla `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `state_vehicle_types`
--
ALTER TABLE `state_vehicle_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_vehicle_types_vehicle_type_id_foreign` (`vehicle_type_id`),
  ADD KEY `state_vehicle_types_state_id_foreign` (`state_id`);

--
-- Indices de la tabla `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indices de la tabla `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicles_vehicle_make_id_foreign` (`vehicle_make_id`),
  ADD KEY `vehicles_year_id_foreign` (`year_id`);

--
-- Indices de la tabla `vehicle_makes`
--
ALTER TABLE `vehicle_makes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_makes_vehicle_model_id_foreign` (`vehicle_model_id`);

--
-- Indices de la tabla `vehicle_models`
--
ALTER TABLE `vehicle_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_models_vehicle_type_id_foreign` (`vehicle_type_id`);

--
-- Indices de la tabla `vehicle_types`
--
ALTER TABLE `vehicle_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `branch_offices`
--
ALTER TABLE `branch_offices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT de la tabla `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT de la tabla `policies`
--
ALTER TABLE `policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `state_vehicle_types`
--
ALTER TABLE `state_vehicle_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `vehicle_makes`
--
ALTER TABLE `vehicle_makes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `vehicle_models`
--
ALTER TABLE `vehicle_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `vehicle_types`
--
ALTER TABLE `vehicle_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `years`
--
ALTER TABLE `years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `branch_offices`
--
ALTER TABLE `branch_offices`
  ADD CONSTRAINT `branch_offices_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Filtros para la tabla `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `policies`
--
ALTER TABLE `policies`
  ADD CONSTRAINT `policies_branch_office_id_foreign` FOREIGN KEY (`branch_office_id`) REFERENCES `branch_offices` (`id`),
  ADD CONSTRAINT `policies_driver_id_foreign` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`),
  ADD CONSTRAINT `policies_vehicle_id_foreign` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`);

--
-- Filtros para la tabla `state_vehicle_types`
--
ALTER TABLE `state_vehicle_types`
  ADD CONSTRAINT `state_vehicle_types_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `state_vehicle_types_vehicle_type_id_foreign` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `vehicles_vehicle_make_id_foreign` FOREIGN KEY (`vehicle_make_id`) REFERENCES `vehicle_makes` (`id`),
  ADD CONSTRAINT `vehicles_year_id_foreign` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`);

--
-- Filtros para la tabla `vehicle_makes`
--
ALTER TABLE `vehicle_makes`
  ADD CONSTRAINT `vehicle_makes_vehicle_model_id_foreign` FOREIGN KEY (`vehicle_model_id`) REFERENCES `vehicle_models` (`id`);

--
-- Filtros para la tabla `vehicle_models`
--
ALTER TABLE `vehicle_models`
  ADD CONSTRAINT `vehicle_models_vehicle_type_id_foreign` FOREIGN KEY (`vehicle_type_id`) REFERENCES `vehicle_types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
