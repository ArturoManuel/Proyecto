CREATE DATABASE  IF NOT EXISTS `agencia` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `agencia`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: agencia
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `comentarios`
--

DROP TABLE IF EXISTS `comentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentarios` (
  `com_id` int unsigned NOT NULL AUTO_INCREMENT,
  `com_user_id` int NOT NULL,
  `com_por_id` int NOT NULL,
  `com_mensaje` varchar(100) NOT NULL,
  `com_fecha` datetime NOT NULL,
  `com_status` tinyint NOT NULL DEFAULT '0' COMMENT '0: pendiente, 1: aprobado',
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentarios`
--

LOCK TABLES `comentarios` WRITE;
/*!40000 ALTER TABLE `comentarios` DISABLE KEYS */;
INSERT INTO `comentarios` VALUES (1,2,3,'este es el primer comentario','2022-12-23 22:24:32',1),(2,1,3,'','2022-12-26 19:42:06',2),(3,1,2,'Este es mi comentario','2022-12-26 21:40:59',1),(4,3,3,'Este es el comentario de carlos','2022-12-28 19:40:29',0),(5,3,4,'Este es el comentario del mismo carlos','2022-12-28 20:52:53',1),(6,1,3,'aaa','2023-01-05 11:38:04',0);
/*!40000 ALTER TABLE `comentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentariosgenerales`
--

DROP TABLE IF EXISTS `comentariosgenerales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentariosgenerales` (
  `com_id` int unsigned NOT NULL AUTO_INCREMENT,
  `com_name` varchar(100) NOT NULL,
  `com_apellido` varchar(40) DEFAULT NULL,
  `com_correo` varchar(100) NOT NULL,
  `com_telefono` int NOT NULL,
  `com_mensaje` varchar(100) NOT NULL,
  `com_fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentariosgenerales`
--

LOCK TABLES `comentariosgenerales` WRITE;
/*!40000 ALTER TABLE `comentariosgenerales` DISABLE KEYS */;
INSERT INTO `comentariosgenerales` VALUES (1,'pepe','rodiguez','a2019@pucp.edu.pe',914238805,'dsaadasdsadsadsadsad','2023-01-05 12:35:09'),(2,'Arturo Manuel Noriega Noriega','','a20190411@pucp.edu.pe',914238805,'Hola papa','2023-01-05 12:52:55');
/*!40000 ALTER TABLE `comentariosgenerales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `header`
--

DROP TABLE IF EXISTS `header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `header` (
  `hea_logo` varchar(50) NOT NULL,
  `hea_subtitulo` varchar(100) NOT NULL,
  `hea_titulo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `header`
--

LOCK TABLES `header` WRITE;
/*!40000 ALTER TABLE `header` DISABLE KEYS */;
INSERT INTO `header` VALUES ('Eduardo el Ninja Web','Bienvenido A Nuestro Estudio','es grato conocerte');
/*!40000 ALTER TABLE `header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portafolio`
--

DROP TABLE IF EXISTS `portafolio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `portafolio` (
  `por_id` int unsigned NOT NULL AUTO_INCREMENT,
  `por_user_id` int NOT NULL,
  `por_titulo` varchar(50) NOT NULL,
  `por_subtitulo` varchar(50) NOT NULL,
  `por_imgSmall` text NOT NULL,
  `por_imgLarge` text NOT NULL,
  `por_contenido` text NOT NULL,
  `por_fecha` date NOT NULL,
  `por_status` varchar(20) NOT NULL,
  `por_vistas` int DEFAULT '0',
  `por_delete` tinyint DEFAULT '1' COMMENT '0: desactivado, 1: activo',
  PRIMARY KEY (`por_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portafolio`
--

LOCK TABLES `portafolio` WRITE;
/*!40000 ALTER TABLE `portafolio` DISABLE KEYS */;
INSERT INTO `portafolio` VALUES (1,1,'Threads','Illustration','01-thumbnail.jpg','01-full.jpg','Lorem ipsum, dolor sit amet consectetur adipisicing elit. Placeat nulla eos explicabo quidem nesciunt quod ipsa laborum numquam, provident ab consectetur atque consequatur porro, molestias, alias at. Accusamus, iste voluptas!','2022-12-16','publicado',44,1),(2,1,'Explore','Graphic Design','8a55577f2f1150415fbe8e65d88ec1ce.jpg','ff7af0106e0811e55f97d7fb61049fa2.jpg','Lorem, ipsum dolor sit amet consectetur adipisicing elit. Corporis assumenda, labore odit quis explicabo deleniti exercitationem ab molestiae facilis soluta ipsum ipsa, aperiam voluptas impedit quasi asperiores, consequuntur vitae id magni. Itaque, porro? Dolore repellat voluptatibus nulla, culpa mollitia debitis illum non aut animi cumque amet blanditiis similique aliquid, tenetur earum exercitationem excepturi rerum eum quos harum. Voluptatibus fugiat quisquam error earum, culpa sapiente rerum, soluta iste repellendus unde voluptate consequatur saepe quo animi facere odio temporibus perferendis dignissimos aperiam blanditiis delectus a. Sint nobis quas ratione, ut impedit ex nisi beatae dolor cum, temporibus, aliquid soluta cumque magnam id.','2022-12-21','publicado',8,1),(3,1,'Finish','Identity','9ef2388b6844504b117ad2f962093572.jpg','aa0d4cf10db700032514d4c76db89b50.jpg','Contenido','2022-12-21','publicado',37,1),(4,3,'Lines','Branding','1178d60353b520f14d6931d24d4bdfff.jpg','906b42c4373deb90d366c5e15ef71dc5.jpg','Contenido hecho por Carlos','2022-12-28','publicado',4,1);
/*!40000 ALTER TABLE `portafolio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `user_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_nombres` varchar(100) NOT NULL,
  `user_apellidos` varchar(100) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_img` text,
  `user_pass` varchar(255) NOT NULL,
  `user_token` text,
  `user_status` tinyint DEFAULT '0' COMMENT 'status 0: usuario no activo, status 1: usuario activo',
  `user_rol` varchar(50) NOT NULL DEFAULT 'suscriptor',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Eduardo','Arroyo','eduardo@gmail.com',NULL,'$2y$12$0zms0hWeabEjI9ZtbXOAYObSASvR7XDafXqD6i.0VogEL5qZv9/mC','',1,'admin'),(2,'Jaimito','Perez','jaimito@gmail.com',NULL,'$2y$12$zb1QPZVOqCbsyMHEybVsTu7M478.kR5OAon1t16uI9Khgp2mjFaIS','',1,'suscriptor'),(3,'Carlos','Casas','carlos@gmail.com',NULL,'$2y$12$su2EFBSHmqcWDwNG3WTadehewkIvZ/raah3uFPE9lPw2pf0Q2bejm','',1,'admin');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-06 16:15:44
