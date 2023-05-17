-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 17-05-2023 a las 21:49:09
-- Versión del servidor: 5.7.39
-- Versión de PHP: 7.4.33

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `videojuegos`
--

INSERT INTO `videojuegos` (`id`, `nombre`, `genero`, `fecha_salida`, `imagen`, `descripcion`, `personajes`, `consolas`, `jugadores`, `created_at`, `updated_at`) VALUES
(1, 'Super Mario Galaxy', 'Acción y aventura', '2007-11-01', '0VFKulWZTAB7EvTwNS24wQJK7jG2ABdds3vvc2Yw.jpg', 'Los protagonistas intentan salvar a la princesa de Bowser a través de diversos mundos, el argumento se centra en la búsqueda galáctica que deben emprender para conseguir unos objetos, los cuales tienen la capacidad de otorgar energía a un artefacto inmenso llamado Planetarium del cometa, que funciona como una nave espacial, su propósito es poder llegar hasta el lugar donde se encuentra Bowser, ya que este tiene cautiva a la Princesa Peach.', 'MarioLuigiPrincesa PeachBowserBowser Jr.Princesa RosalinaDestelloDestello MaestroCapitán Toad', 'Wii', '1 Jugador + Cooperador Multyplayer', '2023-05-10 07:51:37', '2023-05-18 04:40:18'),
(2, 'Super Mario Sunshine 2', 'Acción y aventura', '2002-07-19', '1B5icsK3pIBbQ5BmzJ9rcW8H9KTBIOGSDuavjaZV.jpg', 'El juego tiene lugar en la isla Delfino, donde Mario, Toadsworth, Princess Peach y cinco Toads se van de vacaciones. Un villano parecido a Mario, conocido como Shadow Mario, destroza la isla con grafitis y deja que Mario sea condenado injustamente por el desastre. Mario recibe la orden de limpiar Isla Delfino, usando un dispositivo llamado Flash Liquidizer Ultra Dousing Device —F.L.U.D.D.—, mientras salva a Princess Peach de Shadow Mario.', 'MarioToadsworthPrincess Peach', 'Nintendo GameCube', 'Un jugador', '2023-05-10 07:52:30', '2023-05-18 04:39:40'),
(15, 'The last of us', 'Terror, acción-aventura', '2013-06-14', 'FOzzMiMyJECiG8ee1GZORK5fVCbtGxsSGwBoJmR6.jpg', 'La trama describe las vivencias de Joel y Ellie, un par de supervivientes de una pandemia en Estados Unidos que provoca la mutación de los seres humanos en criaturas caníbales.', 'EllieJoelRiley AbelSarah MillerMarlene', 'PlayStation 3PlayStation 4', '1 jugador-multijugador', '2023-05-17 20:59:47', '2023-05-18 04:37:05'),
(16, 'Red Dead Redemption 2', 'Videojuego no lineal, mundo abierto, disparos en tercera persona, acción-aventura', '2010-05-21', 'vtuvNERHxjawYTqNKuWgFnWTuGoWSId5CXtVDJZf.jpg', 'Se trata de la historia de un forajido que transcurre en los últimos años del Far West estadounidense, en 1911, y narra la historia del antiguo bandido John Marston, que es chantajeado por los agentes federales que tienen amenazada a su familia para que ayude a imponer la ley en la frontera mexicano-estadounidense y capture a su antiguo compañero, y actual bandido, Bill Williamson.', 'John MarstonJack Marston', 'PlayStation 3Xbox 360', 'Un jugador, Videojuego multijugador', '2023-05-17 20:59:47', '2023-05-18 04:42:32');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
