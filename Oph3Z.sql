-- --------------------------------------------------------
-- Värd:                         127.0.0.1
-- Serverversion:                10.4.17-MariaDB - mariadb.org binary distribution
-- Server-OS:                    Win64
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumpar databasstruktur för oph3z
CREATE DATABASE IF NOT EXISTS `oph3z` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `oph3z`;

-- Dumpar struktur för tabell oph3z.addon_account
CREATE TABLE IF NOT EXISTS `addon_account` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.addon_account: ~9 rows (ungefär)
DELETE FROM `addon_account`;
/*!40000 ALTER TABLE `addon_account` DISABLE KEYS */;
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('bank_savings', 'Bank Savings', 0);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('caution', 'Caution', 0);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('property_black_money', 'Black Money', 0);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_ambulance', 'EMS', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_banker', 'Bank', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_cardealer', 'Cardealer', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_mechanic', 'Mechanic', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_police', 'Police', 1);
INSERT INTO `addon_account` (`name`, `label`, `shared`) VALUES
	('society_taxi', 'Taxi', 1);
/*!40000 ALTER TABLE `addon_account` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.addon_account_data
CREATE TABLE IF NOT EXISTS `addon_account_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) NOT NULL,
  `owner` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_addon_account_data_account_name_owner` (`account_name`,`owner`),
  KEY `index_addon_account_data_account_name` (`account_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.addon_account_data: ~0 rows (ungefär)
DELETE FROM `addon_account_data`;
/*!40000 ALTER TABLE `addon_account_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_account_data` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.addon_inventory
CREATE TABLE IF NOT EXISTS `addon_inventory` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.addon_inventory: ~6 rows (ungefär)
DELETE FROM `addon_inventory`;
/*!40000 ALTER TABLE `addon_inventory` DISABLE KEYS */;
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('property', 'Property', 0);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_ambulance', 'EMS', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_cardealer', 'Cardealer', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_mechanic', 'Mechanic', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_police', 'Police', 1);
INSERT INTO `addon_inventory` (`name`, `label`, `shared`) VALUES
	('society_taxi', 'Taxi', 1);
/*!40000 ALTER TABLE `addon_inventory` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.addon_inventory_items
CREATE TABLE IF NOT EXISTS `addon_inventory_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_addon_inventory_items_inventory_name_name` (`inventory_name`,`name`),
  KEY `index_addon_inventory_items_inventory_name_name_owner` (`inventory_name`,`name`,`owner`),
  KEY `index_addon_inventory_inventory_name` (`inventory_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.addon_inventory_items: ~0 rows (ungefär)
DELETE FROM `addon_inventory_items`;
/*!40000 ALTER TABLE `addon_inventory_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `addon_inventory_items` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.billing
CREATE TABLE IF NOT EXISTS `billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `sender` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `target_type` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.billing: ~0 rows (ungefär)
DELETE FROM `billing`;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.cardealer_vehicles
CREATE TABLE IF NOT EXISTS `cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.cardealer_vehicles: ~0 rows (ungefär)
DELETE FROM `cardealer_vehicles`;
/*!40000 ALTER TABLE `cardealer_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `cardealer_vehicles` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `dateofbirth` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `sex` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT 'M',
  `height` varchar(128) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.characters: ~0 rows (ungefär)
DELETE FROM `characters`;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.datastore
CREATE TABLE IF NOT EXISTS `datastore` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `shared` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.datastore: ~8 rows (ungefär)
DELETE FROM `datastore`;
/*!40000 ALTER TABLE `datastore` DISABLE KEYS */;
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('property', 'Property', 0);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_ambulance', 'EMS', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_police', 'Police', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('society_taxi', 'Taxi', 1);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('user_ears', 'Ears', 0);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('user_glasses', 'Glasses', 0);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('user_helmet', 'Helmet', 0);
INSERT INTO `datastore` (`name`, `label`, `shared`) VALUES
	('user_mask', 'Mask', 0);
/*!40000 ALTER TABLE `datastore` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.datastore_data
CREATE TABLE IF NOT EXISTS `datastore_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  `data` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_datastore_data_name_owner` (`name`,`owner`),
  KEY `index_datastore_data_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.datastore_data: ~0 rows (ungefär)
DELETE FROM `datastore_data`;
/*!40000 ALTER TABLE `datastore_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `datastore_data` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.disc_ammo
CREATE TABLE IF NOT EXISTS `disc_ammo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `owner` text NOT NULL,
  `hash` text NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- Dumpar data för tabell oph3z.disc_ammo: ~0 rows (ungefär)
DELETE FROM `disc_ammo`;
/*!40000 ALTER TABLE `disc_ammo` DISABLE KEYS */;
/*!40000 ALTER TABLE `disc_ammo` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.disc_inventory
CREATE TABLE IF NOT EXISTS `disc_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` text NOT NULL,
  `type` text DEFAULT NULL,
  `data` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumpar data för tabell oph3z.disc_inventory: ~0 rows (ungefär)
DELETE FROM `disc_inventory`;
/*!40000 ALTER TABLE `disc_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `disc_inventory` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.disc_inventory_itemdata
CREATE TABLE IF NOT EXISTS `disc_inventory_itemdata` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `description` text DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT 0,
  `closeonuse` tinyint(1) NOT NULL DEFAULT 0,
  `max` int(11) NOT NULL DEFAULT 100,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumpar data för tabell oph3z.disc_inventory_itemdata: ~0 rows (ungefär)
DELETE FROM `disc_inventory_itemdata`;
/*!40000 ALTER TABLE `disc_inventory_itemdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `disc_inventory_itemdata` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.fine_types
CREATE TABLE IF NOT EXISTS `fine_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.fine_types: ~52 rows (ungefär)
DELETE FROM `fine_types`;
/*!40000 ALTER TABLE `fine_types` DISABLE KEYS */;
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(1, 'Misuse of a horn', 30, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(2, 'Illegally Crossing a continuous Line', 40, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(3, 'Driving on the wrong side of the road', 250, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(4, 'Illegal U-Turn', 250, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(5, 'Illegally Driving Off-road', 170, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(6, 'Refusing a Lawful Command', 30, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(7, 'Illegally Stopping a Vehicle', 150, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(8, 'Illegal Parking', 70, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(9, 'Failing to Yield to the right', 70, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(10, 'Failure to comply with Vehicle Information', 90, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(11, 'Failing to stop at a Stop Sign ', 105, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(12, 'Failing to stop at a Red Light', 130, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(13, 'Illegal Passing', 100, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(14, 'Driving an illegal Vehicle', 100, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(15, 'Driving without a License', 1500, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(16, 'Hit and Run', 800, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(17, 'Exceeding Speeds Over < 5 mph', 90, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(18, 'Exceeding Speeds Over 5-15 mph', 120, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(19, 'Exceeding Speeds Over 15-30 mph', 180, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(20, 'Exceeding Speeds Over > 30 mph', 300, 0);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(21, 'Impeding traffic flow', 110, 1);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(22, 'Public Intoxication', 90, 1);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(23, 'Disorderly conduct', 90, 1);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(24, 'Obstruction of Justice', 130, 1);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(25, 'Insults towards Civilans', 75, 1);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(26, 'Disrespecting of an LEO', 110, 1);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(27, 'Verbal Threat towards a Civilan', 90, 1);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(28, 'Verbal Threat towards an LEO', 150, 1);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(29, 'Providing False Information', 250, 1);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(30, 'Attempt of Corruption', 1500, 1);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(31, 'Brandishing a weapon in city Limits', 120, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(32, 'Brandishing a Lethal Weapon in city Limits', 300, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(33, 'No Firearms License', 600, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(34, 'Possession of an Illegal Weapon', 700, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(35, 'Possession of Burglary Tools', 300, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(36, 'Grand Theft Auto', 1800, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(37, 'Intent to Sell/Distrube of an illegal Substance', 1500, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(38, 'Frabrication of an Illegal Substance', 1500, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(39, 'Possession of an Illegal Substance ', 650, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(40, 'Kidnapping of a Civilan', 1500, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(41, 'Kidnapping of an LEO', 2000, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(42, 'Robbery', 650, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(43, 'Armed Robbery of a Store', 650, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(44, 'Armed Robbery of a Bank', 1500, 2);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(45, 'Assault on a Civilian', 2000, 3);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(46, 'Assault of an LEO', 2500, 3);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(47, 'Attempt of Murder of a Civilian', 3000, 3);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(48, 'Attempt of Murder of an LEO', 5000, 3);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(49, 'Murder of a Civilian', 10000, 3);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(50, 'Murder of an LEO', 30000, 3);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(51, 'Involuntary manslaughter', 1800, 3);
INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
	(52, 'Fraud', 2000, 2);
/*!40000 ALTER TABLE `fine_types` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.items
CREATE TABLE IF NOT EXISTS `items` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `weight` float NOT NULL DEFAULT 0,
  `rare` int(11) NOT NULL DEFAULT 0,
  `can_remove` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

-- Dumpar data för tabell oph3z.items: ~237 rows (ungefär)
DELETE FROM `items`;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('HeavyArmor', '3. Seviye Armor', 4, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('MedArmor', '2. Seviye Armor', 3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('SmallArmor', '1. Seviye Armor', 3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_ADVANCEDRIFLE', 'Advanced Rifle', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_APPISTOL', 'AP Pistol', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_ASSAULTRIFLE', 'Assault Rifle', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_ASSAULTSHOTGUN', 'Assault Shotgun', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_ASSAULTSMG', 'Assault SMG', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_AUTOSHOTGUN', 'Auto Shotgun', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_BALL', 'Ball', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_BAT', 'Sopa', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_BATTLEAXE', 'Battle Axe', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_BOTTLE', 'Bottle', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_BULLPUPRIFLE', 'Bullpup Rifle', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_BULLPUPSHOTGUN', 'Bullpup Shotgun', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_BZGAS', 'BZ Gas', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_CARBINERIFLE', 'Carbine Rifle', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_COMBATMG', 'Combat MG', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_COMBATPDW', 'Combat PDW', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_COMBATPISTOL', 'Combat Pistol', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_COMPACTLAUNCHER', 'Compact Launcher', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_COMPACTRIFLE', 'Compact Rifle', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_CROWBAR', 'Crowbar', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_DAGGER', 'Dagger', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_DBSHOTGUN', 'Double Barrel Shotgun', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_DIGISCANNER', 'Digiscanner', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_DOUBLEACTION', 'Double Action Revolver', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_FIREEXTINGUISHER', 'Fire Extinguisher', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_FIREWORK', 'Firework Launcher', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_FLARE', 'Flare', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_FLAREGUN', 'Flare Gun', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_FLASHLIGHT', 'Flashlight', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_GARBAGEBAG', 'Garbage Bag', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_GOLFCLUB', 'Golf Club', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_GRENADE', 'Grenade', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_GRENADELAUNCHER', 'Gernade Launcher', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_GUSENBERG', 'Gusenberg', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_HAMMER', 'Hammer', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_HANDCUFFS', 'Handcuffs', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_HATCHET', 'Hatchet', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_HEAVYPISTOL', 'Heavy Pistol', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_HEAVYSHOTGUN', 'Heavy Shotgun', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_HEAVYSNIPER', 'Heavy Sniper', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_HOMINGLAUNCHER', 'Homing Launcher', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_KNIFE', 'Bıçak', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_KNUCKLE', 'Knuckle Dusters ', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_MACHETE', 'Machete', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_MACHINEPISTOL', 'Machine Pistol', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_MARKSMANPISTOL', 'Marksman Pistol', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_MARKSMANRIFLE', 'Marksman Rifle', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_MG', 'MG', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_MICROSMG', 'Micro SMG', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_MINIGUN', 'Minigun', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_MINISMG', 'Mini SMG', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_MOLOTOV', 'Molotov', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_MUSKET', 'Musket', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_NIGHTSTICK', 'Police Baton', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_PETROLCAN', 'Petrol Can', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_PIPEBOMB', 'Pipe Bomb', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_PISTOL', 'Pistol', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_PISTOL50', 'Police .50', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_POOLCUE', 'Pool Cue', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_PROXMINE', 'Proximity Mine', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_PUMPSHOTGUN', 'Pump Shotgun', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_RAILGUN', 'Rail Gun', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_REVOLVER', 'Revolver', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_RPG', 'RPG', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_SAWNOFFSHOTGUN', 'Sawn Off Shotgun', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_SMG', 'SMG', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_SMOKEGRENADE', 'Smoke Gernade', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_SNIPERRIFLE', 'Sniper Rifle', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_SNOWBALL', 'Snow Ball', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_SNSPISTOL', 'SNS Pistol', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_SPECIALCARBINE', 'Special Rifle', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_STICKYBOMB', 'Sticky Bombs', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_STINGER', 'Stinger', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_STUNGUN', 'Taser', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_SWITCHBLADE', 'Switchblade', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_VINTAGEPISTOL', 'Vintage Pistol', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('WEAPON_WRENCH', 'Wrench', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('agrikesici', 'Sakinleştirici', 0.1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('alive_chicken', 'Canlı Tavuk', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('antidepresan', 'Antidepresan', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('arAmmo', 'Keleş Mermi Kutusu', 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('aracgalerikart', 'Güvenlik Kartı G', 0.2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('bag', 'Çanta', 3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('ballasbandana', 'Mor Bandana', 0.2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('bandage', 'Bandaj', 0.2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('beer', 'Bira', 0.4, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('blackbandana', 'Siyah Bandana ', 0.2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('blackmoney', 'Kara Para', 0, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('bloodsbandana', 'Kırmızı Bandana', 0.2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('blowpipe', 'Chalumeaux', 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('bodycam', 'Polis ve Doktor Bodycam', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('bodycamsivil', 'Normal Bodycam', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('bolchips', 'Cips', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('bread', 'Ekmek', 0.4, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('burger', 'Normal Burger', 0.5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('carokit', 'Kit carosserie', 3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('carotool', 'outils carosserie', 4, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('cash', 'Nakit Para', 0, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('champagne', 'Şanpanya', 0.4, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('chocolate', 'Çikolata', 0.4, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('choped_melon', 'Kesilmiş Karpuz', 0.5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('choped_sarap', 'Şarap', 0.5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('cigarett', 'Sigara', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('clothe', 'Kıyafet', 0.2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('cocacola', 'Cola', 0.4, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('coffee', 'Kahve', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('coke', 'Coke', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('coke_pooch', 'Pochon de coke', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('copper', 'Bakır', 0.2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('cripsbandana', 'Mavi Bandana', 0.2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('cupcake', 'Cup Cake', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('cutted_wood', 'Kesilmiş Odun', 0.4, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('dia_box', 'Elmas Kutusu', 0.2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('diamond', 'Elmas', 0.5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('disc_ammo_pistol', 'Pistol Ammo', 0.2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('disc_ammo_pistol_large', 'Pistol Ammo Large', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('disc_ammo_rifle', 'Rifle Ammo', 0.5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('disc_ammo_rifle_large', 'Rifle Ammo Large', 0.6, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('disc_ammo_shotgun', 'Shotgun Shells', 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('disc_ammo_shotgun_large', 'Shotgun Shells Large', 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('disc_ammo_smg', 'SMG Ammo', 0.4, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('disc_ammo_smg_large', 'SMG Ammo Large', 0.4, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('disc_ammo_snp', 'Sniper Ammo', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('disc_ammo_snp_large', 'Sniper Ammo Large', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('dondurma', 'Dondurma', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('donut', 'Donut', 0.4, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('drill', 'Matkap', 0.8, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('drkenevir', 'Kenevir', 0.5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('drkokain', 'Kokain', 0.5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('drpaketlenmiskokain', 'Paketlenmiş Kokain', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('energy', 'Enerji İçeceği', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('essence', 'Essence', 24, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('fabric', 'Tissu', 80, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('fanta', 'Fanta', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('fish', 'Balık', 0.1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('fishbait', 'Balık Yemi', 0.1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('fishingrod', 'Olta', 3.5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('fixkit', 'Tamir Kiti', 3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('fixtool', 'Tamir Aleti', 3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('fleecakart', 'Güvenlik Kartı F', 0.1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('galerianahtar', 'Anahtar G', 0.2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('gazbottle', 'bouteille de gaz', 11, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('gold', 'Altın', 0.4, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('gold_bar', 'Altın', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('green_phone', 'Yeşil Telefon', 0.1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('greenbandana', 'Yeşil Bandana', 0.2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('gym_membership', 'Gym Üyelik', 0.2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('hackerlaptop', 'Hacker Laptop', 0.6, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('hackerphone', 'Hacker Telefon ', 0.4, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('hackertablet', 'Hacker Tablet', 0.5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('icetea', 'Buzlu Çay', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('id_card', 'ID Card', 0.1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('id_card_f', 'Kimlik Kartı F', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('ied', 'Bomba', 0, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('iron', 'Demir', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('jewels', 'Mücevher', 0.7, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('joint', 'Joint', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('kelepce', 'Kelepçe', 0.4, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('kelepceanahtar', 'Kelepçe Anahtarı', 0.1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('keycard', 'Keycard', 0.4, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('kiriktelefon', 'Bozulmuş Telefon', 0.4, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('kizartmalipatates', 'Kızartılmış Patates', 0.5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('kuyumcukart', 'Güvenlik Kartı K', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('laptop_h', 'Hacker Laptop', 0.4, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('licenseplate', 'License plate', 0.9, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('lighter', 'Çakmak', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('lockpick', 'Lockpick', 0.8, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('mdt', 'Polis Tableti', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('medikit', 'Medkit', 1.6, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('medkit', 'Medkit', 1.6, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('melon', 'Karpuz', 0.5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('meth', 'Meth', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('meth_pooch', 'Pochon de meth', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('mgAmmo', 'SMG Mermi Kutusu', 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('milk', 'Süt', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('opium', 'Opium', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('opium_pooch', 'Pochon de opium', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('orangebandana', 'Turuncu Bandana', 0.2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('pAmmo', 'Tabanca Mermi Kutusu', 10, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('packaged_chicken', 'Paketlenmiş Tavuk', 0.5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('packaged_plank', 'Panoları paketi', 0.4, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('petrol', 'Petrol', 0, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('petrol_raffin', 'Petrol Raffin', 0, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('phone', 'Telefon', 0.4, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('pizza', 'Pizza', 0.6, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('powerade', 'Powerade', 0.4, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('protein_shake', 'Protein Tozu', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('radio', 'Telsiz', 0.5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('radiobreaker', 'Telsiz Kırıcı', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('rum', 'Rom', 0.5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('safecart', 'Güvenlik Anahtarı', 0.1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('sandwich', 'Sandwich', 0.4, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('sarap', 'Üzüm', 0.5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('secure_card', 'Fleeca Bank Güvenlik Kartı', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('shark', 'Köpekbalığı', 15, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('sifrecozmekey_f', 'Şifre Çözme Anahtarı', 0.2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('sinyalbozucu', 'Sinyal Bozucu', 0.5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('skateboard', 'Skateboard', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('slaughtered_chicken', 'Kesilmiş Tavuk', 0.4, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('soda', 'Soda', 0.5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('sportlunch', 'Spor Yemeği', 0.5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('sprite', 'Sprite', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('stone', 'Taş', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('tablet', 'Tablet', 0.4, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('taco', 'Taco', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('tacoekmegi', 'Taco Ekmeği', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('tacoeti', 'Taco Eti', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('tacomalzemesi', 'Taco Malzemesi', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('tacopaketi', 'Paketlenmiş Taco', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('tacos', 'Tacos', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('tavukburger', 'Tavuk Burger', 0.7, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('telefontamirtornavida', 'Tamir Tornavidası', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('temizlikbezi', 'Araç Temizlik Bezi', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('tequila', 'Tekila', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('thermal_charge', 'Thermal Bombası', 0.8, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('turtle', 'Kaplumbağ', 3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('turtlebait', 'Kaplumbağ Yemi', 0.5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('tyre', 'Tekerlek', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('uckatliburger', 'Üç Katlı Burger', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('usbbellek', 'USB Bellek', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('vagosbandana', 'Sarı Bandana', 0.2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('vodka', 'Votka', 0.4, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('wallet', 'Cüzdan', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('washed_stone', 'Yıkanmış Taş', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('water', 'Su', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('weed', 'Weed', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('weed_pooch', 'Pochon de weed', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('whisky', 'Wiski', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('white_phone', 'Beyaz Telefon', 0.1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('whitebandana', 'Beyaz Bandana', 0.2, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('wine', 'Şarap', 0.5, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('wood', 'Odun', 1, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('wool', 'Laine', 0.3, 0, 1);
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) VALUES
	('zaritem', 'Zar', 0.1, 0, 1);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `whitelisted` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.jobs: ~14 rows (ungefär)
DELETE FROM `jobs`;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('ambulance', 'EMS', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('banker', 'Banker', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('cardealer', 'Cardealer', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('fisherman', 'Fisherman', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('fueler', 'Fueler', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('lumberjack', 'Lumberjack', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('mechanic', 'Mechanic', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('miner', 'Miner', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('police', 'Police', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('reporter', 'Journalist', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('slaughterer', 'Slaughterer', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('tailor', 'Tailor', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('taxi', 'Taxi', 0);
INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
	('unemployed', 'Unemployed', 0);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.job_grades
CREATE TABLE IF NOT EXISTS `job_grades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `salary` int(11) NOT NULL,
  `skin_male` longtext COLLATE utf8mb4_bin NOT NULL,
  `skin_female` longtext COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.job_grades: ~36 rows (ungefär)
DELETE FROM `job_grades`;
/*!40000 ALTER TABLE `job_grades` DISABLE KEYS */;
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(1, 'unemployed', 0, 'unemployed', 'Unemployed', 200, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(2, 'banker', 0, 'advisor', 'Advisor', 10, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(3, 'banker', 1, 'banker', 'Banker', 20, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(4, 'banker', 2, 'business_banker', 'Business Banker', 30, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(5, 'banker', 3, 'trader', 'Trader', 40, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(6, 'banker', 4, 'boss', 'Boss', 0, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(7, 'lumberjack', 0, 'employee', 'Employee', 0, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(8, 'fisherman', 0, 'employee', 'Employee', 0, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(9, 'fueler', 0, 'employee', 'Employee', 0, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(10, 'reporter', 0, 'employee', 'Employee', 0, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(11, 'tailor', 0, 'employee', 'Employee', 0, '{"mask_1":0,"arms":1,"glasses_1":0,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":0,"torso_1":24,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":0,"lipstick_2":0,"chain_1":0,"tshirt_1":0,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":36,"tshirt_2":0,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":48,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}', '{"mask_1":0,"arms":5,"glasses_1":5,"hair_color_2":4,"makeup_1":0,"face":19,"glasses":0,"mask_2":0,"makeup_3":0,"skin":29,"helmet_2":0,"lipstick_4":0,"sex":1,"torso_1":52,"makeup_2":0,"bags_2":0,"chain_2":0,"ears_1":-1,"bags_1":0,"bproof_1":0,"shoes_2":1,"lipstick_2":0,"chain_1":0,"tshirt_1":23,"eyebrows_3":0,"pants_2":0,"beard_4":0,"torso_2":0,"beard_2":6,"ears_2":0,"hair_2":0,"shoes_1":42,"tshirt_2":4,"beard_3":0,"hair_1":2,"hair_color_1":0,"pants_1":36,"helmet_1":-1,"bproof_2":0,"eyebrows_4":0,"eyebrows_2":0,"decals_1":0,"age_2":0,"beard_1":5,"shoes":10,"lipstick_1":0,"eyebrows_1":0,"glasses_2":0,"makeup_4":0,"decals_2":0,"lipstick_3":0,"age_1":0}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(12, 'miner', 0, 'employee', 'Employee', 0, '{"tshirt_2":1,"ears_1":8,"glasses_1":15,"torso_2":0,"ears_2":2,"glasses_2":3,"shoes_2":1,"pants_1":75,"shoes_1":51,"bags_1":0,"helmet_2":0,"pants_2":7,"torso_1":71,"tshirt_1":59,"arms":2,"bags_2":0,"helmet_1":0}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(13, 'slaughterer', 0, 'employee', 'Employee', 0, '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":67,"pants_1":36,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":0,"torso_1":56,"beard_2":6,"shoes_1":12,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":15,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":0,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}', '{"age_1":0,"glasses_2":0,"beard_1":5,"decals_2":0,"beard_4":0,"shoes_2":0,"tshirt_2":0,"lipstick_2":0,"hair_2":0,"arms":72,"pants_1":45,"skin":29,"eyebrows_2":0,"shoes":10,"helmet_1":-1,"lipstick_1":0,"helmet_2":0,"hair_color_1":0,"glasses":0,"makeup_4":0,"makeup_1":0,"hair_1":2,"bproof_1":0,"bags_1":0,"mask_1":0,"lipstick_3":0,"chain_1":0,"eyebrows_4":0,"sex":1,"torso_1":49,"beard_2":6,"shoes_1":24,"decals_1":0,"face":19,"lipstick_4":0,"tshirt_1":9,"mask_2":0,"age_2":0,"eyebrows_3":0,"chain_2":0,"glasses_1":5,"ears_1":-1,"bags_2":0,"ears_2":0,"torso_2":0,"bproof_2":0,"makeup_2":0,"eyebrows_1":0,"makeup_3":0,"pants_2":0,"beard_3":0,"hair_color_2":4}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(14, 'mechanic', 0, 'recrue', 'Recruit', 12, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(15, 'mechanic', 1, 'novice', 'Novice', 24, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(16, 'mechanic', 2, 'experimente', 'Experienced', 36, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(17, 'mechanic', 3, 'chief', 'Leader', 48, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(18, 'mechanic', 4, 'boss', 'Boss', 0, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(19, 'taxi', 0, 'recrue', 'Recruit', 12, '{"hair_2":0,"hair_color_2":0,"torso_1":32,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":0,"age_2":0,"glasses_2":0,"ears_2":0,"arms":27,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(20, 'taxi', 1, 'novice', 'Cabby', 24, '{"hair_2":0,"hair_color_2":0,"torso_1":32,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":0,"age_2":0,"glasses_2":0,"ears_2":0,"arms":27,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(21, 'taxi', 2, 'experimente', 'Experienced', 36, '{"hair_2":0,"hair_color_2":0,"torso_1":26,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":57,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":11,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(22, 'taxi', 3, 'uber', 'Uber Cabby', 48, '{"hair_2":0,"hair_color_2":0,"torso_1":26,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":57,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":11,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(23, 'taxi', 4, 'boss', 'Lead Cabby', 0, '{"hair_2":0,"hair_color_2":0,"torso_1":29,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":31,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":4,"age_2":0,"glasses_2":0,"ears_2":0,"arms":1,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":0,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":0,"bproof_1":0,"mask_1":0,"decals_1":0,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":4,"eyebrows_1":0,"face":0,"shoes_1":10,"pants_1":24}', '{"hair_2":0,"hair_color_2":0,"torso_1":57,"bags_1":0,"helmet_2":0,"chain_2":0,"eyebrows_3":0,"makeup_3":0,"makeup_2":0,"tshirt_1":38,"makeup_1":0,"bags_2":0,"makeup_4":0,"eyebrows_4":0,"chain_1":0,"lipstick_4":0,"bproof_2":0,"hair_color_1":0,"decals_2":0,"pants_2":1,"age_2":0,"glasses_2":0,"ears_2":0,"arms":21,"lipstick_1":0,"ears_1":-1,"mask_2":0,"sex":1,"lipstick_3":0,"helmet_1":-1,"shoes_2":0,"beard_2":0,"beard_1":0,"lipstick_2":0,"beard_4":0,"glasses_1":5,"bproof_1":0,"mask_1":0,"decals_1":1,"hair_1":0,"eyebrows_2":0,"beard_3":0,"age_1":0,"tshirt_2":0,"skin":0,"torso_2":0,"eyebrows_1":0,"face":0,"shoes_1":49,"pants_1":11}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(24, 'cardealer', 0, 'recruit', 'Recruit', 10, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(25, 'cardealer', 1, 'novice', 'Novice', 25, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(26, 'cardealer', 2, 'experienced', 'Experienced', 40, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(27, 'cardealer', 3, 'boss', 'Boss', 0, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(28, 'ambulance', 0, 'ambulance', 'Jr. EMT', 20, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(29, 'ambulance', 1, 'doctor', 'EMT', 40, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(30, 'ambulance', 2, 'chief_doctor', 'Sr. EMT', 60, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(31, 'ambulance', 3, 'boss', 'EMT Supervisor', 80, '{"tshirt_2":0,"hair_color_1":5,"glasses_2":3,"shoes":9,"torso_2":3,"hair_color_2":0,"pants_1":24,"glasses_1":4,"hair_1":2,"sex":0,"decals_2":0,"tshirt_1":15,"helmet_1":8,"helmet_2":0,"arms":92,"face":19,"decals_1":60,"torso_1":13,"hair_2":0,"skin":34,"pants_2":5}', '{"tshirt_2":3,"decals_2":0,"glasses":0,"hair_1":2,"torso_1":73,"shoes":1,"hair_color_2":0,"glasses_1":19,"skin":13,"face":6,"pants_2":5,"tshirt_1":75,"pants_1":37,"helmet_1":57,"torso_2":0,"arms":14,"sex":1,"glasses_2":0,"decals_1":0,"hair_2":0,"helmet_2":0,"hair_color_1":0}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(32, 'police', 0, 'recruit', 'Recruit', 20, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(33, 'police', 1, 'officer', 'Officer', 40, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(34, 'police', 2, 'sergeant', 'Sergeant', 60, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(35, 'police', 3, 'lieutenant', 'Lieutenant', 85, '{}', '{}');
INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
	(36, 'police', 4, 'boss', 'Chief', 100, '{}', '{}');
/*!40000 ALTER TABLE `job_grades` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.licenses
CREATE TABLE IF NOT EXISTS `licenses` (
  `type` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.licenses: ~7 rows (ungefär)
DELETE FROM `licenses`;
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
INSERT INTO `licenses` (`type`, `label`) VALUES
	('boat', 'Boat License');
INSERT INTO `licenses` (`type`, `label`) VALUES
	('dmv', 'Driving Permit');
INSERT INTO `licenses` (`type`, `label`) VALUES
	('drive', 'Drivers License');
INSERT INTO `licenses` (`type`, `label`) VALUES
	('drive_bike', 'Motorcycle License');
INSERT INTO `licenses` (`type`, `label`) VALUES
	('drive_truck', 'Commercial Drivers License');
INSERT INTO `licenses` (`type`, `label`) VALUES
	('weapon', 'Weapon Permit');
INSERT INTO `licenses` (`type`, `label`) VALUES
	('weed_processing', 'Weed Processing License');
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.owned_properties
CREATE TABLE IF NOT EXISTS `owned_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` double NOT NULL,
  `rented` int(11) NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.owned_properties: ~0 rows (ungefär)
DELETE FROM `owned_properties`;
/*!40000 ALTER TABLE `owned_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_properties` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.owned_vehicles
CREATE TABLE IF NOT EXISTS `owned_vehicles` (
  `owner` varchar(22) COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(12) COLLATE utf8mb4_bin NOT NULL,
  `vehicle` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_bin NOT NULL DEFAULT 'car',
  `job` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `stored` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.owned_vehicles: ~0 rows (ungefär)
DELETE FROM `owned_vehicles`;
/*!40000 ALTER TABLE `owned_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `owned_vehicles` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.phone_app_chat
CREATE TABLE IF NOT EXISTS `phone_app_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Dumpar data för tabell oph3z.phone_app_chat: ~0 rows (ungefär)
DELETE FROM `phone_app_chat`;
/*!40000 ALTER TABLE `phone_app_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_app_chat` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.phone_calls
CREATE TABLE IF NOT EXISTS `phone_calls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(10) NOT NULL COMMENT 'Name',
  `num` varchar(10) NOT NULL COMMENT 'Phone Number',
  `incoming` int(11) NOT NULL COMMENT 'Define Incoming Call',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `accepts` int(11) NOT NULL COMMENT 'Accept Call',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- Dumpar data för tabell oph3z.phone_calls: ~0 rows (ungefär)
DELETE FROM `phone_calls`;
/*!40000 ALTER TABLE `phone_calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_calls` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.phone_messages
CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transmitter` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `message` varchar(255) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `isRead` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

-- Dumpar data för tabell oph3z.phone_messages: 0 rows
DELETE FROM `phone_messages`;
/*!40000 ALTER TABLE `phone_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_messages` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.phone_users_contacts
CREATE TABLE IF NOT EXISTS `phone_users_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) CHARACTER SET utf8mb4 DEFAULT NULL,
  `number` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `display` varchar(64) CHARACTER SET utf8mb4 NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumpar data för tabell oph3z.phone_users_contacts: 0 rows
DELETE FROM `phone_users_contacts`;
/*!40000 ALTER TABLE `phone_users_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `phone_users_contacts` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.properties
CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `entering` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `exit` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `inside` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `outside` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `ipls` varchar(255) COLLATE utf8mb4_bin DEFAULT '[]',
  `gateway` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_single` int(11) DEFAULT NULL,
  `is_room` int(11) DEFAULT NULL,
  `is_gateway` int(11) DEFAULT NULL,
  `room_menu` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.properties: ~42 rows (ungefär)
DELETE FROM `properties`;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(1, 'WhispymoundDrive', '2677 Whispymound Drive', '{"y":564.89,"z":182.959,"x":119.384}', '{"x":117.347,"y":559.506,"z":183.304}', '{"y":557.032,"z":183.301,"x":118.037}', '{"y":567.798,"z":182.131,"x":119.249}', '[]', NULL, 1, 1, 0, '{"x":118.748,"y":566.573,"z":175.697}', 1500000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(2, 'NorthConkerAvenue2045', '2045 North Conker Avenue', '{"x":372.796,"y":428.327,"z":144.685}', '{"x":373.548,"y":422.982,"z":144.907},', '{"y":420.075,"z":145.904,"x":372.161}', '{"x":372.454,"y":432.886,"z":143.443}', '[]', NULL, 1, 1, 0, '{"x":377.349,"y":429.422,"z":137.3}', 1500000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(3, 'RichardMajesticApt2', 'Richard Majestic, Apt 2', '{"y":-379.165,"z":37.961,"x":-936.363}', '{"y":-365.476,"z":113.274,"x":-913.097}', '{"y":-367.637,"z":113.274,"x":-918.022}', '{"y":-382.023,"z":37.961,"x":-943.626}', '[]', NULL, 1, 1, 0, '{"x":-927.554,"y":-377.744,"z":112.674}', 1700000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(4, 'NorthConkerAvenue2044', '2044 North Conker Avenue', '{"y":440.8,"z":146.702,"x":346.964}', '{"y":437.456,"z":148.394,"x":341.683}', '{"y":435.626,"z":148.394,"x":339.595}', '{"x":350.535,"y":443.329,"z":145.764}', '[]', NULL, 1, 1, 0, '{"x":337.726,"y":436.985,"z":140.77}', 1500000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(5, 'WildOatsDrive', '3655 Wild Oats Drive', '{"y":502.696,"z":136.421,"x":-176.003}', '{"y":497.817,"z":136.653,"x":-174.349}', '{"y":495.069,"z":136.666,"x":-173.331}', '{"y":506.412,"z":135.0664,"x":-177.927}', '[]', NULL, 1, 1, 0, '{"x":-174.725,"y":493.095,"z":129.043}', 1500000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(6, 'HillcrestAvenue2862', '2862 Hillcrest Avenue', '{"y":596.58,"z":142.641,"x":-686.554}', '{"y":591.988,"z":144.392,"x":-681.728}', '{"y":590.608,"z":144.392,"x":-680.124}', '{"y":599.019,"z":142.059,"x":-689.492}', '[]', NULL, 1, 1, 0, '{"x":-680.46,"y":588.6,"z":136.769}', 1500000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(7, 'LowEndApartment', 'Appartement de base', '{"y":-1078.735,"z":28.4031,"x":292.528}', '{"y":-1007.152,"z":-102.002,"x":265.845}', '{"y":-1002.802,"z":-100.008,"x":265.307}', '{"y":-1078.669,"z":28.401,"x":296.738}', '[]', NULL, 1, 1, 0, '{"x":265.916,"y":-999.38,"z":-100.008}', 562500);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(8, 'MadWayneThunder', '2113 Mad Wayne Thunder', '{"y":454.955,"z":96.462,"x":-1294.433}', '{"x":-1289.917,"y":449.541,"z":96.902}', '{"y":446.322,"z":96.899,"x":-1289.642}', '{"y":455.453,"z":96.517,"x":-1298.851}', '[]', NULL, 1, 1, 0, '{"x":-1287.306,"y":455.901,"z":89.294}', 1500000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(9, 'HillcrestAvenue2874', '2874 Hillcrest Avenue', '{"x":-853.346,"y":696.678,"z":147.782}', '{"y":690.875,"z":151.86,"x":-859.961}', '{"y":688.361,"z":151.857,"x":-859.395}', '{"y":701.628,"z":147.773,"x":-855.007}', '[]', NULL, 1, 1, 0, '{"x":-858.543,"y":697.514,"z":144.253}', 1500000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(10, 'HillcrestAvenue2868', '2868 Hillcrest Avenue', '{"y":620.494,"z":141.588,"x":-752.82}', '{"y":618.62,"z":143.153,"x":-759.317}', '{"y":617.629,"z":143.153,"x":-760.789}', '{"y":621.281,"z":141.254,"x":-750.919}', '[]', NULL, 1, 1, 0, '{"x":-762.504,"y":618.992,"z":135.53}', 1500000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(11, 'TinselTowersApt12', 'Tinsel Towers, Apt 42', '{"y":37.025,"z":42.58,"x":-618.299}', '{"y":58.898,"z":97.2,"x":-603.301}', '{"y":58.941,"z":97.2,"x":-608.741}', '{"y":30.603,"z":42.524,"x":-620.017}', '[]', NULL, 1, 1, 0, '{"x":-622.173,"y":54.585,"z":96.599}', 1700000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(12, 'MiltonDrive', 'Milton Drive', '{"x":-775.17,"y":312.01,"z":84.658}', NULL, NULL, '{"x":-775.346,"y":306.776,"z":84.7}', '[]', NULL, 0, 0, 1, NULL, 0);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(13, 'Modern1Apartment', 'Appartement Moderne 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_01_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.661,"y":327.672,"z":210.396}', 1300000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(14, 'Modern2Apartment', 'Appartement Moderne 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_01_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.735,"y":326.757,"z":186.313}', 1300000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(15, 'Modern3Apartment', 'Appartement Moderne 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_01_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.386,"y":330.782,"z":195.08}', 1300000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(16, 'Mody1Apartment', 'Appartement Mode 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_02_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.615,"y":327.878,"z":210.396}', 1300000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(17, 'Mody2Apartment', 'Appartement Mode 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_02_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.297,"y":327.092,"z":186.313}', 1300000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(18, 'Mody3Apartment', 'Appartement Mode 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_02_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.303,"y":330.932,"z":195.085}', 1300000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(19, 'Vibrant1Apartment', 'Appartement Vibrant 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_03_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.885,"y":327.641,"z":210.396}', 1300000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(20, 'Vibrant2Apartment', 'Appartement Vibrant 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_03_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.607,"y":327.344,"z":186.313}', 1300000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(21, 'Vibrant3Apartment', 'Appartement Vibrant 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_03_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.525,"y":330.851,"z":195.085}', 1300000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(22, 'Sharp1Apartment', 'Appartement Persan 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_04_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.527,"y":327.89,"z":210.396}', 1300000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(23, 'Sharp2Apartment', 'Appartement Persan 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_04_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.642,"y":326.497,"z":186.313}', 1300000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(24, 'Sharp3Apartment', 'Appartement Persan 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_04_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.503,"y":331.318,"z":195.085}', 1300000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(25, 'Monochrome1Apartment', 'Appartement Monochrome 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_05_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.289,"y":328.086,"z":210.396}', 1300000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(26, 'Monochrome2Apartment', 'Appartement Monochrome 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_05_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.692,"y":326.762,"z":186.313}', 1300000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(27, 'Monochrome3Apartment', 'Appartement Monochrome 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_05_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.094,"y":330.976,"z":195.085}', 1300000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(28, 'Seductive1Apartment', 'Appartement Séduisant 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_06_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.263,"y":328.104,"z":210.396}', 1300000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(29, 'Seductive2Apartment', 'Appartement Séduisant 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_06_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.655,"y":326.611,"z":186.313}', 1300000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(30, 'Seductive3Apartment', 'Appartement Séduisant 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_06_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.3,"y":331.414,"z":195.085}', 1300000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(31, 'Regal1Apartment', 'Appartement Régal 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_07_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.956,"y":328.257,"z":210.396}', 1300000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(32, 'Regal2Apartment', 'Appartement Régal 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_07_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.545,"y":326.659,"z":186.313}', 1300000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(33, 'Regal3Apartment', 'Appartement Régal 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_07_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.087,"y":331.429,"z":195.123}', 1300000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(34, 'Aqua1Apartment', 'Appartement Aqua 1', NULL, '{"x":-784.194,"y":323.636,"z":210.997}', '{"x":-779.751,"y":323.385,"z":210.997}', NULL, '["apa_v_mp_h_08_a"]', 'MiltonDrive', 0, 1, 0, '{"x":-766.187,"y":328.47,"z":210.396}', 1300000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(35, 'Aqua2Apartment', 'Appartement Aqua 2', NULL, '{"x":-786.8663,"y":315.764,"z":186.913}', '{"x":-781.808,"y":315.866,"z":186.913}', NULL, '["apa_v_mp_h_08_c"]', 'MiltonDrive', 0, 1, 0, '{"x":-795.658,"y":326.563,"z":186.313}', 1300000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(36, 'Aqua3Apartment', 'Appartement Aqua 3', NULL, '{"x":-774.012,"y":342.042,"z":195.686}', '{"x":-779.057,"y":342.063,"z":195.686}', NULL, '["apa_v_mp_h_08_b"]', 'MiltonDrive', 0, 1, 0, '{"x":-765.287,"y":331.084,"z":195.086}', 1300000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(37, 'IntegrityWay', '4 Integrity Way', '{"x":-47.804,"y":-585.867,"z":36.956}', NULL, NULL, '{"x":-54.178,"y":-583.762,"z":35.798}', '[]', NULL, 0, 0, 1, NULL, 0);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(38, 'IntegrityWay28', '4 Integrity Way - Apt 28', NULL, '{"x":-31.409,"y":-594.927,"z":79.03}', '{"x":-26.098,"y":-596.909,"z":79.03}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{"x":-11.923,"y":-597.083,"z":78.43}', 1700000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(39, 'IntegrityWay30', '4 Integrity Way - Apt 30', NULL, '{"x":-17.702,"y":-588.524,"z":89.114}', '{"x":-16.21,"y":-582.569,"z":89.114}', NULL, '[]', 'IntegrityWay', 0, 1, 0, '{"x":-26.327,"y":-588.384,"z":89.123}', 1700000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(40, 'DellPerroHeights', 'Dell Perro Heights', '{"x":-1447.06,"y":-538.28,"z":33.74}', NULL, NULL, '{"x":-1440.022,"y":-548.696,"z":33.74}', '[]', NULL, 0, 0, 1, NULL, 0);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(41, 'DellPerroHeightst4', 'Dell Perro Heights - Apt 28', NULL, '{"x":-1452.125,"y":-540.591,"z":73.044}', '{"x":-1455.435,"y":-535.79,"z":73.044}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{"x":-1467.058,"y":-527.571,"z":72.443}', 1700000);
INSERT INTO `properties` (`id`, `name`, `label`, `entering`, `exit`, `inside`, `outside`, `ipls`, `gateway`, `is_single`, `is_room`, `is_gateway`, `room_menu`, `price`) VALUES
	(42, 'DellPerroHeightst7', 'Dell Perro Heights - Apt 30', NULL, '{"x":-1451.562,"y":-523.535,"z":55.928}', '{"x":-1456.02,"y":-519.209,"z":55.929}', NULL, '[]', 'DellPerroHeights', 0, 1, 0, '{"x":-1457.026,"y":-530.219,"z":55.937}', 1700000);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.rented_vehicles
CREATE TABLE IF NOT EXISTS `rented_vehicles` (
  `vehicle` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(12) COLLATE utf8mb4_bin NOT NULL,
  `player_name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `base_price` int(11) NOT NULL,
  `rent_price` int(11) NOT NULL,
  `owner` varchar(22) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.rented_vehicles: ~0 rows (ungefär)
DELETE FROM `rented_vehicles`;
/*!40000 ALTER TABLE `rented_vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `rented_vehicles` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.society_moneywash
CREATE TABLE IF NOT EXISTS `society_moneywash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `society` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.society_moneywash: ~0 rows (ungefär)
DELETE FROM `society_moneywash`;
/*!40000 ALTER TABLE `society_moneywash` DISABLE KEYS */;
/*!40000 ALTER TABLE `society_moneywash` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.users
CREATE TABLE IF NOT EXISTS `users` (
  `identifier` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `skin` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `job` varchar(50) COLLATE utf8mb4_bin DEFAULT 'unemployed',
  `job_grade` int(11) DEFAULT 0,
  `loadout` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `permission_level` int(11) DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `lastname` varchar(50) COLLATE utf8mb4_bin DEFAULT '',
  `dateofbirth` varchar(25) COLLATE utf8mb4_bin DEFAULT '',
  `sex` varchar(10) COLLATE utf8mb4_bin DEFAULT '',
  `height` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  `status` longtext COLLATE utf8mb4_bin DEFAULT NULL,
  `last_property` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `is_dead` tinyint(1) DEFAULT 0,
  `phone_number` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.users: ~0 rows (ungefär)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.user_accounts
CREATE TABLE IF NOT EXISTS `user_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `money` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.user_accounts: ~0 rows (ungefär)
DELETE FROM `user_accounts`;
/*!40000 ALTER TABLE `user_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_accounts` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.user_inventory
CREATE TABLE IF NOT EXISTS `user_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(22) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.user_inventory: ~0 rows (ungefär)
DELETE FROM `user_inventory`;
/*!40000 ALTER TABLE `user_inventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_inventory` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.user_lastcharacter
CREATE TABLE IF NOT EXISTS `user_lastcharacter` (
  `steamid` varchar(255) NOT NULL,
  `charid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumpar data för tabell oph3z.user_lastcharacter: ~0 rows (ungefär)
DELETE FROM `user_lastcharacter`;
/*!40000 ALTER TABLE `user_lastcharacter` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_lastcharacter` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.user_licenses
CREATE TABLE IF NOT EXISTS `user_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `owner` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.user_licenses: ~0 rows (ungefär)
DELETE FROM `user_licenses`;
/*!40000 ALTER TABLE `user_licenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_licenses` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.vehicles
CREATE TABLE IF NOT EXISTS `vehicles` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `model` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.vehicles: ~240 rows (ungefär)
DELETE FROM `vehicles`;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Akuma', 'AKUMA', 7500, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Adder', 'adder', 900000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Alpha', 'alpha', 60000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Ardent', 'ardent', 1150000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Asea', 'asea', 5500, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Autarch', 'autarch', 1955000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Avarus', 'avarus', 18000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bagger', 'bagger', 13500, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Baller', 'baller2', 40000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Baller Sport', 'baller3', 60000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Banshee', 'banshee', 70000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Banshee 900R', 'banshee2', 255000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bati 801', 'bati', 12000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bati 801RR', 'bati2', 19000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bestia GTS', 'bestiagts', 55000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('BF400', 'bf400', 6500, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bf Injection', 'bfinjection', 16000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bifta', 'bifta', 12000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bison', 'bison', 45000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Blade', 'blade', 15000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Blazer', 'blazer', 6500, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Blazer Sport', 'blazer4', 8500, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('blazer5', 'blazer5', 1755600, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Blista', 'blista', 8000, 'compacts');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('BMX (velo)', 'bmx', 160, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bobcat XL', 'bobcatxl', 32000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Brawler', 'brawler', 45000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Brioso R/A', 'brioso', 18000, 'compacts');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Btype', 'btype', 62000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Btype Hotroad', 'btype2', 155000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Btype Luxe', 'btype3', 85000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Buccaneer', 'buccaneer', 18000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Buccaneer Rider', 'buccaneer2', 24000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Buffalo', 'buffalo', 12000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Buffalo S', 'buffalo2', 20000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bullet', 'bullet', 90000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Burrito', 'burrito3', 19000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Camper', 'camper', 42000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Carbonizzare', 'carbonizzare', 75000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Carbon RS', 'carbonrs', 18000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Casco', 'casco', 30000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Cavalcade', 'cavalcade2', 55000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Cheetah', 'cheetah', 375000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Chimera', 'chimera', 38000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Chino', 'chino', 15000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Chino Luxe', 'chino2', 19000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Cliffhanger', 'cliffhanger', 9500, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Cognoscenti Cabrio', 'cogcabrio', 55000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Cognoscenti', 'cognoscenti', 55000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Comet', 'comet2', 65000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Comet 5', 'comet5', 1145000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Contender', 'contender', 70000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Coquette', 'coquette', 65000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Coquette Classic', 'coquette2', 40000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Coquette BlackFin', 'coquette3', 55000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Cruiser (velo)', 'cruiser', 510, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Cyclone', 'cyclone', 1890000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Daemon', 'daemon', 11500, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Daemon High', 'daemon2', 13500, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Defiler', 'defiler', 9800, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Deluxo', 'deluxo', 4721500, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Dominator', 'dominator', 35000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Double T', 'double', 28000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Dubsta', 'dubsta', 45000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Dubsta Luxuary', 'dubsta2', 60000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Bubsta 6x6', 'dubsta3', 120000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Dukes', 'dukes', 28000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Dune Buggy', 'dune', 8000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Elegy', 'elegy2', 38500, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Emperor', 'emperor', 8500, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Enduro', 'enduro', 5500, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Entity XF', 'entityxf', 425000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Esskey', 'esskey', 4200, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Exemplar', 'exemplar', 32000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('F620', 'f620', 40000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Faction', 'faction', 20000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Faction Rider', 'faction2', 30000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Faction XL', 'faction3', 40000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Faggio', 'faggio', 1900, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Vespa', 'faggio2', 2800, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Felon', 'felon', 42000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Felon GT', 'felon2', 55000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Feltzer', 'feltzer2', 55000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Stirling GT', 'feltzer3', 65000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Fixter (velo)', 'fixter', 225, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('FMJ', 'fmj', 185000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Fhantom', 'fq2', 17000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Fugitive', 'fugitive', 12000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Furore GT', 'furoregt', 45000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Fusilade', 'fusilade', 40000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Gargoyle', 'gargoyle', 16500, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Gauntlet', 'gauntlet', 30000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Gang Burrito', 'gburrito', 45000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Burrito', 'gburrito2', 29000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Glendale', 'glendale', 6500, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Grabger', 'granger', 50000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Gresley', 'gresley', 47500, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('GT 500', 'gt500', 785000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Guardian', 'guardian', 45000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Hakuchou', 'hakuchou', 31000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Hakuchou Sport', 'hakuchou2', 55000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Hermes', 'hermes', 535000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Hexer', 'hexer', 12000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Hotknife', 'hotknife', 125000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Huntley S', 'huntley', 40000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Hustler', 'hustler', 625000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Infernus', 'infernus', 180000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Innovation', 'innovation', 23500, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Intruder', 'intruder', 7500, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Issi', 'issi2', 10000, 'compacts');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Jackal', 'jackal', 38000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Jester', 'jester', 65000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Jester(Racecar)', 'jester2', 135000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Journey', 'journey', 6500, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Kamacho', 'kamacho', 345000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Khamelion', 'khamelion', 38000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Kuruma', 'kuruma', 30000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Landstalker', 'landstalker', 35000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('RE-7B', 'le7b', 325000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Lynx', 'lynx', 40000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Mamba', 'mamba', 70000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Manana', 'manana', 12800, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Manchez', 'manchez', 5300, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Massacro', 'massacro', 65000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Massacro(Racecar)', 'massacro2', 130000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Mesa', 'mesa', 16000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Mesa Trail', 'mesa3', 40000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Minivan', 'minivan', 13000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Monroe', 'monroe', 55000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('The Liberator', 'monster', 210000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Moonbeam', 'moonbeam', 18000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Moonbeam Rider', 'moonbeam2', 35000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Nemesis', 'nemesis', 5800, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Neon', 'neon', 1500000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Nightblade', 'nightblade', 35000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Nightshade', 'nightshade', 65000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('9F', 'ninef', 65000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('9F Cabrio', 'ninef2', 80000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Omnis', 'omnis', 35000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Oppressor', 'oppressor', 3524500, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Oracle XS', 'oracle2', 35000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Osiris', 'osiris', 160000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Panto', 'panto', 10000, 'compacts');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Paradise', 'paradise', 19000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Pariah', 'pariah', 1420000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Patriot', 'patriot', 55000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('PCJ-600', 'pcj', 6200, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Penumbra', 'penumbra', 28000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Pfister', 'pfister811', 85000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Phoenix', 'phoenix', 12500, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Picador', 'picador', 18000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Pigalle', 'pigalle', 20000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Prairie', 'prairie', 12000, 'compacts');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Premier', 'premier', 8000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Primo Custom', 'primo2', 14000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('X80 Proto', 'prototipo', 2500000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Radius', 'radi', 29000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('raiden', 'raiden', 1375000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Rapid GT', 'rapidgt', 35000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Rapid GT Convertible', 'rapidgt2', 45000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Rapid GT3', 'rapidgt3', 885000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Reaper', 'reaper', 150000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Rebel', 'rebel2', 35000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Regina', 'regina', 5000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Retinue', 'retinue', 615000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Revolter', 'revolter', 1610000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('riata', 'riata', 380000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Rocoto', 'rocoto', 45000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Ruffian', 'ruffian', 6800, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Ruiner 2', 'ruiner2', 5745600, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Rumpo', 'rumpo', 15000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Rumpo Trail', 'rumpo3', 19500, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sabre Turbo', 'sabregt', 20000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sabre GT', 'sabregt2', 25000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sanchez', 'sanchez', 5300, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sanchez Sport', 'sanchez2', 5300, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sanctus', 'sanctus', 25000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sandking', 'sandking', 55000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Savestra', 'savestra', 990000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('SC 1', 'sc1', 1603000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Schafter', 'schafter2', 25000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Schafter V12', 'schafter3', 50000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Scorcher (velo)', 'scorcher', 280, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Seminole', 'seminole', 25000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sentinel', 'sentinel', 32000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sentinel XS', 'sentinel2', 40000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sentinel3', 'sentinel3', 650000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Seven 70', 'seven70', 39500, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('ETR1', 'sheava', 220000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Shotaro Concept', 'shotaro', 320000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Slam Van', 'slamvan3', 11500, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sovereign', 'sovereign', 22000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Stinger', 'stinger', 80000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Stinger GT', 'stingergt', 75000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Streiter', 'streiter', 500000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Stretch', 'stretch', 90000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Stromberg', 'stromberg', 3185350, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sultan', 'sultan', 15000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Sultan RS', 'sultanrs', 65000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Super Diamond', 'superd', 130000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Surano', 'surano', 50000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Surfer', 'surfer', 12000, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('T20', 't20', 300000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Tailgater', 'tailgater', 30000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Tampa', 'tampa', 16000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Drift Tampa', 'tampa2', 80000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Thrust', 'thrust', 24000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Tri bike (velo)', 'tribike3', 520, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Trophy Truck', 'trophytruck', 60000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Trophy Truck Limited', 'trophytruck2', 80000, 'offroad');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Tropos', 'tropos', 40000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Turismo R', 'turismor', 350000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Tyrus', 'tyrus', 600000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Vacca', 'vacca', 120000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Vader', 'vader', 7200, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Verlierer', 'verlierer2', 70000, 'sports');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Vigero', 'vigero', 12500, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Virgo', 'virgo', 14000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Viseris', 'viseris', 875000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Visione', 'visione', 2250000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Voltic', 'voltic', 90000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Voltic 2', 'voltic2', 3830400, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Voodoo', 'voodoo', 7200, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Vortex', 'vortex', 9800, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Warrener', 'warrener', 4000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Washington', 'washington', 9000, 'sedans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Windsor', 'windsor', 95000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Windsor Drop', 'windsor2', 125000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Woflsbane', 'wolfsbane', 9000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('XLS', 'xls', 32000, 'suvs');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Yosemite', 'yosemite', 485000, 'muscle');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Youga', 'youga', 10800, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Youga Luxuary', 'youga2', 14500, 'vans');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Z190', 'z190', 900000, 'sportsclassics');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Zentorno', 'zentorno', 1500000, 'super');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Zion', 'zion', 36000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Zion Cabrio', 'zion2', 45000, 'coupes');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Zombie', 'zombiea', 9500, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Zombie Luxuary', 'zombieb', 12000, 'motorcycles');
INSERT INTO `vehicles` (`name`, `model`, `price`, `category`) VALUES
	('Z-Type', 'ztype', 220000, 'sportsclassics');
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.vehicle_categories
CREATE TABLE IF NOT EXISTS `vehicle_categories` (
  `name` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(60) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.vehicle_categories: ~11 rows (ungefär)
DELETE FROM `vehicle_categories`;
/*!40000 ALTER TABLE `vehicle_categories` DISABLE KEYS */;
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('compacts', 'Compacts');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('coupes', 'Coupes');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('motorcycles', 'Motos');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('muscle', 'Muscle');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('offroad', 'Off Road');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('sedans', 'Sedans');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('sports', 'Sports');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('sportsclassics', 'Sports Classics');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('super', 'Super');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('suvs', 'SUVs');
INSERT INTO `vehicle_categories` (`name`, `label`) VALUES
	('vans', 'Vans');
/*!40000 ALTER TABLE `vehicle_categories` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.vehicle_sold
CREATE TABLE IF NOT EXISTS `vehicle_sold` (
  `client` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `model` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `plate` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `soldby` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.vehicle_sold: ~0 rows (ungefär)
DELETE FROM `vehicle_sold`;
/*!40000 ALTER TABLE `vehicle_sold` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_sold` ENABLE KEYS */;

-- Dumpar struktur för tabell oph3z.weashops
CREATE TABLE IF NOT EXISTS `weashops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zone` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- Dumpar data för tabell oph3z.weashops: ~40 rows (ungefär)
DELETE FROM `weashops`;
/*!40000 ALTER TABLE `weashops` DISABLE KEYS */;
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(1, 'GunShop', 'WEAPON_PISTOL', 300);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(2, 'BlackWeashop', 'WEAPON_PISTOL', 500);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(3, 'GunShop', 'WEAPON_FLASHLIGHT', 60);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(4, 'BlackWeashop', 'WEAPON_FLASHLIGHT', 70);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(5, 'GunShop', 'WEAPON_MACHETE', 90);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(6, 'BlackWeashop', 'WEAPON_MACHETE', 110);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(7, 'GunShop', 'WEAPON_NIGHTSTICK', 150);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(8, 'BlackWeashop', 'WEAPON_NIGHTSTICK', 150);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(9, 'GunShop', 'WEAPON_BAT', 100);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(10, 'BlackWeashop', 'WEAPON_BAT', 100);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(11, 'GunShop', 'WEAPON_STUNGUN', 50);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(12, 'BlackWeashop', 'WEAPON_STUNGUN', 50);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(13, 'GunShop', 'WEAPON_MICROSMG', 1400);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(14, 'BlackWeashop', 'WEAPON_MICROSMG', 1700);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(15, 'GunShop', 'WEAPON_PUMPSHOTGUN', 3400);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(16, 'BlackWeashop', 'WEAPON_PUMPSHOTGUN', 3500);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(17, 'GunShop', 'WEAPON_ASSAULTRIFLE', 10000);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(18, 'BlackWeashop', 'WEAPON_ASSAULTRIFLE', 11000);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(19, 'GunShop', 'WEAPON_SPECIALCARBINE', 15000);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(20, 'BlackWeashop', 'WEAPON_SPECIALCARBINE', 16500);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(21, 'GunShop', 'WEAPON_SNIPERRIFLE', 22000);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(22, 'BlackWeashop', 'WEAPON_SNIPERRIFLE', 24000);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(23, 'GunShop', 'WEAPON_FIREWORK', 18000);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(24, 'BlackWeashop', 'WEAPON_FIREWORK', 20000);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(25, 'GunShop', 'WEAPON_GRENADE', 500);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(26, 'BlackWeashop', 'WEAPON_GRENADE', 650);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(27, 'GunShop', 'WEAPON_BZGAS', 200);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(28, 'BlackWeashop', 'WEAPON_BZGAS', 350);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(29, 'GunShop', 'WEAPON_FIREEXTINGUISHER', 100);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(30, 'BlackWeashop', 'WEAPON_FIREEXTINGUISHER', 100);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(31, 'GunShop', 'WEAPON_BALL', 50);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(32, 'BlackWeashop', 'WEAPON_BALL', 50);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(33, 'GunShop', 'WEAPON_SMOKEGRENADE', 100);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(34, 'BlackWeashop', 'WEAPON_SMOKEGRENADE', 100);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(35, 'BlackWeashop', 'WEAPON_APPISTOL', 1100);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(36, 'BlackWeashop', 'WEAPON_CARBINERIFLE', 12000);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(37, 'BlackWeashop', 'WEAPON_HEAVYSNIPER', 30000);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(38, 'BlackWeashop', 'WEAPON_MINIGUN', 45000);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(39, 'BlackWeashop', 'WEAPON_RAILGUN', 50000);
INSERT INTO `weashops` (`id`, `zone`, `item`, `price`) VALUES
	(40, 'BlackWeashop', 'WEAPON_STICKYBOMB', 500);
/*!40000 ALTER TABLE `weashops` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
