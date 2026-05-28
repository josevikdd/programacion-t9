-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gestionalumnos
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `primer_apellido` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `dni` varchar(10) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `segundo_apellido` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1010 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (1,'Pedro','Inostroza','12345678A','1955-05-24','Garcia'),(2,'Juan','Marchant','23456781B','1976-06-15','Sanchez'),(3,'Pamela','Aguirre','34567814C','2000-09-03','Vargues'),(4,'Mónica','Villanueva','45678143D','1986-10-13','Bargas'),(5,'Ignacio','Madariaga','56781431E','1995-04-15','Almendros'),(6,'Camilo','Zuñiga','67814312E','1979-09-20','Ribas'),(7,'Alejandro','Zurita','14312735F','1986-11-22','Sunshine'),(8,'Fernando','Condeza','43127353F','1992-07-25','Lopez'),(9,'Andrés','Poblete','31273533G','1998-02-14','Merce'),(10,'Yilun','Hernández','12735334H','2001-09-18','Frances'),(11,'Andrés','Pasten','27353345I','1999-08-15','Gomez'),(12,'Andrés','Mella','35334579J','1998-05-01','Arnau'),(13,'Alejandro','Bustos','53345790K','2000-03-10','Gascon'),(14,'Andrea','Muñoz','33457903L','1992-10-15','Sanz'),(15,'Ignacio','Rojas','34579039M','1995-11-05','Robles');
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumnos_asignaturas`
--

DROP TABLE IF EXISTS `alumnos_asignaturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos_asignaturas` (
  `idalumno` int NOT NULL,
  `idAsignatura` int NOT NULL,
  PRIMARY KEY (`idalumno`,`idAsignatura`),
  KEY `fk_Alumno_has_Asignatura_Asignatura1_idx` (`idAsignatura`),
  KEY `fk_Alumno_has_Asignatura_Alumno1_idx` (`idalumno`),
  CONSTRAINT `fk_Alumno_Asignatura1` FOREIGN KEY (`idalumno`) REFERENCES `alumnos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Alumno_Asignatura2` FOREIGN KEY (`idAsignatura`) REFERENCES `asignaturas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos_asignaturas`
--

LOCK TABLES `alumnos_asignaturas` WRITE;
/*!40000 ALTER TABLE `alumnos_asignaturas` DISABLE KEYS */;
INSERT INTO `alumnos_asignaturas` VALUES (1,1),(2,1),(1,2),(2,2),(1,3),(2,3),(1,4),(3,9),(3,10),(3,11),(11,16),(11,17),(4,18),(6,18),(4,19),(5,19),(6,19),(11,19),(4,20),(5,20),(6,20),(4,21),(5,21),(6,21),(7,25),(8,25),(7,26),(7,27),(8,27),(9,27),(7,28),(9,28),(10,29),(11,29),(10,30),(11,30),(10,31),(12,34),(12,35),(12,36),(12,37),(13,40),(14,40),(13,41),(14,41),(13,42),(14,42),(13,43),(14,43),(15,44),(15,45),(15,46),(15,47);
/*!40000 ALTER TABLE `alumnos_asignaturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignaturas`
--

DROP TABLE IF EXISTS `asignaturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignaturas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `idCurso` int NOT NULL,
  `numeroHorasSemanales` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Asignatura_Curso1` (`idCurso`),
  CONSTRAINT `fk_Asignatura_Curso1` FOREIGN KEY (`idCurso`) REFERENCES `cursos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignaturas`
--

LOCK TABLES `asignaturas` WRITE;
/*!40000 ALTER TABLE `asignaturas` DISABLE KEYS */;
INSERT INTO `asignaturas` VALUES (1,'Planificación y administración de redes.',3,6),(2,'Implantación de sistemas operativos.',3,7),(3,'Fundamentos de hardware.',3,3),(4,'Gestión de bases de datos.',3,5),(5,'Lenguajes de marcas y sistemas de gestión de información.',3,3),(6,'Formación y orientación laboral.',3,3),(7,'Horario reservado para el módulo impartido en inglés.',3,3),(8,'Administración de sistemas operativos.',4,6),(9,'Servicios de red e Internet.',4,6),(10,'Implantación de aplicaciones web.',4,5),(11,'Administración de sistemas gestores de bases de datos.',4,3),(12,'Seguridad y alta disponibilidad.',4,5),(13,'Empresa e iniciativa emprendedora.',4,3),(14,'Proyecto de administración de sistemas informáticos en red.',4,40),(15,'Horario reservado para el módulo impartido en inglés.',4,2),(16,'Formación en Centros de Trabajo.',4,400),(17,'Lenguajes de marcas y sistemas de gestión de información.',5,3),(18,'Sistemas informáticos.',5,5),(19,'Bases de datos.',5,5),(20,'Programación.',5,8),(21,'Entornos de desarrollo.',5,3),(22,'Formación y orientación laboral.',5,3),(23,'Horario reservado para el módulo impartido en inglés.',5,3),(24,'Desarrollo web en entorno cliente.',6,7),(25,'Desarrollo web en entorno servidor.',6,8),(26,'Despliegue de aplicaciones web.',6,4),(27,'Diseño de interfaces web.',6,6),(28,'Proyecto de Desarrollo de aplicaciones web.',6,40),(29,'Empresa e iniciativa emprendedora.',6,3),(30,'Horario reservado para el módulo impartido en inglés.',6,2),(31,'Formación en Centros de Trabajo.',6,400),(32,'Lenguajes de marcas y sistemas de gestión de información.',1,3),(33,'Sistemas informáticos.',1,5),(34,'Bases de Datos.',1,5),(35,'Programación.',1,8),(36,'Entornos de desarrollo.',1,3),(37,'Formación y Orientación Laboral.',1,3),(38,'Horario reservado para el módulo impartido en inglés.',1,3),(39,'Acceso a datos.',2,6),(40,'Desarrollo de interfaces.',2,6),(41,'Programación multimedia y dispositivos móviles.',2,5),(42,'Programación de servicios y procesos.',2,3),(43,'Sistemas de gestión empresarial.',2,5),(44,'Empresa e iniciativa emprendedora.',2,3),(45,'Proyecto de Desarrollo de aplicaciones multiplataforma.',2,40),(46,'Horario reservado para el módulo impartido en inglés.',2,2),(47,'Formación en Centros de Trabajo.',2,400);
/*!40000 ALTER TABLE `asignaturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'1º DAM'),(2,'2º DAM'),(3,'1º ASIR'),(4,'2º ASIR'),(5,'1º DAW'),(6,'2º DAW');
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-28 10:59:13
