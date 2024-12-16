-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-12-2024 a las 06:07:31
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `ser_mecanica` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ser_mecanica`;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ser_mecanica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `caja_id` int(5) NOT NULL,
  `caja_numero` int(5) NOT NULL,
  `caja_nombre` varchar(100) NOT NULL,
  `caja_estado` varchar(17) NOT NULL,
  `caja_efectivo` decimal(30,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `categoria_id` int(10) NOT NULL,
  `categoria_nombre` varchar(50) NOT NULL,
  `categoria_descripcion` text NOT NULL,
  `categoria_estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`categoria_id`, `categoria_nombre`, `categoria_descripcion`, `categoria_estado`) VALUES
(1, 'Repuestos', 'Componentes y piezas esenciales para la reparación y mantenimiento de vehículos automotrices, especialmente para camiones y buses.', 'Habilitada'),
(2, 'Herramientas', 'Equipos y utensilios especializados para realizar trabajos de reparación y diagnóstico en talleres mecánicos.', 'Habilitada'),
(3, 'Lubricantes', 'Aceites, grasas y otros fluidos necesarios para el correcto funcionamiento y mantenimiento de motores y sistemas mecánicos.', 'Habilitada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `cliente_id` int(10) NOT NULL,
  `cliente_nombre` varchar(37) NOT NULL,
  `cliente_apellido` varchar(37) NOT NULL,
  `cliente_genero` varchar(10) NOT NULL,
  `cliente_telefono` varchar(22) NOT NULL,
  `cliente_provincia` varchar(30) NOT NULL,
  `cliente_ciudad` varchar(30) NOT NULL,
  `cliente_direccion` varchar(70) NOT NULL,
  `cliente_email` varchar(50) NOT NULL,
  `cliente_clave` varchar(535) NOT NULL,
  `cliente_foto` varchar(200) NOT NULL,
  `cliente_cuenta_estado` varchar(17) NOT NULL,
  `cliente_cuenta_verificada` varchar(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cliente_id`, `cliente_nombre`, `cliente_apellido`, `cliente_genero`, `cliente_telefono`, `cliente_provincia`, `cliente_ciudad`, `cliente_direccion`, `cliente_email`, `cliente_clave`, `cliente_foto`, `cliente_cuenta_estado`, `cliente_cuenta_verificada`) VALUES
(1, 'Yerri', 'Chilcon Ramirez', 'Masculino', '92341234', 'Chilclayo', 'Chiclayo', 'jr. 2 de mayo', 'yerri2613@gmail.com', 'YkVjVjJJVG5OeW9jOFJta25Bc241UT09', 'Avatar_default_male.png', 'Activa', 'No verificada'),
(2, 'Juan', 'Perez', 'Masculino', '922001401', 'Chiclayo', 'Chiclayo', 'jr. sucre', 'user1@uss.pe', 'R2s5ZVFDVEZpbHN2Q0FCenBkai9hZz09', 'Avatar_Male_3.png', 'Activa', 'No verificada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `empresa_id` int(3) NOT NULL,
  `empresa_tipo_documento` varchar(20) NOT NULL,
  `empresa_numero_documento` varchar(35) NOT NULL,
  `empresa_nombre` varchar(90) NOT NULL,
  `empresa_telefono` varchar(20) NOT NULL,
  `empresa_email` varchar(50) NOT NULL,
  `empresa_direccion` varchar(100) NOT NULL,
  `empresa_impuesto_nombre` varchar(10) NOT NULL,
  `empresa_impuesto_porcentaje` int(3) NOT NULL,
  `empresa_factura_impuestos` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favorito`
--

CREATE TABLE `favorito` (
  `favorito_id` int(15) NOT NULL,
  `favorito_fecha` date NOT NULL,
  `cliente_id` int(10) NOT NULL,
  `producto_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE `imagen` (
  `imagen_id` int(30) NOT NULL,
  `imagen_nombre` varchar(200) NOT NULL,
  `producto_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `producto_id` int(20) NOT NULL,
  `producto_codigo` varchar(50) NOT NULL,
  `producto_sku` varchar(50) NOT NULL,
  `producto_nombre` varchar(200) NOT NULL,
  `producto_descripcion` varchar(535) NOT NULL,
  `producto_stock` int(10) NOT NULL,
  `producto_stock_minimo` int(10) NOT NULL,
  `producto_precio_compra` decimal(30,2) NOT NULL,
  `producto_precio_venta` decimal(30,2) NOT NULL,
  `producto_descuento` int(3) NOT NULL,
  `producto_tipo` varchar(10) NOT NULL,
  `producto_presentacion` varchar(30) NOT NULL,
  `producto_marca` varchar(50) NOT NULL,
  `producto_modelo` varchar(70) NOT NULL,
  `producto_estado` varchar(20) NOT NULL,
  `producto_portada` varchar(300) NOT NULL,
  `categoria_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`producto_id`, `producto_codigo`, `producto_sku`, `producto_nombre`, `producto_descripcion`, `producto_stock`, `producto_stock_minimo`, `producto_precio_compra`, `producto_precio_venta`, `producto_descuento`, `producto_tipo`, `producto_presentacion`, `producto_marca`, `producto_modelo`, `producto_estado`, `producto_portada`, `categoria_id`) VALUES
(1, 'P001', 'SC-MOTOR-001', 'Pistón para Motor Scania', 'Pistón de alta resistencia, ideal para motores diésel de camiones pesados.', 20, 5, 120.00, 150.00, 0, 'Fisico', 'Unidad', 'Scania', 'Modelo X', 'Habilitado', 'K1K6T3S7A2-1.png', 1),
(2, 'REP002', 'SKU-002', 'Disco de Freno', 'Disco reforzado para sistemas de frenado de vehículos de carga.', 20, 5, 100.00, 120.00, 0, 'Fisico', 'Unidad', 'Scania', 'Bosch', 'Habilitado', 'A0M6A3Y6G5-2.png', 1),
(3, 'REP003', 'SKU-003', 'COMPRESOR DE AIRE SCANIA DC 9', 'Genera y mantiene la presión de aire para sistemas de frenos y suspensión en vehículos pesados Scania.', 20, 5, 200.00, 250.00, 0, 'Fisico', 'Unidad', 'Scania', 'DC 9', 'Habilitado', 'E4X7X3J1K8-3.png', 1),
(4, 'REP004', 'SKU-004', 'VOLANTE MOTOR SCANIA SERIE 5', 'Volante motor de alta resistencia para motores Scania Serie 5, diseñado para un rendimiento óptimo en vehículos pesados.', 5, 1, 500.00, 800.00, 0, 'Fisico', 'Unidad', 'Scania', 'Serie 5', 'Habilitado', 'S6S0Y8B0J8-4.png', 1),
(5, 'REP005', 'SKU-005', 'BOMBA DE AGUA SCANIA DSC11', 'Bomba de agua de alto rendimiento para motores Scania DSC11, 114 y 124, diseñada para mantener la temperatura del motor en niveles óptimos.', 10, 2, 200.00, 220.00, 0, 'Fisico', 'Unidad', 'Scania', 'WASPO', 'Habilitado', 'Z2X9L8L2B2-5.png', 1),
(6, 'REP006', 'SKU-006', 'TAMBOR DE FRENO SCANIA P114 - DELANTERO', 'Tambor de freno delantero para vehículos Scania P114 y P94, diseñado para ofrecer alta resistencia y rendimiento en sistemas de frenado.', 20, 5, 150.00, 200.00, 0, 'Fisico', 'Unidad', 'Scania', 'FRENTECH', 'Habilitado', 'O6P6W6M0L7-6.png', 1),
(7, 'HER001', 'SKU-007', 'Llave de Impacto Neumática', 'Herramienta profesional para desmontar tornillos en vehículos pesados.', 50, 20, 50.00, 75.00, 0, 'Fisico', 'Unidad', 'DeWalt', 'Herramienta', 'Habilitado', 'P2P6R5E5M6-7.png', 2),
(8, 'HER002', 'SKU-008', 'Gato Hidráulico', 'Dispositivo utilizado para levantar vehículos pesados, como camiones y autobuses, para trabajos de mantenimiento y reparación.', 20, 2, 150.00, 180.00, 0, 'Fisico', 'Unidad', 'Scania', 'Hidráulico', 'Habilitado', 'M2H7R6O5F3-8.png', 2),
(9, 'LUB001', 'SKU-009', 'Aceite Sintético', 'Aceite de alto rendimiento diseñado para motores diésel.', 60, 20, 40.00, 65.00, 0, 'Fisico', 'Galon', 'Castrol', 'Sintético', 'Habilitado', 'K0M2D7B8M8-9.png', 3),
(10, 'LUB002', 'SKU-0010', 'Aceite de motor de coche motor diesel', 'Grasa lubricante ideal para sistemas de alta fricción y rodamientos.', 60, 15, 70.00, 85.00, 0, 'Fisico', 'Galon', 'Diesel', 'motor', 'Habilitado', 'Z6Q5J3Q3N3-10.png', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(10) NOT NULL,
  `usuario_nombre` varchar(37) NOT NULL,
  `usuario_apellido` varchar(37) NOT NULL,
  `usuario_telefono` varchar(22) NOT NULL,
  `usuario_genero` varchar(10) NOT NULL,
  `usuario_cargo` varchar(20) NOT NULL,
  `usuario_usuario` varchar(30) NOT NULL,
  `usuario_email` varchar(50) NOT NULL,
  `usuario_clave` varchar(535) NOT NULL,
  `usuario_cuenta_estado` varchar(17) NOT NULL,
  `usuario_foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario_nombre`, `usuario_apellido`, `usuario_telefono`, `usuario_genero`, `usuario_cargo`, `usuario_usuario`, `usuario_email`, `usuario_clave`, `usuario_cuenta_estado`, `usuario_foto`) VALUES
(1, 'Administrador', 'Principal', '00000000', 'Masculino', 'Administrador', 'Administrador', 'admin@admin.com', 'K1hvdkhOR2hvQ1pzK2V1STJPaGlwQT09', 'Activa', 'Avatar_Male_2.png'),
(2, 'Yerri', 'Chilcon Ramirez', '922653095', 'Masculino', 'Administrador', 'admin', 'admin@uss.pe', 'RVZqVExtSlM4dzhDVTVuYUljQVZ6Zz09', 'Activa', 'Avatar_Male_4.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `venta_id` int(20) NOT NULL,
  `venta_codigo` varchar(200) NOT NULL,
  `venta_fecha` date NOT NULL,
  `venta_hora` varchar(17) NOT NULL,
  `venta_tipo_envio` varchar(20) NOT NULL,
  `venta_impuesto_nombre` varchar(10) NOT NULL,
  `venta_impuesto_porcentaje` int(3) NOT NULL,
  `venta_estado_envio` varchar(20) NOT NULL,
  `venta_estado_pagado` varchar(20) NOT NULL,
  `venta_subtotal` decimal(30,2) NOT NULL,
  `venta_impuestos` decimal(30,2) NOT NULL,
  `venta_total` decimal(30,2) NOT NULL,
  `venta_costo` decimal(30,2) NOT NULL,
  `venta_utilidad` decimal(30,2) NOT NULL,
  `venta_pagado` decimal(30,2) NOT NULL,
  `venta_cambio` decimal(30,2) NOT NULL,
  `cliente_id` int(10) NOT NULL,
  `usuario_id` int(10) NOT NULL,
  `empresa_id` int(3) NOT NULL,
  `caja_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_detalle`
--

CREATE TABLE `venta_detalle` (
  `venta_detalle_id` int(20) NOT NULL,
  `venta_detalle_cantidad` int(10) NOT NULL,
  `venta_detalle_precio_compra` decimal(30,2) NOT NULL,
  `venta_detalle_precio_regular` decimal(30,2) NOT NULL,
  `venta_detalle_precio_venta` decimal(30,2) NOT NULL,
  `venta_detalle_total` decimal(30,2) NOT NULL,
  `venta_detalle_costo` decimal(30,2) NOT NULL,
  `venta_detalle_utilidad` decimal(30,2) NOT NULL,
  `venta_detalle_descripcion` varchar(200) NOT NULL,
  `venta_codigo` varchar(200) NOT NULL,
  `producto_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`caja_id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cliente_id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`empresa_id`);

--
-- Indices de la tabla `favorito`
--
ALTER TABLE `favorito`
  ADD PRIMARY KEY (`favorito_id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD PRIMARY KEY (`imagen_id`),
  ADD KEY `producto_id` (`producto_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`producto_id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`venta_id`),
  ADD UNIQUE KEY `venta_codigo` (`venta_codigo`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `empresa_id` (`empresa_id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `caja_id` (`caja_id`);

--
-- Indices de la tabla `venta_detalle`
--
ALTER TABLE `venta_detalle`
  ADD KEY `venta_id` (`venta_codigo`),
  ADD KEY `producto_id` (`producto_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `caja_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `categoria_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cliente_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `empresa_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `favorito`
--
ALTER TABLE `favorito`
  MODIFY `favorito_id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `imagen`
--
ALTER TABLE `imagen`
  MODIFY `imagen_id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `producto_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `venta_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `favorito`
--
ALTER TABLE `favorito`
  ADD CONSTRAINT `favorito_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`producto_id`),
  ADD CONSTRAINT `favorito_ibfk_2` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`cliente_id`);

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`producto_id`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`categoria_id`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`cliente_id`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`usuario_id`),
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`empresa_id`),
  ADD CONSTRAINT `venta_ibfk_4` FOREIGN KEY (`caja_id`) REFERENCES `caja` (`caja_id`);

--
-- Filtros para la tabla `venta_detalle`
--
ALTER TABLE `venta_detalle`
  ADD CONSTRAINT `venta_detalle_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`producto_id`),
  ADD CONSTRAINT `venta_detalle_ibfk_3` FOREIGN KEY (`venta_codigo`) REFERENCES `venta` (`venta_codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
