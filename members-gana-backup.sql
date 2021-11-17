-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: members-gana
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acciones`
--

DROP TABLE IF EXISTS `acciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acciones` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `label` text COLLATE utf8mb4_unicode_ci,
  `valor` text COLLATE utf8mb4_unicode_ci,
  `tipo` text COLLATE utf8mb4_unicode_ci,
  `proveedor_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `orden` int DEFAULT NULL,
  `icono` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acciones`
--

LOCK TABLES `acciones` WRITE;
/*!40000 ALTER TABLE `acciones` DISABLE KEYS */;
INSERT INTO `acciones` VALUES (1,'Teléfono Asistencias','55-5169-3738','tel',1,'2021-11-05 03:44:00','2021-11-12 06:10:47',4,NULL),(2,'Telefono','(55) 5674 3197','tel',2,'2021-11-05 03:44:00','2021-11-12 06:10:50',5,NULL),(3,'Telefono','(55) 2609 9081','tel',2,'2021-11-05 04:35:00','2021-11-12 06:10:44',3,NULL),(4,'Email','siniestros@segasis.com.mx','mail',2,'2021-11-05 04:35:00','2021-11-12 06:10:42',2,NULL),(5,'ir a chat o apagina web','www.googlr.com','link',4,'2021-11-09 01:09:00','2021-11-12 06:10:35',1,NULL),(6,'Emergencia','2672t1762','tel',1,'2021-11-09 01:10:00','2021-11-12 06:21:02',1,'[{\"download_link\":\"acciones\\/November2021\\/2EtQfKE9DpXcso6C5drj.svg\",\"original_name\":\"check.svg\"}]');
/*!40000 ALTER TABLE `acciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement_user`
--

DROP TABLE IF EXISTS `announcement_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcement_user` (
  `announcement_id` int unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  KEY `announcement_user_announcement_id_index` (`announcement_id`),
  KEY `announcement_user_user_id_index` (`user_id`),
  CONSTRAINT `announcement_user_announcement_id_foreign` FOREIGN KEY (`announcement_id`) REFERENCES `announcements` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `announcement_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement_user`
--

LOCK TABLES `announcement_user` WRITE;
/*!40000 ALTER TABLE `announcement_user` DISABLE KEYS */;
INSERT INTO `announcement_user` VALUES (1,4),(2,4),(1,6),(2,6),(1,5),(2,5);
/*!40000 ALTER TABLE `announcement_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Wave 1.0 Released','We have just released the first official version of Wave. Click here to learn more!','<p>It\'s been a fun Journey creating this awesome SAAS starter kit and we are super excited to use it in many of our future projects. There are just so many features that Wave has that will make building the SAAS of your dreams easier than ever before.</p>\n<p>Make sure to stay up-to-date on our latest releases as we will be releasing many more features down the road :)</p>\n<p>Thanks! Talk to you soon.</p>','2018-05-20 23:19:00','2018-05-21 00:38:02'),(2,'Wave 2.0 Released','Wave V2 has been released with some awesome new features. Be sure to read up on what\'s new!','<p>This new version of Wave includes the following updates:</p><ul><li>Update to the latest version of Laravel</li><li>New Payment integration with Paddle</li><li>Rewritten theme support</li><li>Deployment integration</li><li>Much more awesomeness</li></ul><p>Be sure to check out the official Wave v2 page at <a href=\"https://devdojo.com/wave\">https://devdojo.com/wave</a></p>','2020-03-20 23:19:00','2020-03-21 00:38:02');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_keys`
--

DROP TABLE IF EXISTS `api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_keys` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_used_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_tokens_token_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_keys`
--

LOCK TABLES `api_keys` WRITE;
/*!40000 ALTER TABLE `api_keys` DISABLE KEYS */;
INSERT INTO `api_keys` VALUES (1,1,'admin','AuzlhpsCjMKcUlRuq6fvXaPfGwVMW3prdB87hjVevBf4vIi0ty9UYOPW3JXN',NULL,'2021-10-26 03:42:16','2021-10-26 03:42:16');
/*!40000 ALTER TABLE `api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beneficiarios`
--

DROP TABLE IF EXISTS `beneficiarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beneficiarios` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `apellido_paterno` text COLLATE utf8mb4_unicode_ci,
  `apellido_materno` text COLLATE utf8mb4_unicode_ci,
  `nombres` text COLLATE utf8mb4_unicode_ci,
  `parentesco` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `porcentaje` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficiarios`
--

LOCK TABLES `beneficiarios` WRITE;
/*!40000 ALTER TABLE `beneficiarios` DISABLE KEYS */;
INSERT INTO `beneficiarios` VALUES (2,4,'test','test','test test','padre',50,'2021-11-08 04:22:34','2021-11-08 04:22:34'),(3,4,'mabj','mabj','mabj','padre',20,'2021-11-08 04:37:42','2021-11-08 04:37:42');
/*!40000 ALTER TABLE `beneficiarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caracteristicas`
--

DROP TABLE IF EXISTS `caracteristicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caracteristicas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `caracteristica` text COLLATE utf8mb4_unicode_ci,
  `cobertura` text COLLATE utf8mb4_unicode_ci,
  `alcance` text COLLATE utf8mb4_unicode_ci,
  `servicio_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `proveedor_id` bigint DEFAULT NULL,
  `orden` int DEFAULT NULL,
  `icono` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caracteristicas`
--

LOCK TABLES `caracteristicas` WRITE;
/*!40000 ALTER TABLE `caracteristicas` DISABLE KEYS */;
INSERT INTO `caracteristicas` VALUES (1,'Seguro de Vida. Fallecimiento por cualquier causa. Incluye COVID 19','100000','Individual',1,'2021-11-05 03:18:00','2021-11-12 06:06:55',1,7,NULL),(2,'Gastos Funerarios indenmizatorio','25000','Individual',1,'2021-11-05 04:31:00','2021-11-12 06:06:52',1,6,NULL),(3,'Costos Preferenciales Consulta con Médico General','ILIMITADO','Individual',2,'2021-11-05 04:32:00','2021-11-12 06:06:27',2,5,NULL),(4,'Costos Preferenciales Consulta con Médico Especialista','ILIMITADO','Individual',2,'2021-11-05 04:32:00','2021-11-12 06:06:06',2,4,NULL),(5,'Apoyo para compra de medicamentos recetados hasta $1,000 pesos','2 Eventos al año','Individual',4,'2021-11-09 01:04:00','2021-11-12 06:06:00',2,3,NULL),(6,'Descuentos en Laboratorios análisis clínicos','ILIMITADO','Individual',4,'2021-11-09 01:05:00','2021-11-12 06:05:56',2,2,NULL),(7,NULL,NULL,'https://back.gana.com/aseets/iconos/',NULL,'2021-11-09 01:28:00','2021-11-12 06:05:53',NULL,1,NULL);
/*!40000 ALTER TABLE `caracteristicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned DEFAULT NULL,
  `order` int NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,1,'Category 1','category-1','2017-11-21 16:23:22','2017-11-21 16:23:22'),(2,NULL,1,'Category 2','category-2','2017-11-21 16:23:22','2017-11-21 16:23:22');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_rows` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int unsigned NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,'',1),(2,1,'author_id','text','Author',1,0,1,1,0,1,'',2),(3,1,'category_id','text','Category',1,0,1,1,1,0,'',3),(4,1,'title','text','Title',1,1,1,1,1,1,'',4),(5,1,'excerpt','text_area','excerpt',1,0,1,1,1,1,'',5),(6,1,'body','rich_text_box','Body',1,0,1,1,1,1,'',6),(7,1,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(8,1,'slug','text','slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}',8),(9,1,'meta_description','text_area','meta_description',1,0,1,1,1,1,'',9),(10,1,'meta_keywords','text_area','meta_keywords',1,0,1,1,1,1,'',10),(11,1,'status','select_dropdown','status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(12,1,'created_at','timestamp','created_at',0,1,1,0,0,0,'',12),(13,1,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',13),(14,2,'id','number','id',1,0,0,0,0,0,'',1),(15,2,'author_id','text','author_id',1,0,0,0,0,0,'',2),(16,2,'title','text','title',1,1,1,1,1,1,'',3),(17,2,'excerpt','text_area','excerpt',1,0,1,1,1,1,'',4),(18,2,'body','rich_text_box','body',1,0,1,1,1,1,'',5),(19,2,'slug','text','slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"}}',6),(20,2,'meta_description','text','meta_description',1,0,1,1,1,1,'',7),(21,2,'meta_keywords','text','meta_keywords',1,0,1,1,1,1,'',8),(22,2,'status','select_dropdown','status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(23,2,'created_at','timestamp','created_at',1,1,1,0,0,0,'',10),(24,2,'updated_at','timestamp','updated_at',1,0,0,0,0,0,'',11),(25,2,'image','image','image',0,1,1,1,1,1,'',12),(26,3,'id','number','id',1,0,0,0,0,0,'{}',1),(27,3,'name','text','Nombre Completo',1,1,1,1,1,1,'{}',3),(28,3,'email','text','Correo',1,1,1,1,1,1,'{}',4),(29,3,'password','password','password',1,0,0,1,1,0,'{}',6),(30,3,'user_belongsto_role_relationship','relationship','Rol',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"on\"}',12),(31,3,'remember_token','hidden','remember_token',0,0,0,0,0,0,'{}',7),(32,3,'created_at','timestamp','Creado',0,1,1,0,0,0,'{}',34),(33,3,'updated_at','timestamp','Modificado',0,0,0,0,0,0,'{}',33),(34,3,'avatar','image','avatar',0,1,1,1,1,1,'{}',2),(35,5,'id','number','id',1,0,0,0,0,0,'',1),(36,5,'name','text','name',1,1,1,1,1,1,'',2),(37,5,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),(38,5,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),(39,4,'id','number','id',1,0,0,0,0,0,'',1),(40,4,'parent_id','select_dropdown','parent_id',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(41,4,'order','text','order',1,1,1,1,1,1,'{\"default\":1}',3),(42,4,'name','text','name',1,1,1,1,1,1,'',4),(43,4,'slug','text','slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(44,4,'created_at','timestamp','created_at',0,0,1,0,0,0,'',6),(45,4,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),(46,6,'id','number','id',1,0,0,0,0,0,'',1),(47,6,'name','text','Name',1,1,1,1,1,1,'',2),(48,6,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),(49,6,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),(50,6,'display_name','text','Display Name',1,1,1,1,1,1,'',5),(51,1,'seo_title','text','seo_title',0,1,1,1,1,1,'',14),(52,1,'featured','checkbox','featured',1,1,1,1,1,1,'',15),(53,3,'role_id','text','role_id',0,1,1,1,1,1,'{}',10),(54,3,'username','text','Username',1,0,1,1,1,1,'{}',5),(55,7,'id','hidden','Id',1,0,0,0,0,0,NULL,1),(56,7,'title','text','Title',1,1,1,1,1,1,NULL,2),(57,7,'description','text_area','Description (max 250 characters)',1,1,1,1,1,1,NULL,3),(58,7,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,4),(59,7,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,5),(60,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,6),(61,3,'settings','hidden','Settings',0,1,1,1,1,1,'{}',9),(62,3,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(64,8,'id','hidden','Id',1,0,0,0,0,0,'{}',1),(65,8,'name','text','Nombre (Basic, Standard, Premium, etc)',1,1,1,1,1,1,'{}',3),(66,8,'description','text_area','Descripcion',0,1,1,1,1,1,'{}',6),(67,8,'features','text_area','Caracteristicas',1,1,1,1,1,1,'{}',4),(69,8,'role_id','text','Role Id',1,1,1,1,1,1,'{}',2),(70,8,'created_at','timestamp','Creado',0,1,0,0,0,1,'{}',8),(71,8,'updated_at','timestamp','Actualizado',0,0,0,0,0,0,'{}',9),(72,8,'plan_belongsto_role_relationship','relationship','Rol (role permissions for this plan)',0,1,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"announcement_user\",\"pivot\":\"0\",\"taggable\":\"0\"}',5),(73,8,'default','checkbox','Default (Make this the default plan)',1,0,1,1,1,1,'{}',7),(74,8,'price','text','Precio (mostrado)',1,1,1,1,1,1,'{}',8),(75,8,'plan_id','text','Plan Id (paddle)',1,1,1,1,1,1,'{}',6),(76,8,'trial_days','number','Trial Days (If none, set to 0)',1,0,1,1,1,1,'{}',9),(77,12,'id','text','Id',1,0,0,0,0,0,'{}',1),(78,12,'table_name','text','Table Name',1,1,1,1,1,1,'{}',2),(79,12,'column_name','text','Column Name',1,1,1,1,1,1,'{}',3),(80,12,'foreign_key','text','Foreign Key',1,1,1,1,1,1,'{}',4),(81,12,'locale','text','Locale',1,1,1,1,1,1,'{}',5),(82,12,'value','text','Value',1,1,1,1,1,1,'{}',6),(83,12,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),(84,12,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(85,3,'email_verified_at','timestamp','Email Verified At',0,0,1,1,1,1,'{}',8),(86,3,'stripe_id','text','Stripe Id',0,0,0,0,0,1,'{}',13),(87,3,'card_brand','text','Card Brand',0,0,0,0,0,1,'{}',14),(88,3,'card_last_four','text','Card Last Four',0,0,0,0,0,1,'{}',15),(89,3,'trial_ends_at','hidden','Trial Ends At',0,0,0,0,0,1,'{}',16),(90,3,'verification_code','hidden','Verification Code',0,1,1,1,1,1,'{}',32),(91,3,'verified','hidden','Verified',0,1,1,1,1,1,'{}',31),(92,3,'localia','text','Localia',1,1,1,1,1,1,'{}',17),(94,3,'telefono','text','Telefono',0,1,1,1,1,1,'{}',18),(95,3,'fecha_nacimiento','text','Fecha Nacimiento',0,1,1,1,1,1,'{}',19),(96,3,'genero','text','Genero',0,1,1,1,1,1,'{}',20),(97,3,'estado_civil','text','Estado Civil',0,1,1,1,1,1,'{}',21),(98,3,'identificacion_oficial','text','Identificacion Oficial',0,1,1,1,1,1,'{}',22),(99,3,'rfc','text','RFC',0,1,1,1,1,1,'{}',23),(100,3,'curp','text','CURP',0,1,1,1,1,1,'{}',24),(101,3,'domicilio','text','Domicilio',0,1,1,1,1,1,'{}',25),(102,3,'localidad','text','Localidad',0,1,1,1,1,1,'{}',26),(103,3,'municipio_id','text','Municipio',0,1,1,1,1,1,'{}',27),(104,3,'estado_id','text','Estad',0,1,1,1,1,1,'{}',28),(105,3,'pais_id','text','Pais',0,1,1,1,1,1,'{}',29),(106,3,'fecha_registro','timestamp','Fecha Registro',0,1,1,1,1,1,'{}',30),(107,8,'slug','text','Slug',1,1,1,1,1,1,'{}',4),(108,13,'id','text','Id',1,0,0,0,0,0,'{}',1),(110,13,'descripcion','text_area','Descripcion',0,1,1,1,1,1,'{}',3),(115,13,'created_at','text_area','Created At',0,1,0,0,0,1,'{}',8),(116,13,'updated_at','text_area','Updated At',0,1,0,0,0,1,'{}',9),(118,8,'plan_belongstomany_servicio_relationship','relationship','Servicios',0,1,1,1,1,1,'{\"model\":\"App\\\\Servicio\",\"table\":\"servicios\",\"type\":\"hasMany\",\"column\":\"plan_id\",\"key\":\"id\",\"label\":\"titulo\",\"pivot_table\":\"paquetes_servicios\",\"pivot\":\"0\",\"taggable\":\"on\"}',10),(119,13,'titulo','text','Titulo',0,1,1,1,1,1,'{}',2),(120,14,'id','text','Id',1,0,0,0,0,0,'{}',1),(121,14,'caracteristica','text','Caracteristica',0,1,1,1,1,1,'{}',3),(122,14,'cobertura','text','Cobertura',0,1,1,1,1,1,'{}',4),(123,14,'alcance','text','Alcance',0,1,1,1,1,1,'{}',6),(125,14,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',10),(126,14,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',11),(127,17,'id','text','Id',1,0,0,0,0,0,'{}',1),(128,17,'nombre','text','Nombre',0,1,1,1,1,1,'{}',2),(129,17,'descripcion','text','Descripcion',0,1,1,1,1,1,'{}',3),(130,17,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',4),(131,17,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(132,14,'caracteristica_belongsto_proveedore_relationship','relationship','Servicio',0,1,1,1,1,1,'{\"model\":\"App\\\\Servicio\",\"table\":\"servicios\",\"type\":\"belongsTo\",\"column\":\"servicio_id\",\"key\":\"id\",\"label\":\"descripcion\",\"pivot_table\":\"announcement_user\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(133,19,'id','text','Id',1,0,0,0,0,0,'{}',1),(134,19,'label','text','Label',0,1,1,1,1,1,'{}',3),(135,19,'valor','text','Valor',0,1,1,1,1,1,'{}',4),(136,19,'tipo','text','Tipo',0,1,1,1,1,1,'{}',5),(137,19,'proveedor_id','text','Proveedor Id',0,1,1,1,1,1,'{}',6),(138,19,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',9),(139,19,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',10),(140,19,'accione_belongsto_proveedore_relationship','relationship','Proveedor',0,1,1,1,1,1,'{\"model\":\"App\\\\Proveedor\",\"table\":\"proveedores\",\"type\":\"belongsTo\",\"column\":\"proveedor_id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"acciones\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(141,13,'servicio_belongstomany_plan_relationship','relationship','Plan',0,1,1,1,1,1,'{\"model\":\"Wave\\\\Plan\",\"table\":\"plans\",\"type\":\"belongsTo\",\"column\":\"plan_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"paquetes_servicios\",\"pivot\":\"0\",\"taggable\":\"on\"}',4),(142,13,'plan_id','text','Plan Id',0,1,1,1,1,1,'{}',5),(143,14,'servicio_id','text','Servicio Id',0,1,1,1,1,1,'{}',5),(144,14,'caracteristica_belongsto_proveedore_relationship_1','relationship','Proveedor',0,1,1,1,1,1,'{\"model\":\"App\\\\Proveedor\",\"table\":\"proveedores\",\"type\":\"belongsTo\",\"column\":\"proveedor_id\",\"key\":\"id\",\"label\":\"nombre\",\"pivot_table\":\"acciones\",\"pivot\":\"0\",\"taggable\":\"0\"}',7),(145,14,'proveedor_id','text','Proveedor Id',0,1,1,1,1,1,'{}',8),(146,8,'periodo','text','Periodo',1,1,1,1,1,1,'{}',13),(147,20,'id','text','Id',1,0,0,0,0,0,'{}',2),(148,20,'user_id','text','User Id',0,1,1,1,1,1,'{}',3),(149,20,'apellido_paterno','text','Apellido Paterno',0,1,1,1,1,1,'{}',4),(150,20,'apellido_materno','text','Apellido Materno',0,1,1,1,1,1,'{}',5),(151,20,'nombres','text','Nombres',0,1,1,1,1,1,'{}',6),(152,20,'parentesco','text','Parentesco',0,1,1,1,1,1,'{}',7),(153,20,'porcentaje','text','Porcentaje',0,1,1,1,1,1,'{}',8),(154,20,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',9),(155,20,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',10),(156,20,'beneficiario_belongsto_user_relationship','relationship','Miembro Titular',1,1,1,1,1,1,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"acciones\",\"pivot\":\"0\",\"taggable\":\"0\"}',1),(157,3,'user_hasmany_beneficiario_relationship','relationship','Beneficiarios',0,1,1,1,1,1,'{\"model\":\"App\\\\Beneficiario\",\"table\":\"beneficiarios\",\"type\":\"hasMany\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"nombres\",\"pivot_table\":\"acciones\",\"pivot\":\"0\",\"taggable\":\"0\"}',35),(158,8,'orden','number','Orden',0,1,1,1,1,1,'{}',14),(159,13,'orden','text','Orden',0,1,1,1,1,1,'{}',6),(160,14,'orden','text','Orden',0,1,1,1,1,1,'{}',9),(161,19,'orden','text','Orden',0,1,1,1,1,1,'{}',7),(162,19,'icono','file','Icono',0,1,1,1,1,1,'{}',8),(163,14,'icono','file','Icono',0,1,1,1,1,1,'{}',10),(164,13,'icono','file','Icono',0,1,1,1,1,1,'{}',7),(165,8,'icono','file','Icono',0,1,1,1,1,1,'{}',15);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `data_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,NULL,'2017-11-21 16:23:22','2017-11-21 16:23:22'),(2,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,NULL,'2017-11-21 16:23:22','2017-11-21 16:23:22'),(3,'users','users','Miembro','Miembros','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy',NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2017-11-21 16:23:22','2021-11-08 04:38:33'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,'','',1,0,NULL,'2017-11-21 16:23:22','2017-11-21 16:23:22'),(5,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2017-11-21 16:23:22','2017-11-21 16:23:22'),(6,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController','',1,0,NULL,'2017-11-21 16:23:22','2017-11-21 16:23:22'),(7,'announcements','announcements','Announcement','Announcements','voyager-megaphone','Wave\\Announcement',NULL,NULL,NULL,1,0,NULL,'2018-05-20 21:08:14','2018-05-20 21:08:14'),(8,'plans','paquetes','Paquete','Paquetes','voyager-logbook','Wave\\Plan',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2018-07-03 04:50:28','2021-11-12 06:32:36'),(12,'translations','translations','Translation','Translations','voyager-treasure','App\\Translation',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-10-26 04:20:17','2021-10-30 18:07:39'),(13,'servicios','servicios','Servicio','Servicios','voyager-star-two','App\\Servicio','App\\Policies\\ServicePolicy',NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-11-01 04:54:45','2021-11-12 06:29:22'),(14,'caracteristicas','caracteristicas','Caracteristica','Caracteristicas','voyager-documentation','App\\Caracteristica',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-11-05 03:18:17','2021-11-12 06:28:13'),(17,'proveedores','proveedores','Proveedor','Proveedores','voyager-group','App\\Proveedor',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-11-05 03:23:07','2021-11-05 03:26:29'),(19,'acciones','acciones','Accion','Acciones',NULL,'App\\Accion',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-11-05 03:42:59','2021-11-12 06:20:42'),(20,'beneficiarios','beneficiarios','Beneficiario','Beneficiarios','voyager-certificate','App\\Beneficiario',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2021-11-08 04:09:14','2021-11-08 04:15:38');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Inicio','','_self','voyager-boat','#000000',NULL,1,'2017-11-21 16:23:22','2021-11-06 21:54:44','voyager.dashboard','null'),(2,1,'Media','','_self','voyager-images',NULL,39,1,'2017-11-21 16:23:22','2021-11-05 06:38:23','voyager.media.index',NULL),(3,1,'Posts','','_self','voyager-news',NULL,39,2,'2017-11-21 16:23:22','2021-11-05 06:38:25','voyager.posts.index',NULL),(4,1,'Miembros','','_self','voyager-people','#000000',41,1,'2017-11-21 16:23:22','2021-11-08 04:10:14','voyager.users.index','null'),(5,1,'Categories','','_self','voyager-categories',NULL,39,4,'2017-11-21 16:23:22','2021-11-05 06:38:28','voyager.categories.index',NULL),(6,1,'Pages','','_self','voyager-file-text',NULL,39,3,'2017-11-21 16:23:22','2021-11-05 06:38:26','voyager.pages.index',NULL),(7,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2017-11-21 16:23:22','2021-11-01 05:43:52','voyager.roles.index',NULL),(8,1,'Tools','','_self','voyager-tools',NULL,NULL,9,'2017-11-21 16:23:22','2021-11-05 06:55:37',NULL,NULL),(9,1,'Menu Builder','','_self','voyager-list',NULL,8,1,'2017-11-21 16:23:22','2018-05-20 21:08:37','voyager.menus.index',NULL),(10,1,'Database','','_self','voyager-data',NULL,8,2,'2017-11-21 16:23:22','2018-05-20 21:08:37','voyager.database.index',NULL),(11,1,'Compass','/admin/compass','_self','voyager-compass',NULL,8,3,'2017-11-21 16:23:22','2018-05-20 21:08:37',NULL,NULL),(12,1,'Hooks','/admin/hooks','_self','voyager-hook','#000000',8,5,'2017-11-21 16:23:22','2018-06-22 20:55:55',NULL,''),(13,1,'Settings','','_self','voyager-settings',NULL,NULL,10,'2017-11-21 16:23:22','2021-11-05 06:55:37','voyager.settings.index',NULL),(14,1,'Themes','/admin/themes','_self','voyager-paint-bucket',NULL,8,6,'2017-11-21 16:31:00','2021-11-05 06:37:40',NULL,NULL),(15,2,'Dashboard','','_self','home','#000000',NULL,1,'2017-11-28 14:48:21','2018-03-23 16:25:44','wave.dashboard','null'),(16,2,'Resources','#_','_self','info','#000000',NULL,2,'2017-11-28 14:49:36','2017-11-28 15:11:13',NULL,''),(19,2,'Next Child','/next','_self',NULL,'#000000',18,1,'2017-11-28 14:56:58','2017-11-28 14:57:10',NULL,''),(20,2,'Next Child 2','/next','_self',NULL,'#000000',18,2,'2017-11-28 14:57:07','2017-11-28 14:57:12',NULL,''),(21,2,'Documentation','/docs','_self',NULL,'#000000',16,1,'2017-11-28 15:08:56','2017-11-28 15:09:14',NULL,''),(22,2,'Videos','https://devdojo.com/series/wave','_blank',NULL,'#000000',16,2,'2017-11-28 15:09:22','2017-11-28 15:09:25',NULL,''),(23,2,'Support','https://devdojo.com/forums/category/wave','_blank','lifesaver','#000000',NULL,3,'2017-11-28 15:09:56','2018-03-31 18:22:05',NULL,''),(25,2,'Blog','/blog','_self',NULL,'#000000',16,3,'2018-03-31 18:22:02','2018-03-31 18:22:08',NULL,''),(26,3,'Home','/#','_self',NULL,'#000000',NULL,99,'2018-04-13 22:29:33','2018-08-28 18:39:05',NULL,''),(27,3,'Features','/#features','_self',NULL,'#000000',NULL,100,'2018-04-13 22:30:26','2018-08-28 00:24:49',NULL,''),(28,3,'Testimonials','/#testimonials','_self',NULL,'#000000',NULL,101,'2018-04-13 22:31:03','2018-08-28 00:24:57',NULL,''),(29,3,'Pricing','/#pricing','_self',NULL,'#000000',NULL,102,'2018-04-13 22:31:52','2018-08-28 00:25:04',NULL,''),(30,1,'Announcements','/admin/announcements','_self','voyager-megaphone',NULL,NULL,8,'2018-05-20 21:08:14','2021-11-05 06:55:37',NULL,NULL),(31,1,'BREAD','','_self','voyager-bread','#000000',8,4,'2018-06-22 20:53:25','2018-06-22 20:54:13','voyager.bread.index',NULL),(32,1,'Paquetes','','_self','voyager-logbook','#000000',40,1,'2018-07-03 04:50:28','2021-11-05 06:40:41','voyager.paquetes.index','null'),(33,3,'Blog','','_self',NULL,'#000000',NULL,103,'2018-08-24 19:41:14','2018-08-24 19:41:14','wave.blog',NULL),(34,1,'Translations','','_self',NULL,NULL,8,7,'2021-10-26 04:20:17','2021-11-05 06:37:45','voyager.translations.index',NULL),(35,1,'Servicios','','_self','voyager-star-two',NULL,40,2,'2021-11-01 04:54:45','2021-11-05 06:40:45','voyager.servicios.index',NULL),(36,1,'Caracteristicas','','_self','voyager-documentation','#000000',40,3,'2021-11-05 03:18:17','2021-11-05 06:42:03','voyager.caracteristicas.index','null'),(37,1,'Proveedores','','_self','voyager-group',NULL,40,4,'2021-11-05 03:23:07','2021-11-05 06:40:52','voyager.proveedores.index',NULL),(38,1,'Acciones','','_self','voyager-bolt','#000000',40,5,'2021-11-05 03:42:59','2021-11-05 06:43:19','voyager.acciones.index','null'),(39,1,'Blog','','_self','voyager-book','#000000',NULL,7,'2021-11-05 06:38:14','2021-11-05 06:55:37',NULL,''),(40,1,'Features','','_self','voyager-rocket','#000000',NULL,4,'2021-11-05 06:40:19','2021-11-05 06:45:16',NULL,''),(41,1,'Miembros','','_self','voyager-people','#000000',NULL,3,'2021-11-05 06:45:02','2021-11-05 06:45:15',NULL,''),(43,1,'Directorio','','_self','voyager-world','#000000',NULL,5,'2021-11-05 06:53:03','2021-11-08 04:10:51',NULL,''),(44,1,'Empresas','#','_self','voyager-shop','#000000',43,1,'2021-11-05 06:53:36','2021-11-08 04:10:39',NULL,''),(45,1,'Gestion','','_self','voyager-categories','#000000',NULL,6,'2021-11-05 06:55:12','2021-11-05 06:55:37',NULL,''),(47,1,'Estados de Cuenta','#','_self','voyager-dollar','#000000',45,2,'2021-11-05 06:57:11','2021-11-08 04:11:34',NULL,''),(48,1,'Cobranza','#','_self',NULL,'#000000',45,1,'2021-11-05 06:58:26','2021-11-08 04:11:27',NULL,''),(49,1,'Membresias','#','_self',NULL,'#000000',41,3,'2021-11-05 07:00:44','2021-11-08 04:11:05',NULL,''),(50,1,'Beneficiarios','','_self','voyager-certificate',NULL,41,2,'2021-11-08 04:09:14','2021-11-08 04:10:14','voyager.beneficiarios.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2017-11-21 16:23:22','2017-11-21 16:23:22'),(2,'authenticated-menu','2017-11-28 14:47:49','2018-04-13 22:25:28'),(3,'guest-menu','2018-04-13 22:25:37','2018-04-13 22:25:37');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_01_01_000000_create_pages_table',1),(6,'2016_01_01_000000_create_posts_table',1),(7,'2016_02_15_204651_create_categories_table',1),(8,'2016_05_19_173453_create_menu_table',1),(9,'2016_10_21_190000_create_roles_table',1),(10,'2016_10_21_190000_create_settings_table',1),(11,'2016_11_30_135954_create_permission_table',1),(12,'2016_11_30_141208_create_permission_role_table',1),(13,'2016_12_26_201236_data_types__add__server_side',1),(14,'2017_01_13_000000_add_route_to_menu_items_table',1),(15,'2017_01_14_005015_create_translations_table',1),(16,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(17,'2017_03_06_000000_add_controller_to_data_types_table',1),(18,'2017_04_11_000000_alter_post_nullable_fields_table',1),(19,'2017_04_21_000000_add_order_to_data_rows_table',1),(20,'2017_07_05_210000_add_policyname_to_data_types_table',1),(21,'2017_08_05_000000_add_group_to_settings_table',1),(22,'2017_11_26_013050_add_user_role_relationship',1),(23,'2017_11_26_015000_create_user_roles_table',1),(24,'2018_03_11_000000_add_user_settings',1),(25,'2018_03_14_000000_add_details_to_data_types_table',1),(26,'2018_03_16_000000_make_settings_value_nullable',1),(27,'2018_09_22_234251_add_permissions_group_id_to_permissions_table',1),(28,'2018_09_22_234251_add_username_billing_to_users',1),(29,'2018_09_22_234251_create_announcement_user_table',1),(30,'2018_09_22_234251_create_announcements_table',1),(31,'2018_09_22_234251_create_api_keys_table',1),(32,'2018_09_22_234251_create_notifications_table',1),(33,'2018_09_22_234251_create_permission_groups_table',1),(34,'2018_09_22_234251_create_plans_table',1),(35,'2018_09_22_234251_create_subscriptions_table',1),(36,'2018_09_22_234251_create_voyager_theme_options_table',1),(37,'2018_09_22_234251_create_voyager_themes_table',1),(38,'2018_09_22_234251_create_wave_key_values_table',1),(39,'2018_09_22_234252_add_foreign_keys_to_announcement_user_table',1),(40,'2018_09_22_234252_add_foreign_keys_to_plans_table',1),(41,'2020_03_30_032031_change_voyager_themes_table_name',1),(42,'2020_04_22_234252_add_foreign_keys_to_voyager_theme_options_table',1),(43,'2020_06_23_210721_add_stripe_status_column_to_subscriptions_table',1),(44,'2020_07_03_000003_create_subscription_items_table',1),(45,'2021_01_28_041011_create_paddle_subscriptions_table',1),(46,'2021_01_28_182638_removing_cashier_sub_tables',1),(47,'2021_01_29_173720_add_slug_column_to_plans_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int unsigned NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paddle_subscriptions`
--

DROP TABLE IF EXISTS `paddle_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paddle_subscriptions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `subscription_id` int unsigned NOT NULL,
  `plan_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `paddle_subscriptions_subscription_id_unique` (`subscription_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paddle_subscriptions`
--

LOCK TABLES `paddle_subscriptions` WRITE;
/*!40000 ALTER TABLE `paddle_subscriptions` DISABLE KEYS */;
INSERT INTO `paddle_subscriptions` VALUES (1,149397,18630,4,'active','https://sandbox-subscription-management.paddle.com/subscription/149397/hash/01f682ef43a157866bb71cf466a6ec6ca903432278452693ede462760f336cc0/update','https://sandbox-subscription-management.paddle.com/subscription/149397/hash/01f682ef43a157866bb71cf466a6ec6ca903432278452693ede462760f336cc0/cancel',NULL,'2021-10-31 00:40:33','2021-10-31 00:40:33'),(2,151274,18631,4,'active','https://sandbox-subscription-management.paddle.com/subscription/151274/hash/6e126d3385efa6095fe2ec92488d922af5fb13a07bdd44cec29d4c5f66aa8084/update','https://sandbox-subscription-management.paddle.com/subscription/151274/hash/6e126d3385efa6095fe2ec92488d922af5fb13a07bdd44cec29d4c5f66aa8084/cancel',NULL,'2021-11-01 22:18:38','2021-11-01 22:18:38'),(3,151275,18631,5,'active','https://sandbox-subscription-management.paddle.com/subscription/151275/hash/9cb1b9a59432b2fc5eea2749c137a1f30f203588c23dad2aceb91d6f39ef7678/update','https://sandbox-subscription-management.paddle.com/subscription/151275/hash/9cb1b9a59432b2fc5eea2749c137a1f30f203588c23dad2aceb91d6f39ef7678/cancel',NULL,'2021-11-01 22:21:26','2021-11-01 22:21:26'),(4,168609,18630,6,'active','https://sandbox-subscription-management.paddle.com/subscription/168609/hash/9011e591e7cbb82e1bed21d1309b423c3a20ffa195f32c58b7dc81fef9644268/update','https://sandbox-subscription-management.paddle.com/subscription/168609/hash/9011e591e7cbb82e1bed21d1309b423c3a20ffa195f32c58b7dc81fef9644268/cancel',NULL,'2021-11-06 22:09:51','2021-11-06 22:09:51');
/*!40000 ALTER TABLE `paddle_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,1,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2017-11-21 16:23:23','2017-11-21 16:23:23'),(2,1,'About','This is the about page.','<p>Wave is the ultimate&nbsp;Software as a Service Starter kit. If you\'ve ever wanted to create your own SAAS application, Wave can help save you hundreds of hours. Wave is one of a kind and it is built on top of Laravel and Voyager. Building your application is going to be funner&nbsp;than ever before... Funner may not be a real word, but you get where I\'m trying to go.</p>\n<p>Wave has a bunch of functionality built-in that will save you a bunch of time. Your users will be able to update their settings, billing information, profile information and so much more. You will also be able to accept&nbsp;payments from your user with multiple vendors.</p>\n<p>We want to help you build the SAAS of your dreams by making it easier and less time-consuming. Let\'s start creating some \"Waves\" and build out the SAAS in your particular niche... Sorry about that Wave pun...</p>',NULL,'about','About Wave','about, wave','ACTIVE','2018-03-30 03:04:51','2018-03-30 03:04:51');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paquetes_servicios`
--

DROP TABLE IF EXISTS `paquetes_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paquetes_servicios` (
  `plan_id` bigint unsigned NOT NULL,
  `servicio_id` int unsigned NOT NULL,
  KEY `paquetes_servicios_plan_id_index` (`plan_id`),
  KEY `paquetes_servicios_servicio_id_index` (`servicio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paquetes_servicios`
--

LOCK TABLES `paquetes_servicios` WRITE;
/*!40000 ALTER TABLE `paquetes_servicios` DISABLE KEYS */;
INSERT INTO `paquetes_servicios` VALUES (4,1),(3,1),(4,2);
/*!40000 ALTER TABLE `paquetes_servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_groups`
--

DROP TABLE IF EXISTS `permission_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_groups`
--

LOCK TABLES `permission_groups` WRITE;
/*!40000 ALTER TABLE `permission_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(6,2),(6,3),(6,4),(6,5),(7,1),(7,2),(7,3),(7,4),(7,5),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(16,3),(16,4),(16,5),(17,1),(17,3),(17,4),(17,5),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(26,2),(26,3),(26,4),(26,5),(27,1),(27,2),(27,3),(27,4),(27,5),(28,1),(29,1),(30,1),(31,1),(31,2),(31,3),(31,4),(31,5),(32,1),(32,2),(32,3),(32,4),(32,5),(33,1),(34,1),(35,1),(36,1),(36,2),(36,3),(36,4),(36,5),(37,1),(37,2),(37,3),(37,4),(37,5),(38,1),(39,1),(40,1),(41,1),(42,1),(42,2),(42,3),(42,4),(42,5),(43,1),(43,2),(43,3),(43,4),(43,5),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(63,8),(63,9),(64,1),(64,8),(64,9),(65,1),(65,8),(65,9),(66,1),(66,8),(66,9),(67,1),(67,8),(67,9),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(2,'browse_bread',NULL,'2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(3,'browse_database',NULL,'2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(4,'browse_media',NULL,'2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(5,'browse_compass',NULL,'2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(6,'browse_menus','menus','2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(7,'read_menus','menus','2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(8,'edit_menus','menus','2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(9,'add_menus','menus','2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(10,'delete_menus','menus','2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(11,'browse_roles','roles','2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(12,'read_roles','roles','2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(13,'edit_roles','roles','2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(14,'add_roles','roles','2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(15,'delete_roles','roles','2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(16,'browse_users','users','2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(17,'read_users','users','2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(18,'edit_users','users','2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(19,'add_users','users','2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(20,'delete_users','users','2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(21,'browse_settings','settings','2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(22,'read_settings','settings','2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(23,'edit_settings','settings','2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(24,'add_settings','settings','2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(25,'delete_settings','settings','2018-06-22 20:15:45','2018-06-22 20:15:45',NULL),(26,'browse_categories','categories','2018-06-22 20:15:46','2018-06-22 20:15:46',NULL),(27,'read_categories','categories','2018-06-22 20:15:46','2018-06-22 20:15:46',NULL),(28,'edit_categories','categories','2018-06-22 20:15:46','2018-06-22 20:15:46',NULL),(29,'add_categories','categories','2018-06-22 20:15:46','2018-06-22 20:15:46',NULL),(30,'delete_categories','categories','2018-06-22 20:15:46','2018-06-22 20:15:46',NULL),(31,'browse_posts','posts','2018-06-22 20:15:46','2018-06-22 20:15:46',NULL),(32,'read_posts','posts','2018-06-22 20:15:46','2018-06-22 20:15:46',NULL),(33,'edit_posts','posts','2018-06-22 20:15:46','2018-06-22 20:15:46',NULL),(34,'add_posts','posts','2018-06-22 20:15:46','2018-06-22 20:15:46',NULL),(35,'delete_posts','posts','2018-06-22 20:15:46','2018-06-22 20:15:46',NULL),(36,'browse_pages','pages','2018-06-22 20:15:46','2018-06-22 20:15:46',NULL),(37,'read_pages','pages','2018-06-22 20:15:46','2018-06-22 20:15:46',NULL),(38,'edit_pages','pages','2018-06-22 20:15:46','2018-06-22 20:15:46',NULL),(39,'add_pages','pages','2018-06-22 20:15:46','2018-06-22 20:15:46',NULL),(40,'delete_pages','pages','2018-06-22 20:15:46','2018-06-22 20:15:46',NULL),(41,'browse_hooks',NULL,'2018-06-22 20:15:46','2018-06-22 20:15:46',NULL),(42,'browse_announcements','announcements','2018-05-20 21:08:14','2018-05-20 21:08:14',NULL),(43,'read_announcements','announcements','2018-05-20 21:08:14','2018-05-20 21:08:14',NULL),(44,'edit_announcements','announcements','2018-05-20 21:08:14','2018-05-20 21:08:14',NULL),(45,'add_announcements','announcements','2018-05-20 21:08:14','2018-05-20 21:08:14',NULL),(46,'delete_announcements','announcements','2018-05-20 21:08:14','2018-05-20 21:08:14',NULL),(47,'browse_themes','admin','2017-11-21 16:31:00','2017-11-21 16:31:00',NULL),(48,'browse_hooks','hooks','2018-06-22 13:55:03','2018-06-22 13:55:03',NULL),(49,'read_hooks','hooks','2018-06-22 13:55:03','2018-06-22 13:55:03',NULL),(50,'edit_hooks','hooks','2018-06-22 13:55:03','2018-06-22 13:55:03',NULL),(51,'add_hooks','hooks','2018-06-22 13:55:03','2018-06-22 13:55:03',NULL),(52,'delete_hooks','hooks','2018-06-22 13:55:03','2018-06-22 13:55:03',NULL),(53,'browse_plans','plans','2018-07-03 04:50:28','2018-07-03 04:50:28',NULL),(54,'read_plans','plans','2018-07-03 04:50:28','2018-07-03 04:50:28',NULL),(55,'edit_plans','plans','2018-07-03 04:50:28','2018-07-03 04:50:28',NULL),(56,'add_plans','plans','2018-07-03 04:50:28','2018-07-03 04:50:28',NULL),(57,'delete_plans','plans','2018-07-03 04:50:28','2018-07-03 04:50:28',NULL),(58,'browse_translations','translations','2021-10-26 04:20:17','2021-10-26 04:20:17',NULL),(59,'read_translations','translations','2021-10-26 04:20:17','2021-10-26 04:20:17',NULL),(60,'edit_translations','translations','2021-10-26 04:20:17','2021-10-26 04:20:17',NULL),(61,'add_translations','translations','2021-10-26 04:20:17','2021-10-26 04:20:17',NULL),(62,'delete_translations','translations','2021-10-26 04:20:17','2021-10-26 04:20:17',NULL),(63,'browse_servicios','servicios','2021-11-01 04:54:45','2021-11-01 04:54:45',NULL),(64,'read_servicios','servicios','2021-11-01 04:54:45','2021-11-01 04:54:45',NULL),(65,'edit_servicios','servicios','2021-11-01 04:54:45','2021-11-01 04:54:45',NULL),(66,'add_servicios','servicios','2021-11-01 04:54:45','2021-11-01 04:54:45',NULL),(67,'delete_servicios','servicios','2021-11-01 04:54:45','2021-11-01 04:54:45',NULL),(68,'browse_caracteristicas','caracteristicas','2021-11-05 03:18:17','2021-11-05 03:18:17',NULL),(69,'read_caracteristicas','caracteristicas','2021-11-05 03:18:17','2021-11-05 03:18:17',NULL),(70,'edit_caracteristicas','caracteristicas','2021-11-05 03:18:17','2021-11-05 03:18:17',NULL),(71,'add_caracteristicas','caracteristicas','2021-11-05 03:18:17','2021-11-05 03:18:17',NULL),(72,'delete_caracteristicas','caracteristicas','2021-11-05 03:18:17','2021-11-05 03:18:17',NULL),(73,'browse_proveedores','proveedores','2021-11-05 03:23:07','2021-11-05 03:23:07',NULL),(74,'read_proveedores','proveedores','2021-11-05 03:23:07','2021-11-05 03:23:07',NULL),(75,'edit_proveedores','proveedores','2021-11-05 03:23:07','2021-11-05 03:23:07',NULL),(76,'add_proveedores','proveedores','2021-11-05 03:23:07','2021-11-05 03:23:07',NULL),(77,'delete_proveedores','proveedores','2021-11-05 03:23:07','2021-11-05 03:23:07',NULL),(78,'browse_acciones','acciones','2021-11-05 03:42:59','2021-11-05 03:42:59',NULL),(79,'read_acciones','acciones','2021-11-05 03:42:59','2021-11-05 03:42:59',NULL),(80,'edit_acciones','acciones','2021-11-05 03:42:59','2021-11-05 03:42:59',NULL),(81,'add_acciones','acciones','2021-11-05 03:42:59','2021-11-05 03:42:59',NULL),(82,'delete_acciones','acciones','2021-11-05 03:42:59','2021-11-05 03:42:59',NULL),(83,'browse_beneficiarios','beneficiarios','2021-11-08 04:09:14','2021-11-08 04:09:14',NULL),(84,'read_beneficiarios','beneficiarios','2021-11-08 04:09:14','2021-11-08 04:09:14',NULL),(85,'edit_beneficiarios','beneficiarios','2021-11-08 04:09:14','2021-11-08 04:09:14',NULL),(86,'add_beneficiarios','beneficiarios','2021-11-08 04:09:14','2021-11-08 04:09:14',NULL),(87,'delete_beneficiarios','beneficiarios','2021-11-08 04:09:14','2021-11-08 04:09:14',NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plans`
--

DROP TABLE IF EXISTS `plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plans` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `features` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `role_id` bigint unsigned NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trial_days` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `periodo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'al año',
  `orden` int DEFAULT NULL,
  `icono` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plans_slug_unique` (`slug`),
  UNIQUE KEY `plans_orden_unique` (`orden`),
  KEY `plans_role_id_foreign` (`role_id`),
  CONSTRAINT `plans_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plans`
--

LOCK TABLES `plans` WRITE;
/*!40000 ALTER TABLE `plans` DISABLE KEYS */;
INSERT INTO `plans` VALUES (1,'GANA TIEMPO','basic','GANA TIEMPO (70 años)','Basic Feature Example 1, Basic Feature Example 2, Basic Feature Example 3, Basic Feature Example 4','18629',3,0,'199',0,'2018-07-03 05:03:56','2021-11-12 05:46:41','al año',4,NULL),(2,'GANA PLUS','premium','GANA PLUS   hasta 70 años','Premium Feature Example 1, Premium Feature Example 2, Premium Feature Example 3, Premium Feature Example 4','18630',5,1,'379',0,'2018-07-03 16:29:46','2021-11-12 05:46:29','al año',3,NULL),(3,'GANA VIAJERO','pro','GANA VIAJERO (ESTANCIA DE 3 A 6 MESES, 75 años (Muerte accidental de  18 a 74 años), Mundial/Excepto país de  residencia)','Pro Feature Example 1, Pro Feature Example 2, Pro Feature Example 3, Pro Feature Example 4','18631',4,0,'449',0,'2018-07-03 16:30:43','2021-11-12 05:46:25','al mes',2,NULL),(4,'GANA PAISANO','gana-paisano','GANA PAISANO (Más de 1 año de estancia) EUA (75 años), México (70 años)','1,2,3,4,','18632',2,0,'399',0,'2021-10-30 17:50:17','2021-11-12 05:46:20','al año',1,NULL);
/*!40000 ALTER TABLE `plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (5,1,1,'Best ways to market your application','Best ways to market your application',NULL,'<p>There are many different ways to market your application. First, let\'s start off at the beginning and then we will get more in-depth. You\'ll want to discover your target audience and after that, you\'ll want to run some ads.</p>\n<p>Let\'s not complicate things here, if you build a good product, you are going to have users. But you will need to let your users know where to find you. This is where social media and ads come in to play. You\'ll need to boast about your product and your app. If it\'s something that you really believe in, the odds are others will too.</p>\n<blockquote>\n<p>You may have a need to only want to make money from your application, but if your application can help others achieve a goal and you can make money from it too, you have a gold-mine.</p>\n</blockquote>\n<p>Some more info on your awesome post here. After this sentence, it\'s just going to be a little bit of jibberish. But you get a general idea. You\'ll want to blog about stuff to get your customers interested in your application. With leverage existing reliable initiatives before leveraged ideas. Rapidiously develops equity invested expertise rather than enabled channels. Monotonectally intermediate distinctive networks before highly efficient core competencies.</p>\n<h2>Seamlessly promote flexible growth strategies.</h2>\n<p><img src=\"/storage/posts/March2018/blog-1.jpg\" alt=\"blog\" /></p><p> Dramatically harness extensive value through the fully researched human capital. Seamlessly transition premium schemas vis-a-vis efficient convergence. Intrinsically build competitive e-commerce with cross-unit information. Collaboratively e-enable real-time processes before extensive technology. Authoritatively fabricate efficient metrics through intuitive quality vectors.</p>\n<p>Collaboratively deliver optimal vortals whereas backward-compatible models. Globally syndicate diverse leadership rather than high-payoff experiences. Uniquely pontificate unique metrics for cross-media human capital. Completely procrastinate professional collaboration and idea-sharing rather than 24/365 paradigms. Phosfluorescently initiates multimedia based outsourcing for interoperable benefits.</p>\n<h3>Seamlessly promote flexible growth strategies.</h3>\n<p>Progressively leverage other\'s e-business functionalities through corporate e-markets. Holistic repurpose timely systems via seamless total linkage. Appropriately maximize impactful \"outside the box\" thinking vis-a-vis visionary value. Authoritatively deploy interdependent technology through process-centric \"outside the box\" thinking. Interactively negotiate pandemic internal or \"organic\" sources whereas competitive relationships.</p>\n<figure><img src=\"/storage/posts/March2018/blog-2.jpg\" alt=\"wide\" />\n<figcaption>Keep working until you find success.</figcaption>\n</figure>\n<p>Enthusiastically deliver viral potentialities through multidisciplinary products. Synergistically plagiarize client-focused partnerships for adaptive applications. Seamlessly morph process-centric synergy whereas bricks-and-clicks deliverables. Continually disintermediate holistic action items without distinctive customer service. Enthusiastically seize enterprise web-readiness without effective schemas.</p>\n<h4>Seamlessly promote flexible growth strategies.</h4>\n<p>Assertively restore installed base data before sustainable platforms. Globally recapitalize orthogonal systems via clicks-and-mortar web services. Efficiently grow visionary action items through collaborative e-commerce. Efficiently architect highly efficient \"outside the box\" thinking before customer directed infomediaries. Proactively mesh holistic human capital rather than exceptional niches.</p>\n<p>Intrinsically create innovative value and pandemic resources. Progressively productize turnkey e-markets and economically sound synergy. Objectively supply turnkey imperatives vis-a-vis high standards in outsourcing. Dynamically exploit unique imperatives with dynamic systems. Appropriately formulate technically sound users and excellent expertise.</p>\n<p>Competently redefine long-term high-impact relationships rather than effective metrics. Distinctively maintain impactful platforms after strategic imperatives. Intrinsically evolve mission-critical deliverables after multimedia based e-business. Interactively mesh cooperative benefits whereas distributed process improvements. Progressively monetize an expanded array of e-services whereas.</p>','posts/March2018/h86hSqPMkT9oU8pjcrSu.jpg','best-ways-to-market-your-application','Find out the best ways to market your application in this article.','market, saas, market your app','PUBLISHED',0,'2018-03-26 02:55:01','2018-03-26 02:13:05'),(6,1,1,'Achieving your Dreams','Achieving your Dreams',NULL,'<p>What can be said about achieving your dreams? <br>Well... It\'s a good thing, and it\'s probably something you\'re dreaming of. Oh yeah, when you create an app and a product that you enjoy working on... You\'ll be pretty happy and your dreams will probably come true. Cool, right?</p>\n<p>I hope that you are ready for some cool stuff because there is some cool stuff right around the corner. By the time you\'ve reached the sky, you\'ll realize your true limits. That last sentence there... That was a little bit of jibberish, but I\'m trying to write about something cool. Bottom line is that Wave is going to help save you so much time.</p>\n<blockquote>\n<p>You may have a need to only want to make money from your application, but if your application can help others achieve a goal and you can make money from it too, you have a gold-mine.</p>\n</blockquote>\n<p>Some more info on your awesome post here. After this sentence, it\'s just going to be a little bit of jibberish. But you get a general idea. You\'ll want to blog about stuff to get your customers interested in your application. With leverage existing reliable initiatives before leveraged ideas. Rapidiously develops equity invested expertise rather than enabled channels. Monotonectally intermediate distinctive networks before highly efficient core competencies.</p>\n<h2>Seamlessly promote flexible growth strategies.</h2>\n<p><img src=\"/storage/posts/March2018/blog-1.jpg\" alt=\"blog\" /></p><p>Dramatically harness extensive value through the fully researched human capital. Seamlessly transition premium schemas vis-a-vis efficient convergence. Intrinsically build competitive e-commerce with cross-unit information. Collaboratively e-enable real-time processes before extensive technology. Authoritatively fabricate efficient metrics through intuitive quality vectors.</p>\n<p>Collaboratively deliver optimal vortals whereas backward-compatible models. Globally syndicate diverse leadership rather than high-payoff experiences. Uniquely pontificate unique metrics for cross-media human capital. Completely procrastinate professional collaboration and idea-sharing rather than 24/365 paradigms. Phosfluorescently initiates multimedia based outsourcing for interoperable benefits.</p>\n<h3>Seamlessly promote flexible growth strategies.</h3>\n<p>Progressively leverage other\'s e-business functionalities through corporate e-markets. Holistic repurpose timely systems via seamless total linkage. Appropriately maximize impactful \"outside the box\" thinking vis-a-vis visionary value. Authoritatively deploy interdependent technology through process-centric \"outside the box\" thinking. Interactively negotiate pandemic internal or \"organic\" sources whereas competitive relationships.</p>\n<figure><img src=\"/storage/posts/March2018/blog-2.jpg\" alt=\"wide\" />\n<figcaption>Keep working until you find success.</figcaption>\n</figure>\n<p>Enthusiastically deliver viral potentialities through multidisciplinary products. Synergistically plagiarize client-focused partnerships for adaptive applications. Seamlessly morph process-centric synergy whereas bricks-and-clicks deliverables. Continually disintermediate holistic action items without distinctive customer service. Enthusiastically seize enterprise web-readiness without effective schemas.</p>\n<h4>Seamlessly promote flexible growth strategies.</h4>\n<p>Assertively restore installed base data before sustainable platforms. Globally recapitalize orthogonal systems via clicks-and-mortar web services. Efficiently grow visionary action items through collaborative e-commerce. Efficiently architect highly efficient \"outside the box\" thinking before customer directed infomediaries. Proactively mesh holistic human capital rather than exceptional niches.</p>\n<p>Intrinsically create innovative value and pandemic resources. Progressively productize turnkey e-markets and economically sound synergy. Objectively supply turnkey imperatives vis-a-vis high standards in outsourcing. Dynamically exploit unique imperatives with dynamic systems. Appropriately formulate technically sound users and excellent expertise.</p>\n<p>Competently redefine long-term high-impact relationships rather than effective metrics. Distinctively maintain impactful platforms after strategic imperatives. Intrinsically evolve mission-critical deliverables after multimedia based e-business. Interactively mesh cooperative benefits whereas distributed process improvements. Progressively monetize an expanded array of e-services whereas.</p>','posts/March2018/rU26aWVsZ2zocWGSTE7J.jpg','achieving-your-dreams','In this post, you\'ll learn about achieving your dreams by building the SAAS app of your dreams','saas app, dreams','PUBLISHED',0,'2018-03-26 02:50:18','2018-03-26 02:15:18'),(7,1,1,'Building a solid foundation','Building a solid foundation',NULL,'<p>The foundation is one of the most important aspects. You\'ll want to make sure that you build your application on a solid foundation because this is where every other feature will grow on top of.</p>\n<p>If the foundation is unstable the rest of the application will be so as well. But a solid foundation will make mediocre features seem amazing. So, if you want to save yourself some time you will build your application on a solid foundation of cool features, awesome jumps, and killer waves... I don\'t know what this paragraph is about anymore.</p>\n<blockquote>\n<p>You may have a need to only want to make money from your application, but if your application can help others achieve a goal and you can make money from it too, you have a gold-mine.</p>\n</blockquote>\n<p>Some more info on your awesome post here. After this sentence, it\'s just going to be a little bit of jibberish. But you get a general idea. You\'ll want to blog about stuff to get your customers interested in your application. With leverage existing reliable initiatives before leveraged ideas. Rapidiously develops equity invested expertise rather than enabled channels. Monotonectally intermediate distinctive networks before highly efficient core competencies.</p>\n<h2>Seamlessly promote flexible growth strategies.</h2>\n<p><img src=\"/storage/posts/March2018/blog-1.jpg\" alt=\"blog\" /></p><p>Dramatically harness extensive value through the fully researched human capital. Seamlessly transition premium schemas vis-a-vis efficient convergence. Intrinsically build competitive e-commerce with cross-unit information. Collaboratively e-enable real-time processes before extensive technology. Authoritatively fabricate efficient metrics through intuitive quality vectors.</p>\n<p>Collaboratively deliver optimal vortals whereas backward-compatible models. Globally syndicate diverse leadership rather than high-payoff experiences. Uniquely pontificate unique metrics for cross-media human capital. Completely procrastinate professional collaboration and idea-sharing rather than 24/365 paradigms. Phosfluorescently initiates multimedia based outsourcing for interoperable benefits.</p>\n<h3>Seamlessly promote flexible growth strategies.</h3>\n<p>Progressively leverage other\'s e-business functionalities through corporate e-markets. Holistic repurpose timely systems via seamless total linkage. Appropriately maximize impactful \"outside the box\" thinking vis-a-vis visionary value. Authoritatively deploy interdependent technology through process-centric \"outside the box\" thinking. Interactively negotiate pandemic internal or \"organic\" sources whereas competitive relationships.</p>\n<figure><img src=\"/storage/posts/March2018/blog-2.jpg\" alt=\"wide\" />\n<figcaption>Keep working until you find success.</figcaption>\n</figure>\n<p>Enthusiastically deliver viral potentialities through multidisciplinary products. Synergistically plagiarize client-focused partnerships for adaptive applications. Seamlessly morph process-centric synergy whereas bricks-and-clicks deliverables. Continually disintermediate holistic action items without distinctive customer service. Enthusiastically seize enterprise web-readiness without effective schemas.</p>\n<h4>Seamlessly promote flexible growth strategies.</h4>\n<p>Assertively restore installed base data before sustainable platforms. Globally recapitalize orthogonal systems via clicks-and-mortar web services. Efficiently grow visionary action items through collaborative e-commerce. Efficiently architect highly efficient \"outside the box\" thinking before customer directed infomediaries. Proactively mesh holistic human capital rather than exceptional niches.</p>\n<p>Intrinsically create innovative value and pandemic resources. Progressively productize turnkey e-markets and economically sound synergy. Objectively supply turnkey imperatives vis-a-vis high standards in outsourcing. Dynamically exploit unique imperatives with dynamic systems. Appropriately formulate technically sound users and excellent expertise.</p>\n<p>Competently redefine long-term high-impact relationships rather than effective metrics. Distinctively maintain impactful platforms after strategic imperatives. Intrinsically evolve mission-critical deliverables after multimedia based e-business. Interactively mesh cooperative benefits whereas distributed process improvements. Progressively monetize an expanded array of e-services whereas.&nbsp;</p>','posts/March2018/4vI1gzsAvMZ30yfDIe67.jpg','building-a-solid-foundation','Building a solid foundation for your application is super important. Read on below.','foundation, app foundation','PUBLISHED',0,'2018-03-26 02:24:43','2018-03-26 02:24:43'),(8,1,2,'Finding the solution that fits for you','Finding the solution that fits for you',NULL,'<p>There is a fit for each person. Depending on the service you may want to focus on what each person needs. When you find this you\'ll be able to segregate your application to fit each person\'s needs.</p>\n<p>This is really just an example post. I could write some stuff about how this and that, but it would probably only be information about this and that. Who am I kidding? This really isn\'t going to make some sense, but thanks for still reading. Are you still reading this article? That\'s awesome. Thanks for being interested.</p>\n<blockquote>\n<p>You may have a need to only want to make money from your application, but if your application can help others achieve a goal and you can make money from it too, you have a gold-mine.</p>\n</blockquote>\n<p>Some more info on your awesome post here. After this sentence, it\'s just going to be a little bit of jibberish. But you get a general idea. You\'ll want to blog about stuff to get your customers interested in your application. With leverage existing reliable initiatives before leveraged ideas. Rapidiously develops equity invested expertise rather than enabled channels. Monotonectally intermediate distinctive networks before highly efficient core competencies.</p>\n<h2>Seamlessly promote flexible growth strategies.</h2>\n<p><img src=\"/storage/posts/March2018/blog-1.jpg\" alt=\"blog\" /></p><p>Dramatically harness extensive value through the fully researched human capital. Seamlessly transition premium schemas vis-a-vis efficient convergence. Intrinsically build competitive e-commerce with cross-unit information. Collaboratively e-enable real-time processes before extensive technology. Authoritatively fabricate efficient metrics through intuitive quality vectors.</p>\n<p>Collaboratively deliver optimal vortals whereas backward-compatible models. Globally syndicate diverse leadership rather than high-payoff experiences. Uniquely pontificate unique metrics for cross-media human capital. Completely procrastinate professional collaboration and idea-sharing rather than 24/365 paradigms. Phosfluorescently initiates multimedia based outsourcing for interoperable benefits.</p>\n<h3>Seamlessly promote flexible growth strategies.</h3>\n<p>Progressively leverage other\'s e-business functionalities through corporate e-markets. Holistic repurpose timely systems via seamless total linkage. Appropriately maximize impactful \"outside the box\" thinking vis-a-vis visionary value. Authoritatively deploy interdependent technology through process-centric \"outside the box\" thinking. Interactively negotiate pandemic internal or \"organic\" sources whereas competitive relationships.</p>\n<figure><img src=\"/storage/posts/March2018/blog-2.jpg\" alt=\"wide\" />\n<figcaption>Keep working until you find success.</figcaption>\n</figure>\n<p>Enthusiastically deliver viral potentialities through multidisciplinary products. Synergistically plagiarize client-focused partnerships for adaptive applications. Seamlessly morph process-centric synergy whereas bricks-and-clicks deliverables. Continually disintermediate holistic action items without distinctive customer service. Enthusiastically seize enterprise web-readiness without effective schemas.</p>\n<h4>Seamlessly promote flexible growth strategies.</h4>\n<p>Assertively restore installed base data before sustainable platforms. Globally recapitalize orthogonal systems via clicks-and-mortar web services. Efficiently grow visionary action items through collaborative e-commerce. Efficiently architect highly efficient \"outside the box\" thinking before customer directed infomediaries. Proactively mesh holistic human capital rather than exceptional niches.</p>\n<p>Intrinsically create innovative value and pandemic resources. Progressively productize turnkey e-markets and economically sound synergy. Objectively supply turnkey imperatives vis-a-vis high standards in outsourcing. Dynamically exploit unique imperatives with dynamic systems. Appropriately formulate technically sound users and excellent expertise.</p>\n<p>Competently redefine long-term high-impact relationships rather than effective metrics. Distinctively maintain impactful platforms after strategic imperatives. Intrinsically evolve mission-critical deliverables after multimedia based e-business. Interactively mesh cooperative benefits whereas distributed process improvements. Progressively monetize an expanded array of e-services whereas.&nbsp;</p>','posts/March2018/hWOT5yqNmzCnLhVWXB2u.jpg','finding-the-solution-that-fits-for-you','How to build an app and find a solution that fits each users needs','solution, app solution','PUBLISHED',0,'2018-03-26 02:42:44','2018-03-26 02:42:44'),(9,1,2,'Creating something useful','Creating something useful',NULL,'<p>It\'s not enough nowadays to create something you want, instead you\'ll need to focus on what people need. If you find a need for something that isn\'t available... You should create it. Odds are someone will find it useful as well.</p>\n<p>When you focus your energy on building something that you are passionate about it\'s going to show. Your customers will buy because it\'s a great application, but also because they believe in what you are trying to achieve. So, continue to focus on making something that people need and find useful.</p>\n<blockquote>\n<p>You may have a need to only want to make money from your application, but if your application can help others achieve a goal and you can make money from it too, you have a gold-mine.</p>\n</blockquote>\n<p>Some more info on your awesome post here. After this sentence, it\'s just going to be a little bit of jibberish. But you get a general idea. You\'ll want to blog about stuff to get your customers interested in your application. With leverage existing reliable initiatives before leveraged ideas. Rapidiously develops equity invested expertise rather than enabled channels. Monotonectally intermediate distinctive networks before highly efficient core competencies.</p>\n<h2>Seamlessly promote flexible growth strategies.</h2>\n<p><img src=\"/storage/posts/March2018/blog-1.jpg\" alt=\"blog\" /></p><p>Dramatically harness extensive value through the fully researched human capital. Seamlessly transition premium schemas vis-a-vis efficient convergence. Intrinsically build competitive e-commerce with cross-unit information. Collaboratively e-enable real-time processes before extensive technology. Authoritatively fabricate efficient metrics through intuitive quality vectors.</p>\n<p>Collaboratively deliver optimal vortals whereas backward-compatible models. Globally syndicate diverse leadership rather than high-payoff experiences. Uniquely pontificate unique metrics for cross-media human capital. Completely procrastinate professional collaboration and idea-sharing rather than 24/365 paradigms. Phosfluorescently initiates multimedia based outsourcing for interoperable benefits.</p>\n<h3>Seamlessly promote flexible growth strategies.</h3>\n<p>Progressively leverage other\'s e-business functionalities through corporate e-markets. Holistic repurpose timely systems via seamless total linkage. Appropriately maximize impactful \"outside the box\" thinking vis-a-vis visionary value. Authoritatively deploy interdependent technology through process-centric \"outside the box\" thinking. Interactively negotiate pandemic internal or \"organic\" sources whereas competitive relationships.</p>\n<figure><img src=\"/storage/posts/March2018/blog-2.jpg\" alt=\"wide\" />\n<figcaption>Keep working until you find success.</figcaption>\n</figure>\n<p>Enthusiastically deliver viral potentialities through multidisciplinary products. Synergistically plagiarize client-focused partnerships for adaptive applications. Seamlessly morph process-centric synergy whereas bricks-and-clicks deliverables. Continually disintermediate holistic action items without distinctive customer service. Enthusiastically seize enterprise web-readiness without effective schemas.</p>\n<h4>Seamlessly promote flexible growth strategies.</h4>\n<p>Assertively restore installed base data before sustainable platforms. Globally recapitalize orthogonal systems via clicks-and-mortar web services. Efficiently grow visionary action items through collaborative e-commerce. Efficiently architect highly efficient \"outside the box\" thinking before customer directed infomediaries. Proactively mesh holistic human capital rather than exceptional niches.</p>\n<p>Intrinsically create innovative value and pandemic resources. Progressively productize turnkey e-markets and economically sound synergy. Objectively supply turnkey imperatives vis-a-vis high standards in outsourcing. Dynamically exploit unique imperatives with dynamic systems. Appropriately formulate technically sound users and excellent expertise.</p>\n<p>Competently redefine long-term high-impact relationships rather than effective metrics. Distinctively maintain impactful platforms after strategic imperatives. Intrinsically evolve mission-critical deliverables after multimedia based e-business. Interactively mesh cooperative benefits whereas distributed process improvements. Progressively monetize an expanded array of e-services whereas.</p>','posts/March2018/weZwLLpaXnxyTR989iDk.jpg','creating-something-useful','Find out how to Create something useful','useful, create something useful','PUBLISHED',0,'2018-03-26 02:49:37','2018-03-26 02:56:38'),(10,1,1,'Never Stop Creating','Never Stop Creating',NULL,'<p>The reason why we are the way we are is... Because we are designed for a purpose. Some people are created to help or service, and others are created to... Well... Create. Are you a creator.</p>\n<p>If you have a passion for creating new things and bringing ideas to life. You\'ll want to save yourself some time by using Wave to build the foundation. Wave has so many built-in features including Billing, User Profiles, User Settings, an API, and so much more.</p>\n<blockquote>\n<p>You may have a need to only want to make money from your application, but if your application can help others achieve a goal and you can make money from it too, you have a gold-mine.</p>\n</blockquote>\n<p>Some more info on your awesome post here. After this sentence, it\'s just going to be a little bit of jibberish. But you get a general idea. You\'ll want to blog about stuff to get your customers interested in your application. With leverage existing reliable initiatives before leveraged ideas. Rapidiously develops equity invested expertise rather than enabled channels. Monotonectally intermediate distinctive networks before highly efficient core competencies.</p>\n<h2>Seamlessly promote flexible growth strategies.</h2>\n<p><img src=\"/storage/posts/March2018/blog-1.jpg\" alt=\"blog\" /></p><p>Dramatically harness extensive value through the fully researched human capital. Seamlessly transition premium schemas vis-a-vis efficient convergence. Intrinsically build competitive e-commerce with cross-unit information. Collaboratively e-enable real-time processes before extensive technology. Authoritatively fabricate efficient metrics through intuitive quality vectors.</p>\n<p>Collaboratively deliver optimal vortals whereas backward-compatible models. Globally syndicate diverse leadership rather than high-payoff experiences. Uniquely pontificate unique metrics for cross-media human capital. Completely procrastinate professional collaboration and idea-sharing rather than 24/365 paradigms. Phosfluorescently initiates multimedia based outsourcing for interoperable benefits.</p>\n<h3>Seamlessly promote flexible growth strategies.</h3>\n<p>Progressively leverage other\'s e-business functionalities through corporate e-markets. Holistic repurpose timely systems via seamless total linkage. Appropriately maximize impactful \"outside the box\" thinking vis-a-vis visionary value. Authoritatively deploy interdependent technology through process-centric \"outside the box\" thinking. Interactively negotiate pandemic internal or \"organic\" sources whereas competitive relationships.</p>\n<figure><img src=\"/storage/posts/March2018/blog-2.jpg\" alt=\"wide\" />\n<figcaption>Keep working until you find success.</figcaption>\n</figure>\n<p>Enthusiastically deliver viral potentialities through multidisciplinary products. Synergistically plagiarize client-focused partnerships for adaptive applications. Seamlessly morph process-centric synergy whereas bricks-and-clicks deliverables. Continually disintermediate holistic action items without distinctive customer service. Enthusiastically seize enterprise web-readiness without effective schemas.</p>\n<h4>Seamlessly promote flexible growth strategies.</h4>\n<p>Assertively restore installed base data before sustainable platforms. Globally recapitalize orthogonal systems via clicks-and-mortar web services. Efficiently grow visionary action items through collaborative e-commerce. Efficiently architect highly efficient \"outside the box\" thinking before customer directed infomediaries. Proactively mesh holistic human capital rather than exceptional niches.</p>\n<p>Intrinsically create innovative value and pandemic resources. Progressively productize turnkey e-markets and economically sound synergy. Objectively supply turnkey imperatives vis-a-vis high standards in outsourcing. Dynamically exploit unique imperatives with dynamic systems. Appropriately formulate technically sound users and excellent expertise.</p>\n<p>Competently redefine long-term high-impact relationships rather than effective metrics. Distinctively maintain impactful platforms after strategic imperatives. Intrinsically evolve mission-critical deliverables after multimedia based e-business. Interactively mesh cooperative benefits whereas distributed process improvements. Progressively monetize an expanded array of e-services whereas.</p>','posts/March2018/K804BvnOehlLao0XmI08.jpg','never-stop-creating','In this article you\'ll learn how important it is to never stop creating','creating, never stop','PUBLISHED',0,'2018-03-26 02:08:02','2018-06-28 06:14:31');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` text COLLATE utf8mb4_unicode_ci,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Mapfre','Mapfre','2021-11-05 03:26:00','2021-11-05 04:33:08'),(2,'SegAsis','SegAsis','2021-11-05 03:28:00','2021-11-05 04:33:30'),(4,'Continental','sodnsod','2021-11-09 01:06:49','2021-11-09 01:06:49');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin User','2017-11-21 16:23:22','2017-11-21 16:23:22'),(2,'gana-paisano','GANA PAISANO','2017-11-21 16:23:22','2021-10-30 17:52:34'),(3,'gana-tiempo','GANA TIEMPO','2018-07-03 05:03:21','2021-10-30 17:51:28'),(4,'gana-viajero','GANA VIAJERO','2018-07-03 16:27:16','2021-10-30 17:52:14'),(5,'gana-plus','GANA PLUS','2018-07-03 16:28:42','2021-10-30 17:51:53'),(6,'cancelled','Cancelled User','2018-07-03 16:28:42','2018-07-03 17:28:32'),(7,'trial','trial','2021-10-31 00:39:46','2021-10-31 00:39:46'),(8,'nacional','Nacional','2021-11-05 06:11:27','2021-11-06 21:50:52'),(9,'extranjero','Extranjero','2021-11-05 06:11:41','2021-11-06 21:50:43');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `titulo` text COLLATE utf8mb4_unicode_ci,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `created_at` text COLLATE utf8mb4_unicode_ci,
  `updated_at` text COLLATE utf8mb4_unicode_ci,
  `plan_id` bigint DEFAULT NULL,
  `orden` int DEFAULT NULL,
  `icono` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,'COBERTURA DE VIDA','COBERTURA DE VIDA (gana tiempo)',NULL,'2021-11-12 06:01:06',1,3,NULL),(2,'CONSULTAS MÉDICAS','CONSULTAS MÉDICAS (gana tiempo)',NULL,'2021-11-12 06:01:15',1,4,NULL),(3,'test','test','2021-11-05 04:05:10','2021-11-12 06:01:03',2,2,NULL),(4,'APOYOS MÉDICOS','APOYOS MÉDICOS','2021-11-09 01:01:48','2021-11-12 06:01:00',1,1,NULL);
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Members GANA','','text',1,'Site'),(2,'site.description','Site Description','Member´s GANA, es la mejor integradora de productos y servicios en México','','text',2,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','1234567890','','text',4,'Site'),(6,'admin.title','Admin Title','Members GANA Admin','','text',1,'Admin'),(7,'admin.description','Admin Description','Member´s GANA, es la mejor integradora de productos y servicios en México','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','1234567890','','text',1,'Admin'),(11,'site.favicon','Favicon','',NULL,'image',6,'Site'),(12,'auth.dashboard_redirect','Homepage Redirect to Dashboard if Logged in','1',NULL,'checkbox',7,'Auth'),(13,'auth.email_or_username','Users Login with Email or Username','email','{\n\"default\" : \"email\",\n\"options\" : {\n\"email\": \"Email Address\",\n\"username\": \"Username\"\n}\n}','select_dropdown',8,'Auth'),(14,'auth.username_in_registration','Username when Registering','yes','{\n\"default\" : \"yes\",\n\"options\" : {\n\"yes\": \"Yes, Include the Username Field when Registering\",\n\"no\": \"No, Have it automatically generated\"\n}\n}','select_dropdown',9,'Auth'),(15,'auth.verify_email','Verify Email during Sign Up','0',NULL,'checkbox',10,'Auth'),(16,'billing.card_upfront','Require Credit Card Up Front','1','{\n\"on\" : \"Yes\",\n\"off\" : \"No\",\n\"checked\" : false\n}','checkbox',11,'Billing'),(17,'billing.trial_days','Trial Days when No Credit Card Up Front','-1',NULL,'text',12,'Billing');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theme_options`
--

DROP TABLE IF EXISTS `theme_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theme_options` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `theme_id` int unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `voyager_theme_options_theme_id_index` (`theme_id`),
  CONSTRAINT `theme_options_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theme_options`
--

LOCK TABLES `theme_options` WRITE;
/*!40000 ALTER TABLE `theme_options` DISABLE KEYS */;
INSERT INTO `theme_options` VALUES (17,1,'logo','themes/October2021/OoIkoOuHqYWmkgMiyW6B.jpg','2017-11-22 16:54:46','2021-10-26 03:40:09'),(18,1,'home_headline','Bienvenidos Member´s GANA','2017-11-25 17:31:45','2021-10-26 03:41:01'),(19,1,'home_subheadline','Start crafting your next great idea.','2017-11-25 17:31:45','2017-11-26 07:11:47'),(20,1,'home_description','Accede a mejores servicios desde tu celular','2017-11-25 17:31:45','2021-10-26 03:41:01'),(21,1,'home_cta','Registro','2017-11-25 20:02:29','2021-10-26 03:41:01'),(22,1,'home_cta_url','/register','2017-11-25 20:09:33','2017-11-26 16:12:41'),(23,1,'home_promo_image','themes/October2021/nhYC9XqkqzXhbF7WXB2E.jpg','2017-11-25 21:36:46','2021-10-26 03:41:09'),(24,1,'footer_logo','themes/October2021/7RRsWmJjGMXmaSYHjxRJ.png','2018-08-28 23:12:11','2021-10-26 03:40:09');
/*!40000 ALTER TABLE `theme_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `themes`
--

DROP TABLE IF EXISTS `themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `themes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `version` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `voyager_themes_folder_unique` (`folder`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `themes`
--

LOCK TABLES `themes` WRITE;
/*!40000 ALTER TABLE `themes` DISABLE KEYS */;
INSERT INTO `themes` VALUES (1,'Tailwind Theme','tailwind',1,'1.0','2020-08-23 08:06:45','2020-08-23 08:06:45');
/*!40000 ALTER TABLE `themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',1,'pt','Post','2017-11-21 16:23:23','2017-11-21 16:23:23'),(2,'data_types','display_name_singular',2,'pt','Página','2017-11-21 16:23:23','2017-11-21 16:23:23'),(3,'data_types','display_name_singular',3,'pt','Utilizador','2017-11-21 16:23:23','2017-11-21 16:23:23'),(4,'data_types','display_name_singular',4,'pt','Categoria','2017-11-21 16:23:23','2017-11-21 16:23:23'),(5,'data_types','display_name_singular',5,'pt','Menu','2017-11-21 16:23:23','2017-11-21 16:23:23'),(6,'data_types','display_name_singular',6,'pt','Função','2017-11-21 16:23:23','2017-11-21 16:23:23'),(7,'data_types','display_name_plural',1,'pt','Posts','2017-11-21 16:23:23','2017-11-21 16:23:23'),(8,'data_types','display_name_plural',2,'pt','Páginas','2017-11-21 16:23:23','2017-11-21 16:23:23'),(9,'data_types','display_name_plural',3,'pt','Utilizadores','2017-11-21 16:23:23','2017-11-21 16:23:23'),(10,'data_types','display_name_plural',4,'pt','Categorias','2017-11-21 16:23:23','2017-11-21 16:23:23'),(11,'data_types','display_name_plural',5,'pt','Menus','2017-11-21 16:23:23','2017-11-21 16:23:23'),(12,'data_types','display_name_plural',6,'pt','Funções','2017-11-21 16:23:23','2017-11-21 16:23:23'),(13,'categories','slug',1,'pt','categoria-1','2017-11-21 16:23:23','2017-11-21 16:23:23'),(14,'categories','name',1,'pt','Categoria 1','2017-11-21 16:23:23','2017-11-21 16:23:23'),(15,'categories','slug',2,'pt','categoria-2','2017-11-21 16:23:23','2017-11-21 16:23:23'),(16,'categories','name',2,'pt','Categoria 2','2017-11-21 16:23:23','2017-11-21 16:23:23'),(17,'pages','title',1,'pt','Olá Mundo','2017-11-21 16:23:23','2017-11-21 16:23:23'),(18,'pages','slug',1,'pt','ola-mundo','2017-11-21 16:23:23','2017-11-21 16:23:23'),(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2017-11-21 16:23:23','2017-11-21 16:23:23'),(20,'menu_items','title',1,'pt','Painel de Controle','2017-11-21 16:23:23','2017-11-21 16:23:23'),(21,'menu_items','title',2,'pt','Media','2017-11-21 16:23:23','2017-11-21 16:23:23'),(22,'menu_items','title',3,'pt','Publicações','2017-11-21 16:23:23','2017-11-21 16:23:23'),(23,'menu_items','title',4,'pt','Utilizadores','2017-11-21 16:23:23','2017-11-21 16:23:23'),(24,'menu_items','title',5,'pt','Categorias','2017-11-21 16:23:23','2017-11-21 16:23:23'),(25,'menu_items','title',6,'pt','Páginas','2017-11-21 16:23:23','2017-11-21 16:23:23'),(26,'menu_items','title',7,'pt','Funções','2017-11-21 16:23:23','2017-11-21 16:23:23'),(27,'menu_items','title',8,'pt','Ferramentas','2017-11-21 16:23:23','2017-11-21 16:23:23'),(28,'menu_items','title',9,'pt','Menus','2017-11-21 16:23:23','2017-11-21 16:23:23'),(29,'menu_items','title',10,'pt','Base de dados','2017-11-21 16:23:23','2017-11-21 16:23:23'),(30,'menu_items','title',13,'pt','Configurações','2017-11-21 16:23:23','2017-11-21 16:23:23'),(31,'menu_items','title',1,'en','Dashboard','2021-11-06 21:54:44','2021-11-06 21:54:44'),(33,'menu_items','title',43,'en','Directorio','2021-11-08 04:10:33','2021-11-08 04:10:33'),(34,'menu_items','title',44,'en','Empresas','2021-11-08 04:10:39','2021-11-08 04:10:39'),(35,'menu_items','title',49,'en','Membresias','2021-11-08 04:11:05','2021-11-08 04:11:05'),(36,'menu_items','title',48,'en','Cobranza','2021-11-08 04:11:27','2021-11-08 04:11:27'),(37,'menu_items','title',47,'en','Estados de Cuenta','2021-11-08 04:11:34','2021-11-08 04:11:34'),(38,'data_rows','display_name',147,'en','Id','2021-11-08 04:14:58','2021-11-08 04:14:58'),(39,'data_rows','display_name',148,'en','User Id','2021-11-08 04:14:58','2021-11-08 04:14:58'),(40,'data_rows','display_name',149,'en','Apellido Paterno','2021-11-08 04:14:58','2021-11-08 04:14:58'),(41,'data_rows','display_name',150,'en','Apellido Materno','2021-11-08 04:14:58','2021-11-08 04:14:58'),(42,'data_rows','display_name',151,'en','Nombres','2021-11-08 04:14:58','2021-11-08 04:14:58'),(43,'data_rows','display_name',152,'en','Parentesco','2021-11-08 04:14:58','2021-11-08 04:14:58'),(44,'data_rows','display_name',153,'en','Porcentaje','2021-11-08 04:14:58','2021-11-08 04:14:58'),(45,'data_rows','display_name',154,'en','Created At','2021-11-08 04:14:58','2021-11-08 04:14:58'),(46,'data_rows','display_name',155,'en','Updated At','2021-11-08 04:14:58','2021-11-08 04:14:58'),(47,'data_rows','display_name',156,'en','users','2021-11-08 04:14:58','2021-11-08 04:14:58'),(48,'data_types','display_name_singular',20,'en','Beneficiario','2021-11-08 04:14:58','2021-11-08 04:14:58'),(49,'data_types','display_name_plural',20,'en','Beneficiarios','2021-11-08 04:14:58','2021-11-08 04:14:58'),(50,'data_rows','display_name',26,'en','id','2021-11-08 04:19:53','2021-11-08 04:19:53'),(51,'data_rows','display_name',53,'en','role_id','2021-11-08 04:19:53','2021-11-08 04:19:53'),(52,'data_rows','display_name',27,'en','Nombre Completo','2021-11-08 04:19:53','2021-11-08 04:19:53'),(53,'data_rows','display_name',28,'en','Correo','2021-11-08 04:19:53','2021-11-08 04:19:53'),(54,'data_rows','display_name',34,'en','avatar','2021-11-08 04:19:53','2021-11-08 04:19:53'),(55,'data_rows','display_name',85,'en','Email Verified At','2021-11-08 04:19:53','2021-11-08 04:19:53'),(56,'data_rows','display_name',29,'en','password','2021-11-08 04:19:53','2021-11-08 04:19:53'),(57,'data_rows','display_name',31,'en','remember_token','2021-11-08 04:19:53','2021-11-08 04:19:53'),(58,'data_rows','display_name',61,'en','Settings','2021-11-08 04:19:53','2021-11-08 04:19:53'),(59,'data_rows','display_name',32,'en','Creado','2021-11-08 04:19:53','2021-11-08 04:19:53'),(60,'data_rows','display_name',33,'en','Modificado','2021-11-08 04:19:53','2021-11-08 04:19:53'),(61,'data_rows','display_name',54,'en','Username','2021-11-08 04:19:53','2021-11-08 04:19:53'),(62,'data_rows','display_name',86,'en','Stripe Id','2021-11-08 04:19:53','2021-11-08 04:19:53'),(63,'data_rows','display_name',87,'en','Card Brand','2021-11-08 04:19:53','2021-11-08 04:19:53'),(64,'data_rows','display_name',88,'en','Card Last Four','2021-11-08 04:19:53','2021-11-08 04:19:53'),(65,'data_rows','display_name',89,'en','Trial Ends At','2021-11-08 04:19:53','2021-11-08 04:19:53'),(66,'data_rows','display_name',90,'en','Verification Code','2021-11-08 04:19:53','2021-11-08 04:19:53'),(67,'data_rows','display_name',91,'en','Verified','2021-11-08 04:19:53','2021-11-08 04:19:53'),(68,'data_rows','display_name',92,'en','Localia','2021-11-08 04:19:53','2021-11-08 04:19:53'),(69,'data_rows','display_name',94,'en','Telefono','2021-11-08 04:19:53','2021-11-08 04:19:53'),(70,'data_rows','display_name',95,'en','Fecha Nacimiento','2021-11-08 04:19:53','2021-11-08 04:19:53'),(71,'data_rows','display_name',96,'en','Genero','2021-11-08 04:19:53','2021-11-08 04:19:53'),(72,'data_rows','display_name',97,'en','Estado Civil','2021-11-08 04:19:53','2021-11-08 04:19:53'),(73,'data_rows','display_name',98,'en','Identificacion Oficial','2021-11-08 04:19:53','2021-11-08 04:19:53'),(74,'data_rows','display_name',99,'en','RFC','2021-11-08 04:19:53','2021-11-08 04:19:53'),(75,'data_rows','display_name',100,'en','CURP','2021-11-08 04:19:53','2021-11-08 04:19:53'),(76,'data_rows','display_name',101,'en','Domicilio','2021-11-08 04:19:53','2021-11-08 04:19:53'),(77,'data_rows','display_name',102,'en','Localidad','2021-11-08 04:19:53','2021-11-08 04:19:53'),(78,'data_rows','display_name',103,'en','Municipi','2021-11-08 04:19:53','2021-11-08 04:19:53'),(79,'data_rows','display_name',104,'en','Estad','2021-11-08 04:19:53','2021-11-08 04:19:53'),(80,'data_rows','display_name',105,'en','Pais','2021-11-08 04:19:53','2021-11-08 04:19:53'),(81,'data_rows','display_name',106,'en','Fecha Registro','2021-11-08 04:19:53','2021-11-08 04:19:53'),(82,'data_rows','display_name',62,'en','Roles','2021-11-08 04:19:53','2021-11-08 04:19:53'),(83,'data_rows','display_name',30,'en','Role','2021-11-08 04:19:53','2021-11-08 04:19:53'),(84,'data_types','display_name_singular',3,'en','Miembro','2021-11-08 04:19:53','2021-11-08 04:19:53'),(85,'data_types','display_name_plural',3,'en','Miembros','2021-11-08 04:19:53','2021-11-08 04:19:53'),(86,'data_rows','display_name',157,'en','beneficiarios','2021-11-08 04:38:33','2021-11-08 04:38:33'),(87,'data_rows','display_name',64,'en','Id','2021-11-12 05:46:04','2021-11-12 05:46:04'),(88,'data_rows','display_name',65,'en','Nombre (Basic, Standard, Premium, etc)','2021-11-12 05:46:04','2021-11-12 05:46:04'),(89,'data_rows','display_name',107,'en','Slug','2021-11-12 05:46:04','2021-11-12 05:46:04'),(90,'data_rows','display_name',66,'en','Descripcion','2021-11-12 05:46:04','2021-11-12 05:46:04'),(91,'data_rows','display_name',67,'en','Caracteristicas','2021-11-12 05:46:04','2021-11-12 05:46:04'),(92,'data_rows','display_name',75,'en','Plan Id (paddle)','2021-11-12 05:46:04','2021-11-12 05:46:04'),(93,'data_rows','display_name',69,'en','Role Id','2021-11-12 05:46:04','2021-11-12 05:46:04'),(94,'data_rows','display_name',73,'en','Default (Make this the default plan)','2021-11-12 05:46:04','2021-11-12 05:46:04'),(95,'data_rows','display_name',74,'en','Precio (mostrado)','2021-11-12 05:46:04','2021-11-12 05:46:04'),(96,'data_rows','display_name',76,'en','Trial Days (If none, set to 0)','2021-11-12 05:46:04','2021-11-12 05:46:04'),(97,'data_rows','display_name',70,'en','Creado','2021-11-12 05:46:04','2021-11-12 05:46:04'),(98,'data_rows','display_name',71,'en','Actualizado','2021-11-12 05:46:04','2021-11-12 05:46:04'),(99,'data_rows','display_name',146,'en','Periodo','2021-11-12 05:46:04','2021-11-12 05:46:04'),(100,'data_rows','display_name',72,'en','Rol (role permissions for this plan)','2021-11-12 05:46:04','2021-11-12 05:46:04'),(101,'data_rows','display_name',118,'en','Servicios','2021-11-12 05:46:04','2021-11-12 05:46:04'),(102,'data_types','display_name_singular',8,'en','Paquete','2021-11-12 05:46:04','2021-11-12 05:46:04'),(103,'data_types','display_name_plural',8,'en','Paquetes','2021-11-12 05:46:04','2021-11-12 05:46:04'),(104,'data_rows','display_name',108,'en','Id','2021-11-12 06:00:32','2021-11-12 06:00:32'),(105,'data_rows','display_name',119,'en','Titulo','2021-11-12 06:00:32','2021-11-12 06:00:32'),(106,'data_rows','display_name',110,'en','Descripcion','2021-11-12 06:00:32','2021-11-12 06:00:32'),(107,'data_rows','display_name',115,'en','Created At','2021-11-12 06:00:32','2021-11-12 06:00:32'),(108,'data_rows','display_name',116,'en','Updated At','2021-11-12 06:00:32','2021-11-12 06:00:32'),(109,'data_rows','display_name',142,'en','Plan Id','2021-11-12 06:00:32','2021-11-12 06:00:32'),(110,'data_rows','display_name',141,'en','Plan','2021-11-12 06:00:32','2021-11-12 06:00:32'),(111,'data_types','display_name_singular',13,'en','Servicio','2021-11-12 06:00:32','2021-11-12 06:00:32'),(112,'data_types','display_name_plural',13,'en','Servicios','2021-11-12 06:00:32','2021-11-12 06:00:32'),(113,'data_rows','display_name',120,'en','Id','2021-11-12 06:04:12','2021-11-12 06:04:12'),(114,'data_rows','display_name',121,'en','Caracteristica','2021-11-12 06:04:12','2021-11-12 06:04:12'),(115,'data_rows','display_name',122,'en','Cobertura','2021-11-12 06:04:12','2021-11-12 06:04:12'),(116,'data_rows','display_name',123,'en','Alcance','2021-11-12 06:04:12','2021-11-12 06:04:12'),(117,'data_rows','display_name',143,'en','Servicio Id','2021-11-12 06:04:12','2021-11-12 06:04:12'),(118,'data_rows','display_name',125,'en','Created At','2021-11-12 06:04:12','2021-11-12 06:04:12'),(119,'data_rows','display_name',126,'en','Updated At','2021-11-12 06:04:12','2021-11-12 06:04:12'),(120,'data_rows','display_name',145,'en','Proveedor Id','2021-11-12 06:04:12','2021-11-12 06:04:12'),(121,'data_rows','display_name',132,'en','Servicio','2021-11-12 06:04:12','2021-11-12 06:04:12'),(122,'data_rows','display_name',144,'en','Proveedor','2021-11-12 06:04:12','2021-11-12 06:04:12'),(123,'data_types','display_name_singular',14,'en','Caracteristica','2021-11-12 06:04:13','2021-11-12 06:04:13'),(124,'data_types','display_name_plural',14,'en','Caracteristicas','2021-11-12 06:04:13','2021-11-12 06:04:13'),(125,'data_rows','display_name',160,'en','Orden','2021-11-12 06:04:55','2021-11-12 06:04:55'),(126,'data_rows','display_name',133,'en','Id','2021-11-12 06:07:54','2021-11-12 06:07:54'),(127,'data_rows','display_name',134,'en','Label','2021-11-12 06:07:54','2021-11-12 06:07:54'),(128,'data_rows','display_name',135,'en','Valor','2021-11-12 06:07:54','2021-11-12 06:07:54'),(129,'data_rows','display_name',136,'en','Tipo','2021-11-12 06:07:54','2021-11-12 06:07:54'),(130,'data_rows','display_name',137,'en','Proveedor Id','2021-11-12 06:07:54','2021-11-12 06:07:54'),(131,'data_rows','display_name',138,'en','Created At','2021-11-12 06:07:54','2021-11-12 06:07:54'),(132,'data_rows','display_name',139,'en','Updated At','2021-11-12 06:07:54','2021-11-12 06:07:54'),(133,'data_rows','display_name',140,'en','Proveedor','2021-11-12 06:07:54','2021-11-12 06:07:54'),(134,'data_types','display_name_singular',19,'en','Accion','2021-11-12 06:07:54','2021-11-12 06:07:54'),(135,'data_types','display_name_plural',19,'en','Acciones','2021-11-12 06:07:54','2021-11-12 06:07:54'),(136,'data_rows','display_name',161,'en','Orden','2021-11-12 06:13:28','2021-11-12 06:13:28'),(137,'data_rows','display_name',162,'en','Icono','2021-11-12 06:14:22','2021-11-12 06:14:22'),(138,'data_rows','display_name',159,'en','Orden','2021-11-12 06:29:22','2021-11-12 06:29:22'),(139,'data_rows','display_name',158,'en','Orden','2021-11-12 06:32:36','2021-11-12 06:32:36');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,1),(1,9),(6,7),(6,8);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` datetime DEFAULT NULL,
  `verification_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` tinyint(1) DEFAULT NULL,
  `localia` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'nacional',
  `telefono` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `genero` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'masculino',
  `estado_civil` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identificacion_oficial` text COLLATE utf8mb4_unicode_ci,
  `rfc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `curp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domicilio` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `localidad` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `municipio_id` bigint DEFAULT NULL,
  `estado_id` bigint DEFAULT NULL,
  `pais_id` bigint DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Admin','mariobustosjmz@icloud.com','users/default.png',NULL,'$2y$10$YEbVsHVwS6yAVbwYts.OFu7VcCYPPd/lt7XOr5y5FCcc2KU3/yR/u','AuLT1atbp3VDlK2XMp8nPPWFfWJHp0gcjUBLkbtTHmLOBAAOb8kkW3cYw0z8','[]','2017-11-21 16:07:22','2021-11-05 06:12:18','admin',NULL,NULL,NULL,NULL,NULL,NULL,'nacional',NULL,NULL,'masculino','soltero',NULL,NULL,NULL,NULL,NULL,1,1,1,NULL),(4,4,'Mario Alejandro Bustos Jimenez','mario@membersgana.com','users/default.png',NULL,'$2y$10$snU7woc.9GVNsNmA7ZgoNuj7R1tfSpA6E15pt2KSCElQ.4QMx1VMm',NULL,'[]','2021-10-31 00:40:32','2021-11-01 22:18:38','mariobustosjmz',NULL,NULL,NULL,NULL,NULL,NULL,'nacional','8115821099','1993-10-19','masculino','soltero','123456','BUJM','BUJM93','valencia 628','Hda sta isabel',1,2,3,'2021-10-31'),(5,4,'Mario ABJ','mbustos@solucionadordemundos.com',NULL,NULL,'$2y$10$VTjVCl3RYuqh88TeLF5BOeXqJBB5L59VF1.juLD0ILrvXOjYsHMke','K0V2cm1Ginus8QVG9pkVcP2q5AbzbdePJnMCPvhNukCktTWh5ocnZEDVti6e','[]','2021-11-01 22:21:24','2021-11-09 01:34:47','mbustos',NULL,NULL,NULL,NULL,NULL,NULL,'nacional','8115',NULL,'masculino','soltero',NULL,NULL,NULL,NULL,NULL,1,1,1,NULL),(6,5,'Mario Alejandro Bustos Jimenez','mariobustosjmz@gmail.com','users/default.png',NULL,'$2y$10$T7P3tpxjFbKzCAqaBTke3OSdR2RxjHHhxNX5uu11trkB07cG/pa8.','OL6x8w3RfUozvvrQZatnmWhwHMgYsk5AFLDAaYxq4ubQq5y5SytLNsSA62ku','[]','2021-11-06 22:09:50','2021-11-06 22:30:07','mariobustosjmz1',NULL,NULL,NULL,NULL,NULL,NULL,'nacional',NULL,NULL,'masculino','soltero',NULL,NULL,NULL,NULL,NULL,1,1,1,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wave_key_values`
--

DROP TABLE IF EXISTS `wave_key_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wave_key_values` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyvalue_id` int unsigned NOT NULL,
  `keyvalue_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wave_key_values_keyvalue_id_keyvalue_type_key_unique` (`keyvalue_id`,`keyvalue_type`,`key`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wave_key_values`
--

LOCK TABLES `wave_key_values` WRITE;
/*!40000 ALTER TABLE `wave_key_values` DISABLE KEYS */;
INSERT INTO `wave_key_values` VALUES (10,'text_area',1,'users','about','Hello I am the admin user. You can update this information in the edit profile section. Hope you enjoy using Wave.'),(11,'text_area',2,'users','about','test');
/*!40000 ALTER TABLE `wave_key_values` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-16  2:23:11
