-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2025 a las 17:41:13
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sistemaventa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `dni` int(20) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `telefono` int(15) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `razon` varchar(200) NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `dni`, `nombre`, `telefono`, `direccion`, `razon`, `fecha`) VALUES
(9, 1234, 'Underarmour', 456789, 'Alfonso13', 'underarmour.srl', '2025-05-28'),
(10, 455789, 'BurguerKing', 456789, 'gran via', 'bk.srl', '2025-05-28'),
(11, 1234, 'lefties', 12345, 'Gran via', 'lefties.srl', '2025-05-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `telefono` int(15) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `razon` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`id`, `nombre`, `dni`, `telefono`, `direccion`, `razon`) VALUES
(1, 'esteban', '234556', 655399793, 'avenida', '1230974');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle`
--

CREATE TABLE `detalle` (
  `id` int(11) NOT NULL,
  `cod_pro` varchar(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `idVenta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle`
--

INSERT INTO `detalle` (`id`, `cod_pro`, `cantidad`, `precio`, `idVenta`) VALUES
(4, '2025B', 5, 57.00, 10),
(5, '2025B', 5, 57.00, 11),
(6, '2025A', 10, 15.00, 12),
(7, '2025B', 45, 57.00, 13),
(8, '2025A', 10, 15.00, 13),
(9, '2025A', 10, 15.00, 14),
(10, '2025A', 10, 15.00, 15),
(11, '2025A', 3, 15.00, 16),
(12, '2017Y', 5, 30.00, 17),
(13, '2025A', 5, 15.00, 17),
(14, '2025A', 20, 15.00, 18),
(15, '2025B', 30, 57.00, 18),
(16, '2017Y', 40, 30.00, 18),
(17, '2025A', 10, 15.00, 19),
(18, '2025B', 15, 57.00, 19),
(19, '2025A', 15, 15.00, 20),
(20, '2025B', 12, 57.00, 20),
(21, '2025A', 10, 15.00, 21),
(22, '2025B', 10, 57.00, 21),
(23, '2025A', 10, 15.00, 22),
(24, '2025A', 5, 15.00, 23),
(25, '2025A', 5, 15.00, 24),
(26, '2025A', 1, 15.00, 25),
(27, '2025B', 1, 57.00, 25),
(28, '2025A', 2, 15.00, 26),
(29, '2025B', 2, 57.00, 26),
(30, '2025A', 5, 15.00, 27),
(31, '2025B', 5, 57.00, 27),
(32, '2025A', 20, 15.00, 28),
(33, '2025B', 30, 57.00, 28),
(34, '2025A', 2, 15.00, 29),
(35, '2025A', 10, 15.00, 30),
(36, '2025B', 3, 57.00, 31),
(37, '2025A', 3, 15.00, 32),
(38, '2025A', 30, 15.00, 33),
(39, '2025B', 30, 57.00, 33),
(40, '2025A', 20, 15.00, 34),
(41, '2025A', 10, 15.00, 35),
(42, '2025A', 20, 15.00, 36),
(43, '2025B', 10, 57.00, 37),
(44, '2025A', 20, 15.00, 38),
(45, '2025C', 10, 200.00, 39),
(46, '2025A', 20, 15.00, 40),
(47, '2025A', 20, 15.00, 41),
(48, '2025D', 20, 57.00, 41);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(30) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `proveedor` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `codigo`, `nombre`, `proveedor`, `stock`, `precio`, `fecha`) VALUES
(3, '2025D', 'gafas de sol', 'Amazon', 32, 57.00, '2025-05-05'),
(4, '2025A', 'gorra', 'Fara', 714, 15.00, '2025-05-05'),
(5, '2017Y', 'balon', 'Nvidia', 2025, 30.00, '2025-05-05'),
(6, '2025C', 'Computadora', 'Nvidia', 390, 200.00, '2025-05-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL,
  `nif` varchar(20) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `telefono` int(15) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `razon` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `nif`, `nombre`, `telefono`, `direccion`, `razon`) VALUES
(6, 'B45562378', 'Fara', 662662662, 'san fernando', 'SA'),
(7, 'B45562378', 'Nvidia', 777777777, 'california', 'SA'),
(8, 'Y78456879', 'Amazon', 672672672, 'California', 'SA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `rol` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `pass`, `rol`) VALUES
(1, 'pepe', 'admin', 'admin', 'Administrador'),
(2, 'asistente', 'asistente', '456', 'Asistente'),
(9, 'YEHOR', 'yehor', 'yehor', 'Asistente'),
(11, 'ADMINISTRADOR', 'admin', '123', 'Administrador'),
(12, 'hola', 'hola', '`123', 'Administrador'),
(13, 'est', 'est', 'est', 'Administrador'),
(14, 'Digitech', 'digitech@fp.com', '123', 'Administrador'),
(15, 'Usuario1', 'user', 'user', 'Administrador'),
(16, 'usuario1', 'user1', 'user1', 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `cliente` varchar(100) NOT NULL,
  `vendedor` varchar(100) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `fecha` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `cliente`, `vendedor`, `total`, `fecha`) VALUES
(25, 'Nike', 'VidaInformatico', 72.00, '28/05/2025'),
(26, 'Nike', 'VidaInformatico', 144.00, '28/05/2025'),
(27, 'Nike', 'VidaInformatico', 360.00, '27/04/2025'),
(28, 'Nike', 'VidaInformatico', 2010.00, '28/05/2025'),
(29, 'Nike', 'Administrador', 30.00, '28/05/2025'),
(30, 'Adidas', 'Administrador', 150.00, '28/05/2025'),
(31, 'Adidas', 'Administrador', 171.00, '28/05/2025'),
(32, 'Nike', 'Administrador', 45.00, '28/05/2025'),
(33, 'Primark', 'Administrador', 2160.00, '28/05/2025'),
(34, 'Primark', 'Administrador', 300.00, '28/05/2025'),
(35, '', 'Administrador', 150.00, '28/05/2025'),
(36, '', 'Administrador', 300.00, '28/05/2025'),
(37, '', 'Administrador', 570.00, '28/05/2025'),
(38, 'Lefites', 'ADMINISTRADOR', 300.00, '28/05/2025'),
(39, 'Underarmour', 'Digitech', 2000.00, '28/05/2025'),
(40, 'BurguerKing', 'Usuario1', 300.00, '28/05/2025'),
(41, 'lefties', 'usuario1', 1440.00, '28/05/2025');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle`
--
ALTER TABLE `detalle`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detalle`
--
ALTER TABLE `detalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
