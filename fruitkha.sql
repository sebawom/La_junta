-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-07-2023 a las 02:43:52
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fruitkha`
--
CREATE DATABASE IF NOT EXISTS `fruitkha` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fruitkha`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_interface_theme`
--

CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_height` >= 0),
  `logo_max_width` smallint(5) UNSIGNED NOT NULL CHECK (`logo_max_width` >= 0),
  `foldable_apps` tinyint(1) NOT NULL,
  `language_chooser_control` varchar(20) NOT NULL,
  `list_filter_highlight` tinyint(1) NOT NULL,
  `list_filter_removal_links` tinyint(1) NOT NULL,
  `show_fieldsets_as_tabs` tinyint(1) NOT NULL,
  `show_inlines_as_tabs` tinyint(1) NOT NULL,
  `css_generic_link_active_color` varchar(10) NOT NULL,
  `collapsible_stacked_inlines` tinyint(1) NOT NULL,
  `collapsible_stacked_inlines_collapsed` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines` tinyint(1) NOT NULL,
  `collapsible_tabular_inlines_collapsed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `admin_interface_theme`
--

INSERT INTO `admin_interface_theme` (`id`, `name`, `active`, `title`, `title_visible`, `logo`, `logo_visible`, `css_header_background_color`, `title_color`, `css_header_text_color`, `css_header_link_color`, `css_header_link_hover_color`, `css_module_background_color`, `css_module_text_color`, `css_module_link_color`, `css_module_link_hover_color`, `css_module_rounded_corners`, `css_generic_link_color`, `css_generic_link_hover_color`, `css_save_button_background_color`, `css_save_button_background_hover_color`, `css_save_button_text_color`, `css_delete_button_background_color`, `css_delete_button_background_hover_color`, `css_delete_button_text_color`, `list_filter_dropdown`, `related_modal_active`, `related_modal_background_color`, `related_modal_rounded_corners`, `logo_color`, `recent_actions_visible`, `favicon`, `related_modal_background_opacity`, `env_name`, `env_visible_in_header`, `env_color`, `env_visible_in_favicon`, `related_modal_close_button_visible`, `language_chooser_active`, `language_chooser_display`, `list_filter_sticky`, `form_pagination_sticky`, `form_submit_sticky`, `css_module_background_selected_color`, `css_module_link_selected_color`, `logo_max_height`, `logo_max_width`, `foldable_apps`, `language_chooser_control`, `list_filter_highlight`, `list_filter_removal_links`, `show_fieldsets_as_tabs`, `show_inlines_as_tabs`, `css_generic_link_active_color`, `collapsible_stacked_inlines`, `collapsible_stacked_inlines_collapsed`, `collapsible_tabular_inlines`, `collapsible_tabular_inlines_collapsed`) VALUES
(1, 'Django', 1, 'Administración de Django', 1, '', 1, '#0C4B33', '#F5DD5D', '#44B78B', '#FFFFFF', '#C9F0DD', '#44B78B', '#FFFFFF', '#FFFFFF', '#C9F0DD', 1, '#0C3C26', '#156641', '#0C4B33', '#0C3C26', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', 1, 1, '#000000', 1, '#FFFFFF', 1, '', '0.3', '', 1, '#E74C3C', 1, 1, 1, 'code', 1, 0, 0, '#FFFFCC', '#FFFFFF', 100, 400, 1, 'default-select', 1, 0, 0, 0, '#29B864', 0, 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(3, 'admin'),
(1, 'usuario'),
(2, 'vendedor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(51, 2, 25),
(52, 2, 26),
(53, 2, 27),
(54, 2, 28),
(2, 2, 33),
(3, 2, 34),
(4, 2, 35),
(5, 2, 36),
(6, 2, 37),
(7, 2, 38),
(8, 2, 39),
(9, 2, 40),
(10, 3, 1),
(11, 3, 2),
(12, 3, 3),
(13, 3, 4),
(14, 3, 5),
(15, 3, 6),
(16, 3, 7),
(17, 3, 8),
(18, 3, 9),
(19, 3, 10),
(20, 3, 11),
(21, 3, 12),
(22, 3, 13),
(23, 3, 14),
(24, 3, 15),
(25, 3, 16),
(26, 3, 17),
(27, 3, 18),
(28, 3, 19),
(29, 3, 20),
(30, 3, 21),
(31, 3, 22),
(32, 3, 23),
(33, 3, 24),
(34, 3, 25),
(35, 3, 26),
(36, 3, 27),
(37, 3, 28),
(38, 3, 29),
(39, 3, 30),
(40, 3, 31),
(41, 3, 32),
(42, 3, 33),
(43, 3, 34),
(44, 3, 35),
(45, 3, 36),
(46, 3, 37),
(47, 3, 38),
(48, 3, 39),
(49, 3, 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add Theme', 1, 'add_theme'),
(2, 'Can change Theme', 1, 'change_theme'),
(3, 'Can delete Theme', 1, 'delete_theme'),
(4, 'Can view Theme', 1, 'view_theme'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add tipo producto', 8, 'add_tipoproducto'),
(30, 'Can change tipo producto', 8, 'change_tipoproducto'),
(31, 'Can delete tipo producto', 8, 'delete_tipoproducto'),
(32, 'Can view tipo producto', 8, 'view_tipoproducto'),
(33, 'Can add producto', 9, 'add_producto'),
(34, 'Can change producto', 9, 'change_producto'),
(35, 'Can delete producto', 9, 'delete_producto'),
(36, 'Can view producto', 9, 'view_producto'),
(37, 'Can add contacto', 10, 'add_contacto'),
(38, 'Can change contacto', 10, 'change_contacto'),
(39, 'Can delete contacto', 10, 'delete_contacto'),
(40, 'Can view contacto', 10, 'view_contacto'),
(41, 'Can add carrito', 11, 'add_carrito'),
(42, 'Can change carrito', 11, 'change_carrito'),
(43, 'Can delete carrito', 11, 'delete_carrito'),
(44, 'Can view carrito', 11, 'view_carrito'),
(45, 'Can add historial compra', 12, 'add_historialcompra'),
(46, 'Can change historial compra', 12, 'change_historialcompra'),
(47, 'Can delete historial compra', 12, 'delete_historialcompra'),
(48, 'Can view historial compra', 12, 'view_historialcompra'),
(49, 'Can add compra', 13, 'add_compra'),
(50, 'Can change compra', 13, 'change_compra'),
(51, 'Can delete compra', 13, 'delete_compra'),
(52, 'Can view compra', 13, 'view_compra'),
(53, 'Can add linea pedido', 14, 'add_lineapedido'),
(54, 'Can change linea pedido', 14, 'change_lineapedido'),
(55, 'Can delete linea pedido', 14, 'delete_lineapedido'),
(56, 'Can view linea pedido', 14, 'view_lineapedido'),
(57, 'Can add pedido', 15, 'add_pedido'),
(58, 'Can change pedido', 15, 'change_pedido'),
(59, 'Can delete pedido', 15, 'delete_pedido'),
(60, 'Can view pedido', 15, 'view_pedido'),
(61, 'Can add pedido', 16, 'add_pedido'),
(62, 'Can change pedido', 16, 'change_pedido'),
(63, 'Can delete pedido', 16, 'delete_pedido'),
(64, 'Can view pedido', 16, 'view_pedido'),
(65, 'Can add linea pedido', 17, 'add_lineapedido'),
(66, 'Can change linea pedido', 17, 'change_lineapedido'),
(67, 'Can delete linea pedido', 17, 'delete_lineapedido'),
(68, 'Can view linea pedido', 17, 'view_lineapedido'),
(69, 'Can add tipo producto', 18, 'add_tipoproducto'),
(70, 'Can change tipo producto', 18, 'change_tipoproducto'),
(71, 'Can delete tipo producto', 18, 'delete_tipoproducto'),
(72, 'Can view tipo producto', 18, 'view_tipoproducto'),
(73, 'Can add producto', 19, 'add_producto'),
(74, 'Can change producto', 19, 'change_producto'),
(75, 'Can delete producto', 19, 'delete_producto'),
(76, 'Can view producto', 19, 'view_producto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$OEsG7tFJQiuU$oB2NV0h6vHJ2gl22D9zE1p4WL9iPJtsEEoZHgLvIQSk=', '2023-07-06 00:03:18.852405', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-06-06 13:22:26.000000'),
(2, 'pbkdf2_sha256$600000$jHFrbrKBEJHphbrYRegpjG$F1xSTMyDtgB51D4ZG2MVFq+4GB0w1ACrAWx6cUf639Y=', '2023-06-27 03:03:10.720444', 0, 'luis', '', '', '', 0, 1, '2023-06-15 20:37:58.000000'),
(3, 'pbkdf2_sha256$600000$1RJrDg7PIXgf1K97BOekyn$DBf+ak4XK8zuu3h7tsxTfBajYggVO5CFukjnXgH5yVM=', '2023-06-15 20:51:54.000000', 0, 'janosky', 'luis', 'lopez', 'janosky@duoc.cl', 0, 1, '2023-06-15 20:51:51.000000'),
(4, 'pbkdf2_sha256$600000$Q80VzLUoXTXAmQLQasVzOq$AeELKmzszj6DlCbYHsXB2B53Hj76z3PdaWFfx9aP99Y=', '2023-06-20 16:10:43.576072', 0, 'vendedor', 'vendedor1', 'lopez', 'vendedor@duoc.cl', 0, 1, '2023-06-16 02:42:25.000000'),
(5, 'pbkdf2_sha256$600000$5SWxFhBh2idz5Tj0erV7OR$D7XTsBr6bvAtSCHDIQtVDFEqdT3TtncbJIyPdPBbZtk=', '2023-06-24 03:28:41.878473', 0, 'claudio', 'claudio', 'rodriguez', 'claudio@duoc.cl', 0, 1, '2023-06-19 18:18:02.778939'),
(6, 'pbkdf2_sha256$216000$zZMR1bGt1cdN$neRtaHE0nH7685M44nEBW1/ITVURxzFmQNbwQETigCg=', '2023-07-06 00:05:20.200879', 0, 'javier', '', '', 'aaaa@gmail.com', 0, 1, '2023-07-06 00:05:20.087854');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(2, 1, 3),
(4, 2, 1),
(3, 3, 1),
(1, 4, 2),
(5, 6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carro_producto`
--

CREATE TABLE `carro_producto` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `tipo_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carro_tipoproducto`
--

CREATE TABLE `carro_tipoproducto` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_compra`
--

CREATE TABLE `core_compra` (
  `id` bigint(20) NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_contacto`
--

CREATE TABLE `core_contacto` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(254) NOT NULL,
  `tipo_consulta` int(11) NOT NULL,
  `mensaje` longtext NOT NULL,
  `avisos` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_historialcompra`
--

CREATE TABLE `core_historialcompra` (
  `id` bigint(20) NOT NULL,
  `compra_id` bigint(20) NOT NULL,
  `producto_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_producto`
--

CREATE TABLE `core_producto` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `tipo_id` bigint(20) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_producto`
--

INSERT INTO `core_producto` (`id`, `nombre`, `precio`, `stock`, `tipo_id`, `imagen`) VALUES
(1, 'plantita', 2000, 4, 1, 'productos/OIP_zh9BQ8f_GlQVQrC.jpg'),
(2, 'rosa', 2000, 0, 1, 'productos/OIP_zh9BQ8f_imweXr6.jpg'),
(3, 'flor', 2000, 129, 1, 'productos/OIP_Em3iXtr_23DgwNb.jpg'),
(7, 'floor3', 2000, 5, 3, 'productos/OIP_JqW0J4a.jpg'),
(8, 'florr4', 2000, 6, 2, 'productos/OIP_1.jpg'),
(9, 'florrrr', 2000, 5, 3, 'productos/descarga_M3Y3C52.jpg'),
(10, 'hola', 2000, 5, 1, 'productos/OIP_2.jpg'),
(11, 'girasol2', 2000, 5, 2, 'productos/descarga_1.jpg'),
(12, 'flor5', 2000, 5, 1, 'productos/R_vhsCsTH.jpg'),
(13, 'flor6', 2000, 6, 2, 'productos/R_F7Ej7Ui.jpg'),
(14, 'flor7', 2000, 6, 2, 'productos/R_sWtCgvw.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_tipoproducto`
--

CREATE TABLE `core_tipoproducto` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_tipoproducto`
--

INSERT INTO `core_tipoproducto` (`id`, `descripcion`) VALUES
(1, 'planta'),
(2, 'flor'),
(3, 'casa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-06-06 13:25:31.415660', '1', 'planta', 1, '[{\"added\": {}}]', 8, 1),
(2, '2023-06-06 13:26:12.520525', '1', 'plantita', 1, '[{\"added\": {}}]', 9, 1),
(3, '2023-06-06 13:32:30.186686', '2', 'rosa', 1, '[{\"added\": {}}]', 9, 1),
(4, '2023-06-06 13:36:26.651745', '3', 'flor', 1, '[{\"added\": {}}]', 9, 1),
(5, '2023-06-15 02:06:37.988759', '2', 'flor', 1, '[{\"added\": {}}]', 8, 1),
(6, '2023-06-15 02:06:46.171671', '3', 'casa', 1, '[{\"added\": {}}]', 8, 1),
(7, '2023-06-15 02:07:23.381546', '7', 'girasol', 1, '[{\"added\": {}}]', 9, 1),
(8, '2023-06-15 02:07:53.058527', '8', 'flor1', 1, '[{\"added\": {}}]', 9, 1),
(9, '2023-06-15 02:08:12.494931', '9', 'flor2', 1, '[{\"added\": {}}]', 9, 1),
(10, '2023-06-15 02:08:30.642511', '10', 'flor3', 1, '[{\"added\": {}}]', 9, 1),
(11, '2023-06-15 02:08:47.637686', '11', 'flo4', 1, '[{\"added\": {}}]', 9, 1),
(12, '2023-06-15 02:09:09.232929', '12', 'flor5', 1, '[{\"added\": {}}]', 9, 1),
(13, '2023-06-15 02:09:31.029581', '13', 'flor6', 1, '[{\"added\": {}}]', 9, 1),
(14, '2023-06-16 02:31:08.734818', '1', 'usuario', 1, '[{\"added\": {}}]', 4, 1),
(15, '2023-06-16 02:31:48.003968', '2', 'vendedor', 1, '[{\"added\": {}}]', 4, 1),
(16, '2023-06-16 02:32:01.817290', '3', 'admin', 1, '[{\"added\": {}}]', 4, 1),
(17, '2023-06-16 02:32:20.388918', '1', 'usuario', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 4, 1),
(18, '2023-06-16 02:43:58.408646', '4', 'vendedor', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 1),
(19, '2023-06-16 02:44:55.999419', '1', 'admin', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 1),
(20, '2023-06-16 02:45:07.464173', '3', 'janosky', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 1),
(21, '2023-06-16 02:45:20.807611', '2', 'luis', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 5, 1),
(22, '2023-06-16 03:01:30.893100', '1', 'usuario', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 4, 1),
(23, '2023-06-16 03:01:48.212397', '2', 'vendedor', 2, '[]', 4, 1),
(24, '2023-06-16 03:19:47.272590', '2', 'vendedor', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(1, 'admin_interface', 'theme'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(19, 'carro', 'producto'),
(18, 'carro', 'tipoproducto'),
(6, 'contenttypes', 'contenttype'),
(11, 'core', 'carrito'),
(13, 'core', 'compra'),
(10, 'core', 'contacto'),
(12, 'core', 'historialcompra'),
(14, 'core', 'lineapedido'),
(15, 'core', 'pedido'),
(9, 'core', 'producto'),
(8, 'core', 'tipoproducto'),
(17, 'pedidos', 'lineapedido'),
(16, 'pedidos', 'pedido'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-06 13:16:13.538271'),
(2, 'auth', '0001_initial', '2023-06-06 13:16:13.853618'),
(3, 'admin', '0001_initial', '2023-06-06 13:16:13.929461'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-06 13:16:13.936159'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-06 13:16:13.942160'),
(6, 'admin_interface', '0001_initial', '2023-06-06 13:16:13.955162'),
(7, 'admin_interface', '0002_add_related_modal', '2023-06-06 13:16:14.014448'),
(8, 'admin_interface', '0003_add_logo_color', '2023-06-06 13:16:14.033666'),
(9, 'admin_interface', '0004_rename_title_color', '2023-06-06 13:16:14.044674'),
(10, 'admin_interface', '0005_add_recent_actions_visible', '2023-06-06 13:16:14.061225'),
(11, 'admin_interface', '0006_bytes_to_str', '2023-06-06 13:16:14.099024'),
(12, 'admin_interface', '0007_add_favicon', '2023-06-06 13:16:14.116029'),
(13, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2023-06-06 13:16:14.157215'),
(14, 'admin_interface', '0009_add_enviroment', '2023-06-06 13:16:14.193156'),
(15, 'admin_interface', '0010_add_localization', '2023-06-06 13:16:14.204714'),
(16, 'admin_interface', '0011_add_environment_options', '2023-06-06 13:16:14.264402'),
(17, 'admin_interface', '0012_update_verbose_names', '2023-06-06 13:16:14.272393'),
(18, 'admin_interface', '0013_add_related_modal_close_button', '2023-06-06 13:16:14.291397'),
(19, 'admin_interface', '0014_name_unique', '2023-06-06 13:16:14.305432'),
(20, 'admin_interface', '0015_add_language_chooser_active', '2023-06-06 13:16:14.325125'),
(21, 'admin_interface', '0016_add_language_chooser_display', '2023-06-06 13:16:14.343132'),
(22, 'admin_interface', '0017_change_list_filter_dropdown', '2023-06-06 13:16:14.346868'),
(23, 'admin_interface', '0018_theme_list_filter_sticky', '2023-06-06 13:16:14.363663'),
(24, 'admin_interface', '0019_add_form_sticky', '2023-06-06 13:16:14.395417'),
(25, 'admin_interface', '0020_module_selected_colors', '2023-06-06 13:16:14.434273'),
(26, 'admin_interface', '0021_file_extension_validator', '2023-06-06 13:16:14.440274'),
(27, 'admin_interface', '0022_add_logo_max_width_and_height', '2023-06-06 13:16:14.475253'),
(28, 'admin_interface', '0023_theme_foldable_apps', '2023-06-06 13:16:14.496258'),
(29, 'admin_interface', '0024_remove_theme_css', '2023-06-06 13:16:14.510263'),
(30, 'admin_interface', '0025_theme_language_chooser_control', '2023-06-06 13:16:14.529019'),
(31, 'admin_interface', '0026_theme_list_filter_highlight', '2023-06-06 13:16:14.546872'),
(32, 'admin_interface', '0027_theme_list_filter_removal_links', '2023-06-06 13:16:14.565185'),
(33, 'admin_interface', '0028_theme_show_fieldsets_as_tabs_and_more', '2023-06-06 13:16:14.600421'),
(34, 'admin_interface', '0029_theme_css_generic_link_active_color', '2023-06-06 13:16:14.619426'),
(35, 'admin_interface', '0030_theme_collapsible_stacked_inlines_and_more', '2023-06-06 13:16:14.688092'),
(36, 'contenttypes', '0002_remove_content_type_name', '2023-06-06 13:16:14.735918'),
(37, 'auth', '0002_alter_permission_name_max_length', '2023-06-06 13:16:14.776761'),
(38, 'auth', '0003_alter_user_email_max_length', '2023-06-06 13:16:14.789764'),
(39, 'auth', '0004_alter_user_username_opts', '2023-06-06 13:16:14.796575'),
(40, 'auth', '0005_alter_user_last_login_null', '2023-06-06 13:16:14.825232'),
(41, 'auth', '0006_require_contenttypes_0002', '2023-06-06 13:16:14.828232'),
(42, 'auth', '0007_alter_validators_add_error_messages', '2023-06-06 13:16:14.833737'),
(43, 'auth', '0008_alter_user_username_max_length', '2023-06-06 13:16:14.847741'),
(44, 'auth', '0009_alter_user_last_name_max_length', '2023-06-06 13:16:14.860852'),
(45, 'auth', '0010_alter_group_name_max_length', '2023-06-06 13:16:14.874854'),
(46, 'auth', '0011_update_proxy_permissions', '2023-06-06 13:16:14.883808'),
(47, 'auth', '0012_alter_user_first_name_max_length', '2023-06-06 13:16:14.896814'),
(48, 'core', '0001_initial', '2023-06-06 13:16:14.947370'),
(49, 'core', '0002_producto_imagen', '2023-06-06 13:16:14.956371'),
(50, 'core', '0003_contacto', '2023-06-06 13:16:14.967347'),
(51, 'core', '0004_auto_20230520_1933', '2023-06-06 13:16:15.316322'),
(52, 'core', '0005_alter_contacto_id_alter_producto_id_and_more', '2023-06-06 13:16:15.617363'),
(53, 'sessions', '0001_initial', '2023-06-06 13:16:15.642165'),
(54, 'core', '0006_carrito', '2023-06-24 03:08:06.192362'),
(55, 'core', '0007_compra_historialcompra_delete_carrito', '2023-06-25 01:17:42.892705'),
(56, 'core', '0006_pedido_lineapedido', '2023-06-26 04:24:39.478782'),
(57, 'carro', '0001_initial', '2023-06-26 18:25:22.064127'),
(58, 'core', '0007_remove_pedido_user_delete_lineapedido_delete_pedido', '2023-06-26 18:25:22.794104'),
(59, 'pedidos', '0001_initial', '2023-06-26 18:25:23.042813'),
(60, 'pedidos', '0002_pedido_estado', '2023-06-26 18:25:23.074187'),
(61, 'pedidos', '0003_lineapedido_estado', '2023-06-26 18:25:23.115218'),
(62, 'pedidos', '0004_remove_lineapedido_estado', '2023-06-26 18:25:23.142462'),
(63, 'pedidos', '0005_alter_lineapedido_id_alter_pedido_id', '2023-06-26 18:25:23.819231');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('45uigno1ocyte4jlg89l4i35wnjvo4hz', '.eJxVjDsOwjAQBe_iGln-rB1CSc8ZrF3vBgdQLMVJhbg7spQC2jcz760S7ltJe5M1zawuyqrT70aYn7J0wA9c7lXnumzrTLor-qBN3yrL63q4fwcFW-l1BOMxOmPFBZiChyFaJAN5HE3gkKcAnhzR2VmI4oR5CIQShSVnj-rzBcSNOBo:1qDgCO:FpwIB5VYMM3GO-RunR3CsDLFrmSKrvu25l8YHTDaEcQ', '2023-07-10 06:59:44.845570'),
('87kdqtmxn6j9jpqfy74il9icvq0aq10p', '.eJwVjDEOwCAMxP5yMwNi5DNVSjogFYLSZEL8vbB4sj1RSLWaIE-kg6HCXkyuysgpoEu79UGGykcIoOLNX-JdpBhj2INulenYa60fUW4auA:1q8rS2:HDU-ldh4gjZWIs96XQSfFlff5PSMb0xluSQFH78Gu8Y', '2023-06-26 23:59:58.862124'),
('cbphl5vviab5dsh2qzyfotmxj8nrxjbq', '.eJxVjDsOwjAQBe_iGln-rB1CSc8ZrF3vBgdQLMVJhbg7spQC2jcz760S7ltJe5M1zawuyqrT70aYn7J0wA9c7lXnumzrTLor-qBN3yrL63q4fwcFW-l1BOMxOmPFBZiChyFaJAN5HE3gkKcAnhzR2VmI4oR5CIQShSVnj-rzBcSNOBo:1qDgCO:FpwIB5VYMM3GO-RunR3CsDLFrmSKrvu25l8YHTDaEcQ', '2023-07-10 06:59:44.252582'),
('cupwmpdvw7jk0hhkaibxe6fgpeln9vpv', '.eJxVjMsOwiAQRf-FtSFl2uHh0r3fQBgGpGogKe3K-O_apAvd3nPOfQkftrX4rafFzyzOYhKn341CfKS6A76HemsytrouM8ldkQft8to4PS-H-3dQQi_fmsAp4xRbIDYD8uhMQAalM2cXMaEeVDQEyrKdQKOFMQUNRBityazE-wPQxDeA:1qA0Nv:kTwIRh_kM27RoS-S-mLXY-1EAWlrt3EmKG-PnhK-0dw', '2023-06-30 03:44:27.493272'),
('cxl660pqumxkfc8io10afekd0rfth72z', '.eJxVjDsOwjAQBe_iGln-rB1CSc8ZrF3vBgdQLMVJhbg7spQC2jcz760S7ltJe5M1zawuyqrT70aYn7J0wA9c7lXnumzrTLor-qBN3yrL63q4fwcFW-l1BOMxOmPFBZiChyFaJAN5HE3gkKcAnhzR2VmI4oR5CIQShSVnj-rzBcSNOBo:1qDgCN:XCvOqpnitGRcAoflZNvsVDen-HxGa3EYWFjzJtu0Sdk', '2023-07-10 06:59:43.931920'),
('f0k7eg09p362xih5mf8fyxfspqg7wzz7', '.eJxVjDsOwjAQBe_iGln-rB1CSc8ZrF3vBgdQLMVJhbg7spQC2jcz760S7ltJe5M1zawuyqrT70aYn7J0wA9c7lXnumzrTLor-qBN3yrL63q4fwcFW-l1BOMxOmPFBZiChyFaJAN5HE3gkKcAnhzR2VmI4oR5CIQShSVnj-rzBcSNOBo:1qBdtd:hLBThLrFquZFcK4oIh5CmpKeCHoBUpGvv4kFFILraxY', '2023-07-04 16:07:57.238498'),
('m2f0zyhkvh33eas0rvlpgxal30wmbbnm', '.eJxVjDsOwjAQBe_iGln-rB1CSc8ZrF3vBgdQLMVJhbg7spQC2jcz760S7ltJe5M1zawuyqrT70aYn7J0wA9c7lXnumzrTLor-qBN3yrL63q4fwcFW-l1BOMxOmPFBZiChyFaJAN5HE3gkKcAnhzR2VmI4oR5CIQShSVnj-rzBcSNOBo:1qDgCO:FpwIB5VYMM3GO-RunR3CsDLFrmSKrvu25l8YHTDaEcQ', '2023-07-10 06:59:44.781626'),
('ur57moutn9mq6ag2rd023rmq9ba9kmpm', '.eJxVjDsOwjAQBe_iGln-rB1CSc8ZrF3vBgdQLMVJhbg7spQC2jcz760S7ltJe5M1zawuyqrT70aYn7J0wA9c7lXnumzrTLor-qBN3yrL63q4fwcFW-l1BOMxOmPFBZiChyFaJAN5HE3gkKcAnhzR2VmI4oR5CIQShSVnj-rzBcSNOBo:1q6WeT:OzHmM7u2da01zuvNhx_8z4wSN3xTPF4AkyMvSughjhM', '2023-06-20 13:23:09.353655'),
('y4jzdmceo8yxsi2uzn2ai0ch6ya2prv5', '.eJxVjMsOwiAQAP-FsyHLQxZ69O43NNsFbNWUBNpT03_XJj3odWYym-hpXcZ-ban2UxSdcOLyywbiV5oPEZ80P4rkMi91GuSRyNM2eS8xvW9n-zcYqY3HlsFEZRACKZtUDhTQMerBXyNaq00CMmA5e4iMFhKCcspl8JiV9uY7Zaq1iG7b9w8vszpn:1qHCUr:DtZFG--1IwmHhl7NozhxG5x5knmHBHUaWFUHUhSKO7Y', '2023-07-20 00:05:21.163097');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos_lineapedido`
--

CREATE TABLE `pedidos_lineapedido` (
  `id` bigint(20) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `pedido_id` bigint(20) NOT NULL,
  `producto_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `carro_producto`
--
ALTER TABLE `carro_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carro_producto_tipo_id_2f30a4bb_fk_carro_tipoproducto_id` (`tipo_id`);

--
-- Indices de la tabla `carro_tipoproducto`
--
ALTER TABLE `carro_tipoproducto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_compra`
--
ALTER TABLE `core_compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_compra_usuario_id_ddc04a7f_fk_auth_user_id` (`usuario_id`);

--
-- Indices de la tabla `core_contacto`
--
ALTER TABLE `core_contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_historialcompra`
--
ALTER TABLE `core_historialcompra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_historialcompra_compra_id_70e95ec9_fk_core_compra_id` (`compra_id`),
  ADD KEY `core_historialcompra_producto_id_b3aaa9de_fk_core_producto_id` (`producto_id`);

--
-- Indices de la tabla `core_producto`
--
ALTER TABLE `core_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_producto_tipo_id_e0e92ad1_fk` (`tipo_id`);

--
-- Indices de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidos_user_id_c7db7ff2_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `pedidos_lineapedido`
--
ALTER TABLE `pedidos_lineapedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidos_lineapedido_producto_id_4ae1f0c1_fk_core_producto_id` (`producto_id`),
  ADD KEY `pedidos_lineapedido_user_id_096951d1_fk_auth_user_id` (`user_id`),
  ADD KEY `pedidos_lineapedido_pedido_id_8e7e2da6_fk` (`pedido_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carro_producto`
--
ALTER TABLE `carro_producto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carro_tipoproducto`
--
ALTER TABLE `carro_tipoproducto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_compra`
--
ALTER TABLE `core_compra`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_contacto`
--
ALTER TABLE `core_contacto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_historialcompra`
--
ALTER TABLE `core_historialcompra`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_producto`
--
ALTER TABLE `core_producto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos_lineapedido`
--
ALTER TABLE `pedidos_lineapedido`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `carro_producto`
--
ALTER TABLE `carro_producto`
  ADD CONSTRAINT `carro_producto_tipo_id_2f30a4bb_fk_carro_tipoproducto_id` FOREIGN KEY (`tipo_id`) REFERENCES `carro_tipoproducto` (`id`);

--
-- Filtros para la tabla `core_compra`
--
ALTER TABLE `core_compra`
  ADD CONSTRAINT `core_compra_usuario_id_ddc04a7f_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `core_historialcompra`
--
ALTER TABLE `core_historialcompra`
  ADD CONSTRAINT `core_historialcompra_compra_id_70e95ec9_fk_core_compra_id` FOREIGN KEY (`compra_id`) REFERENCES `core_compra` (`id`),
  ADD CONSTRAINT `core_historialcompra_producto_id_b3aaa9de_fk_core_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `core_producto` (`id`);

--
-- Filtros para la tabla `core_producto`
--
ALTER TABLE `core_producto`
  ADD CONSTRAINT `core_producto_tipo_id_e0e92ad1_fk` FOREIGN KEY (`tipo_id`) REFERENCES `core_tipoproducto` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_user_id_c7db7ff2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `pedidos_lineapedido`
--
ALTER TABLE `pedidos_lineapedido`
  ADD CONSTRAINT `pedidos_lineapedido_pedido_id_8e7e2da6_fk` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`),
  ADD CONSTRAINT `pedidos_lineapedido_producto_id_4ae1f0c1_fk_core_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `core_producto` (`id`),
  ADD CONSTRAINT `pedidos_lineapedido_user_id_096951d1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
