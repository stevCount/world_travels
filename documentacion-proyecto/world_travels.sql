-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: world_travels
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `airports`
--

DROP TABLE IF EXISTS `airports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `airport_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` bigint unsigned NOT NULL,
  `country_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `airports_state_foreign` (`state`),
  KEY `airports_country_id_foreign` (`country_id`),
  CONSTRAINT `airports_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  CONSTRAINT `airports_state_foreign` FOREIGN KEY (`state`) REFERENCES `states` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airports`
--

/*!40000 ALTER TABLE `airports` DISABLE KEYS */;
/*!40000 ALTER TABLE `airports` ENABLE KEYS */;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seat_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flight_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `state` bigint unsigned NOT NULL,
  `seat_type` bigint unsigned NOT NULL,
  `booking_date` datetime NOT NULL,
  `is_paid` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bookings_flight_id_foreign` (`flight_id`),
  KEY `bookings_user_id_foreign` (`user_id`),
  KEY `bookings_state_foreign` (`state`),
  KEY `bookings_seat_type_foreign` (`seat_type`),
  CONSTRAINT `bookings_flight_id_foreign` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`id`),
  CONSTRAINT `bookings_seat_type_foreign` FOREIGN KEY (`seat_type`) REFERENCES `seating_types` (`id`),
  CONSTRAINT `bookings_state_foreign` FOREIGN KEY (`state`) REFERENCES `states` (`id`),
  CONSTRAINT `bookings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `countries_region_id_foreign` (`region_id`),
  CONSTRAINT `countries_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan',1,NULL,NULL),(2,'Bangladesh',1,NULL,NULL),(3,'Bután',1,NULL,NULL),(4,'Brunei',1,NULL,NULL),(5,'Kampuchea',1,NULL,NULL),(6,'R.P.D. de Corea',1,NULL,NULL),(7,'Timor Oriental',1,NULL,NULL),(8,'India',1,NULL,NULL),(9,'Indonesia',1,NULL,NULL),(10,'Japón',1,NULL,NULL),(11,'Laos',1,NULL,NULL),(12,'Malasia',1,NULL,NULL),(13,'Maldivas',1,NULL,NULL),(14,'Mongolia',1,NULL,NULL),(15,'Myanmar',1,NULL,NULL),(16,'Nepal',1,NULL,NULL),(17,'Pakistán',1,NULL,NULL),(18,'Filipinas',1,NULL,NULL),(19,'República de Corea',1,NULL,NULL),(20,'Singapur',1,NULL,NULL),(21,'Sri Lanka',1,NULL,NULL),(22,'Tailandia',1,NULL,NULL),(23,'Vietnam',1,NULL,NULL),(24,'Argelia',2,NULL,NULL),(25,'Bahrein',2,NULL,NULL),(26,'Egipto',2,NULL,NULL),(27,'Irán',2,NULL,NULL),(28,'Iraq',2,NULL,NULL),(29,'Israel',2,NULL,NULL),(30,'Jordania',2,NULL,NULL),(31,'Kuwait',2,NULL,NULL),(32,'Líbano',2,NULL,NULL),(33,'Libia',2,NULL,NULL),(34,'Mauritania',2,NULL,NULL),(35,'Marruecos',2,NULL,NULL),(36,'Omán',2,NULL,NULL),(37,'Palestina',2,NULL,NULL),(38,'Qatar',2,NULL,NULL),(39,'Arabia Saudita',2,NULL,NULL),(40,'Sudán',2,NULL,NULL),(41,'Siria',2,NULL,NULL),(42,'Túnez',2,NULL,NULL),(43,'Turquía',2,NULL,NULL),(44,'Emiratos Arabes Unidos',2,NULL,NULL),(45,'Yemen',2,NULL,NULL);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;

--
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flights` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `flight_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flight_type` bigint unsigned NOT NULL,
  `state` bigint unsigned NOT NULL,
  `start_airport` bigint unsigned NOT NULL,
  `destination_airport` bigint unsigned NOT NULL,
  `start_flights_date` date NOT NULL,
  `limit_flights_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `flights_flight_type_foreign` (`flight_type`),
  KEY `flights_state_foreign` (`state`),
  KEY `flights_start_airport_index` (`start_airport`),
  KEY `flights_destination_airport_index` (`destination_airport`),
  CONSTRAINT `flights_destination_airport_foreign` FOREIGN KEY (`destination_airport`) REFERENCES `airports` (`id`),
  CONSTRAINT `flights_flight_type_foreign` FOREIGN KEY (`flight_type`) REFERENCES `flights_types` (`id`),
  CONSTRAINT `flights_start_airport_foreign` FOREIGN KEY (`start_airport`) REFERENCES `airports` (`id`),
  CONSTRAINT `flights_state_foreign` FOREIGN KEY (`state`) REFERENCES `states` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights`
--

/*!40000 ALTER TABLE `flights` DISABLE KEYS */;
/*!40000 ALTER TABLE `flights` ENABLE KEYS */;

--
-- Table structure for table `flights_types`
--

DROP TABLE IF EXISTS `flights_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flights_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights_types`
--

/*!40000 ALTER TABLE `flights_types` DISABLE KEYS */;
INSERT INTO `flights_types` VALUES (1,'ida',NULL,NULL),(2,'ida y vuelta',NULL,NULL),(3,'vip',NULL,NULL),(4,'privados',NULL,NULL);
/*!40000 ALTER TABLE `flights_types` ENABLE KEYS */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2022_05_05_005315_create_states_table',1),(2,'2022_05_05_005415_create_regions_table',1),(3,'2022_05_05_175715_create_flights_types_table',1),(4,'2022_05_05_175749_create_seating_types_table',1),(5,'2022_05_05_175818_create_roles_table',1),(6,'2022_05_05_175841_create_countries_table',1),(7,'2022_05_05_175857_create_airports_table',1),(8,'2022_05_05_180028_create_users_table',1),(9,'2022_05_05_180151_create_flights_table',1),(10,'2022_05_05_180219_create_bookings_table',1),(11,'2022_05_05_183852_create_states_types_table',1),(12,'2022_05_05_190633_add_type_state_to_states',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `region` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (1,'Asia','2022-05-06 21:58:35',NULL),(2,'Asia del Oeste y Africa del Norte','2022-05-06 21:58:35',NULL),(3,'Africa','2022-05-06 21:58:35',NULL),(4,'Europa y Asia Central','2022-05-06 21:58:35',NULL),(5,'Europa','2022-05-06 21:58:35',NULL),(6,'América del Norte y Oceanía','2022-05-06 21:58:35',NULL),(7,'América Latina y el Caribe','2022-05-06 21:58:35',NULL);
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'usuario',NULL,NULL),(2,'administrador',NULL,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

--
-- Table structure for table `seating_types`
--

DROP TABLE IF EXISTS `seating_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seating_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seating_types_state_foreign` (`state`),
  CONSTRAINT `seating_types_state_foreign` FOREIGN KEY (`state`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seating_types`
--

/*!40000 ALTER TABLE `seating_types` DISABLE KEYS */;
INSERT INTO `seating_types` VALUES (1,'normal',1,NULL,NULL),(2,'vip',1,NULL,NULL),(3,'WT',1,NULL,NULL);
/*!40000 ALTER TABLE `seating_types` ENABLE KEYS */;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `state` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state_type_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `states_state_type_id_foreign` (`state_type_id`),
  CONSTRAINT `states_state_type_id_foreign` FOREIGN KEY (`state_type_id`) REFERENCES `states_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'Activo',NULL,NULL,1),(2,'Inactivo',NULL,NULL,1);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;

--
-- Table structure for table `states_types`
--

DROP TABLE IF EXISTS `states_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type_state` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_types`
--

/*!40000 ALTER TABLE `states_types` DISABLE KEYS */;
INSERT INTO `states_types` VALUES (1,'usuarios',NULL,NULL),(2,'vuelos',NULL,NULL),(3,'reservas',NULL,NULL),(4,'tipos_asientos',NULL,NULL),(5,'aeropuertos',NULL,NULL);
/*!40000 ALTER TABLE `states_types` ENABLE KEYS */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_names` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_names` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `age` int DEFAULT NULL,
  `state` bigint unsigned DEFAULT NULL,
  `role` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_state_foreign` (`state`),
  KEY `users_role_foreign` (`role`),
  CONSTRAINT `users_role_foreign` FOREIGN KEY (`role`) REFERENCES `roles` (`id`),
  CONSTRAINT `users_state_foreign` FOREIGN KEY (`state`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Delia','Vandervort','greyson.johnson@example.net','912.577.5268 x41099','$2y$10$9.8d3nqNE0wpwQeHMkLlGu/DHQNuoJ1MY/tkIPtW/BnpMgYL9DQym','1987-11-28',45,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-06 12:59:53
