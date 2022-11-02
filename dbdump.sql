/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : localhost

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 02/11/2022 11:14:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for beschränkung
-- ----------------------------
DROP TABLE IF EXISTS `beschränkung`;
CREATE TABLE `beschränkung` (
  `BeschränkungsID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`BeschränkungsID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of beschränkung
-- ----------------------------
BEGIN;
INSERT INTO `beschränkung` (`BeschränkungsID`, `Name`) VALUES (1, 'Laktose');
INSERT INTO `beschränkung` (`BeschränkungsID`, `Name`) VALUES (2, 'Gluten');
INSERT INTO `beschränkung` (`BeschränkungsID`, `Name`) VALUES (3, 'Erdnuss');
INSERT INTO `beschränkung` (`BeschränkungsID`, `Name`) VALUES (4, 'Ei');
INSERT INTO `beschränkung` (`BeschränkungsID`, `Name`) VALUES (5, 'Tomate');
COMMIT;

-- ----------------------------
-- Table structure for bestellung
-- ----------------------------
DROP TABLE IF EXISTS `bestellung`;
CREATE TABLE `bestellung` (
  `BESTELLNR` int NOT NULL AUTO_INCREMENT,
  `KUNDENNR` int DEFAULT NULL,
  `BESTELLDATUM` date DEFAULT NULL,
  `RECHNUNGSBETRAG` decimal(10,2) DEFAULT NULL,
  `RezeptID` int NOT NULL,
  `bzID` int NOT NULL,
  PRIMARY KEY (`BESTELLNR`,`RezeptID`,`bzID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of bestellung
-- ----------------------------
BEGIN;
INSERT INTO `bestellung` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `RezeptID`, `bzID`) VALUES (1, 2001, '2020-07-01', 6.21, 0, 1);
INSERT INTO `bestellung` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `RezeptID`, `bzID`) VALUES (2, 2002, '2020-07-08', 32.96, 0, 2);
INSERT INTO `bestellung` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `RezeptID`, `bzID`) VALUES (3, 2003, '2020-08-01', 24.08, 0, 3);
INSERT INTO `bestellung` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `RezeptID`, `bzID`) VALUES (4, 2004, '2020-08-02', 19.90, 0, 4);
INSERT INTO `bestellung` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `RezeptID`, `bzID`) VALUES (5, 2005, '2020-08-02', 6.47, 0, 5);
INSERT INTO `bestellung` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `RezeptID`, `bzID`) VALUES (6, 2006, '2020-08-10', 6.96, 0, 6);
INSERT INTO `bestellung` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `RezeptID`, `bzID`) VALUES (7, 2007, '2020-08-10', 2.41, 0, 7);
INSERT INTO `bestellung` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `RezeptID`, `bzID`) VALUES (8, 2008, '2020-08-10', 13.80, 0, 8);
INSERT INTO `bestellung` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `RezeptID`, `bzID`) VALUES (9, 2009, '2020-08-10', 8.67, 0, 9);
INSERT INTO `bestellung` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `RezeptID`, `bzID`) VALUES (10, 2007, '2020-08-15', 17.98, 0, 10);
INSERT INTO `bestellung` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `RezeptID`, `bzID`) VALUES (11, 2005, '2020-08-12', 8.67, 0, 11);
INSERT INTO `bestellung` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`, `RezeptID`, `bzID`) VALUES (12, 2003, '2020-08-13', 20.87, 0, 12);
COMMIT;

-- ----------------------------
-- Table structure for bestellungzutat
-- ----------------------------
DROP TABLE IF EXISTS `bestellungzutat`;
CREATE TABLE `bestellungzutat` (
  `bzID` int NOT NULL,
  `ZUTATENNR` int DEFAULT NULL,
  `MENGE` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of bestellungzutat
-- ----------------------------
BEGIN;
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (1, 1001, 5);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (1, 1002, 3);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (1, 1006, 2);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (1, 1004, 3);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (2, 9001, 10);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (2, 1005, 5);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (2, 1003, 4);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (2, 6408, 5);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (3, 6300, 15);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (3, 3001, 5);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (4, 5001, 7);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (4, 3003, 2);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (5, 1002, 4);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (5, 1004, 5);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (5, 1001, 5);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (7, 1009, 9);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (6, 1010, 5);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (8, 1012, 5);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (8, 1008, 7);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (9, 1007, 4);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (9, 1012, 5);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (10, 1011, 7);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (10, 4001, 7);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (11, 5001, 2);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (11, 1012, 5);
INSERT INTO `bestellungzutat` (`bzID`, `ZUTATENNR`, `MENGE`) VALUES (12, 1010, 15);
COMMIT;

-- ----------------------------
-- Table structure for ernährungskategorie
-- ----------------------------
DROP TABLE IF EXISTS `ernährungskategorie`;
CREATE TABLE `ernährungskategorie` (
  `ErnährungskategorieID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`ErnährungskategorieID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ernährungskategorie
-- ----------------------------
BEGIN;
INSERT INTO `ernährungskategorie` (`ErnährungskategorieID`, `Name`) VALUES (1, 'Vegan');
INSERT INTO `ernährungskategorie` (`ErnährungskategorieID`, `Name`) VALUES (2, 'Vegetarisch');
INSERT INTO `ernährungskategorie` (`ErnährungskategorieID`, `Name`) VALUES (3, 'Frutarisch');
INSERT INTO `ernährungskategorie` (`ErnährungskategorieID`, `Name`) VALUES (4, 'Low Carb');
INSERT INTO `ernährungskategorie` (`ErnährungskategorieID`, `Name`) VALUES (5, 'High Protein');
COMMIT;

-- ----------------------------
-- Table structure for kunde
-- ----------------------------
DROP TABLE IF EXISTS `kunde`;
CREATE TABLE `kunde` (
  `KUNDENNR` int NOT NULL,
  `NACHNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `VORNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `GEBURTSDATUM` date DEFAULT NULL,
  `STRASSE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `HAUSNR` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `PLZ` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `ORT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `TELEFON` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `EMAIL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`KUNDENNR`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of kunde
-- ----------------------------
BEGIN;
INSERT INTO `kunde` (`KUNDENNR`, `NACHNAME`, `VORNAME`, `GEBURTSDATUM`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (2001, 'Wellensteyn', 'Kira', '1990-05-05', 'Eppendorfer Landstrasse', '104', '20249', 'Hamburg', '040/443322', 'k.wellensteyn@yahoo.de');
INSERT INTO `kunde` (`KUNDENNR`, `NACHNAME`, `VORNAME`, `GEBURTSDATUM`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (2002, 'Foede', 'Dorothea', '2000-03-24', 'Ohmstraße', '23', '22765', 'Hamburg', '040/543822', 'd.foede@web.de');
INSERT INTO `kunde` (`KUNDENNR`, `NACHNAME`, `VORNAME`, `GEBURTSDATUM`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (2003, 'Leberer', 'Sigrid', '1989-09-21', 'Bilser Berg', '6', '20459', 'Hamburg', '0175/1234588', 'sigrid@leberer.de');
INSERT INTO `kunde` (`KUNDENNR`, `NACHNAME`, `VORNAME`, `GEBURTSDATUM`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (2004, 'Soerensen', 'Hanna', '1974-04-03', 'Alter Teichweg', '95', '22049', 'Hamburg', '040/634578', 'h.soerensen@yahoo.de');
INSERT INTO `kunde` (`KUNDENNR`, `NACHNAME`, `VORNAME`, `GEBURTSDATUM`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (2005, 'Schnitter', 'Marten', '1964-04-17', 'Stübels', '10', '22835', 'Barsbüttel', '0176/447587', 'schni_mart@gmail.com');
INSERT INTO `kunde` (`KUNDENNR`, `NACHNAME`, `VORNAME`, `GEBURTSDATUM`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (2006, 'Maurer', 'Belinda', '1978-09-09', 'Grotelertwiete', '4a', '21075', 'Hamburg', '040/332189', 'belinda1978@yahoo.de');
INSERT INTO `kunde` (`KUNDENNR`, `NACHNAME`, `VORNAME`, `GEBURTSDATUM`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (2007, 'Gessert', 'Armin', '1978-01-29', 'Küstersweg', '3', '21079', 'Hamburg', '040/67890', 'armin@gessert.de');
INSERT INTO `kunde` (`KUNDENNR`, `NACHNAME`, `VORNAME`, `GEBURTSDATUM`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (2008, 'Haessig', 'Jean-Marc', '1982-08-30', 'Neugrabener Bahnhofstraße', '30', '21149', 'Hamburg', '0178-67013390', 'jm@haessig.de');
INSERT INTO `kunde` (`KUNDENNR`, `NACHNAME`, `VORNAME`, `GEBURTSDATUM`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (2009, 'Urocki', 'Eric', '1999-12-04', 'Elbchaussee', '228', '22605', 'Hamburg', '0152-96701390', 'urocki@outlook.de');
INSERT INTO `kunde` (`KUNDENNR`, `NACHNAME`, `VORNAME`, `GEBURTSDATUM`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (2609, 'DSGVO', 'DSGVO', '1970-01-01', 'DSGVO', '0', '0', 'DSGVO', '0000-000000', 'DSGVO');
COMMIT;

-- ----------------------------
-- Table structure for lieferant
-- ----------------------------
DROP TABLE IF EXISTS `lieferant`;
CREATE TABLE `lieferant` (
  `LIEFERANTENNR` int NOT NULL,
  `LIEFERANTENNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `STRASSE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `HAUSNR` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `PLZ` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `ORT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `TELEFON` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `EMAIL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`LIEFERANTENNR`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of lieferant
-- ----------------------------
BEGIN;
INSERT INTO `lieferant` (`LIEFERANTENNR`, `LIEFERANTENNAME`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (101, 'Bio-Hof Müller', 'Dorfstraße', '74', '24354', 'Weseby', '04354-9080', 'mueller@biohof.de');
INSERT INTO `lieferant` (`LIEFERANTENNR`, `LIEFERANTENNAME`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (102, 'Obst-Hof Altes Land', 'Westerjork 74', '76', '21635', 'Jork', '04162-4523', 'info@biohof-altesland.de');
INSERT INTO `lieferant` (`LIEFERANTENNR`, `LIEFERANTENNAME`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (103, 'Molkerei Henning', 'Molkereiwegkundekunde', '13', '19217', 'Dechow', '038873-8976', 'info@molkerei-henning.de');
INSERT INTO `lieferant` (`LIEFERANTENNR`, `LIEFERANTENNAME`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES (104, 'Test Lieferant', 'Nirgendswo', '1', '00000', 'Hier', '0', 'nicht@vorhanden.de');
COMMIT;

-- ----------------------------
-- Table structure for rezept
-- ----------------------------
DROP TABLE IF EXISTS `rezept`;
CREATE TABLE `rezept` (
  `RezeptID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `rzID` int NOT NULL,
  `reID` int NOT NULL,
  `rbID` int NOT NULL,
  PRIMARY KEY (`RezeptID`,`rzID`,`reID`,`rbID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rezept
-- ----------------------------
BEGIN;
INSERT INTO `rezept` (`RezeptID`, `Name`, `rzID`, `reID`, `rbID`) VALUES (1, 'Vegan Box', 1, 1, 0);
INSERT INTO `rezept` (`RezeptID`, `Name`, `rzID`, `reID`, `rbID`) VALUES (2, 'Vegetarische Box', 2, 2, 0);
INSERT INTO `rezept` (`RezeptID`, `Name`, `rzID`, `reID`, `rbID`) VALUES (3, 'Frutarische Box', 3, 3, 0);
INSERT INTO `rezept` (`RezeptID`, `Name`, `rzID`, `reID`, `rbID`) VALUES (4, 'Low Carb Box', 4, 4, 0);
INSERT INTO `rezept` (`RezeptID`, `Name`, `rzID`, `reID`, `rbID`) VALUES (5, 'High Protein', 5, 5, 0);
INSERT INTO `rezept` (`RezeptID`, `Name`, `rzID`, `reID`, `rbID`) VALUES (6, 'Voll Laktose Box', 6, 6, 6);
INSERT INTO `rezept` (`RezeptID`, `Name`, `rzID`, `reID`, `rbID`) VALUES (7, 'Voll Gluten Box', 7, 0, 7);
INSERT INTO `rezept` (`RezeptID`, `Name`, `rzID`, `reID`, `rbID`) VALUES (8, 'Voll Erdnuss Box', 8, 0, 8);
INSERT INTO `rezept` (`RezeptID`, `Name`, `rzID`, `reID`, `rbID`) VALUES (9, 'Voll Ei Box', 9, 0, 9);
INSERT INTO `rezept` (`RezeptID`, `Name`, `rzID`, `reID`, `rbID`) VALUES (10, 'Voll Tomate Box', 10, 0, 10);
COMMIT;

-- ----------------------------
-- Table structure for rezeptbeschränkungen
-- ----------------------------
DROP TABLE IF EXISTS `rezeptbeschränkungen`;
CREATE TABLE `rezeptbeschränkungen` (
  `rbID` int NOT NULL,
  `BeschränkungsID` int NOT NULL,
  PRIMARY KEY (`rbID`,`BeschränkungsID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rezeptbeschränkungen
-- ----------------------------
BEGIN;
INSERT INTO `rezeptbeschränkungen` (`rbID`, `BeschränkungsID`) VALUES (6, 1);
INSERT INTO `rezeptbeschränkungen` (`rbID`, `BeschränkungsID`) VALUES (7, 2);
INSERT INTO `rezeptbeschränkungen` (`rbID`, `BeschränkungsID`) VALUES (8, 3);
INSERT INTO `rezeptbeschränkungen` (`rbID`, `BeschränkungsID`) VALUES (9, 4);
INSERT INTO `rezeptbeschränkungen` (`rbID`, `BeschränkungsID`) VALUES (10, 5);
COMMIT;

-- ----------------------------
-- Table structure for rezepternährungskategorie
-- ----------------------------
DROP TABLE IF EXISTS `rezepternährungskategorie`;
CREATE TABLE `rezepternährungskategorie` (
  `reID` int NOT NULL,
  `ErnährungskategorieID` int NOT NULL,
  PRIMARY KEY (`reID`,`ErnährungskategorieID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rezepternährungskategorie
-- ----------------------------
BEGIN;
INSERT INTO `rezepternährungskategorie` (`reID`, `ErnährungskategorieID`) VALUES (1, 1);
INSERT INTO `rezepternährungskategorie` (`reID`, `ErnährungskategorieID`) VALUES (1, 2);
INSERT INTO `rezepternährungskategorie` (`reID`, `ErnährungskategorieID`) VALUES (2, 2);
INSERT INTO `rezepternährungskategorie` (`reID`, `ErnährungskategorieID`) VALUES (3, 3);
INSERT INTO `rezepternährungskategorie` (`reID`, `ErnährungskategorieID`) VALUES (4, 4);
INSERT INTO `rezepternährungskategorie` (`reID`, `ErnährungskategorieID`) VALUES (5, 2);
INSERT INTO `rezepternährungskategorie` (`reID`, `ErnährungskategorieID`) VALUES (5, 5);
COMMIT;

-- ----------------------------
-- Table structure for rezeptzutat
-- ----------------------------
DROP TABLE IF EXISTS `rezeptzutat`;
CREATE TABLE `rezeptzutat` (
  `rzID` int NOT NULL,
  `zutatID` int DEFAULT NULL,
  `menge` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of rezeptzutat
-- ----------------------------
BEGIN;
INSERT INTO `rezeptzutat` (`rzID`, `zutatID`, `menge`) VALUES (1, 9001, 3);
INSERT INTO `rezeptzutat` (`rzID`, `zutatID`, `menge`) VALUES (1, 1002, 2);
INSERT INTO `rezeptzutat` (`rzID`, `zutatID`, `menge`) VALUES (1, 1006, 2);
INSERT INTO `rezeptzutat` (`rzID`, `zutatID`, `menge`) VALUES (2, 1005, 4);
INSERT INTO `rezeptzutat` (`rzID`, `zutatID`, `menge`) VALUES (2, 4001, 2);
INSERT INTO `rezeptzutat` (`rzID`, `zutatID`, `menge`) VALUES (2, 1011, 3);
INSERT INTO `rezeptzutat` (`rzID`, `zutatID`, `menge`) VALUES (3, 2001, 10);
INSERT INTO `rezeptzutat` (`rzID`, `zutatID`, `menge`) VALUES (4, 5001, 3);
INSERT INTO `rezeptzutat` (`rzID`, `zutatID`, `menge`) VALUES (4, 3003, 1);
INSERT INTO `rezeptzutat` (`rzID`, `zutatID`, `menge`) VALUES (4, 4001, 2);
INSERT INTO `rezeptzutat` (`rzID`, `zutatID`, `menge`) VALUES (5, 9001, 3);
INSERT INTO `rezeptzutat` (`rzID`, `zutatID`, `menge`) VALUES (5, 3002, 4);
INSERT INTO `rezeptzutat` (`rzID`, `zutatID`, `menge`) VALUES (5, 6408, 2);
INSERT INTO `rezeptzutat` (`rzID`, `zutatID`, `menge`) VALUES (6, 3001, 3);
INSERT INTO `rezeptzutat` (`rzID`, `zutatID`, `menge`) VALUES (6, 3003, 2);
INSERT INTO `rezeptzutat` (`rzID`, `zutatID`, `menge`) VALUES (7, 26091, 10);
INSERT INTO `rezeptzutat` (`rzID`, `zutatID`, `menge`) VALUES (8, 26092, 10);
INSERT INTO `rezeptzutat` (`rzID`, `zutatID`, `menge`) VALUES (9, 4001, 10);
INSERT INTO `rezeptzutat` (`rzID`, `zutatID`, `menge`) VALUES (10, 1003, 10);
COMMIT;

-- ----------------------------
-- Table structure for zutat
-- ----------------------------
DROP TABLE IF EXISTS `zutat`;
CREATE TABLE `zutat` (
  `zutatID` int NOT NULL,
  `BEZEICHNUNG` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `EINHEIT` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `NETTOPREIS` decimal(10,2) DEFAULT NULL,
  `BESTAND` int DEFAULT NULL,
  `LIEFERANT` int DEFAULT NULL,
  `KALORIEN` int DEFAULT NULL,
  `KOHLENHYDRATE` decimal(10,2) DEFAULT NULL,
  `PROTEIN` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`zutatID`) USING BTREE,
  KEY `LIEFERANT` (`LIEFERANT`) USING BTREE,
  CONSTRAINT `zutat_ibfk_1` FOREIGN KEY (`LIEFERANT`) REFERENCES `lieferant` (`LIEFERANTENNR`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of zutat
-- ----------------------------
BEGIN;
INSERT INTO `zutat` (`zutatID`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (1001, 'Zucchini', 'Stück', 0.89, 100, 101, 19, 2.00, 1.60);
INSERT INTO `zutat` (`zutatID`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (1002, 'Zwiebel', 'Stück', 0.15, 50, 101, 28, 4.90, 1.20);
INSERT INTO `zutat` (`zutatID`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (1003, 'Tomate', 'Stück', 0.45, 50, 101, 18, 2.60, 1.00);
INSERT INTO `zutat` (`zutatID`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (1004, 'Schalotte', 'Stück', 0.20, 500, 101, 25, 3.30, 1.50);
INSERT INTO `zutat` (`zutatID`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (1005, 'Karotte', 'Stück', 0.30, 500, 101, 41, 10.00, 0.90);
INSERT INTO `zutat` (`zutatID`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (1006, 'Kartoffel', 'Stück', 0.15, 1500, 101, 71, 14.60, 2.00);
INSERT INTO `zutat` (`zutatID`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (1007, 'Rucola', 'Bund', 0.90, 10, 101, 27, 2.10, 2.60);
INSERT INTO `zutat` (`zutatID`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (1008, 'Lauch', 'Stück', 1.20, 35, 101, 29, 3.30, 2.10);
INSERT INTO `zutat` (`zutatID`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (1009, 'Knoblauch', 'Stück', 0.25, 250, 101, 141, 28.40, 6.10);
INSERT INTO `zutat` (`zutatID`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (1010, 'Basilikum', 'Bund', 1.30, 10, 101, 41, 5.10, 3.10);
INSERT INTO `zutat` (`zutatID`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (1011, 'Süßkartoffel', 'Stück', 2.00, 200, 101, 86, 20.00, 1.60);
INSERT INTO `zutat` (`zutatID`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (1012, 'Schnittlauch', 'Bund', 0.90, 10, 101, 28, 1.00, 3.00);
INSERT INTO `zutat` (`zutatID`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (2001, 'Apfel', 'Stück', 1.20, 750, 102, 54, 14.40, 0.30);
INSERT INTO `zutat` (`zutatID`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (3001, 'Vollmilch. 3.5%', 'Liter', 1.50, 50, 103, 65, 4.70, 3.40);
INSERT INTO `zutat` (`zutatID`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (3002, 'Mozzarella', 'Packung', 3.50, 20, 103, 241, 1.00, 18.10);
INSERT INTO `zutat` (`zutatID`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (3003, 'Butter', 'Stück', 3.00, 50, 103, 741, 0.60, 0.70);
INSERT INTO `zutat` (`zutatID`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (4001, 'Ei', 'Stück', 0.40, 300, 102, 137, 1.50, 11.90);
INSERT INTO `zutat` (`zutatID`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (5001, 'Wiener Würstchen', 'Paar', 1.80, 40, 101, 331, 1.20, 9.90);
INSERT INTO `zutat` (`zutatID`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (6300, 'Kichererbsen', 'Dose', 1.00, 400, 103, 150, 21.20, 9.00);
INSERT INTO `zutat` (`zutatID`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (6408, 'Couscous', 'Packung', 1.90, 15, 102, 351, 67.00, 12.00);
INSERT INTO `zutat` (`zutatID`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (7043, 'Gemüsebrühe', 'Würfel', 0.20, 4000, 101, 1, 0.50, 0.50);
INSERT INTO `zutat` (`zutatID`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (9001, 'Tofu-Würstchen', 'Stück', 1.80, 20, 103, 252, 7.00, 17.00);
INSERT INTO `zutat` (`zutatID`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (26091, 'Brot', 'Stück', 0.00, 0, 104, 0, 0.00, 0.00);
INSERT INTO `zutat` (`zutatID`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`) VALUES (26092, 'Erdnuss', 'Packung', 0.00, 0, 104, 0, 0.00, 0.00);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
