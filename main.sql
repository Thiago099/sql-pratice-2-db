-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.22-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para entity
DROP DATABASE IF EXISTS `entity`;
CREATE DATABASE IF NOT EXISTS `entity` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `entity`;

-- Copiando estrutura para tabela entity.containing
CREATE TABLE IF NOT EXISTS `containing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_entity_container` int(11) DEFAULT NULL,
  `id_entity_content` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_parameter_entity` (`id_entity_container`),
  KEY `FK_parameter_entity_2` (`id_entity_content`) USING BTREE,
  CONSTRAINT `FK_parameter_entity` FOREIGN KEY (`id_entity_container`) REFERENCES `entity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_parameter_entity_2` FOREIGN KEY (`id_entity_content`) REFERENCES `entity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela entity.containing: ~17 rows (aproximadamente)
/*!40000 ALTER TABLE `containing` DISABLE KEYS */;
INSERT INTO `containing` (`id`, `id_entity_container`, `id_entity_content`) VALUES
	(1, 3, 4),
	(3, 3, 5),
	(5, 4, 1),
	(6, 5, 1),
	(12, 4, 22),
	(13, 3, 25),
	(14, 25, 1),
	(15, 3, 27),
	(24, 40, 41),
	(25, 41, 38),
	(26, 41, 42),
	(27, 40, 45),
	(28, 45, 39),
	(29, 40, 46),
	(30, 46, 38),
	(31, 40, 28),
	(34, 52, 28),
	(35, 52, 53),
	(36, 53, 42),
	(37, 53, 30),
	(38, 54, 15),
	(39, 52, 54),
	(40, 52, 45);
/*!40000 ALTER TABLE `containing` ENABLE KEYS */;

-- Copiando estrutura para tabela entity.entity
CREATE TABLE IF NOT EXISTS `entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela entity.entity: ~26 rows (aproximadamente)
/*!40000 ALTER TABLE `entity` DISABLE KEYS */;
INSERT INTO `entity` (`id`, `name`) VALUES
	(1, 'color'),
	(3, 'person'),
	(4, 'hair'),
	(5, 'skin'),
	(12, 'red'),
	(14, 'green'),
	(15, 'blue'),
	(22, 'length'),
	(25, 'eye'),
	(27, 'sex'),
	(28, 'male'),
	(29, 'female'),
	(30, 'yellow'),
	(31, 'brown'),
	(38, 'black'),
	(39, 'white'),
	(40, 'thiago'),
	(41, 'black short hair'),
	(42, 'short'),
	(43, 'medium'),
	(44, 'long'),
	(45, 'white skin'),
	(46, 'black eye'),
	(52, 'igor'),
	(53, 'blond short hair'),
	(54, 'blue eye');
/*!40000 ALTER TABLE `entity` ENABLE KEYS */;

-- Copiando estrutura para tabela entity.generalization
CREATE TABLE IF NOT EXISTS `generalization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_entity_generic` int(11) DEFAULT NULL,
  `id_entity_specific` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_generalization_entity` (`id_entity_generic`) USING BTREE,
  KEY `FK_generalization_entity_2` (`id_entity_specific`) USING BTREE,
  CONSTRAINT `FK_generalization_entity` FOREIGN KEY (`id_entity_generic`) REFERENCES `entity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_generalization_entity_2` FOREIGN KEY (`id_entity_specific`) REFERENCES `entity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela entity.generalization: ~17 rows (aproximadamente)
/*!40000 ALTER TABLE `generalization` DISABLE KEYS */;
INSERT INTO `generalization` (`id`, `id_entity_generic`, `id_entity_specific`) VALUES
	(11, 1, 12),
	(13, 1, 14),
	(14, 1, 15),
	(18, 27, 28),
	(19, 27, 29),
	(20, 1, 30),
	(21, 1, 31),
	(28, 1, 38),
	(29, 1, 39),
	(30, 3, 40),
	(31, 4, 41),
	(32, 22, 42),
	(33, 22, 43),
	(34, 22, 44),
	(35, 5, 45),
	(36, 25, 46),
	(39, 3, 52),
	(40, 4, 53),
	(41, 25, 54);
/*!40000 ALTER TABLE `generalization` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
