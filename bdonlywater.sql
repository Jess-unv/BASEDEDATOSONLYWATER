-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-07-2024 a las 05:39:26
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdonlywater`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infoplantas`
--

CREATE TABLE `infoplantas` (
  `_id` int(11) NOT NULL,
  `ph` double DEFAULT NULL,
  `humedad` int(11) DEFAULT NULL,
  `temperatura_agua` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `infoplantas`
--

INSERT INTO `infoplantas` (`_id`, `ph`, `humedad`, `temperatura_agua`, `fecha`) VALUES
(1, 7.2, 45, 22, '2024-12-20'),
(2, 6.8, 50, 24, '2024-01-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantas`
--

CREATE TABLE `plantas` (
  `_id` int(11) NOT NULL,
  `ph` varchar(255) NOT NULL,
  `humedad` varchar(255) NOT NULL,
  `temperatura_agua` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `plantas`
--

INSERT INTO `plantas` (`_id`, `ph`, `humedad`, `temperatura_agua`, `nombre`, `tipo`) VALUES
(1, 'El pH óptimo es de 6.0 a 6.5', 'La humedad ideal es del 60% al 70%', 'La temperatura del agua debe ser entre 18°C y 22°C', 'Lechuga', 'Hortaliza'),
(2, 'El pH óptimo es de 5.5 a 6.5', 'La humedad ideal es del 50% al 60%', 'La temperatura del agua debe ser entre 20°C y 25°C', 'Tomate', 'Fruto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contra` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`_id`, `email`, `contra`) VALUES
(1, 'usuario1@gmail.com', 'contrasena123'),
(2, 'usuario2@gmail.com', 'contrasena456');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `infoplantas`
--
ALTER TABLE `infoplantas`
  ADD PRIMARY KEY (`_id`);

--
-- Indices de la tabla `plantas`
--
ALTER TABLE `plantas`
  ADD PRIMARY KEY (`_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `infoplantas`
--
ALTER TABLE `infoplantas`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `plantas`
--
ALTER TABLE `plantas`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
