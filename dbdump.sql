/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : krautundrueben

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 27/10/2022 14:45:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Beschränkung
-- ----------------------------
DROP TABLE IF EXISTS `Beschränkung`;
CREATE TABLE `Beschränkung` (
  `BeschränkungsID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`BeschränkungsID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of Beschränkung
-- ----------------------------
BEGIN;
INSERT INTO `Beschränkung` (`BeschränkungsID`, `Name`) VALUES (1, 'Laktose');
INSERT INTO `Beschränkung` (`BeschränkungsID`, `Name`) VALUES (2, 'Gluten');
INSERT INTO `Beschränkung` (`BeschränkungsID`, `Name`) VALUES (3, 'Erdnuss');
INSERT INTO `Beschränkung` (`BeschränkungsID`, `Name`) VALUES (4, 'Ei');
INSERT INTO `Beschränkung` (`BeschränkungsID`, `Name`) VALUES (5, 'Tomate');
COMMIT;

-- ----------------------------
-- Table structure for BESTELLUNG
-- ----------------------------
DROP TABLE IF EXISTS `BESTELLUNG`;
CREATE TABLE `BESTELLUNG` (
  `BESTELLNR` int NOT NULL AUTO_INCREMENT,
  `KUNDENNR` int DEFAULT NULL,
  `BESTELLDATUM` date DEFAULT NULL,
  `RECHNUNGSBETRAG` decimal(10,2) DEFAULT NULL,
  `RezeptID` int NOT NULL,
  PRIMARY KEY (`BESTELLNR`,`RezeptID`) USING BTREE,
  KEY `KUNDENNR` (`KUNDENNR`),
  CONSTRAINT `bestellung_ibfk_1` FOREIGN KEY (`KUNDENNR`) REFERENCES `KUNDE` (`KUNDENNR`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of BESTELLUNG
-- ----------------------------
BEGIN;
INSERT INTO `BESTELLUNG` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `RezeptID`) VALUES (1, 2001, '2020-07-01', 6.21, 0);
INSERT INTO `BESTELLUNG` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `RezeptID`) VALUES (2, 2002, '2020-07-08', 32.96, 0);
INSERT INTO `BESTELLUNG` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `RezeptID`) VALUES (3, 2003, '2020-08-01', 24.08, 0);
INSERT INTO `BESTELLUNG` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `RezeptID`) VALUES (4, 2004, '2020-08-02', 19.90, 0);
INSERT INTO `BESTELLUNG` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `RezeptID`) VALUES (5, 2005, '2020-08-02', 6.47, 0);
INSERT INTO `BESTELLUNG` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `RezeptID`) VALUES (6, 2006, '2020-08-10', 6.96, 0);
INSERT INTO `BESTELLUNG` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `RezeptID`) VALUES (7, 2007, '2020-08-10', 2.41, 0);
INSERT INTO `BESTELLUNG` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `RezeptID`) VALUES (8, 2008, '2020-08-10', 13.80, 0);
INSERT INTO `BESTELLUNG` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `RezeptID`) VALUES (9, 2009, '2020-08-10', 8.67, 0);
INSERT INTO `BESTELLUNG` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `RezeptID`) VALUES (10, 2007, '2020-08-15', 17.98, 0);
INSERT INTO `BESTELLUNG` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `RezeptID`) VALUES (11, 2005, '2020-08-12', 8.67, 0);
INSERT INTO `BESTELLUNG` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `RezeptID`) VALUES (12, 2003, '2020-08-13', 20.87, 0);
COMMIT;

-- ----------------------------
-- Table structure for BESTELLUNGZUTAT
-- ----------------------------
DROP TABLE IF EXISTS `BESTELLUNGZUTAT`;
CREATE TABLE `BESTELLUNGZUTAT` (
  `BESTELLNR` int NOT NULL,
  `ZUTATENNR` int DEFAULT NULL,
  `MENGE` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of BESTELLUNGZUTAT
-- ----------------------------
BEGIN;
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (1, 1001, 5);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (1, 1002, 3);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (1, 1006, 2);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (1, 1004, 3);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (2, 9001, 10);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (2, 1005, 5);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (2, 1003, 4);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (2, 6408, 5);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (3, 6300, 15);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (3, 3001, 5);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (4, 5001, 7);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (4, 3003, 2);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (5, 1002, 4);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (5, 1004, 5);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (5, 1001, 5);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (7, 1009, 9);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (6, 1010, 5);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (8, 1012, 5);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (8, 1008, 7);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (9, 1007, 4);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (9, 1012, 5);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (10, 1011, 7);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (10, 4001, 7);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (11, 5001, 2);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (11, 1012, 5);
INSERT INTO `BESTELLUNGZUTAT` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES (12, 1010, 15);
COMMIT;

-- ----------------------------
-- Table structure for Ernährungskategorie
-- ----------------------------
DROP TABLE IF EXISTS `Ernährungskategorie`;
CREATE TABLE `Ernährungskategorie` (
  `ErnährungskategorieID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ErnährungskategorieID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of Ernährungskategorie
-- ----------------------------
BEGIN;
INSERT INTO `Ernährungskategorie` (`ErnährungskategorieID`, `Name`) VALUES (1, 'Vegan');
INSERT INTO `Ernährungskategorie` (`ErnährungskategorieID`, `Name`) VALUES (2, 'Vegetarisch');
INSERT INTO `Ernährungskategorie` (`ErnährungskategorieID`, `Name`) VALUES (3, 'Frutarisch');
INSERT INTO `Ernährungskategorie` (`ErnährungskategorieID`, `Name`) VALUES (4, 'Low Carb');
INSERT INTO `Ernährungskategorie` (`ErnährungskategorieID`, `Name`) VALUES (5, 'High Protein');
COMMIT;

-- ----------------------------
-- Table structure for KUNDE
-- ----------------------------
DROP TABLE IF EXISTS `KUNDE`;
CREATE TABLE `KUNDE` (
  `KUNDENNR` int NOT NULL,
  `NACHNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `VORNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `GEBURTSDATUM` date DEFAULT NULL,
  `STRASSE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `HAUSNR` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PLZ` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ORT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TELEFON` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `EMAIL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`KUNDENNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of KUNDE
-- ----------------------------
BEGIN;
INSERT INTO `KUNDE` (`KUNDENNR`, `NACHNAME`, `VORNAME`, `GEBURTSDATUM`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (2001, 'Wellensteyn', 'Kira', '1990-05-05', 'Eppendorfer Landstrasse', '104', '20249', 'Hamburg', '040/443322', 'k.wellensteyn@yahoo.de');
INSERT INTO `KUNDE` (`KUNDENNR`, `NACHNAME`, `VORNAME`, `GEBURTSDATUM`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (2002, 'Foede', 'Dorothea', '2000-03-24', 'Ohmstraße', '23', '22765', 'Hamburg', '040/543822', 'd.foede@web.de');
INSERT INTO `KUNDE` (`KUNDENNR`, `NACHNAME`, `VORNAME`, `GEBURTSDATUM`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (2003, 'Leberer', 'Sigrid', '1989-09-21', 'Bilser Berg', '6', '20459', 'Hamburg', '0175/1234588', 'sigrid@leberer.de');
INSERT INTO `KUNDE` (`KUNDENNR`, `NACHNAME`, `VORNAME`, `GEBURTSDATUM`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (2004, 'Soerensen', 'Hanna', '1974-04-03', 'Alter Teichweg', '95', '22049', 'Hamburg', '040/634578', 'h.soerensen@yahoo.de');
INSERT INTO `KUNDE` (`KUNDENNR`, `NACHNAME`, `VORNAME`, `GEBURTSDATUM`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (2005, 'Schnitter', 'Marten', '1964-04-17', 'Stübels', '10', '22835', 'Barsbüttel', '0176/447587', 'schni_mart@gmail.com');
INSERT INTO `KUNDE` (`KUNDENNR`, `NACHNAME`, `VORNAME`, `GEBURTSDATUM`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (2006, 'Maurer', 'Belinda', '1978-09-09', 'Grotelertwiete', '4a', '21075', 'Hamburg', '040/332189', 'belinda1978@yahoo.de');
INSERT INTO `KUNDE` (`KUNDENNR`, `NACHNAME`, `VORNAME`, `GEBURTSDATUM`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (2007, 'Gessert', 'Armin', '1978-01-29', 'Küstersweg', '3', '21079', 'Hamburg', '040/67890', 'armin@gessert.de');
INSERT INTO `KUNDE` (`KUNDENNR`, `NACHNAME`, `VORNAME`, `GEBURTSDATUM`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (2008, 'Haessig', 'Jean-Marc', '1982-08-30', 'Neugrabener Bahnhofstraße', '30', '21149', 'Hamburg', '0178-67013390', 'jm@haessig.de');
INSERT INTO `KUNDE` (`KUNDENNR`, `NACHNAME`, `VORNAME`, `GEBURTSDATUM`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (2009, 'Urocki', 'Eric', '1999-12-04', 'Elbchaussee', '228', '22605', 'Hamburg', '0152-96701390', 'urocki@outlook.de');
COMMIT;

-- ----------------------------
-- Table structure for LIEFERANT
-- ----------------------------
DROP TABLE IF EXISTS `LIEFERANT`;
CREATE TABLE `LIEFERANT` (
  `LIEFERANTENNR` int NOT NULL,
  `LIEFERANTENNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `STRASSE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `HAUSNR` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PLZ` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ORT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `TELEFON` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `EMAIL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`LIEFERANTENNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of LIEFERANT
-- ----------------------------
BEGIN;
INSERT INTO `LIEFERANT` (`LIEFERANTENNR`, `LIEFERANTENNAME`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (101, 'Bio-Hof Müller', 'Dorfstraße', '74', '24354', 'Weseby', '04354-9080', 'mueller@biohof.de');
INSERT INTO `LIEFERANT` (`LIEFERANTENNR`, `LIEFERANTENNAME`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (102, 'Obst-Hof Altes Land', 'Westerjork 74', '76', '21635', 'Jork', '04162-4523', 'info@biohof-altesland.de');
INSERT INTO `LIEFERANT` (`LIEFERANTENNR`, `LIEFERANTENNAME`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (103, 'Molkerei Henning', 'Molkereiwegkundekunde', '13', '19217', 'Dechow', '038873-8976', 'info@molkerei-henning.de');
COMMIT;

-- ----------------------------
-- Table structure for Rezept
-- ----------------------------
DROP TABLE IF EXISTS `Rezept`;
CREATE TABLE `Rezept` (
  `RezeptID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `rzID` int NOT NULL,
  `reID` int NOT NULL,
  `rbID` int NOT NULL,
  PRIMARY KEY (`RezeptID`,`rzID`,`reID`,`rbID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of Rezept
-- ----------------------------
BEGIN;
INSERT INTO `Rezept` (`RezeptID`, `Name`, `rzID`, `reID`, `rbID`) VALUES (1, 'Gemüse Box', 1, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for RezeptBeschränkungen
-- ----------------------------
DROP TABLE IF EXISTS `RezeptBeschränkungen`;
CREATE TABLE `RezeptBeschränkungen` (
  `rbID` int NOT NULL,
  `BeschränkungsID` int NOT NULL,
  PRIMARY KEY (`rbID`,`BeschränkungsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of RezeptBeschränkungen
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for RezeptErnährungskategorie
-- ----------------------------
DROP TABLE IF EXISTS `RezeptErnährungskategorie`;
CREATE TABLE `RezeptErnährungskategorie` (
  `reID` int NOT NULL,
  `ErnährungskategorieID` int NOT NULL,
  PRIMARY KEY (`reID`,`ErnährungskategorieID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of RezeptErnährungskategorie
-- ----------------------------
BEGIN;
INSERT INTO `RezeptErnährungskategorie` (`reID`, `ErnährungskategorieID`) VALUES (1, 1);
INSERT INTO `RezeptErnährungskategorie` (`reID`, `ErnährungskategorieID`) VALUES (1, 2);
COMMIT;

-- ----------------------------
-- Table structure for RezeptZutat
-- ----------------------------
DROP TABLE IF EXISTS `RezeptZutat`;
CREATE TABLE `RezeptZutat` (
  `rzID` int NOT NULL,
  `zutatID` int NOT NULL,
  `menge` int DEFAULT NULL,
  PRIMARY KEY (`rzID`,`zutatID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of RezeptZutat
-- ----------------------------
BEGIN;
INSERT INTO `RezeptZutat` (`rzID`, `zutatID`, `menge`) VALUES (1, 1001, 5);
INSERT INTO `RezeptZutat` (`rzID`, `zutatID`, `menge`) VALUES (1, 1002, 3);
INSERT INTO `RezeptZutat` (`rzID`, `zutatID`, `menge`) VALUES (1, 1004, 3);
INSERT INTO `RezeptZutat` (`rzID`, `zutatID`, `menge`) VALUES (1, 1006, 2);
COMMIT;

-- ----------------------------
-- Table structure for ZUTAT
-- ----------------------------
DROP TABLE IF EXISTS `ZUTAT`;
CREATE TABLE `ZUTAT` (
  `ZUTATENNR` int NOT NULL,
  `BEZEICHNUNG` varchar(50) DEFAULT NULL,
  `EINHEIT` varchar(25) DEFAULT NULL,
  `NETTOPREIS` decimal(10,2) DEFAULT NULL,
  `BESTAND` int DEFAULT NULL,
  `LIEFERANT` int DEFAULT NULL,
  `KALORIEN` int DEFAULT NULL,
  `KOHLENHYDRATE` decimal(10,2) DEFAULT NULL,
  `PROTEIN` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ZUTATENNR`),
  KEY `LIEFERANT` (`LIEFERANT`),
  CONSTRAINT `zutat_ibfk_1` FOREIGN KEY (`LIEFERANT`) REFERENCES `LIEFERANT` (`LIEFERANTENNR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of ZUTAT
-- ----------------------------
BEGIN;
INSERT INTO `ZUTAT` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (1001, 'Zucchini', 'Stück', 0.89, 100, 101, 19, 2.00, 1.60);
INSERT INTO `ZUTAT` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (1002, 'Zwiebel', 'Stück', 0.15, 50, 101, 28, 4.90, 1.20);
INSERT INTO `ZUTAT` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (1003, 'Tomate', 'Stück', 0.45, 50, 101, 18, 2.60, 1.00);
INSERT INTO `ZUTAT` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (1004, 'Schalotte', 'Stück', 0.20, 500, 101, 25, 3.30, 1.50);
INSERT INTO `ZUTAT` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (1005, 'Karotte', 'Stück', 0.30, 500, 101, 41, 10.00, 0.90);
INSERT INTO `ZUTAT` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (1006, 'Kartoffel', 'Stück', 0.15, 1500, 101, 71, 14.60, 2.00);
INSERT INTO `ZUTAT` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (1007, 'Rucola', 'Bund', 0.90, 10, 101, 27, 2.10, 2.60);
INSERT INTO `ZUTAT` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (1008, 'Lauch', 'Stück', 1.20, 35, 101, 29, 3.30, 2.10);
INSERT INTO `ZUTAT` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (1009, 'Knoblauch', 'Stück', 0.25, 250, 101, 141, 28.40, 6.10);
INSERT INTO `ZUTAT` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (1010, 'Basilikum', 'Bund', 1.30, 10, 101, 41, 5.10, 3.10);
INSERT INTO `ZUTAT` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (1011, 'Süßkartoffel', 'Stück', 2.00, 200, 101, 86, 20.00, 1.60);
INSERT INTO `ZUTAT` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (1012, 'Schnittlauch', 'Bund', 0.90, 10, 101, 28, 1.00, 3.00);
INSERT INTO `ZUTAT` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (2001, 'Apfel', 'Stück', 1.20, 750, 102, 54, 14.40, 0.30);
INSERT INTO `ZUTAT` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (3001, 'Vollmilch. 3.5%', 'Liter', 1.50, 50, 103, 65, 4.70, 3.40);
INSERT INTO `ZUTAT` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (3002, 'Mozzarella', 'Packung', 3.50, 20, 103, 241, 1.00, 18.10);
INSERT INTO `ZUTAT` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (3003, 'Butter', 'Stück', 3.00, 50, 103, 741, 0.60, 0.70);
INSERT INTO `ZUTAT` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (4001, 'Ei', 'Stück', 0.40, 300, 102, 137, 1.50, 11.90);
INSERT INTO `ZUTAT` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (5001, 'Wiener Würstchen', 'Paar', 1.80, 40, 101, 331, 1.20, 9.90);
INSERT INTO `ZUTAT` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (6300, 'Kichererbsen', 'Dose', 1.00, 400, 103, 150, 21.20, 9.00);
INSERT INTO `ZUTAT` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (6408, 'Couscous', 'Packung', 1.90, 15, 102, 351, 67.00, 12.00);
INSERT INTO `ZUTAT` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (7043, 'Gemüsebrühe', 'Würfel', 0.20, 4000, 101, 1, 0.50, 0.50);
INSERT INTO `ZUTAT` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (9001, 'Tofu-Würstchen', 'Stück', 1.80, 20, 103, 252, 7.00, 17.00);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
