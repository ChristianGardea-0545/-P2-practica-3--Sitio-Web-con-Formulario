-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-11-2026 a las 16:48:45
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `libreria_nakano`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(150) COLLATE utf8mb4_spanish_ci NOT NULL,
  `editorial` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `categoria` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `imagen` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `titulo`, `editorial`, `precio`, `categoria`, `imagen`) VALUES
(1, 'Harry Potter y la Piedra Filosofal', 'Salamandra', '299.00', 'Novelas', 'harry potter.jpg'),
(2, 'El Señor de los Anillos', 'Minotauro', '368.00', 'Novelas', 'senordelosanillos.jpg'),
(3, 'Dune', 'Chilton Books', '429.00', 'Novelas', 'dune.jpg'),
(4, 'Don Quijote de la Mancha', 'Juan de la Cuesta', '45.00', 'Novelas', 'don quijote.jpg'),
(5, 'Orgullo y Prejuicio', 'Alma', '349.00', 'Novelas', 'orgullo.jpg'),
(6, '100 Años de Soledad', 'Sudamericana', '249.00', 'Novelas', '100.jpg'),
(7, '1984', 'Debolsillo', '240.03', 'Novelas', '1984.jpg'),
(8, 'Crimen y Castigo', 'Alba', '508.49', 'Novelas', 'crimen.jpg'),
(9, 'Guerra y Paz', 'Alba', '435.87', 'Novelas', 'guerra.jpg'),
(10, 'Madame Bovary', 'Alianza', '318.00', 'Novelas', 'madame.jpg'),
(11, 'Batman Absolute 1', 'DC Comics', '107.38', 'Comics', 'batman.jpg'),
(12, 'Batman Absolute 2', 'DC Comics', '90.21', 'Comics', 'batman 2.jpg'),
(13, 'Batman Absolute 3', 'DC Comics', '92.28', 'Comics', 'batman 3.jpg'),
(14, 'Ghost Rider 1', 'Marvel Comics', '155.00', 'Comics', 'ghost.jpg'),
(15, 'The Avengers vs X-Men', 'Marvel Comics', '645.35', 'Comics', 'marvel.jpg'),
(16, 'Spiderman: La ultima caceria de Kraven', 'Marvel Comics', '349.00', 'Comics', 'spiderman.jpg'),
(17, 'Invincible 1', 'Kamite', '339.38', 'Comics', 'invincible.jpg'),
(18, 'Invincible 2', 'Kamite', '328.29', 'Comics', 'invencible.jpg'),
(19, 'Invincible 3', 'Kamite', '362.10', 'Comics', 'invincible 3.jpg'),
(20, 'Moon Knight 1', 'Marvel Comics', '209.00', 'Comics', 'moon.jpg'),
(21, 'Chainsaw Man 7', 'Shūeisha', '176.00', 'Mangas', 'chainsaw.jpg'),
(22, 'Tokyo Ghoul 7', 'Shūeisha', '476.74', 'Mangas', 'si.jpg'),
(23, 'Dragon Ball Super 23', 'Shūeisha', '179.00', 'Mangas', 'dragonbol.jpg'),
(24, 'Dragon Ball Super 24', 'Shūeisha', '189.00', 'Mangas', 'dragonball.jpg'),
(25, 'Dandadan 13', 'Shūeisha', '139.00', 'Mangas', 'Dandadan.jpg'),
(26, 'Las Quintillizas 7', 'Kodansha', '179.00', 'Mangas', 'ichika.jpg'),
(27, 'Las Quintillizas 8', 'Kodansha', '179.00', 'Mangas', 'nino.jpg'),
(28, 'Las Quintillizas 9', 'Kodansha', '179.00', 'Mangas', 'miku.jpg'),
(29, 'Kaiju N°8 12', 'Shūeisha', '179.00', 'Mangas', 'kaiju.jpg'),
(30, 'Jujutsu Kaisen 11', 'Kodansha', '169.00', 'Mangas', 'nanami.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `contrasena` varchar(255) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
