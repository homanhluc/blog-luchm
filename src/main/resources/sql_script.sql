-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: blog_luchm
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Game'),(2,'Music'),(3,'Program');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` text NOT NULL,
  `draft` tinyint(4) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `posted_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `slug` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `teaser` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK7ky67sgi7k0ayf22652f7763r` (`user_id`),
  CONSTRAINT `FK7ky67sgi7k0ayf22652f7763r` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'<!-- #######  YAY, I AM THE SOURCE EDITOR! #########-->\r\n<h1 style=\"color: #5e9ca0;\">You can edit <span style=\"color: #2b2301;\">this demo</span> text!</h1>\r\n<h2 style=\"color: #2e6c80;\">How to use the editor:</h2>\r\n<p>Paste your documents in the visual editor on the left or your HTML code in the source editor in the right. <br />Edit any of the two areas and see the other changing in real time.&nbsp;</p>\r\n<p>Click the <span style=\"background-color: #2b2301; color: #fff; display: inline-block; padding: 3px 10px; font-weight: bold; border-radius: 5px;\">Clean</span> button to clean your source code.</p>\r\n<h2 style=\"color: #2e6c80;\">Some useful features:</h2>\r\n<ol style=\"list-style: none; font-size: 14px; line-height: 32px; font-weight: bold;\">\r\n<li style=\"clear: both;\"><img style=\"float: left;\" src=\"https://html-online.com/img/01-interactive-connection.png\" alt=\"interactive connection\" width=\"45\" /> Interactive source editor</li>\r\n<li style=\"clear: both;\"><img style=\"float: left;\" src=\"https://html-online.com/img/02-html-clean.png\" alt=\"html cleaner\" width=\"45\" /> HTML Cleaning</li>\r\n<li style=\"clear: both;\"><img style=\"float: left;\" src=\"https://html-online.com/img/03-docs-to-html.png\" alt=\"Word to html\" width=\"45\" /> Word to HTML conversion</li>\r\n<li style=\"clear: both;\"><img style=\"float: left;\" src=\"https://html-online.com/img/04-replace.png\" alt=\"replace text\" width=\"45\" /> Find and Replace</li>\r\n<li style=\"clear: both;\"><img style=\"float: left;\" src=\"https://html-online.com/img/05-gibberish.png\" alt=\"gibberish\" width=\"45\" /> Lorem-Ipsum generator</li>\r\n<li style=\"clear: both;\"><img style=\"float: left;\" src=\"https://html-online.com/img/6-table-div-html.png\" alt=\"html table div\" width=\"45\" /> Table to DIV conversion</li>\r\n</ol>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n<h2 style=\"color: #2e6c80;\">Cleaning options:</h2>\r\n<table class=\"editorDemoTable\">\r\n<thead>\r\n<tr>\r\n<td>Name of the feature</td>\r\n<td>Example</td>\r\n<td>Default</td>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>Remove tag attributes</td>\r\n<td><img style=\"margin: 1px 15px;\" src=\"images/smiley.png\" alt=\"laughing\" width=\"40\" height=\"16\" /> (except <strong>img</strong>-<em>src</em> and <strong>a</strong>-<em>href</em>)</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Remove inline styles</td>\r\n<td><span style=\"color: green; font-size: 13px;\">You <strong style=\"color: blue; text-decoration: underline;\">should never</strong>&nbsp;use inline styles!</span></td>\r\n<td><strong style=\"font-size: 17px; color: #2b2301;\">x</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Remove classes and IDs</td>\r\n<td><span id=\"demoId\">Use classes to <strong class=\"demoClass\">style everything</strong>.</span></td>\r\n<td><strong style=\"font-size: 17px; color: #2b2301;\">x</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Remove all tags</td>\r\n<td>This leaves <strong style=\"color: blue;\">only the plain</strong> <em>text</em>. <img style=\"margin: 1px;\" src=\"images/smiley.png\" alt=\"laughing\" width=\"16\" height=\"16\" /></td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Remove successive &amp;nbsp;s</td>\r\n<td>Never use non-breaking spaces&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;to set margins.</td>\r\n<td><strong style=\"font-size: 17px; color: #2b2301;\">x</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Remove empty tags</td>\r\n<td>Empty tags should go!</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Remove tags with one &amp;nbsp;</td>\r\n<td>This makes&nbsp;no sense!</td>\r\n<td><strong style=\"font-size: 17px; color: #2b2301;\">x</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Remove span tags</td>\r\n<td>Span tags with <span style=\"color: green; font-size: 13px;\">all styles</span></td>\r\n<td><strong style=\"font-size: 17px; color: #2b2301;\">x</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Remove images</td>\r\n<td>I am an image: <img src=\"images/smiley.png\" alt=\"laughing\" /></td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Remove links</td>\r\n<td><a href=\"https://html-online.com\">This is</a> a link.</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Remove tables</td>\r\n<td>Takes everything out of the table.</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Replace table tags with structured divs</td>\r\n<td>This text is inside a table.</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Remove comments</td>\r\n<td>This is only visible in the source editor <!-- HELLO! --></td>\r\n<td><strong style=\"font-size: 17px; color: #2b2301;\">x</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Encode special characters</td>\r\n<td><span style=\"color: red; font-size: 17px;\">&hearts;</span> <strong style=\"font-size: 20px;\">☺ ★</strong> &gt;&lt;</td>\r\n<td><strong style=\"font-size: 17px; color: #2b2301;\">x</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Set new lines and text indents</td>\r\n<td>Organize the tags in a nice tree view.</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><strong>Save this link into your bookmarks and share it with your friends. It is all FREE! </strong><br /><strong>Enjoy!</strong></p>\r\n<p><strong>&nbsp;</strong></p>',0,NULL,'2018-05-07 16:07:07','bai1','active','Khi đã có list link đến các công ty mình sẽ chạy async 10 link 1 để lấy thông tin. Việc limit async với mục đích không bị nginx chặn, mình thích số 10 thôi, chậm hơn 1 chút cũng ksao cả :)))','Big Data and Data Scientist',2);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_USER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKh8ciramu9cc9q3qcqiv4ue8a6` (`role_id`),
  CONSTRAINT `FKh8ciramu9cc9q3qcqiv4ue8a6` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (2,1);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `alt_email` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `linked_in` varchar(255) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `responsibilities` text,
  `status` varchar(255) NOT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `full_bio` text,
  `short_bio` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6dotkott2kjsp8vw4d0m25fb7` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,NULL,'homanhluc95@gmail.com',NULL,'Luc','Ho','','123456',NULL,'enabled',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-07 23:52:28
