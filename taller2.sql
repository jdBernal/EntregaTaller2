-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-03-2014 a las 17:39:15
-- Versión del servidor: 5.5.34
-- Versión de PHP: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `taller2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE IF NOT EXISTS `compra` (
  `IdCompra` int(11) NOT NULL AUTO_INCREMENT,
  `IdUsuario` varchar(255) NOT NULL,
  `Fecha` date NOT NULL,
  PRIMARY KEY (`IdCompra`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`IdCompra`, `IdUsuario`, `Fecha`) VALUES
(1, 'Admin', '2013-12-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `IdProducto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `autor` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` varchar(255) NOT NULL,
  `Destacado` tinyint(1) NOT NULL,
  UNIQUE KEY `IdProducto` (`IdProducto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`IdProducto`, `nombre`, `autor`, `imagen`, `descripcion`, `precio`, `Destacado`) VALUES
(1, 'Blankets', 'Craig Thompson', 'comic-01', ' Wrapped in the landscape of a blustery Wisconsin winter, Blankets explores the sibling rivalry of two brothers growing up in the isolated country, and the budding romance of two coming-of-age lovers. A heart-warming story', '25.60', 0),
(2, 'Killjoys', 'Gerard Way', 'comic-02', 'Years ago, the Killjoys fought against the tyrannical megacorporation Better Living Industries, costing them their lives, only one of them survived-the mysterious Girl. Today, she wants justice.', '13.31', 1),
(3, 'Umbrella Academy', 'Gerard Way', 'comic-03', 'So it''s a great time for another catastrophic event to rouse the team into action. Trouble is, each member of the team is distracted by some problems of their own all leading to a blood-drenched face-off.', '14.5', 1),
(4, 'The Brown of Nao', 'Dillion', 'comic-04', 'Twenty-eight-year-old Nao Brown is not well. She is suffering from obsessive-compulsive disorder and fighting violent urges to harm other people. But that is not who she wants to be.', '20.00', 0),
(5, 'Everything We Miss', 'Luke Pearson', 'comic-05', 'On the dawn horizon, a pine tree all too briefly uproots itself. It dances . . . and nobody sees.\r\nThe low drone of the car''s engine is heard and ignored from sleepy bedroom windows for miles around.', '25.15', 0),
(6, 'Solanin', 'Inio Asano', 'comic-07', 'Meiko Inoue is a recent college grad working as an office lady in a job she hates. She struggles with the feeling that maybe. . .she is just not cut out to be a part of the real world.', '16.25', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion`
--

CREATE TABLE IF NOT EXISTS `relacion` (
  `id` int(255) NOT NULL,
  `IdCompra` int(11) NOT NULL,
  `IdProducto` int(11) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `relacion`
--

INSERT INTO `relacion` (`id`, `IdCompra`, `IdProducto`) VALUES
(0, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `IdUsuario` varchar(255) NOT NULL,
  `clave` int(255) NOT NULL,
  UNIQUE KEY `IdUsuario` (`IdUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`IdUsuario`, `clave`) VALUES
('Admin', 123);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
