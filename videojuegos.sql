-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2023 a las 11:48:19
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `videojuegos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuegos`
--

CREATE TABLE `videojuegos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `genero` varchar(255) NOT NULL,
  `fecha_salida` date NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `descripcion` varchar(500) NOT NULL,
  `personajes` varchar(255) NOT NULL,
  `consolas` varchar(255) NOT NULL,
  `jugadores` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `videojuegos`
--

INSERT INTO `videojuegos` (`id`, `nombre`, `genero`, `fecha_salida`, `imagen`, `descripcion`, `personajes`, `consolas`, `jugadores`, `created_at`, `updated_at`) VALUES
(2, 'nombre 2', 'genero 2', '2023-05-10', 'dJOGsDmD1hMPuSeav5WHUSSNDmjtskdJWrAFe9nw.jpg', 'descripcion 2', 'personajes 2', 'consolas 2', 'jugadores 2', '2023-05-24 09:37:45', '2023-05-24 16:45:32'),
(3, 'asd', 'asd', '2023-05-26', 'xGeMtxGsGDKamIV0MBZvyWTw2WXaf3XNZBaGQJxB.jpg', 'asdf', 'asdf', 'asdf', 'aasdf', '2023-05-24 16:45:52', '2023-05-24 16:45:52');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
