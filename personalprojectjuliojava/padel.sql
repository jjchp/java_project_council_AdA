-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2016 a las 11:40:13
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `padel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE IF NOT EXISTS `horarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dia` char(30) NOT NULL,
  `horaini1` int(11) NOT NULL,
  `horafin1` int(11) NOT NULL,
  `horaini2` int(11) NOT NULL,
  `horafin2` int(11) NOT NULL,
  `numdia` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id`, `dia`, `horaini1`, `horafin1`, `horaini2`, `horafin2`, `numdia`) VALUES
(1, 'LUNES', 16, 22, 0, 0, 2),
(2, 'MARTES', 16, 22, 0, 0, 3),
(3, 'MIERCOLES', 16, 22, 0, 0, 4),
(4, 'JUEVES', 16, 22, 0, 0, 5),
(5, 'VIERNES', 16, 22, 0, 0, 6),
(6, 'SABADO', 9, 14, 16, 21, 7),
(7, 'DOMINGO', 9, 14, 16, 24, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pistas`
--

CREATE TABLE IF NOT EXISTS `pistas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `numero` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `pistas`
--

INSERT INTO `pistas` (`id`, `nombre`, `numero`) VALUES
(1, 'FRONTON', 5),
(2, 'PADEL', 2),
(3, 'TENIS', 1),
(4, 'TENIS ', 3),
(5, 'TENIS ', 4),
(6, 'MULTIPISTA', 6),
(7, 'FUTBOL-7', 7),
(8, 'FUTBOL-7', 8),
(9, 'PABELLON', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE IF NOT EXISTS `reservas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` varchar(50) DEFAULT NULL,
  `hora` varchar(50) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `ocupado` varchar(15) DEFAULT NULL,
  `pista` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=285 ;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id`, `fecha`, `hora`, `usuario_id`, `ocupado`, `pista`) VALUES
(226, '9/04/2014', '17:00-18:00', 35, NULL, '1'),
(227, '9/04/2014', '17:00-18:00', 35, NULL, '2'),
(228, '11/04/2014', '13:00-14:00', 35, NULL, '2'),
(229, '11/04/2014', '15:00-16:00', 35, NULL, '2'),
(231, '11/04/2014', '15:00-16:00', 35, NULL, '4'),
(234, '8/04/2014', '14:00-15:00', 35, NULL, '1'),
(239, '22/04/2014', '15:00-16:00', 35, NULL, '4'),
(240, '7/05/2014', '14:00-15:00', 35, NULL, '1'),
(241, '6/05/2014', '14:00-15:00', 35, NULL, '1'),
(244, '6/05/2014', '15:00-16:00', 35, NULL, '4'),
(245, '6/05/2014', '11:00-12:00', 35, NULL, '2'),
(246, '6/05/2014', '14:00-15:00', 35, NULL, '6'),
(247, '20/05/2014', '13:00-14:00', 35, NULL, '2'),
(248, '28/05/2014', '10', 35, NULL, '2'),
(253, '31/05/2014', '20', 35, NULL, '10'),
(254, '31/05/2014', '20', 35, NULL, '10'),
(258, '5/06/2014', '17', 35, NULL, '1'),
(259, '5/06/2014', '18', 35, NULL, '1'),
(260, '2/06/2014', '19', 35, NULL, '1'),
(261, '2/06/2014', '20', 35, NULL, '1'),
(262, '4/06/2014', '17', 35, NULL, '1'),
(280, '09/06/2014', '17', 35, NULL, '9'),
(281, '09/06/2014', '17', 35, NULL, '2'),
(284, '10/11/2016', '18', 35, NULL, '9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dni` varchar(15) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellidos` varchar(30) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `administrador` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `dni`, `email`, `nombre`, `apellidos`, `password`, `telefono`, `administrador`) VALUES
(35, '06262932D', 'j@gmail.com', 'Julio José', 'Choque Porras', '81dc9bdb52d04dc20036dbd8313ed055', '666677888', 1),
(36, '06262930F', 'jui@gmail.com', 'Macarmunesf', 'choquoo', '81dc9bdb52d04dc20036dbd8313ed055', '698741258', 0),
(37, '06202486F', 'jul.cho.p@gmail.com', 'Juan ', 'Pérez', '81dc9bdb52d04dc20036dbd8313ed055', '628466610', 0);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
