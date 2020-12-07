-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-12-2020 a las 22:27:31
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `lootofgame`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-11-22 16:21:18', '01-07-2020 03:25:30 PM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Disparos', 'Categoria dedicada 100% a juegos de disparos', '2020-12-05 00:14:50', NULL),
(2, ' Disparos-RPG', 'Categoria de juegos relacionados con disparos con escencia de RPG', '2020-12-05 00:15:22', NULL),
(3, 'MMO', 'Categoria de juegos multijugador masivos', '2020-12-05 00:15:42', NULL),
(4, 'MOBA', 'Categoria para juegos Multiplayer online battle arena', '2020-12-05 00:16:31', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listadeseo`
--

CREATE TABLE `listadeseo` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes`
--

CREATE TABLE `ordenes` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT 1,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `category`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(1, 1, 'Call of duty cold war', 'Xbox', 399, 500, 'Camuflaje de oro Subficiles', 'camuoro.jpg', 'camuoro.jpg', 'camuoro.jpg', NULL, 'In Stock', '2020-12-06 20:07:07', NULL),
(2, 2, 'Raid Leviatan Destiny 2', 'Xbox', 250, 300, '<ul style=\"margin-bottom: 20px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16.8px;\"><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Luz recomendada:</b>&nbsp;750 (Normal).</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Requisitos:</b>&nbsp;haber completado La Guerra Roja (campaña principal).</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Localización:</b>&nbsp;Nessus (en el mapa, en la zona inferior).</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\">Disponible de forma gratuita con&nbsp;<a href=\"https://vandal.elespanol.com/guias/guia-destiny-2-trucos-y-consejos/nueva-luz\" target=\"_blank\" style=\"color: rgb(48, 176, 229);\">Nueva Luz</a>.</li></ul><div><font color=\"#333333\" face=\"Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 16.8px;\">3 Reseteos con personajes.</span></font></div>', 'leviatan 1.jpg', 'leviatan 2.jfif', 'leviatan 3.jfif', NULL, 'In Stock', '2020-12-06 20:13:09', NULL),
(3, 2, 'El devoramundos Destiny 2', 'Xbox', 250, 300, '<ul style=\"margin-bottom: 20px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16.8px;\"><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Luz recomendada:</b>&nbsp;750 (Normal).</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Requisitos:</b>&nbsp;haber completado La Guerra Roja (campaña principal).</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Localización:</b>&nbsp;Nessus (en el mapa, en la zona inferior). Es una de las Incursiones disponibles al acceder al Leviatán.</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\">Disponible de forma gratuita con&nbsp;<a href=\"https://vandal.elespanol.com/guias/guia-destiny-2-trucos-y-consejos/nueva-luz\" target=\"_blank\" style=\"color: rgb(48, 176, 229);\">Nueva Luz</a>.</li></ul><div><font color=\"#333333\" face=\"Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 16.8px;\">3 Reseteos de personajes</span></font></div>', 'devoramundos1.jfif', 'devoramundos2.jfif', 'devoramundos3.jfif', NULL, 'In Stock', '2020-12-06 20:16:09', NULL),
(4, 2, 'Espira de estrellas Destiny 2', 'Ps4', 250, 300, '<ul style=\"margin-bottom: 20px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16.8px;\"><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Luz recomendada:</b>&nbsp;750 (Normal).</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Requisitos:</b>&nbsp;haber completado La Guerra Roja (campaña principal). Es una de las Incursiones disponibles al acceder al Leviatán.</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Localización:</b>&nbsp;Nessus (en el mapa, en la zona inferior).</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\">Disponible de forma gratuita con&nbsp;<a href=\"https://vandal.elespanol.com/guias/guia-destiny-2-trucos-y-consejos/nueva-luz\" target=\"_blank\" style=\"color: rgb(48, 176, 229);\">Nueva Luz</a>.</li></ul><div><font color=\"#333333\" face=\"Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 16.8px;\">Reset con 3 personajes</span></font></div>', 'espira 1.jfif', 'espira 2.jfif', 'espira 3.jfif', NULL, 'In Stock', '2020-12-06 20:18:31', NULL),
(5, 2, 'Corona de dolor Destiny 2', 'Ps4', 250, 300, '<ul style=\"margin-bottom: 20px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16.8px;\"><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Luz recomendada:</b>&nbsp;750 (Normal).</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Requisitos:</b>&nbsp;haber completado La Guerra Roja (campaña principal). Es una de las Incursiones disponibles al acceder al Leviatán.</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Localización:</b>&nbsp;Nessus (en el mapa, en la zona inferior).</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\">Disponible de forma gratuita con&nbsp;<a href=\"https://vandal.elespanol.com/guias/guia-destiny-2-trucos-y-consejos/nueva-luz\" target=\"_blank\" style=\"color: rgb(48, 176, 229);\">Nueva Luz</a>.</li></ul><div><font color=\"#333333\" face=\"Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 16.8px;\">Reset con 3 personajes</span></font></div>', 'corona1.jfif', 'corona 2.jfif', 'corona 3.jfif', NULL, 'In Stock', '2020-12-06 20:25:49', NULL),
(6, 2, 'Último deseo Destiny 2', 'Xbox', 250, 300, '<ul style=\"margin-bottom: 20px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16.8px;\"><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Luz recomendada:</b>&nbsp;750 (Normal).</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Requisitos:</b>&nbsp;haber completad la campaña de Los Renegados.</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Localización:</b>&nbsp;Ciudad Onírica (en el mapa, en la esquina superior izquierda).</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\">Disponible&nbsp;<b>solamente para quienes tengan comprada la expansión Los Renegados</b>, o bien ediciones que incluyan esta expansión.</li></ul><div><font color=\"#333333\" face=\"Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 16.8px;\">Reset de 3 personajes</span></font></div>', 'deseo 1.jfif', 'deseo 2.jfif', 'deseo 3.jfif', NULL, 'In Stock', '2020-12-06 20:27:51', NULL),
(7, 2, 'El Trono despedazado Destiny 2', 'Xbox', 150, 200, '<ul style=\"margin-bottom: 20px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16.8px;\"><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Luz recomendada:</b>&nbsp;N/D.</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Requisitos:</b>&nbsp;haber completado la campaña de Los Renegados.</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Localización:</b>&nbsp;Ciudad Onírica (en el mapa, en la esquina superior izquierda, junto a la Incursión Último Deseo).</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\">Disponible&nbsp;<b>solamente para quienes tengan comprada la expansión Los Renegados</b>, o bien ediciones que incluyan esta expansión.</li></ul><div><font color=\"#333333\" face=\"Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 16.8px;\"><br></span></font></div>', 'trono 1.jfif', 'trono 2.jfif', 'trono 3.jfif', NULL, 'In Stock', '2020-12-06 20:29:59', NULL),
(8, 2, 'Azote del pasado raid Destiny 2', 'Xbox', 250, 300, '<ul style=\"margin-bottom: 20px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16.8px;\"><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Luz recomendada:</b>&nbsp;750 (Normal).</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Requisitos:</b>&nbsp;ninguno.</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Localización:</b>&nbsp;la Tierra (en el mapa, en la esquina superior derecha).</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\">Disponible de forma gratuita con&nbsp;<a href=\"https://vandal.elespanol.com/guias/guia-destiny-2-trucos-y-consejos/nueva-luz\" target=\"_blank\" style=\"color: rgb(48, 176, 229);\">Nueva Luz</a>.</li></ul><div><font color=\"#333333\" face=\"Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 16.8px;\">3 reset de personajes</span></font></div>', 'azote 1.jfif', 'azote 2.jfif', 'azote 3.jfif', NULL, 'In Stock', '2020-12-06 20:31:43', NULL),
(9, 2, 'Jardín de la Salvación Destiny 2', 'Xbox', 250, 300, '<ul style=\"margin-bottom: 20px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16.8px;\"><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Luz recomendada:</b>&nbsp;940 (Normal).</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Requisitos:</b>&nbsp;haber completado la campaña de Bastión de Sombras.</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Localización:</b>&nbsp;la Luna (en el mapa, en la esquina superior izquierda).</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\">Disponible&nbsp;<b>solamente para quienes tengan comprada la expansión Bastión de Sombras</b>, o bien edicioens que incluyan esta expansión.</li></ul><div><font color=\"#333333\" face=\"Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 16.8px;\">3 reset de personajes</span></font></div>', 'jadrin 1.jfif', 'jardin 2.jfif', 'jardin 3.jfif', NULL, 'In Stock', '2020-12-06 20:33:09', NULL),
(10, 2, 'Foso de la herejía Destiny 2', 'Ps4', 250, 300, '<ul style=\"margin-bottom: 20px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16.8px;\"><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Luz recomendada:</b>&nbsp;940 (Normal).</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Requisitos:</b>&nbsp;haber completado la campaña de Bastión de Sombras.</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\"><b>Localización:</b>&nbsp;la Luna (en el mapa, en la parte superior, a la derecha de Jardín de la Salvación).</li><li style=\"line-height: 1.5em; margin-bottom: 0.35em;\">Disponible&nbsp;<b>solamente para quienes tengan comprada la expansión Bastión de Sombras</b>, o bien edicioens que incluyan esta expansión.</li></ul><div><font color=\"#333333\" face=\"Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 16.8px;\">3 reset de personajes</span></font></div>', 'foso 1.jfif', 'foso 2.jfif', 'foso 3.jfif', NULL, 'In Stock', '2020-12-06 20:34:32', NULL),
(11, 2, 'Rey de las Ratas en Destiny 2', 'Xbox', 80, 100, '<span style=\"color: rgb(153, 153, 153); font-family: Neuton, Helvetica, sans-serif; font-size: 21px; font-style: italic; text-align: center;\">Te enseñamos a conseguir la pistola exótica Rey de las Ratas en Destiny 2. Un arma que solo podrás obtener completando una aventura excepcional y sus respectivos pasos.</span><br>', 'rat 1.jpg', 'rat 2.jpg', 'rat 3.jpg', NULL, 'In Stock', '2020-12-06 20:36:36', NULL),
(12, 2, 'Sturm en Destiny 2', 'Xbox', 80, 100, '<span style=\"color: rgb(153, 153, 153); font-family: Neuton, Helvetica, sans-serif; font-size: 21px; font-style: italic; text-align: center;\">Te enseñamos a conseguir el cañón de mano exótico Sturm en Destiny 2. Un arma que solo podrás obtener completando una aventura excepcional y sus respectivos pasos.</span><br>', 'Sturm 1.jpg', 'Sturm 2.jpg', 'Sturm 3.jpg', NULL, 'In Stock', '2020-12-06 20:37:58', NULL),
(13, 2, 'Multiherramienta MIDA en Destiny 2', 'Ps4', 80, 100, '<span style=\"color: rgb(153, 153, 153); font-family: Neuton, Helvetica, sans-serif; font-size: 21px; font-style: italic; text-align: center;\">Te ayudamos a conseguir el fusil de explorador exótico Multiherramienta MIDA en Destiny 2. Un arma que solo podrás obtener completando una aventura excepcional y sus respectivos pasos.</span><br>', 'mul 1.jpg', 'mul 2.jpg', 'mul 3.jpg', NULL, 'In Stock', '2020-12-06 20:39:07', NULL),
(14, 2, 'Terminadeseos en Destiny 2', 'Xbox', 80, 100, '<span style=\"color: rgb(153, 153, 153); font-family: Neuton, Helvetica, sans-serif; font-size: 21px; font-style: italic; text-align: center;\">Te ayudamos a conseguir el arco de combate exótico Terminadeseos en Destiny 2. Un arma que solo podrás obtener completando una aventura excepcional y sus respectivos pasos.</span><br>', 'ter 1.jpg', 'ter 2.jpg', 'ter 3.jpg', NULL, 'In Stock', '2020-12-06 20:40:08', NULL),
(15, 2, 'Fechoría en Destiny 2', 'Xbox', 80, 100, '<span style=\"color: rgb(153, 153, 153); font-family: Neuton, Helvetica, sans-serif; font-size: 21px; font-style: italic; text-align: center;\">Te ayudamos a conseguir el cañón de mano exótico Fechoría en Destiny 2. Un arma que solo podrás obtener completando una aventura excepcional y sus respectivos pasos.</span><br>', 'fec 1.jpg', 'fec 2.jpg', 'fec 3.jpg', NULL, 'In Stock', '2020-12-06 20:41:36', NULL),
(16, 2, 'As de Picas en Destiny 2', 'Xbox', 80, 100, '<span style=\"color: rgb(153, 153, 153); font-family: Neuton, Helvetica, sans-serif; font-size: 21px; font-style: italic; text-align: center;\">Te ayudamos a conseguir el cañón de mano exótico As de Picas en Destiny 2. Un arma que solo podrás obtener completando una aventura excepcional y sus respectivos pasos.</span><br>', 'as 1.jpg', 'as 2.jpg', 'as 3.jpg', NULL, 'In Stock', '2020-12-06 20:43:31', NULL),
(17, 2, 'La Carabina en Destiny 2', 'Xbox', 80, 100, '<span style=\"color: rgb(153, 153, 153); font-family: Neuton, Helvetica, sans-serif; font-size: 21px; font-style: italic; text-align: center;\">Te ayudamos a conseguir la escopeta exótica La Carabina en Destiny 2. Un arma que solo podrás obtener completando una aventura excepcional y sus respectivos pasos.</span><br>', 'cara 1.jpg', 'cara 2.jpg', 'cara 3.jpg', NULL, 'Out of Stock', '2020-12-06 20:45:36', NULL),
(18, 2, 'Carga de Izanagi en Destiny 2', 'Xbox', 80, 100, '<span style=\"color: rgb(153, 153, 153); font-family: Neuton, Helvetica, sans-serif; font-size: 21px; font-style: italic; text-align: center;\">Te ayudamos a conseguir el fusil de francotirador exótico Carga de Izanagi en Destiny 2. Un arma que solo podrás obtener completando una aventura excepcional y sus respectivos pasos.</span><br>', 'iza 1.jpg', 'iza 2.jpg', 'iza 3.jpg', NULL, 'In Stock', '2020-12-06 20:47:05', NULL),
(19, 2, 'Espino en Destiny 2', 'Ps4', 80, 100, '<span style=\"color: rgb(153, 153, 153); font-family: Neuton, Helvetica, sans-serif; font-size: 21px; font-style: italic; text-align: center;\">Te ayudamos a conseguir el cañón de mano exótico Espino en Destiny 2. Un arma que solo podrás obtener completando una aventura excepcional y sus respectivos pasos.</span><br>', 'es 1.jpg', 'es 2.jpg', 'es 3.jpg', NULL, 'In Stock', '2020-12-06 20:48:13', NULL),
(20, 2, 'Bastión en Destiny 2', 'Xbox', 80, 100, '<span style=\"color: rgb(153, 153, 153); font-family: Neuton, Helvetica, sans-serif; font-size: 21px; font-style: italic; text-align: center;\">Te ayudamos a conseguir el fusil de fusión exótico Bastión en Destiny 2. Un arma que solo podrás obtener completando una aventura excepcional y sus respectivos pasos.</span><br>', 'bas 1.jpg', 'bas 2.jpg', 'bas 3.jpg', NULL, 'In Stock', '2020-12-06 20:49:23', NULL),
(21, 2, 'Lanza Polaris en Destiny 2', 'Ps4', 80, 100, '<span style=\"color: rgb(153, 153, 153); font-family: Neuton, Helvetica, sans-serif; font-size: 21px; font-style: italic; text-align: center;\">Te ayudamos a conseguir el fusil de explorador exótico Lanza Polaris en Destiny 2. Un arma que solo podrás obtener completando una aventura excepcional y sus respectivos pasos.</span><br>', 'la 1.jpg', 'la 2.jpg', 'la 3.jpg', NULL, 'In Stock', '2020-12-06 20:50:22', NULL),
(22, 2, 'Jötunn en Destiny 2', 'Xbox', 80, 100, '<span style=\"color: rgb(153, 153, 153); font-family: Neuton, Helvetica, sans-serif; font-size: 21px; font-style: italic; text-align: center;\">Te ayudamos a conseguir el fusil de fusión exótico Jötunn en Destiny 2. Un arma que solo podrás obtener completando una aventura excepcional y sus respectivos pasos.</span><br>', 'jou 1.jpg', 'jou 2.jpg', 'jou 3.jpg', NULL, 'In Stock', '2020-12-06 21:02:08', NULL),
(23, 2, 'Le Monarque en Destiny 2', 'Ps4', 80, 100, '<div class=\"descart\" style=\"font-size: 1.5em; line-height: 1.4em; text-align: center; font-family: Neuton, Helvetica, sans-serif; font-style: italic; color: rgb(153, 153, 153);\"><span class=\"summary\" itemprop=\"description\">Te ayudamos a conseguir el arco de combate exótico Le Monarque en Destiny 2. Un arma que solo podrás obtener completando una aventura excepcional y sus respectivos pasos.</span></div>', 'mo 1.jpg', 'mo 2.jpg', 'mo 3.jpg', NULL, 'In Stock', '2020-12-06 21:03:24', NULL),
(24, 2, 'Divinidad en Destiny 2', 'Xbox', 80, 100, '<span style=\"color: rgb(153, 153, 153); font-family: Neuton, Helvetica, sans-serif; font-size: 21px; font-style: italic; text-align: center;\">Te ayudamos a conseguir el fusil de rastreo exótico Divinidad en Destiny 2. Un arma que solo podrás obtener completando una aventura excepcional y sus respectivos pasos.</span><br>', 'di 1.jpg', 'di 2.jpg', 'di 3.jpg', NULL, 'In Stock', '2020-12-06 21:04:24', NULL),
(25, 2, 'Ruina del Diablo en Destiny 2', 'Xbox', 80, 100, '<span style=\"color: rgb(153, 153, 153); font-family: Neuton, Helvetica, sans-serif; font-size: 21px; font-style: italic; text-align: center;\">Te ayudamos a conseguir la pistola exótica Ruina del Diablo en Destiny 2. Un arma que solo podrás obtener completando una aventura excepcional y sus respectivos pasos.</span><br>', 'ru 1.jpg', 'ru 2.jpg', 'ru 3.jpg', NULL, 'In Stock', '2020-12-06 21:05:28', NULL),
(26, 2, 'Leyenda de Acrius en Destiny 2', 'Xbox', 80, 100, '<div class=\"descart\" style=\"font-size: 1.5em; line-height: 1.4em; text-align: center; font-family: Neuton, Helvetica, sans-serif; font-style: italic; color: rgb(153, 153, 153);\"><span class=\"summary\" itemprop=\"description\">Te ayudamos a conseguir la escopeta exótica Leyenda de Acrius en Destiny 2 y su catalizador. Un arma que solo podrás obtener completando una aventura excepcional y sus respectivos pasos.</span></div>', 'le 1.jpg', 'le 2.jpg', 'le 3.jpg', NULL, 'In Stock', '2020-12-06 21:06:34', NULL),
(27, 2, 'Línea mundial Cero en Destiny 2', 'Xbox', 80, 100, '<span style=\"color: rgb(153, 153, 153); font-family: Neuton, Helvetica, sans-serif; font-size: 21px; font-style: italic; text-align: center;\">Te ayudamos a conseguir la espada exótica Línea mundial Cero en Destiny 2 y su catalizador. Un arma que solo podrás obtener completando una aventura excepcional y sus respectivos pasos.</span><br>', 'li 1.jpg', 'li 2.jpg', 'li 3.jpg', NULL, 'In Stock', '2020-12-06 21:07:41', NULL),
(28, 2, 'Símil del Sueño en Destiny 2', 'Ps4', 80, 100, '<span style=\"color: rgb(153, 153, 153); font-family: Neuton, Helvetica, sans-serif; font-size: 21px; font-style: italic; text-align: center;\">Te ayudamos a conseguir el fusil de fusión exótico Símil del Sueño en Destiny 2 y su catalizador. Un arma que solo podrás obtener completando una aventura excepcional y sus respectivos pasos.</span><br>', 'si 1.jpg', 'si 2.jpg', 'si 3.jpg', NULL, 'In Stock', '2020-12-06 21:08:57', NULL),
(29, 2, 'Portamuerte en Destiny 2', 'Ps4', 80, 100, '<span style=\"color: rgb(153, 153, 153); font-family: Neuton, Helvetica, sans-serif; font-size: 21px; font-style: italic; text-align: center;\">Te ayudamos a conseguir el lanzacohetes exótico Portamuerte en Destiny 2. Un arma que solo podrás obtener completando una aventura excepcional y sus respectivos pasos.</span><br>', 'po 1.jpg', 'po 2.jpg', 'po 3.jpg', NULL, 'In Stock', '2020-12-06 21:10:02', NULL),
(30, 2, 'Xenófago en Destiny 2', 'Ps4', 80, 100, '<span style=\"color: rgb(153, 153, 153); font-family: Neuton, Helvetica, sans-serif; font-size: 21px; font-style: italic; text-align: center;\">Te ayudamos a conseguir la ametralladora exótica Xenófago en Destiny 2. Un arma que solo podrás obtener completando una aventura excepcional y sus respectivos pasos.</span><br>', 'xe 1.jpg', 'xe 2.jpg', 'xe 3.jpg', NULL, 'In Stock', '2020-12-06 21:10:58', NULL),
(31, 2, 'Susurro del Gusano en Destiny 2', 'Xbox', 80, 100, '<div class=\"descart\" style=\"font-size: 1.5em; line-height: 1.4em; text-align: center; font-family: Neuton, Helvetica, sans-serif; font-style: italic; color: rgb(153, 153, 153);\"><span class=\"summary\" itemprop=\"description\">Te ayudamos a conseguir el fusil de francotirador exótico Susurro del Gusano en Destiny 2 (antes llamado Huso Negro) y su catalizador. Un arma que solo podrás obtener completando una aventura excepcional.</span></div>', 'su 1.jpg', 'su 2.jpg', 'su 3.jpg', NULL, 'In Stock', '2020-12-06 21:11:57', NULL),
(32, 4, 'Solo/Duo o flex oro League of legends', 'Pc', 900, 1000, 'Compañero para subir de división a oro 1 tanto en solo q y flex.', 'lol 1.jfif', 'lol 2.jfif', 'lol 3.jfif', NULL, 'In Stock', '2020-12-06 21:15:21', NULL),
(33, 3, 'Genshin Impact defeat Stormterror VI', 'Pc', 180, 200, 'Derrotar la mazmorra stormterror máxima dificultad para su loot al completarla.', 'ge 1.jpg', 'ge 2.jpg', 'ge 32.jpg', NULL, 'In Stock', '2020-12-06 21:21:17', NULL),
(34, 4, 'Solo/Duo o flex platino League of legends', 'Pc', 1450, 1500, 'Compañero para llegar a platino 1 en cola de soloq o flex.', 'pl1.jfif', 'pl 2.jfif', 'pl 3.png', NULL, 'In Stock', '2020-12-06 21:25:33', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resenas`
--

CREATE TABLE `resenas` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `name`, `email`, `contactno`, `password`, `regDate`, `updationDate`) VALUES
(1, 'kike', 'lecbons@gmail.com', 4492989155, '493fef7fb009686154917d1376f27794', '2020-12-05 00:11:18', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `listadeseo`
--
ALTER TABLE `listadeseo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `resenas`
--
ALTER TABLE `resenas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `listadeseo`
--
ALTER TABLE `listadeseo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `resenas`
--
ALTER TABLE `resenas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
