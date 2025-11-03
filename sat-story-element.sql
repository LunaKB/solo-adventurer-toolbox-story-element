-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema sat_story_element
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `sat_story_element` ;

-- -----------------------------------------------------
-- Schema sat_story_element
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sat_story_element` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `sat_story_element` ;

-- -----------------------------------------------------
-- Table `sat_story_element`.`creatures`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_story_element`.`creatures` ;

CREATE TABLE IF NOT EXISTS `sat_story_element`.`creatures` (
  `id` INT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO `sat_story_element`.`creatures` (id, name) 
VALUES
	(2, 'Monster!'),
	(3, 'Bear'),
	(4, 'Cat'),
	(5, 'Dire Wolf'),
	(6, 'Dog'),
	(7, 'Draft Horse'),
	(8, 'Eagle'),
	(9, 'Elephant'),
	(10, 'Elk'),
	(11, 'Flying Snake'),
	(12, 'Ape'),
	(13, 'Giant Ape'),
	(14, 'Giant Badger'),
	(15, 'Giant Boar'),
	(16, 'Giant Eagle'),
	(17, 'Giant Elk'),
	(18, 'Giant Fire Beetle'),
	(19, 'Giant Frog'),
	(20, 'Giant Lizard'),
	(21, 'Giant Owl'),
	(22, 'Giant Rat'),
	(23, 'Giant Spider'),
	(24, 'Goat'),
	(25, 'Hawk'),
	(26, 'Mastiff'),
	(27, 'Mule'),
	(28, 'Owl'),
	(29, 'Riding Horse'),
	(30, 'Panther'),
	(31, 'Poisonous Snake'),
	(32, 'Pony'),
	(33, 'Rat'),
	(34, 'Raven'),
	(35, 'Swarm of Insects'),
	(36, 'Swarm of rats'),
	(37, 'Swarm of ravens'),
	(38, 'Vulture'),
	(39, 'Weasel'),
	(40, 'Wolf');


-- -----------------------------------------------------
-- Table `sat_story_element`.`event_urban`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_story_element`.`event_urban` ;

CREATE TABLE IF NOT EXISTS `sat_story_element`.`event_urban` (
  `id` INT NOT NULL,
  `event_text` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO `sat_story_element`.`event_urban` (id, event_text) 
VALUES
	(1, 'Wedding'),
	(2, 'Wedding'),
	(3, 'Name-giving day celebrations'),
	(4, 'Name-giving day celebrations'),
	(5, 'Public holiday'),
	(6, 'Public holiday'),
	(7, 'Procession'),
	(8, 'Procession'),
	(9, 'Harvest Festival'),
	(10, 'Harvest Festival'),
	(11, 'Festival celebrating a god'),
	(12, 'Festival celebrating a god'),
	(13, 'Celebration of a hero’s return'),
	(14, 'Celebration of a hero’s return'),
	(15, 'Market day'),
	(16, 'Market day'),
	(17, 'Religious rally'),
	(18, 'Religious rally'),
	(19, 'Official proclamation'),
	(20, 'Official proclamation'),
	(21, 'Amnesty'),
	(22, 'Amnesty'),
	(23, 'Sudden storm / gale force winds'),
	(24, 'Sudden storm / gale force winds'),
	(25, 'Election / Change of civic leader'),
	(26, 'Election / Change of civic leader'),
	(27, 'Yearly local festival'),
	(28, 'Yearly local festival'),
	(29, 'Assassination'),
	(30, 'Assassination'),
	(31, 'Performance of a play'),
	(32, 'Performance of a play'),
	(33, 'Musical concert'),
	(34, 'Musical concert'),
	(35, 'Buskers performance'),
	(36, 'Buskers performance'),
	(37, 'Orator / storyteller'),
	(38, 'Orator / storyteller'),
	(39, 'Alefest'),
	(40, 'Alefest'),
	(41, 'Warrior exhibition'),
	(42, 'Warrior exhibition'),
	(43, 'Procession of royals'),
	(44, 'Procession of royals'),
	(45, 'Museum exhibition'),
	(46, 'Museum exhibition'),
	(47, 'New building being opened'),
	(48, 'New building being opened'),
	(49, 'Large army passing through town'),
	(50, 'Large army passing through town'),
	(51, 'Gridlocked traffic'),
	(52, 'Gridlocked traffic'),
	(53, 'Monster invasion!'),
	(54, 'Monster invasion!'),
	(55, 'Conference of Wizards'),
	(56, 'Conference of Wizards'),
	(57, 'Graduation ceremony'),
	(58, 'Graduation ceremony'),
	(59, 'Traffic accident'),
	(60, 'Traffic accident'),
	(61, 'Freakish weather event'),
	(62, 'Freakish weather event'),
	(63, 'Fire in Building'),
	(64, 'Fire in Building'),
	(65, 'Notable local figure assassinated'),
	(66, 'Notable local figure assassinated'),
	(67, 'Public duel'),
	(68, 'Public duel'),
	(69, 'Large scale fire'),
	(70, 'Large scale fire'),
	(71, 'Sinkhole opens'),
	(72, 'Sinkhole opens'),
	(73, 'Local army returning after recent skirmish'),
	(74, 'Local army returning after recent skirmish'),
	(75, 'Co-ordinated attack'),
	(76, 'Co-ordinated attack'),
	(77, 'Protest'),
	(78, 'Protest'),
	(79, 'Flood'),
	(80, 'Flood'),
	(81, 'Martial law enforced (Reason?)'),
	(82, 'Martial law enforced (Reason?)'),
	(83, 'Wild magic eruption'),
	(84, 'Wild magic eruption'),
	(85, 'Military conscription'),
	(86, 'Military conscription'),
	(87, 'Revolution taking place (scale uncertain)'),
	(88, 'Revolution taking place (scale uncertain)'),
	(89, 'Public Execution'),
	(90, 'Public Execution'),
	(91, 'Storm'),
	(92, 'Storm'),
	(93, 'Plague'),
	(94, 'Plague'),
	(95, 'Earthquake'),
	(96, 'Earthquake'),
	(97, 'Dimensional disruption'),
	(98, 'Dimensional disruption'),
	(99, 'Invading force'),
	(100, 'Invading force');


-- -----------------------------------------------------
-- Table `sat_story_element`.`person_adventurer_level_early`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_story_element`.`person_adventurer_level_early` ;

CREATE TABLE IF NOT EXISTS `sat_story_element`.`person_adventurer_level_early` (
  `id` INT NOT NULL,
  `text` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_story_element`.`person_adventurer_level_late`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_story_element`.`person_adventurer_level_late` ;

CREATE TABLE IF NOT EXISTS `sat_story_element`.`person_adventurer_level_late` (
  `id` INT NOT NULL,
  `text` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_story_element`.`person_adventurer_level_mid`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_story_element`.`person_adventurer_level_mid` ;

CREATE TABLE IF NOT EXISTS `sat_story_element`.`person_adventurer_level_mid` (
  `id` INT NOT NULL,
  `text` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_story_element`.`person_adventurer_tier`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_story_element`.`person_adventurer_tier` ;

CREATE TABLE IF NOT EXISTS `sat_story_element`.`person_adventurer_tier` (
  `id` INT NOT NULL,
  `text` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_story_element`.`person_alignment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_story_element`.`person_alignment` ;

CREATE TABLE IF NOT EXISTS `sat_story_element`.`person_alignment` (
  `id` INT NOT NULL,
  `text` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_story_element`.`person_classes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_story_element`.`person_classes` ;

CREATE TABLE IF NOT EXISTS `sat_story_element`.`person_classes` (
  `id` INT NOT NULL,
  `class_text` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO `sat_story_element`.`person_classes` (id, class_text) 
VALUES
	(1, 'Barbarian'),
	(2, 'Bard'),
	(3, 'Cleric'),
	(4, 'Druid'),
	(5, 'Fighter'),
	(6, 'Monk'),
	(7, 'Paladin'),
	(8, 'Ranger'),
	(9, 'Rogue'),
	(10, 'Sorcerer'),
	(11, 'Warlock'),
	(12, 'Wizard');


-- -----------------------------------------------------
-- Table `sat_story_element`.`person_dispositions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_story_element`.`person_dispositions` ;

CREATE TABLE IF NOT EXISTS `sat_story_element`.`person_dispositions` (
  `id` INT NOT NULL,
  `disposition_text` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO `sat_story_element`.`person_dispositions` (id, disposition_text) 
VALUES
	(1, 'Shy'),
	(2, 'Shy'),
	(3, 'Aloof / Superior'),
	(4, 'Aloof / Superior'),
	(5, 'Foolish / idiotic'),
	(6, 'Foolish / idiotic'),
	(7, 'Foolish / idiotic'),
	(8, 'Foolish / idiotic'),
	(9, 'Cocky / Arrogant'),
	(10, 'Cocky / Arrogant'),
	(11, 'Envious'),
	(12, 'Envious'),
	(13, 'Grumpy'),
	(14, 'Grumpy'),
	(15, 'Mischievous (good or evil)'),
	(16, 'Mischievous (good or evil)'),
	(17, 'Playful / Joking'),
	(18, 'Playful / Joking'),
	(19, 'Playful / Joking'),
	(20, 'Playful / Joking'),
	(21, 'Insane'),
	(22, 'Insane'),
	(23, 'Abrupt / Unpredictable'),
	(24, 'Abrupt / Unpredictable'),
	(25, 'Melancholic / Airy'),
	(26, 'Melancholic / Airy'),
	(27, 'Romantic'),
	(28, 'Romantic'),
	(29, 'Romantic'),
	(30, 'Romantic'),
	(31, 'Frustrated'),
	(32, 'Frustrated'),
	(33, 'Stressed'),
	(34, 'Stressed'),
	(35, 'Weird'),
	(36, 'Weird'),
	(37, 'Serene / Peaceful'),
	(38, 'Serene / Peaceful'),
	(39, 'Serene / Peaceful'),
	(40, 'Serene / Peaceful'),
	(41, 'Cagy / Mysterious'),
	(42, 'Cagy / Mysterious'),
	(43, 'Distracted'),
	(44, 'Distracted'),
	(45, 'Sad'),
	(46, 'Sad'),
	(47, 'Single-Minded'),
	(48, 'Single-Minded'),
	(49, 'Single-Minded'),
	(50, 'Single-Minded'),
	(51, 'Angry'),
	(52, 'Angry'),
	(53, 'Blase'),
	(54, 'Blase'),
	(55, 'Joyous'),
	(56, 'Joyous'),
	(57, 'Vengeful'),
	(58, 'Vengeful'),
	(59, 'Vengeful'),
	(60, 'Vengeful'),
	(61, 'Malicious'),
	(62, 'Malicious'),
	(63, 'Afraid'),
	(64, 'Afraid'),
	(65, 'Disgusted'),
	(66, 'Disgusted'),
	(67, 'Resignation'),
	(68, 'Resignation'),
	(69, 'Resignation'),
	(70, 'Resignation'),
	(71, 'Nostalgic'),
	(72, 'Nostalgic'),
	(73, 'Envious'),
	(74, 'Envious'),
	(75, 'Determined'),
	(76, 'Determined'),
	(77, 'Pity'),
	(78, 'Pity'),
	(79, 'Pity'),
	(80, 'Pity'),
	(81, 'Disdain'),
	(82, 'Disdain'),
	(83, 'Hopelessness'),
	(84, 'Hopelessness'),
	(85, 'Hopelessness'),
	(86, 'Amused'),
	(87, 'Amused'),
	(88, 'Amused'),
	(89, 'Reckless'),
	(90, 'Reckless'),
	(91, 'Reckless'),
	(92, 'Reckless'),
	(93, 'Lonely'),
	(94, 'Lonely'),
	(95, 'Lonely'),
	(96, 'Frivolous'),
	(97, 'Frivolous'),
	(98, 'Frivolous'),
	(99, 'Disoriented'),
	(100, 'Disoriented');

-- -----------------------------------------------------
-- Table `sat_story_element`.`person_economic_status`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_story_element`.`person_economic_status` ;

CREATE TABLE IF NOT EXISTS `sat_story_element`.`person_economic_status` (
  `id` INT NOT NULL,
  `text` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_story_element`.`person_gender`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_story_element`.`person_gender` ;

CREATE TABLE IF NOT EXISTS `sat_story_element`.`person_gender` (
  `id` INT NOT NULL,
  `text` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_story_element`.`person_profession`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_story_element`.`person_profession` ;

CREATE TABLE IF NOT EXISTS `sat_story_element`.`person_profession` (
  `id` INT NOT NULL,
  `text` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_story_element`.`person_race`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_story_element`.`person_race` ;

CREATE TABLE IF NOT EXISTS `sat_story_element`.`person_race` (
  `id` INT NOT NULL,
  `text` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_story_element`.`person_race_uncommon`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_story_element`.`person_race_uncommon` ;

CREATE TABLE IF NOT EXISTS `sat_story_element`.`person_race_uncommon` (
  `id` INT NOT NULL,
  `text` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_story_element`.`person_trades`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_story_element`.`person_trades` ;

CREATE TABLE IF NOT EXISTS `sat_story_element`.`person_trades` (
  `id` INT NOT NULL,
  `trade_text` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO `sat_story_element`.`person_trades` (id, trade_text) 
VALUES
	(1, 'Farmer'),
	(2, 'Farmer'),
	(3, 'Artist'),
	(4, 'Artist'),
	(5, 'Herbalist'),
	(6, 'Herbalist'),
	(7, 'Horse trainer'),
	(8, 'Horse trainer'),
	(9, 'Blacksmith'),
	(10, 'Blacksmith'),
	(11, 'Finesmith'),
	(12, 'Finesmith'),
	(13, 'Locksmith'),
	(14, 'Locksmith'),
	(15, 'Jeweller'),
	(16, 'Jeweller'),
	(17, 'Entertainer'),
	(18, 'Entertainer'),
	(19, 'Teacher'),
	(20, 'Teacher'),
	(21, 'Armourer'),
	(22, 'Armourer'),
	(23, 'Cook'),
	(24, 'Cook'),
	(25, 'Tailor'),
	(26, 'Tailor'),
	(27, 'Ropemaker'),
	(28, 'Ropemaker'),
	(29, 'Fletcher'),
	(30, 'Fletcher'),
	(31, 'Cooper'),
	(32, 'Cooper'),
	(33, 'Cartwright'),
	(34, 'Cartwright'),
	(35, 'Carpenter'),
	(36, 'Carpenter'),
	(37, 'Gravedigger / Undertaker'),
	(38, 'Gravedigger / Undertaker'),
	(39, 'Winemaker'),
	(40, 'Winemaker'),
	(41, 'Ferryman'),
	(42, 'Ferryman'),
	(43, 'Boatbuilder'),
	(44, 'Boatbuilder'),
	(45, 'Ship’s Captain'),
	(46, 'Ship’s Captain'),
	(47, 'Fortune Teller'),
	(48, 'Fortune Teller'),
	(49, 'Handmaiden'),
	(50, 'Handmaiden'),
	(51, 'Miller'),
	(52, 'Miller'),
	(53, 'Executioner'),
	(54, 'Executioner'),
	(55, 'Restauranteur'),
	(56, 'Restauranteur'),
	(57, 'Priest / Cultist'),
	(58, 'Priest / Cultist'),
	(59, 'Engineer'),
	(60, 'Engineer'),
	(61, 'Scribe'),
	(62, 'Scribe'),
	(63, 'Soldier'),
	(64, 'Soldier'),
	(65, 'Banker'),
	(66, 'Banker'),
	(67, 'Apothecary'),
	(68, 'Apothecary'),
	(69, 'Woodcutter'),
	(70, 'Woodcutter'),
	(71, 'Tax Collector'),
	(72, 'Tax Collector'),
	(73, 'Prostitute'),
	(74, 'Prostitute'),
	(75, 'Fishmonger'),
	(76, 'Fishmonger'),
	(77, 'Butcher'),
	(78, 'Butcher'),
	(79, 'Fruiterer'),
	(80, 'Fruiterer'),
	(81, 'Conman'),
	(82, 'Conman'),
	(83, 'Petty thief'),
	(84, 'Petty thief'),
	(85, 'Healer'),
	(86, 'Healer'),
	(87, 'Butler'),
	(88, 'Butler'),
	(89, 'Clerk'),
	(90, 'Clerk'),
	(91, 'Baker'),
	(92, 'Baker'),
	(93, 'Cheesemaker'),
	(94, 'Cheesemaker'),
	(95, 'Innkeeper'),
	(96, 'Innkeeper'),
	(97, 'Dung Shoveller'),
	(98, 'Dung Shoveller'),
	(99, 'Courier'),
	(100, 'Courier');



-- -----------------------------------------------------
-- Table `sat_story_element`.`verbs`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_story_element`.`verbs` ;

CREATE TABLE IF NOT EXISTS `sat_story_element`.`verbs` (
  `id` INT NOT NULL,
  `verb_text` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO `sat_story_element`.`verbs` (id, verb_text) 
VALUES
	(1, 'abandon'),
	(2, 'abolish'),
	(3, 'abuse'),
	(4, 'accuse'),
	(5, 'address'),
	(6, 'aggravate'),
	(7, 'agitate'),
	(8, 'aid'),
	(9, 'aim'),
	(10, 'alarm'),
	(11, 'alert'),
	(12, 'alter'),
	(13, 'amaze'),
	(14, 'ambush'),
	(15, 'amuse'),
	(16, 'annihilate'),
	(17, 'annoy'),
	(18, 'antagonize'),
	(19, 'appeal'),
	(20, 'applaud'),
	(21, 'apprehend'),
	(22, 'approach'),
	(23, 'argue'),
	(24, 'arise'),
	(25, 'arouse'),
	(26, 'arrange'),
	(27, 'arrest'),
	(28, 'ask'),
	(29, 'assassinate'),
	(30, 'assault'),
	(31, 'assemble'),
	(32, 'astonish'),
	(33, 'attack'),
	(34, 'attempt'),
	(35, 'attend'),
	(36, 'auction'),
	(37, 'audition'),
	(38, 'avenge'),
	(39, 'avert'),
	(40, 'babble'),
	(41, 'badmouth'),
	(42, 'bait'),
	(43, 'ban'),
	(44, 'banish'),
	(45, 'baptize'),
	(46, 'bargain'),
	(47, 'bark'),
	(48, 'barricade'),
	(49, 'barter'),
	(50, 'bash'),
	(51, 'bawl'),
	(52, 'beautify'),
	(53, 'beckon'),
	(54, 'befriend'),
	(55, 'beg'),
	(56, 'beguile'),
	(57, 'belch'),
	(58, 'belittle'),
	(59, 'bellow'),
	(60, 'bemoan'),
	(61, 'bequeath'),
	(62, 'berate'),
	(63, 'besiege'),
	(64, 'bestow'),
	(65, 'bet'),
	(66, 'betray'),
	(67, 'bewilder'),
	(68, 'bewitch'),
	(69, 'bid'),
	(70, 'bite'),
	(71, 'blab'),
	(72, 'blame'),
	(73, 'blast'),
	(74, 'bleed'),
	(75, 'bless'),
	(76, 'blunder'),
	(77, 'blurt'),
	(78, 'boast'),
	(79, 'bother'),
	(80, 'bow'),
	(81, 'brag'),
	(82, 'break'),
	(83, 'bribe'),
	(84, 'broadcast'),
	(85, 'build'),
	(86, 'capture'),
	(87, 'careen'),
	(88, 'caress'),
	(89, 'carry'),
	(90, 'carve'),
	(91, 'catch'),
	(92, 'celebrate'),
	(93, 'challenge'),
	(94, 'charm'),
	(95, 'chase'),
	(96, 'cheat'),
	(97, 'choke'),
	(98, 'claim'),
	(99, 'climb'),
	(100, 'collaborate'),
	(101, 'collapse'),
	(102, 'collide'),
	(103, 'command'),
	(104, 'complain'),
	(105, 'compliment'),
	(106, 'conceal'),
	(107, 'concoct'),
	(108, 'condemn'),
	(109, 'confiscate'),
	(110, 'conflict'),
	(111, 'confront'),
	(112, 'confuse'),
	(113, 'congratulate'),
	(114, 'congregate'),
	(115, 'conjure'),
	(116, 'consecrate'),
	(117, 'consider'),
	(118, 'construct'),
	(119, 'contact'),
	(120, 'contaminate'),
	(121, 'contest'),
	(122, 'cook'),
	(123, 'corner'),
	(124, 'corrupt'),
	(125, 'cremate'),
	(126, 'crowd'),
	(127, 'crown'),
	(128, 'customize'),
	(129, 'damage'),
	(130, 'dance'),
	(131, 'dare'),
	(132, 'dash'),
	(133, 'dazzle'),
	(134, 'deal'),
	(135, 'debate'),
	(136, 'decay'),
	(137, 'deceive'),
	(138, 'declare'),
	(139, 'decline'),
	(140, 'decompose'),
	(141, 'decorate'),
	(142, 'decree'),
	(143, 'dedicate'),
	(144, 'deduce'),
	(145, 'deface'),
	(146, 'defeat'),
	(147, 'defend'),
	(148, 'defuse'),
	(149, 'deliver'),
	(150, 'demand'),
	(151, 'demolish'),
	(152, 'denounce'),
	(153, 'deride'),
	(154, 'despair'),
	(155, 'destroy'),
	(156, 'devour'),
	(157, 'dig'),
	(158, 'disappear'),
	(159, 'disarm'),
	(160, 'discipline'),
	(161, 'discover'),
	(162, 'discriminate'),
	(163, 'discuss'),
	(164, 'disgrace'),
	(165, 'disguise'),
	(166, 'disgust'),
	(167, 'dishonor'),
	(168, 'dismount'),
	(169, 'dispel'),
	(170, 'disperse'),
	(171, 'display'),
	(172, 'displease'),
	(173, 'dispute'),
	(174, 'disrespect'),
	(175, 'disrupt'),
	(176, 'distill'),
	(177, 'distress'),
	(178, 'disturb'),
	(179, 'divert'),
	(180, 'dodge'),
	(181, 'drag'),
	(182, 'dress'),
	(183, 'drink'),
	(184, 'drop'),
	(185, 'drown'),
	(186, 'drum'),
	(187, 'dump'),
	(188, 'dupe'),
	(189, 'duplicate'),
	(190, 'earn'),
	(191, 'eat'),
	(192, 'elude'),
	(193, 'employ'),
	(194, 'enchant'),
	(195, 'end'),
	(196, 'endanger'),
	(197, 'endear'),
	(198, 'endorse'),
	(199, 'enforce'),
	(200, 'engage'),
	(201, 'engineer'),
	(202, 'enjoy'),
	(203, 'enlarge'),
	(204, 'enlighten'),
	(205, 'enlist'),
	(206, 'enquire'),
	(207, 'enrage'),
	(208, 'enrich'),
	(209, 'enroll'),
	(210, 'enshrine'),
	(211, 'ensnare'),
	(212, 'entangle'),
	(213, 'enter'),
	(214, 'entertain'),
	(215, 'entice'),
	(216, 'erect'),
	(217, 'escape'),
	(218, 'escort'),
	(219, 'evacuate'),
	(220, 'evade'),
	(221, 'evict'),
	(222, 'exaggerate'),
	(223, 'examine'),
	(224, 'excavate'),
	(225, 'exchange'),
	(226, 'exclaim'),
	(227, 'exclude'),
	(228, 'execute'),
	(229, 'exhibit'),
	(230, 'experiment'),
	(231, 'explode'),
	(232, 'expose'),
	(233, 'faint'),
	(234, 'fake'),
	(235, 'fall'),
	(236, 'falsify'),
	(237, 'fashion'),
	(238, 'flaunt'),
	(239, 'flee'),
	(240, 'fling'),
	(241, 'flirt'),
	(242, 'follow'),
	(243, 'force'),
	(244, 'foresee'),
	(245, 'foretell'),
	(246, 'forge'),
	(247, 'forgive'),
	(248, 'fracture'),
	(249, 'frame'),
	(250, 'free'),
	(251, 'freeze'),
	(252, 'fret'),
	(253, 'frighten'),
	(254, 'frustrate'),
	(255, 'fumble'),
	(256, 'fund'),
	(257, 'fuss'),
	(258, 'gallop'),
	(259, 'gamble'),
	(260, 'gather'),
	(261, 'gaze'),
	(262, 'gesture'),
	(263, 'gift'),
	(264, 'giggle'),
	(265, 'give'),
	(266, 'glare'),
	(267, 'gleam'),
	(268, 'glimpse'),
	(269, 'goad'),
	(270, 'gob'),
	(271, 'goggle'),
	(272, 'gossip'),
	(273, 'grab'),
	(274, 'grapple'),
	(275, 'grieve'),
	(276, 'guard'),
	(277, 'hamper'),
	(278, 'harass'),
	(279, 'harm'),
	(280, 'help'),
	(281, 'hide'),
	(282, 'hit'),
	(283, 'hold'),
	(284, 'humiliate'),
	(285, 'hurry'),
	(286, 'hurtle'),
	(287, 'ignite'),
	(288, 'impede'),
	(289, 'implore'),
	(290, 'imprison'),
	(291, 'infect'),
	(292, 'infest'),
	(293, 'inflame'),
	(294, 'inflict'),
	(295, 'inform'),
	(296, 'infringe'),
	(297, 'infuriate'),
	(298, 'injure'),
	(299, 'inspect'),
	(300, 'inspire'),
	(301, 'instigate'),
	(302, 'insult'),
	(303, 'interfere'),
	(304, 'interrogate'),
	(305, 'intimidate'),
	(306, 'intoxicate'),
	(307, 'investigate'),
	(308, 'invite'),
	(309, 'involve'),
	(310, 'irritate'),
	(311, 'jaywalk'),
	(312, 'jeer'),
	(313, 'joke'),
	(314, 'jostle'),
	(315, 'kick'),
	(316, 'kill'),
	(317, 'kiss'),
	(318, 'lament'),
	(319, 'laugh'),
	(320, 'leap'),
	(321, 'lecture'),
	(322, 'leer'),
	(323, 'look'),
	(324, 'loot'),
	(325, 'lose'),
	(326, 'love'),
	(327, 'lunge'),
	(328, 'lurk'),
	(329, 'maim'),
	(330, 'manhandle'),
	(331, 'march'),
	(332, 'market'),
	(333, 'massacre'),
	(334, 'meddle'),
	(335, 'mesmerize'),
	(336, 'mimic'),
	(337, 'misspell'),
	(338, 'mob'),
	(339, 'mock'),
	(340, 'murder'),
	(341, 'mutate'),
	(342, 'mutilate'),
	(343, 'nag'),
	(344, 'narrate'),
	(345, 'near'),
	(346, 'notify'),
	(347, 'obscure'),
	(348, 'observe'),
	(349, 'obstruct'),
	(350, 'offend'),
	(351, 'oppress'),
	(352, 'order'),
	(353, 'overhear'),
	(354, 'overpower'),
	(355, 'overturn'),
	(356, 'parade'),
	(357, 'parley'),
	(358, 'patrol'),
	(359, 'pelt'),
	(360, 'penalize'),
	(361, 'perform'),
	(362, 'persecute'),
	(363, 'persuade'),
	(364, 'petition'),
	(365, 'play'),
	(366, 'plead'),
	(367, 'plunder'),
	(368, 'pollute'),
	(369, 'pounce'),
	(370, 'practice'),
	(371, 'praise'),
	(372, 'preach'),
	(373, 'proclaim'),
	(374, 'prohibit'),
	(375, 'promote'),
	(376, 'pronounce'),
	(377, 'prophesize'),
	(378, 'prosecute'),
	(379, 'protect'),
	(380, 'protest'),
	(381, 'provide'),
	(382, 'provoke'),
	(383, 'prowl'),
	(384, 'pry'),
	(385, 'punch'),
	(386, 'punish'),
	(387, 'purchase'),
	(388, 'pursue'),
	(389, 'push'),
	(390, 'quarrel'),
	(391, 'query'),
	(392, 'queue'),
	(393, 'rage'),
	(394, 'raid'),
	(395, 'ransack'),
	(396, 'rebel'),
	(397, 'recite'),
	(398, 'recount'),
	(399, 'recruit'),
	(400, 'rejoice'),
	(401, 'remark'),
	(402, 'renege'),
	(403, 'repair'),
	(404, 'research'),
	(405, 'rescue'),
	(406, 'resist'),
	(407, 'restrain'),
	(408, 'resurrect'),
	(409, 'reveal'),
	(410, 'revolt'),
	(411, 'reward'),
	(412, 'ridicule'),
	(413, 'riot'),
	(414, 'rob'),
	(415, 'run'),
	(416, 'rush'),
	(417, 'salute'),
	(418, 'scamper'),
	(419, 'scare'),
	(420, 'scavenge'),
	(421, 'scream'),
	(422, 'scrounge'),
	(423, 'search'),
	(424, 'secure'),
	(425, 'seduce'),
	(426, 'segregate'),
	(427, 'seize'),
	(428, 'sell'),
	(429, 'ship'),
	(430, 'shout'),
	(431, 'shove'),
	(432, 'show'),
	(433, 'silence'),
	(434, 'sing'),
	(435, 'slaughter'),
	(436, 'sleep'),
	(437, 'smash'),
	(438, 'sob'),
	(439, 'solicit'),
	(440, 'speak'),
	(441, 'spill'),
	(442, 'spit'),
	(443, 'spy'),
	(444, 'stab'),
	(445, 'stage'),
	(446, 'startle'),
	(447, 'steal'),
	(448, 'stop'),
	(449, 'strangle'),
	(450, 'strike'),
	(451, 'subdue'),
	(452, 'suffer'),
	(453, 'summon'),
	(454, 'surround'),
	(455, 'suspect'),
	(456, 'take'),
	(457, 'taunt'),
	(458, 'tease'),
	(459, 'tempt'),
	(460, 'terrify'),
	(461, 'terrorize'),
	(462, 'thank'),
	(463, 'threaten'),
	(464, 'throw'),
	(465, 'torment'),
	(466, 'torture'),
	(467, 'trade'),
	(468, 'transform'),
	(469, 'translate'),
	(470, 'transport'),
	(471, 'trap'),
	(472, 'travel'),
	(473, 'tug'),
	(474, 'unite'),
	(475, 'unleash'),
	(476, 'unload'),
	(477, 'unveil'),
	(478, 'vandalize'),
	(479, 'vanish'),
	(480, 'victimize'),
	(481, 'violate'),
	(482, 'volunteer'),
	(483, 'wait'),
	(484, 'warn'),
	(485, 'wave'),
	(486, 'weep'),
	(487, 'welcome'),
	(488, 'whittle'),
	(489, 'wield'),
	(490, 'win'),
	(491, 'wink'),
	(492, 'witness'),
	(493, 'worship'),
	(494, 'wound'),
	(495, 'wreck'),
	(496, 'wrestle'),
	(497, 'write'),
	(498, 'yell'),
	(499, 'yield');


USE `sat_story_element` ;

-- -----------------------------------------------------
-- procedure populate_person_adventurer_level_early
-- -----------------------------------------------------

USE `sat_story_element`;
DROP procedure IF EXISTS `sat_story_element`.`populate_person_adventurer_level_early`;

DELIMITER $$
USE `sat_story_element`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `populate_person_adventurer_level_early`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 20 DO
        INSERT INTO `sat_story_element`.`person_adventurer_level_early` (id, text)
        VALUES (
            i,
            CASE 
                WHEN i <= 6 THEN '1'
                WHEN i <= 11 THEN '2'
                WHEN i <= 15 THEN '3'
                WHEN i <= 18 THEN '4'
                ELSE '5'
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL populate_person_adventurer_level_early();

-- -----------------------------------------------------
-- procedure populate_person_adventurer_level_late
-- -----------------------------------------------------

USE `sat_story_element`;
DROP procedure IF EXISTS `sat_story_element`.`populate_person_adventurer_level_late`;

DELIMITER $$
USE `sat_story_element`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `populate_person_adventurer_level_late`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 20 DO
        INSERT INTO `sat_story_element`.`person_adventurer_level_late` (id, text)
        VALUES (
            i,
            CASE 
                WHEN i <= 6 THEN '16'
                WHEN i <= 11 THEN '17'
                WHEN i <= 15 THEN '18'
                WHEN i <= 18 THEN '19'
                ELSE '20'
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL populate_person_adventurer_level_late();

-- -----------------------------------------------------
-- procedure populate_person_adventurer_level_mid
-- -----------------------------------------------------

USE `sat_story_element`;
DROP procedure IF EXISTS `sat_story_element`.`populate_person_adventurer_level_mid`;

DELIMITER $$
USE `sat_story_element`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `populate_person_adventurer_level_mid`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 20 DO
        INSERT INTO `sat_story_element`.`person_adventurer_level_mid` (id, text)
        VALUES (
            i,
            CASE 
                WHEN i <= 3 THEN '5'
                WHEN i <= 6 THEN '6'
                WHEN i <= 8 THEN '7'
                WHEN i <= 10 THEN '8'
                WHEN i <= 12 THEN '9'
                WHEN i <= 14 THEN '10'
                WHEN i <= 16 THEN '11'
                WHEN i = 17 THEN '12'
                WHEN i = 18 THEN '13'
                WHEN i = 19 THEN '14'
                ELSE '15'
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL populate_person_adventurer_level_mid();

-- -----------------------------------------------------
-- procedure populate_person_adventurer_tier
-- -----------------------------------------------------

USE `sat_story_element`;
DROP procedure IF EXISTS `sat_story_element`.`populate_person_adventurer_tier`;

DELIMITER $$
USE `sat_story_element`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `populate_person_adventurer_tier`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 20 DO
        INSERT INTO `sat_story_element`.`person_adventurer_tier` (id, text)
        VALUES (
            i,
            CASE 
                WHEN i <= 14 THEN 'Early'
                WHEN i <= 18 THEN 'Mid'
                ELSE 'Late'
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL populate_person_adventurer_tier();

-- -----------------------------------------------------
-- procedure populate_person_alignment
-- -----------------------------------------------------

USE `sat_story_element`;
DROP procedure IF EXISTS `sat_story_element`.`populate_person_alignment`;

DELIMITER $$
USE `sat_story_element`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `populate_person_alignment`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO `sat_story_element`.`person_alignment` (id, text)
        VALUES (
            i,
            CASE 
                WHEN i <= 15 THEN 'Lawful Good'
                WHEN i <= 20 THEN 'Neutral Good'
                WHEN i <= 25 THEN 'Chaotic Good'
                WHEN i <= 30 THEN 'Lawful Neutral'
                WHEN i <= 50 THEN 'True Neutral'
                WHEN i <= 60 THEN 'Chaotic Neutral'
                WHEN i <= 70 THEN 'Lawful Evil'
                WHEN i <= 90 THEN 'Neutral Evil'
                ELSE 'Chaotic Evil'
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL populate_person_alignment();

-- -----------------------------------------------------
-- procedure populate_person_economic_status
-- -----------------------------------------------------

USE `sat_story_element`;
DROP procedure IF EXISTS `sat_story_element`.`populate_person_economic_status`;

DELIMITER $$
USE `sat_story_element`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `populate_person_economic_status`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO `sat_story_element`.`person_economic_status` (id, text)
        VALUES (
            i,
            CASE
                WHEN i <= 4 THEN 'Destitute / homeless'
                WHEN i <= 12 THEN 'Poor'
                WHEN i <= 20 THEN 'Just getting by'
                WHEN i <= 30 THEN 'Can support themselves'
                WHEN i <= 40 THEN 'Climbing the ladder'
                WHEN i <= 52 THEN 'Comfortable'
                WHEN i <= 62 THEN 'Well-off'
                WHEN i <= 74 THEN 'Rich'
                WHEN i <= 88 THEN 'Extremely Wealthy'
                ELSE 'Royalty-level wealth'
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL populate_person_economic_status();

-- -----------------------------------------------------
-- procedure populate_person_gender
-- -----------------------------------------------------

USE `sat_story_element`;
DROP procedure IF EXISTS `sat_story_element`.`populate_person_gender`;

DELIMITER $$
USE `sat_story_element`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `populate_person_gender`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO `sat_story_element`.`person_gender` (id, text)
        VALUES (
            i,
            CASE
                WHEN i <= 50 THEN 'Male'
                ELSE 'Female'
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL populate_person_gender();

-- -----------------------------------------------------
-- procedure populate_person_profession
-- -----------------------------------------------------

USE `sat_story_element`;
DROP procedure IF EXISTS `sat_story_element`.`populate_person_profession`;

DELIMITER $$
USE `sat_story_element`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `populate_person_profession`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO `sat_story_element`.`person_profession` (id, text)
        VALUES (
            i,
            CASE
                WHEN i <= 25 THEN 'Commoner (Unemployed)'
                WHEN i <= 90 THEN 'Tradesperson'
                ELSE 'Adventurer'
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL populate_person_profession();

-- -----------------------------------------------------
-- procedure populate_person_race
-- -----------------------------------------------------

USE `sat_story_element`;
DROP procedure IF EXISTS `sat_story_element`.`populate_person_race`;

DELIMITER $$
USE `sat_story_element`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `populate_person_race`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO `sat_story_element`.`person_race` (id, text)
        VALUES (
            i,
            CASE
                WHEN i <= 80 THEN 'Human'
                WHEN i <= 87 THEN 'Halfling'
                WHEN i <= 92 THEN 'Dwarf'
                ELSE 'Other'
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL populate_person_race();

-- -----------------------------------------------------
-- procedure populate_person_race_uncommon
-- -----------------------------------------------------

USE `sat_story_element`;
DROP procedure IF EXISTS `sat_story_element`.`populate_person_race_uncommon`;

DELIMITER $$
USE `sat_story_element`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `populate_person_race_uncommon`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 20 DO
        INSERT INTO `sat_story_element`.`person_race_uncommon` (id, text)
        VALUES (
            i,
            CASE
                WHEN i = 1 OR i = 2 OR i = 3 THEN 'Elf'
                WHEN i = 4 OR i = 5 OR i = 6 THEN 'Half elf'
                WHEN i = 7 OR i = 8 THEN 'Gnome'
                WHEN i = 9 OR i = 10 THEN 'Orc'
                WHEN i = 11 THEN 'Half Orc'
                WHEN i = 12 THEN 'Goblin'
                WHEN i = 13 THEN 'Drow'
                WHEN i = 14 THEN 'Tabaxi'
                WHEN i = 15 THEN 'Kenku'
                WHEN i = 16 THEN 'Tiefling'
                WHEN i = 17 THEN 'Aasimar'
                WHEN i = 18 THEN 'Dragonborn'
                WHEN i = 19 THEN 'Goliath'
                ELSE 'Aarakocra'
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL populate_person_race_uncommon();

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
