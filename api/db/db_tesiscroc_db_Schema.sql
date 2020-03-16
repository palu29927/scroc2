--
-- Database: `tesiscroc_db`
--

CREATE DATABASE IF NOT EXISTS `tesiscroc_db`;
USE `tesiscroc_db`;


-- ENTITIES

--
-- Struttura della tabella `user`
--

CREATE TABLE IF NOT EXISTS `user` (
	`cognome` varchar(130)  NOT NULL,
	`mail` varchar(130)  NOT NULL,
	`nome` varchar(130)  NOT NULL,
	`password` varchar(130)  NOT NULL,
	`username` varchar(130)  NOT NULL,
	
	`_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT 

);


-- Security

ALTER TABLE `user` MODIFY COLUMN `password` varchar(128)  NOT NULL;

INSERT INTO `tesiscroc_db`.`user` (`username`, `password`, `_id`) VALUES ('admin', '62f264d7ad826f02a8af714c0a54b197935b717656b80461686d450f7b3abde4c553541515de2052b9af70f710f0cd8a1a2d3f4d60aa72608d71a63a9a93c0f5', 1);

CREATE TABLE IF NOT EXISTS `roles` (
	`role` varchar(30) ,
	
	-- RELAZIONI

	`_user` int(11)  NOT NULL REFERENCES user(_id),
	`_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT 

);
INSERT INTO `tesiscroc_db`.`roles` (`role`, `_user`, `_id`) VALUES ('ADMIN', '1', 1);


--
-- Struttura della tabella `utenti`
--

CREATE TABLE IF NOT EXISTS `utenti` (
	`email` varchar(130)  NOT NULL,
	`name` varchar(130)  NOT NULL,
	`surname` varchar(130)  NOT NULL,
	
	`_id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT 

);






