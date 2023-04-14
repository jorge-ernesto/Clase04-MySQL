-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.6.8-MariaDB-log - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para php1g10
CREATE DATABASE IF NOT EXISTS `php1g10` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `php1g10`;

-- Volcando estructura para tabla php1g10.agenda
CREATE TABLE IF NOT EXISTS `agenda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paterno` varchar(50) NOT NULL,
  `materno` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fnacimiento` date DEFAULT NULL,
  `activo` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla php1g10.agenda: ~0 rows (aproximadamente)
INSERT INTO `agenda` (`id`, `paterno`, `materno`, `nombre`, `fnacimiento`, `activo`) VALUES
	(1, 'rojas', 'GONzaLeS', 'María Inés', '1985-12-29', 1),
	(2, 'López', 'camPOS', 'César Martín', '1992-05-13', 1),
	(4, 'rojas', 'GONzaLeS', 'María Inés', '1985-12-29', 1),
	(5, 'rojas', 'GONzaLeS', 'Bertha', '1985-12-29', 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
