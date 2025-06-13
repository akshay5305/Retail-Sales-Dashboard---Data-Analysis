-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pos_analysis
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Temporary view structure for view `sales_by_industry`
--

DROP TABLE IF EXISTS `sales_by_industry`;
/*!50001 DROP VIEW IF EXISTS `sales_by_industry`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sales_by_industry` AS SELECT 
 1 AS `industry_type`,
 1 AS `total_sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_sales_transactions`
--

DROP TABLE IF EXISTS `total_sales_transactions`;
/*!50001 DROP VIEW IF EXISTS `total_sales_transactions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_sales_transactions` AS SELECT 
 1 AS `total_sales`,
 1 AS `total_transactions`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `active_vs_inactive_businesses`
--

DROP TABLE IF EXISTS `active_vs_inactive_businesses`;
/*!50001 DROP VIEW IF EXISTS `active_vs_inactive_businesses`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `active_vs_inactive_businesses` AS SELECT 
 1 AS `active_businesses`,
 1 AS `total_businesses`,
 1 AS `active_business_percentage`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `sales_by_product`
--

DROP TABLE IF EXISTS `sales_by_product`;
/*!50001 DROP VIEW IF EXISTS `sales_by_product`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sales_by_product` AS SELECT 
 1 AS `total_sales`,
 1 AS `Product_Purchased`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `support_ticket_status`
--

DROP TABLE IF EXISTS `support_ticket_status`;
/*!50001 DROP VIEW IF EXISTS `support_ticket_status`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `support_ticket_status` AS SELECT 
 1 AS `status`,
 1 AS `total_tickets`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `weekly_sales`
--

DROP TABLE IF EXISTS `weekly_sales`;
/*!50001 DROP VIEW IF EXISTS `weekly_sales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `weekly_sales` AS SELECT 
 1 AS `sales_week`,
 1 AS `total_sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `monthly_sales`
--

DROP TABLE IF EXISTS `monthly_sales`;
/*!50001 DROP VIEW IF EXISTS `monthly_sales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `monthly_sales` AS SELECT 
 1 AS `monthly_sales`,
 1 AS `total_sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `sales_by_industry`
--

/*!50001 DROP VIEW IF EXISTS `sales_by_industry`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sales_by_industry` AS select `b`.`Industry_Type` AS `industry_type`,count(`s`.`sales_id`) AS `total_sales` from (`sales` `s` join `businesses` `b` on((`s`.`Business_ID` = `b`.`Business_ID`))) group by `b`.`Industry_Type` order by `total_sales` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_sales_transactions`
--

/*!50001 DROP VIEW IF EXISTS `total_sales_transactions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_sales_transactions` AS select count(distinct `sales`.`sales_id`) AS `total_sales`,count(distinct `transactions`.`Transaction_ID`) AS `total_transactions` from (`sales` left join `transactions` on((`sales`.`Business_ID` = `transactions`.`Business_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `active_vs_inactive_businesses`
--

/*!50001 DROP VIEW IF EXISTS `active_vs_inactive_businesses`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `active_vs_inactive_businesses` AS select count(distinct (case when (`s`.`sales_id` is not null) then `b`.`Business_ID` end)) AS `active_businesses`,count(distinct `b`.`Business_ID`) AS `total_businesses`,((count(distinct (case when (`s`.`sales_id` is not null) then `b`.`Business_ID` end)) / count(distinct `b`.`Business_ID`)) * 100) AS `active_business_percentage` from (`businesses` `b` left join `sales` `s` on((`b`.`Business_ID` = `s`.`Business_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sales_by_product`
--

/*!50001 DROP VIEW IF EXISTS `sales_by_product`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sales_by_product` AS select count(distinct `s`.`sales_id`) AS `total_sales`,`s`.`Product_Purchased` AS `Product_Purchased` from (`sales` `s` left join `transactions` on((`s`.`Business_ID` = `transactions`.`Business_ID`))) group by `s`.`Product_Purchased` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `support_ticket_status`
--

/*!50001 DROP VIEW IF EXISTS `support_ticket_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `support_ticket_status` AS select `support_tickets`.`Status` AS `status`,count(`support_tickets`.`Ticket_ID`) AS `total_tickets` from `support_tickets` group by `support_tickets`.`Status` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `weekly_sales`
--

/*!50001 DROP VIEW IF EXISTS `weekly_sales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `weekly_sales` AS select yearweek(`sales`.`Sale_Date`,0) AS `sales_week`,count(`sales`.`sales_id`) AS `total_sales` from `sales` group by `sales_week` order by `sales_week` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `monthly_sales`
--

/*!50001 DROP VIEW IF EXISTS `monthly_sales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `monthly_sales` AS select date_format(`sales`.`Sale_Date`,'%Y-%M') AS `monthly_sales`,count(`sales`.`sales_id`) AS `total_sales` from `sales` group by `monthly_sales` order by `monthly_sales` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-13 17:00:04
