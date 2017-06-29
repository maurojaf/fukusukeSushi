-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 29-06-2017 a las 04:53:42
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sushifukusuke`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `nuevoCliente` (IN `_nombre` VARCHAR(50), IN `_rut` VARCHAR(12), IN `_direccion` VARCHAR(100), IN `_comuna` VARCHAR(50), IN `_provincia` VARCHAR(80), IN `_region` VARCHAR(100), IN `_fecha_nacimiento` VARCHAR(15), IN `_sexo` VARCHAR(10), IN `_correo` VARCHAR(100), IN `_telefono` VARCHAR(12), IN `_contrasena` VARCHAR(100))  BEGIN
	INSERT INTO clientes (nombre, rut, direccion, comuna, provincia, region, fecha_nacimiento, sexo, correo, telefono, contrasena)
	VALUES(_nombre, _rut, _direccion, _comuna, _provincia, _region, _fecha_nacimiento, _sexo, _correo, _telefono, _contrasena);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `optiongroups`
--

CREATE TABLE `optiongroups` (
  `OptionGroupID` int(11) NOT NULL,
  `OptionGroupName` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `options`
--

CREATE TABLE `options` (
  `OptionID` int(11) NOT NULL,
  `OptionGroupID` int(11) DEFAULT NULL,
  `OptionName` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orderdetails`
--

CREATE TABLE `orderdetails` (
  `DetailID` int(11) NOT NULL,
  `DetailOrderID` int(11) NOT NULL,
  `DetailProductID` int(11) NOT NULL,
  `DetailName` varchar(250) COLLATE latin1_german2_ci DEFAULT NULL,
  `DetailPrice` float DEFAULT NULL,
  `DetailSKU` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `DetailQuantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Volcado de datos para la tabla `orderdetails`
--

INSERT INTO `orderdetails` (`DetailID`, `DetailOrderID`, `DetailProductID`, `DetailName`, `DetailPrice`, `DetailSKU`, `DetailQuantity`) VALUES
(1, 3, 1010, NULL, NULL, NULL, 1),
(2, 4, 997, NULL, NULL, NULL, 1),
(3, 5, 992, NULL, NULL, NULL, 1),
(4, 5, 997, NULL, NULL, NULL, 2),
(5, 6, 993, NULL, NULL, NULL, 1),
(6, 7, 993, NULL, NULL, NULL, 3),
(7, 8, 996, NULL, NULL, NULL, 3),
(8, 9, 999, NULL, NULL, NULL, 3),
(9, 9, 1001, NULL, NULL, NULL, 1),
(10, 9, 1007, NULL, NULL, NULL, 1),
(11, 10, 996, NULL, NULL, NULL, 1),
(12, 11, 992, NULL, NULL, NULL, 1),
(13, 12, 993, NULL, NULL, NULL, 1),
(14, 13, 1002, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `OrderUserID` int(11) DEFAULT NULL,
  `OrderAmount` int(11) NOT NULL,
  `OrderShipName` varchar(100) COLLATE latin1_german2_ci DEFAULT NULL,
  `OrderShipAddress` varchar(100) COLLATE latin1_german2_ci NOT NULL,
  `OrderShipAddress2` varchar(100) COLLATE latin1_german2_ci DEFAULT NULL,
  `OrderCity` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `OrderState` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `OrderZip` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `OrderCountry` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `OrderPhone` varchar(20) COLLATE latin1_german2_ci NOT NULL,
  `OrderFax` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `OrderShipping` float DEFAULT NULL,
  `OrderTax` float DEFAULT NULL,
  `OrderEmail` varchar(100) COLLATE latin1_german2_ci NOT NULL,
  `OrderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `OrderShipped` tinyint(1) NOT NULL DEFAULT '0',
  `OrderTrackingNumber` varchar(80) COLLATE latin1_german2_ci DEFAULT NULL,
  `orderIDCliente` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`OrderID`, `OrderUserID`, `OrderAmount`, `OrderShipName`, `OrderShipAddress`, `OrderShipAddress2`, `OrderCity`, `OrderState`, `OrderZip`, `OrderCountry`, `OrderPhone`, `OrderFax`, `OrderShipping`, `OrderTax`, `OrderEmail`, `OrderDate`, `OrderShipped`, `OrderTrackingNumber`, `orderIDCliente`) VALUES
(3, NULL, 1029, NULL, 'Estepa Alta 05704', NULL, NULL, NULL, NULL, NULL, '961914768', NULL, NULL, NULL, 'maurojaf@gmail.com', '2017-06-28 04:22:47', 0, NULL, 0),
(4, NULL, 8500, NULL, 'Estepa Alta 05704', NULL, NULL, NULL, NULL, NULL, '961914768', NULL, NULL, NULL, 'maurojaf@gmail.com', '2017-06-28 04:25:34', 0, NULL, 0),
(5, NULL, 20000, NULL, 'Estepa Alta 05704', NULL, NULL, NULL, NULL, NULL, '961914768', NULL, NULL, NULL, 'maurojaf@gmail.com', '2017-06-28 14:19:17', 0, NULL, 0),
(6, NULL, 3000, NULL, 'Estepa Alta 05704', NULL, NULL, NULL, NULL, NULL, '961914768', NULL, NULL, NULL, 'maurojaf@gmail.com', '2017-06-28 14:33:41', 0, NULL, 7),
(7, NULL, 9000, NULL, 'Estepa Alta 05704', NULL, NULL, NULL, NULL, NULL, '961914768', NULL, NULL, NULL, 'maurojaf@gmail.com', '2017-06-28 23:58:14', 0, NULL, 7),
(8, NULL, 25500, NULL, 'Estepa Alta 05704', NULL, NULL, NULL, NULL, NULL, '961914768', NULL, NULL, NULL, 'maurojaf@gmail.com', '2017-06-29 00:05:21', 0, NULL, 7),
(9, NULL, 13448, NULL, 'Estepa Alta 05704', NULL, NULL, NULL, NULL, NULL, '961914768', NULL, NULL, NULL, 'maurojaf@gmail.com', '2017-06-29 00:09:29', 0, NULL, 7),
(10, NULL, 8500, NULL, 'Estepa Alta 05704', NULL, NULL, NULL, NULL, NULL, '961914768', NULL, NULL, NULL, 'maurojaf@gmail.com', '2017-06-29 00:10:59', 0, NULL, 7),
(11, NULL, 3000, NULL, 'Estepa Alta 05704', NULL, NULL, NULL, NULL, NULL, '961914768', NULL, NULL, NULL, 'maurojaf@gmail.com', '2017-06-29 00:12:33', 0, NULL, 7),
(12, NULL, 3000, NULL, 'Estepa Alta 05704', NULL, NULL, NULL, NULL, NULL, '961914768', NULL, NULL, NULL, 'maurojaf@gmail.com', '2017-06-29 00:13:25', 0, NULL, 7),
(13, NULL, 500, NULL, 'Estepa Alta 05704', NULL, NULL, NULL, NULL, NULL, '961914768', NULL, NULL, NULL, 'maurojaf@gmail.com', '2017-06-29 00:14:41', 0, NULL, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productcategories`
--

CREATE TABLE `productcategories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(50) COLLATE latin1_german2_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productoptions`
--

CREATE TABLE `productoptions` (
  `ProductOptionID` int(10) UNSIGNED NOT NULL,
  `ProductID` int(10) UNSIGNED DEFAULT NULL,
  `OptionID` int(10) UNSIGNED DEFAULT NULL,
  `OptionPriceIncrement` double DEFAULT NULL,
  `OptionGroupID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `ProductID` int(12) NOT NULL,
  `ProductSKU` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `ProductName` varchar(100) COLLATE latin1_german2_ci NOT NULL,
  `ProductPrice` int(11) NOT NULL,
  `ProductWeight` int(11) DEFAULT NULL,
  `ProductCartDesc` varchar(250) COLLATE latin1_german2_ci DEFAULT NULL,
  `ProductShortDesc` varchar(1000) COLLATE latin1_german2_ci DEFAULT NULL,
  `ProductLongDesc` text COLLATE latin1_german2_ci NOT NULL,
  `ProductThumb` varchar(100) COLLATE latin1_german2_ci DEFAULT NULL,
  `ProductImage` varchar(255) COLLATE latin1_german2_ci DEFAULT NULL,
  `ProductCategoryID` int(11) DEFAULT NULL,
  `ProductUpdateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ProductStock` int(11) DEFAULT NULL,
  `ProductLive` tinyint(1) DEFAULT '0',
  `ProductUnlimited` tinyint(1) DEFAULT '1',
  `ProductLocation` varchar(250) COLLATE latin1_german2_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES
(992, NULL, 'Producto De Prueba 1', 3000, NULL, NULL, NULL, 'esta', NULL, 'FukusukeSushi.pptx', NULL, '2017-06-19 16:16:45', 10, 0, 1, NULL),
(993, NULL, 'Producto De Prueba 1', 3000, NULL, NULL, NULL, 'esta', NULL, 'FukusukeSushi.pptx', NULL, '2017-06-19 16:21:38', 10, 0, 1, NULL),
(1002, NULL, 'Bollo de sabores', 500, NULL, NULL, NULL, 'Bollo baÃ?Â±ado en chocolate con cubierta de frambueza', NULL, 'Foto2.jpeg', NULL, '2017-06-26 22:55:20', 10, 0, 1, NULL),
(996, NULL, 'Roll de Canela', 8500, NULL, NULL, NULL, 'Exiquito roll de canela, envuelto en canela relleno de canela', NULL, NULL, NULL, '2017-06-26 20:07:27', 20, 0, 1, NULL),
(997, NULL, 'Roll de Canela', 8500, NULL, NULL, NULL, 'Exiquito roll de canela, envuelto en canela relleno de canela', NULL, NULL, NULL, '2017-06-26 20:11:13', 20, 0, 1, NULL),
(998, NULL, 'Producto De Prueba', 3450, NULL, NULL, NULL, 'producto de prueba', NULL, NULL, NULL, '2017-06-26 22:32:17', 10, 0, 1, NULL),
(999, NULL, 'Producto De Prueba', 3450, NULL, NULL, NULL, 'producto de prueba', NULL, NULL, NULL, '2017-06-26 22:35:18', 10, 0, 1, NULL),
(1010, NULL, 'producto de prueba 3', 1029, NULL, NULL, NULL, 'proa', NULL, '1493818239_org-lorenzos-emmet-1.1.2.nbm', NULL, '2017-06-26 23:00:21', 10, 0, 1, NULL),
(1001, NULL, 'Bollitos de canela', 1000, NULL, NULL, NULL, 'Suculentos bollitos de canela con magicos polvos blancos que harÃ??Ã?Â¡n tu cabeza volar', NULL, 'Foto3.jpeg', NULL, '2017-06-26 22:50:50', 10, 0, 1, NULL),
(1012, NULL, 'd', 9, NULL, NULL, NULL, 'd', NULL, 'Proyecto 3.zip', NULL, '2017-06-26 23:12:25', 2, 0, 1, NULL),
(1004, NULL, 'bollo de vizcocho', 12, NULL, NULL, NULL, 'as', NULL, 'Foto2.jpeg', NULL, '2017-06-26 22:56:18', 10, 0, 1, NULL),
(1005, NULL, 'bollo de vizcocho', 12, NULL, NULL, NULL, 'as', NULL, 'Foto1.jpeg', NULL, '2017-06-26 22:56:41', 10, 0, 1, NULL),
(1006, NULL, 'producto de prueba 549287849', 2098, NULL, NULL, NULL, 'Producto nuevo de prueba para verificar si existe una verificacion de archivios', NULL, NULL, NULL, '2017-06-26 22:57:25', 10, 0, 1, NULL),
(1007, NULL, 'producto de prueba 549287849', 2098, NULL, NULL, NULL, 'Producto nuevo de prueba para verificar si existe una verificacion de archivios', NULL, NULL, NULL, '2017-06-26 22:58:12', 10, 0, 1, NULL),
(1008, NULL, 'producto de prueba 549287849', 2098, NULL, NULL, NULL, 'Producto nuevo de prueba para verificar si existe una verificacion de archivios', NULL, '1493818239_org-lorenzos-emmet-1.1.2.nbm', NULL, '2017-06-26 22:58:16', 10, 0, 1, NULL),
(1013, NULL, 'd', 9, NULL, NULL, NULL, 'd', NULL, 'Proyecto 3.zip', NULL, '2017-06-26 23:15:40', 2, 0, 1, NULL),
(1014, NULL, 'd', 9, NULL, NULL, NULL, 'd', NULL, 'Proyecto 3.zip', NULL, '2017-06-26 23:16:23', 2, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `UserEmail` varchar(500) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserPassword` varchar(500) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserFirstName` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserLastName` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserCity` varchar(90) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserState` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserZip` varchar(12) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserEmailVerified` tinyint(1) DEFAULT '0',
  `UserRegistrationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UserVerificationCode` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserIP` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserPhone` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserFax` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserCountry` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserAddress` varchar(100) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserAddress2` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`UserID`, `UserEmail`, `UserPassword`, `UserFirstName`, `UserLastName`, `UserCity`, `UserState`, `UserZip`, `UserEmailVerified`, `UserRegistrationDate`, `UserVerificationCode`, `UserIP`, `UserPhone`, `UserFax`, `UserCountry`, `UserAddress`, `UserAddress2`) VALUES
(1, 'maurojaf1992@gmail.com', 'bleh', 'Juan', 'Perez', 'Santiago', 'Maipu', NULL, 0, '2017-06-19 15:26:04', NULL, NULL, '961914768', NULL, NULL, 'EstepaBleh', NULL),
(2, 'maurojaf@gmail.com', 'mauro1992', 'Mauricio', 'Atenas', NULL, NULL, NULL, 1, '2017-06-20 19:29:00', NULL, NULL, '961914768', NULL, NULL, 'Estepa Alta 05704', NULL),
(7, 'joako.gallardo@hotmail.com', 'bleh', 'joaquin', 'gallardo', NULL, NULL, NULL, 0, '2017-06-23 22:40:14', NULL, NULL, '1234567', NULL, NULL, 'san joaqin', NULL),
(4, 'fredy.retamal@gmail.com', '1234', 'fredy', 'retamal', NULL, NULL, NULL, 0, '2017-06-20 19:47:02', NULL, NULL, '12345678', NULL, NULL, 'puente alto', NULL),
(9, 'fei.sepulveda@alumnos.duoc.cl', '123412', 'felipe', 'sepulveda', NULL, NULL, NULL, 0, '2017-06-23 23:11:08', NULL, NULL, '123456789', NULL, NULL, 'estepableh', NULL),
(10, 'mau.atenas@alumnos.duoc.cl', '1234', 'mauricio', 'atenas', NULL, NULL, NULL, 0, '2017-06-26 20:21:16', NULL, NULL, '123456789', NULL, NULL, 'estapa alta 05704', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `optiongroups`
--
ALTER TABLE `optiongroups`
  ADD PRIMARY KEY (`OptionGroupID`);

--
-- Indices de la tabla `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`OptionID`);

--
-- Indices de la tabla `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`DetailID`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indices de la tabla `productcategories`
--
ALTER TABLE `productcategories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indices de la tabla `productoptions`
--
ALTER TABLE `productoptions`
  ADD PRIMARY KEY (`ProductOptionID`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `optiongroups`
--
ALTER TABLE `optiongroups`
  MODIFY `OptionGroupID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `options`
--
ALTER TABLE `options`
  MODIFY `OptionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `DetailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `productcategories`
--
ALTER TABLE `productcategories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `productoptions`
--
ALTER TABLE `productoptions`
  MODIFY `ProductOptionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1015;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
