-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 06-06-2024 a las 16:53:57
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `system_iands`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auditoria`
--

CREATE TABLE `auditoria` (
  `IDProducto` int NOT NULL,
  `NombreProducto` varchar(30) NOT NULL,
  `CantidadInventario` float NOT NULL,
  `CantidadVenta` float NOT NULL,
  `PrecioUnitCompra` float NOT NULL,
  `Existencia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `PrimerNombre` varchar(30) NOT NULL,
  `SegunNombre` varchar(30) NOT NULL,
  `PrimerApe` varchar(30) NOT NULL,
  `SegunApe` varchar(30) NOT NULL,
  `Cedula` varchar(15) NOT NULL,
  `Tlfno` varchar(15) NOT NULL,
  `Cargo` varchar(50) NOT NULL,
  `FechaIngre` date NOT NULL,
  `SalarioBase` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`PrimerNombre`, `SegunNombre`, `PrimerApe`, `SegunApe`, `Cedula`, `Tlfno`, `Cargo`, `FechaIngre`, `SalarioBase`) VALUES
('Isabela', 'Chanthal', 'Moron', 'Moran', 'V28598611', '04249121744', 'Asistente Administrativa', '2023-09-15', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacion`
--

CREATE TABLE `facturacion` (
  `NumeroFactura` int NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Cantidad` int NOT NULL,
  `Precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `IdProducto` int NOT NULL,
  `Codigo` varchar(30) DEFAULT NULL,
  `Rif` varchar(50) NOT NULL,
  `NomEmpr` varchar(40) NOT NULL,
  `NomProd` varchar(30) DEFAULT NULL,
  `Inicial` float DEFAULT NULL,
  `Deposito` int NOT NULL,
  `Unidad` varchar(25) NOT NULL,
  `PrecioTT` float NOT NULL,
  `IVA` int NOT NULL,
  `PrecioUU` float NOT NULL,
  `FechaFact` date DEFAULT NULL,
  `FechaVenci` date DEFAULT NULL,
  `Ingreso` float DEFAULT NULL,
  `TotalCantidad` float DEFAULT NULL,
  `PrecioProm` float DEFAULT NULL,
  `NumFact` varchar(30) NOT NULL,
  `NumControl` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`IdProducto`, `Codigo`, `Rif`, `NomEmpr`, `NomProd`, `Inicial`, `Deposito`, `Unidad`, `PrecioTT`, `IVA`, `PrecioUU`, `FechaFact`, `FechaVenci`, `Ingreso`, `TotalCantidad`, `PrecioProm`, `NumFact`, `NumControl`) VALUES
(1, '0', 'J503614420', 'Procesadora & Inversiones Dore,C.A', 'Tocineta', 6, 1, 'Kilos', 30, 5, 5.8, '2024-05-02', '2024-05-02', 0, 0, 0, '123456789', 'No1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `Id` int NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Precio` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`Id`, `Nombre`, `Precio`) VALUES
(1, '2 piezas comer', 6.5),
(2, '2 piezas llevar', 6.5),
(3, '4 piezas comer', 11.5),
(4, '4 piezas llevar', 11.5),
(5, '6 piezas comer', 18.99),
(6, '6 piezas llevar', 18.99),
(7, '8 piezas comer', 21.99),
(8, '8 piezas llevar', 21.99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `metodopago`
--

CREATE TABLE `metodopago` (
  `Id` int NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Monto` float NOT NULL,
  `NoReferencia` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nomina`
--

CREATE TABLE `nomina` (
  `IdNomina` int NOT NULL,
  `FechaNomina` date DEFAULT NULL,
  `NombreEmpl` varchar(30) DEFAULT NULL,
  `Cedula` varchar(15) DEFAULT NULL,
  `Cargo` varchar(50) DEFAULT NULL,
  `SalarioBase` int NOT NULL,
  `Periodo` varchar(100) DEFAULT NULL,
  `DiasTrab` int NOT NULL,
  `Salario` float DEFAULT NULL,
  `Descanso` int NOT NULL,
  `Des` float DEFAULT NULL,
  `Feriados` int DEFAULT NULL,
  `Fer` float DEFAULT NULL,
  `Domingos` int DEFAULT NULL,
  `Domin` float DEFAULT NULL,
  `Libres` int DEFAULT NULL,
  `Lib` float DEFAULT NULL,
  `HorasDiurnas` int DEFAULT NULL,
  `Hed` float DEFAULT NULL,
  `HorasNocturnas` int DEFAULT NULL,
  `Hen` float DEFAULT NULL,
  `BonoNoctu` int DEFAULT NULL,
  `BoN` float DEFAULT NULL,
  `Reposo` int DEFAULT NULL,
  `Rep` float DEFAULT NULL,
  `Devengado` float NOT NULL,
  `TotalDeveng` float NOT NULL,
  `SSO` float DEFAULT NULL,
  `RPE` float DEFAULT NULL,
  `FAOV` float DEFAULT NULL,
  `ISLR` float DEFAULT NULL,
  `MontoCT` int NOT NULL,
  `DiasCT` int NOT NULL,
  `TotalCT` float NOT NULL,
  `TotalDesc` float DEFAULT NULL,
  `TotalSalarioCT` float NOT NULL,
  `Descuento` int DEFAULT NULL,
  `Faltante` int DEFAULT NULL,
  `Consumo` int DEFAULT NULL,
  `TotalPagar` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `nomina`
--

INSERT INTO `nomina` (`IdNomina`, `FechaNomina`, `NombreEmpl`, `Cedula`, `Cargo`, `SalarioBase`, `Periodo`, `DiasTrab`, `Salario`, `Descanso`, `Des`, `Feriados`, `Fer`, `Domingos`, `Domin`, `Libres`, `Lib`, `HorasDiurnas`, `Hed`, `HorasNocturnas`, `Hen`, `BonoNoctu`, `BoN`, `Reposo`, `Rep`, `Devengado`, `TotalDeveng`, `SSO`, `RPE`, `FAOV`, `ISLR`, `MontoCT`, `DiasCT`, `TotalCT`, `TotalDesc`, `TotalSalarioCT`, `Descuento`, `Faltante`, `Consumo`, `TotalPagar`) VALUES
(1, '2024-05-13', 'Isabela', 'V28598611', 'Asistente Administrativa', 100, 'Primera Quincena', 11, 36.67, 4, 13.32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49.99, 1829.13, 0.66, 0.08, 0.48, 2.12, 50, 15, 25, 3.34, 71.65, 0, 0, 0, 71.65);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `Rif` varchar(15) NOT NULL,
  `NomEmpr` varchar(50) DEFAULT NULL,
  `Tlfno` varchar(15) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `NombreVen` varchar(30) DEFAULT NULL,
  `TlfnoVen` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`Rif`, `NomEmpr`, `Tlfno`, `Email`, `NombreVen`, `TlfnoVen`) VALUES
('J503614420', 'Procesadora & Inversiones Dore,C.A', '04125465308', 'doreslecheria@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Nombre` varchar(15) DEFAULT NULL,
  `Apellido` varchar(15) DEFAULT NULL,
  `Cedula` varchar(15) NOT NULL,
  `Clave` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Nombre`, `Apellido`, `Cedula`, `Clave`) VALUES
('Isabela', 'Moron', 'V28598611', 620201);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `IdVenta` int NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Cantidad` int NOT NULL,
  `Precio` float NOT NULL,
  `TotalPrecio` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auditoria`
--
ALTER TABLE `auditoria`
  ADD PRIMARY KEY (`IDProducto`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`Cedula`);

--
-- Indices de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  ADD PRIMARY KEY (`NumeroFactura`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`IdProducto`);

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `metodopago`
--
ALTER TABLE `metodopago`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `nomina`
--
ALTER TABLE `nomina`
  ADD PRIMARY KEY (`IdNomina`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`Rif`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Cedula`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`IdVenta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auditoria`
--
ALTER TABLE `auditoria`
  MODIFY `IDProducto` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  MODIFY `NumeroFactura` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `IdProducto` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `metodopago`
--
ALTER TABLE `metodopago`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nomina`
--
ALTER TABLE `nomina`
  MODIFY `IdNomina` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `IdVenta` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
