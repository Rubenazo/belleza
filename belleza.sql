-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-09-2015 a las 21:54:43
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `belleza`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colores`
--

CREATE TABLE IF NOT EXISTS `colores` (
`id` int(3) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE IF NOT EXISTS `estados` (
`id` int(2) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Amazonas', '2015-09-18 16:34:59', '0000-00-00 00:00:00'),
(2, 'Anzoátegui', '2015-09-18 16:34:59', '0000-00-00 00:00:00'),
(3, 'Apure', '2015-09-18 16:34:59', '0000-00-00 00:00:00'),
(4, 'Aragua', '2015-09-18 16:34:59', '0000-00-00 00:00:00'),
(5, 'Barinas', '2015-09-18 16:34:59', '0000-00-00 00:00:00'),
(6, 'Bolívar', '2015-09-18 16:34:59', '0000-00-00 00:00:00'),
(7, 'Carabobo', '2015-09-18 16:34:59', '0000-00-00 00:00:00'),
(8, 'Cojedes', '2015-09-18 16:34:59', '0000-00-00 00:00:00'),
(9, 'Delta Amacuro', '2015-09-18 16:34:59', '0000-00-00 00:00:00'),
(10, 'Distrito Capital', '2015-09-18 16:34:59', '0000-00-00 00:00:00'),
(11, 'Falcón', '2015-09-18 16:34:59', '0000-00-00 00:00:00'),
(12, 'Guárico', '2015-09-18 16:34:59', '0000-00-00 00:00:00'),
(13, 'Lara', '2015-09-18 16:34:59', '0000-00-00 00:00:00'),
(14, 'Mérida', '2015-09-18 16:34:59', '0000-00-00 00:00:00'),
(15, 'Miranda', '2015-09-18 16:34:59', '0000-00-00 00:00:00'),
(16, 'Monagas', '2015-09-18 16:34:59', '0000-00-00 00:00:00'),
(17, 'Nueva Esparta', '2015-09-18 16:34:59', '0000-00-00 00:00:00'),
(18, 'Portuguesa', '2015-09-18 16:34:59', '0000-00-00 00:00:00'),
(19, 'Sucre', '2015-09-18 16:34:59', '0000-00-00 00:00:00'),
(20, 'Tachira', '2015-09-18 16:34:59', '0000-00-00 00:00:00'),
(21, 'Trujillo', '2015-09-18 16:34:59', '0000-00-00 00:00:00'),
(22, 'Vargas', '2015-09-18 16:34:59', '0000-00-00 00:00:00'),
(23, 'Yaracuy', '2015-09-18 16:34:59', '0000-00-00 00:00:00'),
(24, 'Zulia', '2015-09-18 16:34:59', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE IF NOT EXISTS `facturas` (
`id` int(6) NOT NULL,
  `usuario_id` int(6) NOT NULL,
  `total` int(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fact_detalles`
--

CREATE TABLE IF NOT EXISTS `fact_detalles` (
  `factura_id` int(6) NOT NULL,
  `item_id` int(6) NOT NULL,
  `cantidad` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `items`
--

CREATE TABLE IF NOT EXISTS `items` (
`id` int(6) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `precio` int(5) NOT NULL,
  `imagen` varchar(40) NOT NULL,
  `producto_id` int(3) NOT NULL,
  `zona_id` int(2) NOT NULL,
  `tipo_id` int(3) NOT NULL,
  `color_id` int(3) NOT NULL,
  `stock` int(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `items`
--

INSERT INTO `items` (`id`, `nombre`, `precio`, `imagen`, `producto_id`, `zona_id`, `tipo_id`, `color_id`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'pizza', 500, '', 1, 1, 1, 1, 1, '2015-09-28 00:31:44', '2015-09-28 04:42:45'),
(2, 'cachapa', 300, '', 1, 1, 1, 1, 1, '2015-09-28 00:12:45', '2015-09-28 04:42:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
`id` int(3) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE IF NOT EXISTS `sucursales` (
`id` int(4) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `estado_id` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE IF NOT EXISTS `tipos` (
`id` int(3) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(6) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `correo` varchar(60) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(80) NOT NULL,
  `estado_id` int(2) NOT NULL,
  `sucursal_id` int(4) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `nombre`, `apellido`, `cedula`, `correo`, `celular`, `telefono`, `direccion`, `estado_id`, `sucursal_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ruben', '$2y$10$lmp.xSFmrpHYuaKHG8UhcOgDBOIvnD9nOr.HxVpOUSKObb4tyx4EO', '0', '0', '0', '0', '0', '0', '0', 0, 0, 'RCIOSrt9v4he8ttIxYymX0OsBCCfxEmbh6uIEmehmhjNtNYqRM5dy8U0MdX8', '2015-09-28 00:31:53', '2015-09-28 05:01:53'),
(2, 'pedro', '$2y$10$C0uXcUtSdhb9ZeK5tOWoiu5ggSkRk4z5CYz6I9kouMAFvAWmOEQB.', '', '', '', '', '', '', '', 0, 0, 'PDly78rpYqSbu4fxYdkL8KLSx4yk187oAOparLHARwO8D43EJZHixusianUD', '2015-09-27 15:26:00', '2015-09-27 19:56:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zonas`
--

CREATE TABLE IF NOT EXISTS `zonas` (
`id` int(2) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `colores`
--
ALTER TABLE `colores`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `items`
--
ALTER TABLE `items`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `zonas`
--
ALTER TABLE `zonas`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `colores`
--
ALTER TABLE `colores`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `items`
--
ALTER TABLE `items`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipos`
--
ALTER TABLE `tipos`
MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
MODIFY `id` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `zonas`
--
ALTER TABLE `zonas`
MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
