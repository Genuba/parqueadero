-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2018 a las 01:02:04
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parqueadero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `adm_documento` varchar(45) NOT NULL,
  `adm_nombres` varchar(45) NOT NULL,
  `adm_apellidos` varchar(45) NOT NULL,
  `adm_correo` varchar(45) NOT NULL,
  `adm_celular` varchar(45) NOT NULL,
  `adm_usuario` varchar(45) NOT NULL,
  `adm_password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`adm_documento`, `adm_nombres`, `adm_apellidos`, `adm_correo`, `adm_celular`, `adm_usuario`, `adm_password`) VALUES
('1019143966', 'sdfs', 'uncrack', 'asd@sd', '12312342', 'asdfghjk', ''),
('123423412', 'holacrack', 'papa', 'un@sd', 'crack', '13234', '12345'),
('1234234123421', 'david', 'asdf', 'asd@sd', '12312342', 'asdf', '12345'),
('213123234', '23424', '21124', '12341', '124312', '12342', '1234324'),
('2134', 'crack', 'abc', 'as@akdkf.cp', '12342', 'abc', 'abc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historico`
--

CREATE TABLE `historico` (
  `his_id` int(11) NOT NULL,
  `his_hora_entrada` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `his_hora_salida` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `his_status` varchar(40) NOT NULL,
  `fk_usu_documento` varchar(40) NOT NULL,
  `fk_par_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parqueaderos`
--

CREATE TABLE `parqueaderos` (
  `par_id` int(11) NOT NULL,
  `fk_sed_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `parqueaderos`
--

INSERT INTO `parqueaderos` (`par_id`, `fk_sed_id`) VALUES
(1, 1),
(3, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE `sede` (
  `sed_id` int(11) NOT NULL,
  `sed_nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sede`
--

INSERT INTO `sede` (`sed_id`, `sed_nombre`) VALUES
(1, 'Av 68'),
(2, 'Cll 34 Biblioteca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_bici`
--

CREATE TABLE `usuarios_bici` (
  `usu_documento` varchar(40) NOT NULL,
  `usu_nombres` varchar(40) NOT NULL,
  `usu_apellidos` varchar(40) NOT NULL,
  `usu_correo` varchar(40) NOT NULL,
  `usu_placabici` varchar(40) NOT NULL,
  `usu_UID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios_bici`
--

INSERT INTO `usuarios_bici` (`usu_documento`, `usu_nombres`, `usu_apellidos`, `usu_correo`, `usu_placabici`, `usu_UID`) VALUES
('', 'abc', 'abc', '123', '123', '123'),
('q122', 'qweq', 'asdas', 'sas@asd', 'qwwq', '123qsa');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`adm_documento`);

--
-- Indices de la tabla `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`his_id`),
  ADD KEY `fk_par_id` (`fk_par_id`),
  ADD KEY `fk_usu_identificacion` (`fk_usu_documento`);

--
-- Indices de la tabla `parqueaderos`
--
ALTER TABLE `parqueaderos`
  ADD PRIMARY KEY (`par_id`),
  ADD KEY `fk_ced_id` (`fk_sed_id`);

--
-- Indices de la tabla `sede`
--
ALTER TABLE `sede`
  ADD PRIMARY KEY (`sed_id`);

--
-- Indices de la tabla `usuarios_bici`
--
ALTER TABLE `usuarios_bici`
  ADD PRIMARY KEY (`usu_documento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `historico`
--
ALTER TABLE `historico`
  MODIFY `his_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `parqueaderos`
--
ALTER TABLE `parqueaderos`
  MODIFY `par_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sede`
--
ALTER TABLE `sede`
  MODIFY `sed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `historico_ibfk_2` FOREIGN KEY (`fk_par_id`) REFERENCES `parqueaderos` (`par_id`),
  ADD CONSTRAINT `historico_ibfk_3` FOREIGN KEY (`fk_usu_documento`) REFERENCES `usuarios_bici` (`usu_documento`);

--
-- Filtros para la tabla `parqueaderos`
--
ALTER TABLE `parqueaderos`
  ADD CONSTRAINT `parqueaderos_ibfk_1` FOREIGN KEY (`fk_sed_id`) REFERENCES `sede` (`sed_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
