/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : krautundrueben

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 27/10/2022 18:25:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for beschränkung
-- ----------------------------
DROP TABLE IF EXISTS `beschränkung`;
CREATE TABLE `beschränkung`  (
  `BeschränkungsID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`BeschränkungsID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of beschränkung
-- ----------------------------
INSERT INTO `beschränkung` VALUES (1, 'Laktose');
INSERT INTO `beschränkung` VALUES (2, 'Gluten');
INSERT INTO `beschränkung` VALUES (3, 'Erdnuss');
INSERT INTO `beschränkung` VALUES (4, 'Ei');
INSERT INTO `beschränkung` VALUES (5, 'Tomate');

-- ----------------------------
-- Table structure for bestellung
-- ----------------------------
DROP TABLE IF EXISTS `bestellung`;
CREATE TABLE `bestellung`  (
  `BESTELLNR` int NOT NULL AUTO_INCREMENT,
  `KUNDENNR` int NULL DEFAULT NULL,
  `BESTELLDATUM` date NULL DEFAULT NULL,
  `RECHNUNGSBETRAG` decimal(10, 2) NULL DEFAULT NULL,
  `RezeptID` int NOT NULL,
  PRIMARY KEY (`BESTELLNR`, `RezeptID`) USING BTREE,
  INDEX `KUNDENNR`(`KUNDENNR` ASC) USING BTREE,
  CONSTRAINT `bestellung_ibfk_1` FOREIGN KEY (`KUNDENNR`) REFERENCES `kunde` (`KUNDENNR`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bestellung
-- ----------------------------
INSERT INTO `bestellung` VALUES (1, 2001, '2020-07-01', 6.21, 1);
INSERT INTO `bestellung` VALUES (2, 2002, '2020-07-08', 32.96, 2);
INSERT INTO `bestellung` VALUES (3, 2003, '2020-08-01', 24.08, 3);
INSERT INTO `bestellung` VALUES (4, 2004, '2020-08-02', 19.90, 4);
INSERT INTO `bestellung` VALUES (5, 2005, '2020-08-02', 6.47, 5);
INSERT INTO `bestellung` VALUES (6, 2006, '2020-08-10', 6.96, 6);
INSERT INTO `bestellung` VALUES (7, 2007, '2020-08-10', 2.41, 7);
INSERT INTO `bestellung` VALUES (8, 2008, '2020-08-10', 13.80, 8);
INSERT INTO `bestellung` VALUES (9, 2009, '2020-08-10', 8.67, 9);
INSERT INTO `bestellung` VALUES (10, 2007, '2020-08-15', 17.98, 10);
INSERT INTO `bestellung` VALUES (11, 2005, '2020-08-12', 8.67, 11);
INSERT INTO `bestellung` VALUES (12, 2003, '2020-08-13', 20.87, 6);

-- ----------------------------
-- Table structure for ernährungskategorie
-- ----------------------------
DROP TABLE IF EXISTS `ernährungskategorie`;
CREATE TABLE `ernährungskategorie`  (
  `ErnährungskategorieID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`ErnährungskategorieID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ernährungskategorie
-- ----------------------------
INSERT INTO `ernährungskategorie` VALUES (1, 'Vegan');
INSERT INTO `ernährungskategorie` VALUES (2, 'Vegetarisch');
INSERT INTO `ernährungskategorie` VALUES (3, 'Frutarisch');
INSERT INTO `ernährungskategorie` VALUES (4, 'Low Carb');
INSERT INTO `ernährungskategorie` VALUES (5, 'High Protein');

-- ----------------------------
-- Table structure for kunde
-- ----------------------------
DROP TABLE IF EXISTS `kunde`;
CREATE TABLE `kunde`  (
  `KUNDENNR` int NOT NULL,
  `NACHNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `VORNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `GEBURTSDATUM` date NULL DEFAULT NULL,
  `STRASSE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `HAUSNR` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `PLZ` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ORT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `TELEFON` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `EMAIL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`KUNDENNR`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kunde
-- ----------------------------
INSERT INTO `kunde` VALUES (2001, 'Wellensteyn', 'Kira', '1990-05-05', 'Eppendorfer Landstrasse', '104', '20249', 'Hamburg', '040/443322', 'k.wellensteyn@yahoo.de');
INSERT INTO `kunde` VALUES (2002, 'Foede', 'Dorothea', '2000-03-24', 'Ohmstraße', '23', '22765', 'Hamburg', '040/543822', 'd.foede@web.de');
INSERT INTO `kunde` VALUES (2003, 'Leberer', 'Sigrid', '1989-09-21', 'Bilser Berg', '6', '20459', 'Hamburg', '0175/1234588', 'sigrid@leberer.de');
INSERT INTO `kunde` VALUES (2004, 'Soerensen', 'Hanna', '1974-04-03', 'Alter Teichweg', '95', '22049', 'Hamburg', '040/634578', 'h.soerensen@yahoo.de');
INSERT INTO `kunde` VALUES (2005, 'Schnitter', 'Marten', '1964-04-17', 'Stübels', '10', '22835', 'Barsbüttel', '0176/447587', 'schni_mart@gmail.com');
INSERT INTO `kunde` VALUES (2006, 'Maurer', 'Belinda', '1978-09-09', 'Grotelertwiete', '4a', '21075', 'Hamburg', '040/332189', 'belinda1978@yahoo.de');
INSERT INTO `kunde` VALUES (2007, 'Gessert', 'Armin', '1978-01-29', 'Küstersweg', '3', '21079', 'Hamburg', '040/67890', 'armin@gessert.de');
INSERT INTO `kunde` VALUES (2008, 'Haessig', 'Jean-Marc', '1982-08-30', 'Neugrabener Bahnhofstraße', '30', '21149', 'Hamburg', '0178-67013390', 'jm@haessig.de');
INSERT INTO `kunde` VALUES (2009, 'Urocki', 'Eric', '1999-12-04', 'Elbchaussee', '228', '22605', 'Hamburg', '0152-96701390', 'urocki@outlook.de');

-- ----------------------------
-- Table structure for lieferant
-- ----------------------------
DROP TABLE IF EXISTS `lieferant`;
CREATE TABLE `lieferant`  (
  `LIEFERANTENNR` int NOT NULL,
  `LIEFERANTENNAME` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `STRASSE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `HAUSNR` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `PLZ` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `ORT` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `TELEFON` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `EMAIL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`LIEFERANTENNR`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lieferant
-- ----------------------------
INSERT INTO `lieferant` VALUES (101, 'Bio-Hof Müller', 'Dorfstraße', '74', '24354', 'Weseby', '04354-9080', 'mueller@biohof.de');
INSERT INTO `lieferant` VALUES (102, 'Obst-Hof Altes Land', 'Westerjork 74', '76', '21635', 'Jork', '04162-4523', 'info@biohof-altesland.de');
INSERT INTO `lieferant` VALUES (103, 'Molkerei Henning', 'Molkereiwegkundekunde', '13', '19217', 'Dechow', '038873-8976', 'info@molkerei-henning.de');

-- ----------------------------
-- Table structure for rezept
-- ----------------------------
DROP TABLE IF EXISTS `rezept`;
CREATE TABLE `rezept`  (
  `RezeptID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `rzID` int NOT NULL,
  `reID` int NOT NULL,
  `rbID` int NOT NULL,
  PRIMARY KEY (`RezeptID`, `rzID`, `reID`, `rbID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rezept
-- ----------------------------
INSERT INTO `rezept` VALUES (1, 'Gemüse Box', 1, 1, 0);
INSERT INTO `rezept` VALUES (2, 'Tofu Box', 2, 2, 2);
INSERT INTO `rezept` VALUES (3, 'Protein Box', 3, 3, 3);
INSERT INTO `rezept` VALUES (4, 'Butter Würstchen Box', 4, 4, 0);
INSERT INTO `rezept` VALUES (5, 'Gemüse Box 2', 5, 5, 0);
INSERT INTO `rezept` VALUES (6, 'Basilikum', 6, 1, 0);
INSERT INTO `rezept` VALUES (7, 'Knoblauch Box', 7, 1, 0);
INSERT INTO `rezept` VALUES (8, 'Lauch Box', 8, 1, 0);
INSERT INTO `rezept` VALUES (9, 'Rucola Schnittlauch Box', 9, 1, 0);
INSERT INTO `rezept` VALUES (10, 'Süßkartoffel Ei Box', 10, 6, 10);
INSERT INTO `rezept` VALUES (11, 'Wiener Würstchen Schnittlauch Box', 11, 0, 0);

-- ----------------------------
-- Table structure for rezeptbeschränkungen
-- ----------------------------
DROP TABLE IF EXISTS `rezeptbeschränkungen`;
CREATE TABLE `rezeptbeschränkungen`  (
  `rbID` int NOT NULL,
  `BeschränkungsID` int NOT NULL,
  PRIMARY KEY (`rbID`, `BeschränkungsID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rezeptbeschränkungen
-- ----------------------------
INSERT INTO `rezeptbeschränkungen` VALUES (2, 5);
INSERT INTO `rezeptbeschränkungen` VALUES (3, 1);
INSERT INTO `rezeptbeschränkungen` VALUES (10, 4);

-- ----------------------------
-- Table structure for rezepternährungskategorie
-- ----------------------------
DROP TABLE IF EXISTS `rezepternährungskategorie`;
CREATE TABLE `rezepternährungskategorie`  (
  `reID` int NOT NULL,
  `ErnährungskategorieID` int NOT NULL,
  PRIMARY KEY (`reID`, `ErnährungskategorieID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rezepternährungskategorie
-- ----------------------------
INSERT INTO `rezepternährungskategorie` VALUES (1, 1);
INSERT INTO `rezepternährungskategorie` VALUES (1, 2);
INSERT INTO `rezepternährungskategorie` VALUES (2, 1);
INSERT INTO `rezepternährungskategorie` VALUES (2, 2);
INSERT INTO `rezepternährungskategorie` VALUES (3, 2);
INSERT INTO `rezepternährungskategorie` VALUES (3, 5);
INSERT INTO `rezepternährungskategorie` VALUES (4, 4);
INSERT INTO `rezepternährungskategorie` VALUES (5, 1);
INSERT INTO `rezepternährungskategorie` VALUES (5, 2);
INSERT INTO `rezepternährungskategorie` VALUES (6, 2);

-- ----------------------------
-- Table structure for rezeptzutat
-- ----------------------------
DROP TABLE IF EXISTS `rezeptzutat`;
CREATE TABLE `rezeptzutat`  (
  `rzID` int NOT NULL,
  `zutatID` int NULL DEFAULT NULL,
  `menge` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rezeptzutat
-- ----------------------------
INSERT INTO `rezeptzutat` VALUES (1, 1001, 5);
INSERT INTO `rezeptzutat` VALUES (1, 1002, 3);
INSERT INTO `rezeptzutat` VALUES (1, 1006, 2);
INSERT INTO `rezeptzutat` VALUES (1, 1004, 3);
INSERT INTO `rezeptzutat` VALUES (2, 9001, 10);
INSERT INTO `rezeptzutat` VALUES (2, 1005, 5);
INSERT INTO `rezeptzutat` VALUES (2, 1003, 4);
INSERT INTO `rezeptzutat` VALUES (2, 6408, 5);
INSERT INTO `rezeptzutat` VALUES (3, 6300, 15);
INSERT INTO `rezeptzutat` VALUES (3, 3001, 5);
INSERT INTO `rezeptzutat` VALUES (4, 5001, 7);
INSERT INTO `rezeptzutat` VALUES (4, 3003, 2);
INSERT INTO `rezeptzutat` VALUES (5, 1002, 4);
INSERT INTO `rezeptzutat` VALUES (5, 1004, 5);
INSERT INTO `rezeptzutat` VALUES (5, 1001, 5);
INSERT INTO `rezeptzutat` VALUES (7, 1009, 9);
INSERT INTO `rezeptzutat` VALUES (6, 1010, 5);
INSERT INTO `rezeptzutat` VALUES (8, 1012, 5);
INSERT INTO `rezeptzutat` VALUES (8, 1008, 7);
INSERT INTO `rezeptzutat` VALUES (9, 1007, 4);
INSERT INTO `rezeptzutat` VALUES (9, 1012, 5);
INSERT INTO `rezeptzutat` VALUES (10, 1011, 7);
INSERT INTO `rezeptzutat` VALUES (10, 4001, 7);
INSERT INTO `rezeptzutat` VALUES (11, 5001, 2);
INSERT INTO `rezeptzutat` VALUES (11, 1012, 5);

-- ----------------------------
-- Table structure for zutat
-- ----------------------------
DROP TABLE IF EXISTS `zutat`;
CREATE TABLE `zutat`  (
  `zutatID` int NOT NULL,
  `BEZEICHNUNG` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `EINHEIT` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `NETTOPREIS` decimal(10, 2) NULL DEFAULT NULL,
  `BESTAND` int NULL DEFAULT NULL,
  `LIEFERANT` int NULL DEFAULT NULL,
  `KALORIEN` int NULL DEFAULT NULL,
  `KOHLENHYDRATE` decimal(10, 2) NULL DEFAULT NULL,
  `PROTEIN` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`zutatID`) USING BTREE,
  INDEX `LIEFERANT`(`LIEFERANT` ASC) USING BTREE,
  CONSTRAINT `zutat_ibfk_1` FOREIGN KEY (`LIEFERANT`) REFERENCES `lieferant` (`LIEFERANTENNR`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zutat
-- ----------------------------
INSERT INTO `zutat` VALUES (1001, 'Zucchini', 'Stück', 0.89, 100, 101, 19, 2.00, 1.60);
INSERT INTO `zutat` VALUES (1002, 'Zwiebel', 'Stück', 0.15, 50, 101, 28, 4.90, 1.20);
INSERT INTO `zutat` VALUES (1003, 'Tomate', 'Stück', 0.45, 50, 101, 18, 2.60, 1.00);
INSERT INTO `zutat` VALUES (1004, 'Schalotte', 'Stück', 0.20, 500, 101, 25, 3.30, 1.50);
INSERT INTO `zutat` VALUES (1005, 'Karotte', 'Stück', 0.30, 500, 101, 41, 10.00, 0.90);
INSERT INTO `zutat` VALUES (1006, 'Kartoffel', 'Stück', 0.15, 1500, 101, 71, 14.60, 2.00);
INSERT INTO `zutat` VALUES (1007, 'Rucola', 'Bund', 0.90, 10, 101, 27, 2.10, 2.60);
INSERT INTO `zutat` VALUES (1008, 'Lauch', 'Stück', 1.20, 35, 101, 29, 3.30, 2.10);
INSERT INTO `zutat` VALUES (1009, 'Knoblauch', 'Stück', 0.25, 250, 101, 141, 28.40, 6.10);
INSERT INTO `zutat` VALUES (1010, 'Basilikum', 'Bund', 1.30, 10, 101, 41, 5.10, 3.10);
INSERT INTO `zutat` VALUES (1011, 'Süßkartoffel', 'Stück', 2.00, 200, 101, 86, 20.00, 1.60);
INSERT INTO `zutat` VALUES (1012, 'Schnittlauch', 'Bund', 0.90, 10, 101, 28, 1.00, 3.00);
INSERT INTO `zutat` VALUES (2001, 'Apfel', 'Stück', 1.20, 750, 102, 54, 14.40, 0.30);
INSERT INTO `zutat` VALUES (3001, 'Vollmilch. 3.5%', 'Liter', 1.50, 50, 103, 65, 4.70, 3.40);
INSERT INTO `zutat` VALUES (3002, 'Mozzarella', 'Packung', 3.50, 20, 103, 241, 1.00, 18.10);
INSERT INTO `zutat` VALUES (3003, 'Butter', 'Stück', 3.00, 50, 103, 741, 0.60, 0.70);
INSERT INTO `zutat` VALUES (4001, 'Ei', 'Stück', 0.40, 300, 102, 137, 1.50, 11.90);
INSERT INTO `zutat` VALUES (5001, 'Wiener Würstchen', 'Paar', 1.80, 40, 101, 331, 1.20, 9.90);
INSERT INTO `zutat` VALUES (6300, 'Kichererbsen', 'Dose', 1.00, 400, 103, 150, 21.20, 9.00);
INSERT INTO `zutat` VALUES (6408, 'Couscous', 'Packung', 1.90, 15, 102, 351, 67.00, 12.00);
INSERT INTO `zutat` VALUES (7043, 'Gemüsebrühe', 'Würfel', 0.20, 4000, 101, 1, 0.50, 0.50);
INSERT INTO `zutat` VALUES (9001, 'Tofu-Würstchen', 'Stück', 1.80, 20, 103, 252, 7.00, 17.00);

SET FOREIGN_KEY_CHECKS = 1;
