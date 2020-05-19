-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: sgt_02022020
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.34-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `conductor`
--

LOCK TABLES `conductor` WRITE;
/*!40000 ALTER TABLE `conductor` DISABLE KEYS */;
INSERT INTO `conductor` VALUES (1,'Ronald','Barba','72873874','23',NULL,'1'),(2,'Hardy','Sanchez','70606987','25',NULL,'1');
/*!40000 ALTER TABLE `conductor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `conductor_penalidad`
--

LOCK TABLES `conductor_penalidad` WRITE;
/*!40000 ALTER TABLE `conductor_penalidad` DISABLE KEYS */;
INSERT INTO `conductor_penalidad` VALUES (1,1,1,50.00);
/*!40000 ALTER TABLE `conductor_penalidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `controlador`
--

LOCK TABLES `controlador` WRITE;
/*!40000 ALTER TABLE `controlador` DISABLE KEYS */;
/*!40000 ALTER TABLE `controlador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'En ruta'),(2,'Pendiente de pago'),(3,'Cerrado');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (57,'2014_10_12_000000_create_users_table',1),(58,'2014_10_12_100000_create_password_resets_table',1),(59,'2019_08_19_000000_create_failed_jobs_table',1),(60,'2020_02_03_000000_create_conductor_table',1),(61,'2020_02_03_000001_create_controlador_table',1),(62,'2020_02_03_000003_create_ruta_table',1),(63,'2020_02_03_000004_create_socio_table',1),(64,'2020_02_03_000005_create_opcion_table',1),(65,'2020_02_03_000006_create_penalidad_table',1),(66,'2020_02_03_000007_create_estado_table',1),(67,'2020_02_03_000008_create_conductor_penalidad_table',1),(68,'2020_02_03_000009_create_unidad_table',1),(69,'2020_02_03_000010_create_ticket_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `opcion`
--

LOCK TABLES `opcion` WRITE;
/*!40000 ALTER TABLE `opcion` DISABLE KEYS */;
INSERT INTO `opcion` VALUES (1,NULL,'Ticket',2,NULL,NULL,NULL,'icon-file-text3',1,'2020-02-03 00:51:46'),(2,1,'Registro de tickets',1,NULL,NULL,'ticket','icon-file-text3',1,'2020-02-03 00:51:55'),(3,NULL,'Tesorería',3,NULL,NULL,NULL,'icon-file-text3',1,'2020-02-03 01:16:57'),(4,3,'Validación de tickets',1,NULL,NULL,'tesoreria','icon-file-text3',1,'2020-02-03 01:17:17'),(5,1,'Reporte de tickets',2,NULL,NULL,'reporte_ticket','icon-file-text3',2,'2020-02-03 23:25:57'),(6,1,'confirmacion de ticket',3,NULL,NULL,'ticket_confirmacion','icon-file-text3',2,'2020-02-04 22:02:05'),(7,NULL,'Administracion',1,NULL,NULL,NULL,'icon-file-text3',1,'2020-02-04 22:24:50'),(8,7,'Conductor',1,NULL,NULL,'admin_conductor','icon-file-text3',1,'2020-02-04 22:31:37'),(9,7,'Unidad',2,NULL,NULL,'admin_unidad','icon-file-text3',1,'2020-02-04 22:31:37'),(10,7,'Rutas',3,NULL,NULL,'admin_ruta','icon-file-text3',2,'2020-02-04 22:31:37'),(11,7,'Penalidad',4,NULL,NULL,'admin_penalidad','icon-file-text3',2,'2020-02-04 22:31:37');
/*!40000 ALTER TABLE `opcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `penalidad`
--

LOCK TABLES `penalidad` WRITE;
/*!40000 ALTER TABLE `penalidad` DISABLE KEYS */;
INSERT INTO `penalidad` VALUES (1,'Uniforme','5',50.00);
/*!40000 ALTER TABLE `penalidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ruta`
--

LOCK TABLES `ruta` WRITE;
/*!40000 ALTER TABLE `ruta` DISABLE KEYS */;
INSERT INTO `ruta` VALUES (1,'Ruta 1',1),(2,'Ruta 2',1);
/*!40000 ALTER TABLE `ruta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `socio`
--

LOCK TABLES `socio` WRITE;
/*!40000 ALTER TABLE `socio` DISABLE KEYS */;
INSERT INTO `socio` VALUES (1,'Juan','Vargas','10364879',NULL,'400572');
/*!40000 ALTER TABLE `socio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (2,'T-0001',1,1,1,1,NULL,NULL,'2020-02-04 19:00:32',1),(3,'T-0002',2,2,1,1,NULL,NULL,'2020-02-04 19:40:32',1),(4,'T-0003',1,1,2,1,NULL,NULL,'2020-02-06 19:40:32',2),(5,'T-0004',1,1,2,1,NULL,NULL,'2020-02-07 19:40:32',2);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `unidad`
--

LOCK TABLES `unidad` WRITE;
/*!40000 ALTER TABLE `unidad` DISABLE KEYS */;
INSERT INTO `unidad` VALUES (1,'Carrito morado',1,'TFD-559','A1','Nissan','2020-04-08',1),(2,'Carrito nuevo',1,'TFD-569','A3','Toyota','2020-02-06',1),(3,'M$12',1,'asd22','111a','zczx','2020-02-29',2),(4,'TP$3',1,'ff','44','ff','2020-05-22',1);
/*!40000 ALTER TABLE `unidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `unidad_estado`
--

LOCK TABLES `unidad_estado` WRITE;
/*!40000 ALTER TABLE `unidad_estado` DISABLE KEYS */;
INSERT INTO `unidad_estado` VALUES (1,'Operativo'),(2,'No operativo');
/*!40000 ALTER TABLE `unidad_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'rdbarba','$2y$10$0olfeCo5N20cG4thb2c7VOahmgwe5AHVDNPPE/ZhtxYB6OUmjR5Jm',NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'sgt_02022020'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_ticket_crear_codigo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_ticket_crear_codigo`(
	var_ticket_id int
) RETURNS int(11)
BEGIN

RETURN 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ticket_obtenerXDia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ticket_obtenerXDia`(
	in vin_dia date
)
BEGIN
	select 	t.id,
			t.codigo,
			t.numero_vuelta,
            DATE_FORMAT(t.fecha_salida,'%H:%i:%s') as fecha_salida,
			u.nombre as unidad, 
			concat(c.nombre,' ',c.apellido) as conductor,r.nombre as ruta,
			e.descripcion as estado,
            e.id as estado_id
	 from ticket t 
	inner join unidad u on t.unidad_id = u.id
	inner join conductor c on c.id = t.conductor_id
	inner join ruta r on r.id = t.ruta_id
	inner join estado e on e.id = t.estado_id
    where date(t.fecha_salida) = vin_dia;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_unidad_eliminar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_unidad_eliminar`(
	in vin_unidad_id int
)
BEGIN

	delete from unidad where id = vin_unidad_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_unidad_guardar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `sp_unidad_guardar`(
	in vin_unidad_id int,
	in vin_nombre varchar(100),
    in vin_socio_id int,
    in vin_placa varchar(50),
    in vin_modelo varchar(100),
    in vin_marca varchar(100),
    in vin_soat_vence date,
    in vin_estado_id int
)
BEGIN
		if(vin_unidad_id is not null) then
			update unidad 
				set nombre = vin_nombre, 
					socio_id = vin_socio_id, 
                    placa = vin_placa,
                    modelo = vin_modelo, 
                    marca = vin_marca, 
                    soat_vence = vin_soat_vence, 
                    estado_id = vin_estado_id
			where id = vin_unidad_id;
				select 1 as vout_exito, vin_nombre as unidad;
		else 
			insert into unidad (nombre, socio_id, placa, modelo, marca, soat_vence, estado_id)
            values (vin_nombre,vin_socio_id,vin_placa,vin_modelo,vin_marca,vin_soat_vence,vin_estado_id);
            
            select 2 as vout_exito, vin_nombre as unidad; 
        end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_unidad_obtenerXId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_unidad_obtenerXId`(
	in vin_unidad_id int
)
BEGIN

	select 
		id, 
        nombre,	
        socio_id, 
        placa, 
        modelo, 
        marca,
        soat_vence,
        estado_id
    from unidad
    where id = vin_unidad_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-18 12:21:16
