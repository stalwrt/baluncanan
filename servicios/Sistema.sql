-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-05-2022 a las 20:38:02
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.5
DROP DATABASE IF EXISTS sistema_ecommerce;
CREATE DATABASE IF NOT EXISTS sistema_ecommerce 
CHARACTER SET = 'latin1'
COLLATE = 'latin1_spanish_ci';
USE sistema_ecommerce;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de datos: `sistema_ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `codped` int(11) NOT NULL,
  `codusu` int(11) NOT NULL,
  `codpro` int(11) NOT NULL,
  `fecped` datetime NOT NULL,
  `estado` int(11) NOT NULL,
  `dirusuped` varchar(50) NOT NULL,
  `telusuped` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`codped`, `codusu`, `codpro`, `fecped`, `estado`, `dirusuped`, `telusuped`) VALUES
(1, 1, 5, '2022-05-17 17:34:09', 1, '', ''),
(2, 1, 4, '2022-05-18 08:15:48', 1, '', ''),
(3, 1, 5, '2022-05-18 08:16:07', 1, '', ''),
(4, 1, 15, '2022-05-18 09:54:35', 1, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `codpro` int(11) NOT NULL,
  `nompro` varchar(50) DEFAULT NULL,
  `despro` varchar(100) DEFAULT NULL,
  `prepro` decimal(6,2) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `rutimapro` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`codpro`, `nompro`, `despro`, `prepro`, `estado`, `rutimapro`) VALUES
(1, 'Producto cafe 1', 'Delicioso cafe para tomar en las mañanas', '150.00', 1, 'product-1.png'),
(2, 'Producto cafe 2', 'Delicioso cafe para tomar en las mañanas', '130.00', 1, 'product-2.png'),
(3, 'Producto cafe 3', 'Nada mejor que tomar cafe recien hecho por las mañanas', '150.00', 1, 'product-3.png'),
(4, 'Producto cafe 4', 'Delicioso cafe para tomar en las mañanas', '150.00', 1, 'product-1.png'),
(5, 'Producto cafe 5', 'Delicioso cafe para tomar en las mañanas', '150.00', 1, 'product-2.png'),
(6, 'Producto cafe 6', 'Nada mejor que tomar cafe recien hecho por las mañanas', '130.00', 1, 'product-3.png'),
(7, 'Producto cafe 7', 'Delicioso cafe para tomar en las mañanas', '130.00', 1, 'product-1.png'),
(8, 'Producto cafe 8', 'Delicioso cafe para tomar en las mañanas', '150.00', 1, 'product-2.png'),
(9, 'Producto cafe 9', 'Delicioso cafe para tomar en las mañanas', '150.00', 1, 'product-3.png'),
(10, 'Producto cafe 10', 'Delicioso cafe para tomar en las mañanas', '130.00', 1, 'product-1.png'),
(11, 'Producto cafe 11', 'Delicioso cafe para tomar en las mañanas', '150.00', 1, 'product-2.png'),
(12, 'Producto cafe 12', 'Delicioso cafe para tomar en las mañanas', '150.00', 1, 'product-3.png'),
(13, 'Producto cafe 13', 'Nada mejor que tomar cafe recien hecho por las mañanas', '150.00', 1, 'product-1.png'),
(14, 'Producto cafe 14', 'Delicioso cafe para tomar en las mañanas', '150.00', 1, 'product-2.png'),
(15, 'Producto cafe 15', 'Delicioso cafe para tomar en las mañanas', '150.00', 1, 'product-3.png'),
(16, 'Producto cafe 16', 'Nada mejor que tomar cafe recien hecho por las mañanas', '130.00', 1, 'product-1.png'),
(17, 'Producto cafe 17', 'Nada mejor que tomar cafe recien hecho por las mañanas', '150.00', 1, 'product-2.png'),
(18, 'Producto cafe 18', 'Delicioso cafe para tomar en las mañanas', '150.00', 1, 'product-3.png'),
(19, 'Producto cafe 19', 'Delicioso cafe para tomar en las mañanas', '130.00', 1, 'product-1.png'),
(20, 'Producto cafe 20', 'Delicioso cafe para tomar en las mañanas', '130.00', 1, 'product-2.png'),
(21, 'Producto cafe 21', 'Nada mejor que tomar cafe recien hecho por las mañanas', '150.00', 1, 'product-3.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `codusu` int(11) NOT NULL,
  `nomusu` varchar(50) DEFAULT NULL,
  `apeusu` varchar(50) DEFAULT NULL,
  `emausu` varchar(50) NOT NULL,
  `pasusu` varchar(20) NOT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`codusu`, `nomusu`, `apeusu`, `emausu`, `pasusu`, `estado`) VALUES
(1, 'Usuario', 'Demo', 'correo@example.com', '123456', 1),
(3, 'Gladys', 'Colunga', 'correo@ejemplo.com', '12345', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`codped`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`codpro`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`codusu`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `codped` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `codpro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `codusu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;