-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2019 at 10:49 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acceleracers`
--

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `speed` int(11) DEFAULT NULL,
  `power` int(11) DEFAULT NULL,
  `performance` int(11) DEFAULT NULL,
  `actionPoint` int(11) DEFAULT NULL,
  `foil` tinyint(1) DEFAULT NULL,
  `hologram` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` int(11) DEFAULT NULL,
  `team` int(11) DEFAULT NULL,
  `illustrator` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `name`, `description`, `speed`, `power`, `performance`, `actionPoint`, `foil`, `hologram`, `created_at`, `updated_at`, `type`, `team`, `illustrator`) VALUES
(1, 'Hollowback™', 'You feel it before you see it - that big block engine rumbling right off the Richter Scale. When Hollowback is brought into play, return 1 Mod from your junk pile to your hand.', 3, 3, 2, NULL, 0, 0, '2019-07-23 04:10:41', '2019-07-23 04:58:54', 2, 2, 1),
(2, 'Jaw Hammer™', 'This one-of-a-kind, hand-built drag bike is made of stainless steel and powered by a V8 engine.', 4, 3, 4, NULL, NULL, NULL, '2019-07-23 04:58:41', '2019-07-23 04:58:41', 2, 2, 1),
(3, 'Rivited™', 'Made of scrap iron salvaged outside the Maniac\'s shop, this metal monster drives like it has a mind of its own. A completely psychotic mind of its own.', 3, 4, 4, NULL, NULL, NULL, '2019-07-23 05:03:56', '2019-07-23 05:03:56', 2, 2, 1),
(4, 'Rolling Thunder™', 'The Metal Maniacs\' control center, Rolling Thunder can transfer any Mod equipped on it to another Metal Maniac in the same Realm, without spending APs. Modability rules apply.', 3, 3, 2, NULL, 0, 0, '2019-07-23 05:08:46', '2019-07-23 05:09:54', 2, 2, 1),
(5, 'Rat-ified™', 'A flat-out speedster, this unique hot rod is assembled from loose parts and powered by a double blown V12.', 4, 4, 3, NULL, NULL, NULL, '2019-07-23 05:14:30', '2019-07-23 05:14:30', 2, 2, 2),
(6, 'Flathead Fury™', 'This muscle car fuses traditional hot rod tech with cutting edge modifications to create some serious hybrid street muscle.', 3, 4, 4, NULL, 0, 0, '2019-07-23 05:16:49', '2019-07-23 06:03:51', 2, 2, 1),
(7, 'Power-Bomb™', 'An explosive combination of stock car chassis and race car engine, this unique vehicule sports a bubble top design that protects the driver while enhancing aerodynamics.', 5, 4, 4, NULL, NULL, NULL, '2019-07-23 05:19:46', '2019-07-23 05:19:46', 2, 2, 1),
(8, 'Piledriver™', 'When the going gets tough, you better be driving this bad boy. A modified off-roader, Piledriver grinds even the worst of terrain into submission.', 3, 2, 4, NULL, NULL, NULL, '2019-07-23 05:29:41', '2019-07-23 05:29:41', 2, 2, 1),
(9, 'Jackhammer™', 'This rebuilt, rear and front engine station wagon ain\'t a family car anymore - now it\'s a fireball on wheels.', 4, 5, 4, NULL, NULL, NULL, '2019-07-23 05:32:01', '2019-07-23 05:32:01', 2, 2, 1),
(10, 'Spine buster™', 'This car generates so much torque you can\'t even adjust the seat without getting whiplash.', 4, 4, 5, NULL, 0, 0, '2019-07-23 05:34:27', '2019-07-23 05:36:59', 2, 2, 1),
(11, 'Torqued Hollowback™', 'Salvage some Mods! When Torqued Hollowback is brought into play, you may choose to spend 1 Action Point for every Mod you return from your junk pile to your hand.', 3, 3, 3, NULL, NULL, NULL, '2019-07-23 05:36:34', '2019-07-23 05:36:34', 2, 2, 1),
(12, 'Torqued Jaw Jammer™', 'This one-of-a-kind, stainless steel drag bike has been supercharged by increasing the bore size of it\'s V8 by 12%.', 4, 3, 5, NULL, NULL, NULL, '2019-07-23 05:39:50', '2019-07-23 05:39:50', 2, 2, 1),
(13, 'Torqued Rivited™', 'A scrap metal monster, the upgraded Rivited\'s twin-turbo balanced and blueprinted engine gives it some serious teeth.', 3, 4, 5, NULL, 0, 0, '2019-07-23 05:42:51', '2019-07-23 05:45:40', 2, 2, 1),
(14, 'Torqued Rolling Thunder™', 'When spending APs, Torqued Rolling Thunder can transfer an Mod equipped on it to another Metal Maniac in the same Realm. Modability rules DO NOT apply.', 3, 4, 5, NULL, NULL, NULL, '2019-07-23 05:57:11', '2019-07-23 05:57:11', 2, 2, 1),
(15, 'Torqued Rat-ified™', 'This custom roadster\'s special tires grip the road like asphalt magnets, providing outstanding control and stability.', 4, 5, 3, NULL, 0, 0, '2019-07-23 05:59:19', '2019-07-23 06:03:36', 2, 2, 2),
(16, 'Torqued Flathead Fury™', 'This muscle car - a fusion of both old school and state-of-the-art auto tech - has boosted performance from an improved Nitrox² delivery system.', 4, 4, 4, NULL, 0, 0, '2019-07-23 06:02:34', '2019-07-23 06:03:45', 2, 2, 1),
(17, 'Torqued Power Bomb™', 'This bubble-top stock car sports a racing engine tuned to the edge of its design specs, turning it into a blacktop rocket.', 6, 4, 4, NULL, 1, 0, '2019-07-23 06:06:18', '2019-07-23 06:06:46', 2, 2, 1),
(18, 'Torqued Piledriver™', 'A modified off-roader, this dirt demon\'s top speed has been increased by the addition of twin, pre-cooled vector intake tunnels on each side of the engine.', 3, 3, 4, NULL, NULL, NULL, '2019-07-23 06:09:03', '2019-07-23 06:09:03', 2, 2, 1),
(19, 'Torqued Jack Hammer™', 'Enhanced by twin turbos, this rear and front engine station wagon packs a lot of power. Maybe too much power. Controlling the Torqued Jackhammer ain\'t driving - it\'s a wrestling match.', 4, 6, 4, NULL, NULL, 1, '2019-07-23 06:18:37', '2019-07-23 06:18:37', 2, 2, 1),
(20, 'Torqued Spine Buster™', 'Tricked out to the max with twin multi-fuel intake tunnels, radical aerodynamics, and advanced fuel compression, this car is so powerful that just keeping it between the lines is a real accomplishment.', 4, 4, 6, NULL, 1, 0, '2019-07-23 06:21:13', '2019-07-23 06:21:42', 2, 2, 1),
(21, 'Synkro™', 'Titanium triple prop turbo with an ultra-light magnesium enhanced engine and tires not even on the market yet... you don\'t drive this car - you fly it.', 6, 4, 4, NULL, 0, 0, '2019-07-23 06:36:03', '2019-07-23 06:36:16', 2, 1, 3),
(22, 'Battle Spec™', 'Built from the same chasis as Power Rage™, this single-seat racing machine is designed for speed and comes complete with its own ear-splitting sound system.', 4, 2, 3, NULL, 0, 0, '2019-07-23 06:38:44', '2019-07-23 06:39:58', 2, 1, NULL),
(23, 'High Voltage™', 'When advancing to the SECOND Realm, High Voltage retains any shift cards equipped to it.', 4, 2, 2, NULL, NULL, NULL, '2019-07-23 06:41:27', '2019-07-23 06:41:27', 2, 1, 3),
(24, 'Nightlife™', 'Fast and light, this street bike is a rocket primed for lift-off.', 5, 2, 4, NULL, NULL, NULL, '2019-07-23 06:44:09', '2019-07-23 06:44:09', 2, 1, 4),
(25, 'Chicane™', 'This car\'s aerodynamic, carbon-fiber body devours the wind to boost its performance.', 6, 3, 4, NULL, NULL, NULL, '2019-07-23 06:46:55', '2019-07-23 06:46:56', 2, 1, 3),
(26, 'SpecTyte™', 'When this hybrid Vehicle is brought into play, return 1 Mod - with any NUMBER listed in it\'s Speed window - from your junk pile to your hand.', 2, 3, 3, NULL, NULL, NULL, '2019-07-23 06:50:48', '2019-07-23 06:50:48', 2, 1, 4),
(27, 'Power Rage™', 'Known for tight quick turns, this converted street car makes one mean drift machine. And the ladies like it, too.', 5, 3, 4, NULL, NULL, NULL, '2019-07-23 06:53:41', '2019-07-23 06:53:41', 2, 1, 2),
(28, 'Bassline™', 'This tricked-out truck includes a state of the art sound system almost as powerful as it\'s Nitrox-snorting engine.', 4, 3, 2, NULL, NULL, NULL, '2019-07-23 06:57:34', '2019-07-23 06:57:34', 2, 1, 4),
(29, 'Reverb™', 'Powered by a liter V8 with hydraulic valves, Reverb may be finicky about control, but, when it\'s running tight, this car is nearly unbeatable.', 6, 4, 3, NULL, 0, 0, '2019-07-23 07:00:05', '2019-07-23 07:00:49', 2, 1, 5),
(30, 'Drift Tech™', 'Part hybrid rally car, part monster truck, this is the Teku Racers\' first choice when they need serious wheels to tame some terrain,', 4, 4, 3, NULL, NULL, 0, '2019-07-23 07:04:56', '2019-07-23 07:04:56', 2, 1, 5),
(31, 'Hyper Synkro™', 'Already lean and mean, new carbon fiber body panels reduce Hyper SynKro\'s weight even more. Get ready to rocket right through anything that gets in your way,', 7, 4, 4, NULL, 0, 1, '2019-07-23 07:12:32', '2019-07-23 07:13:00', 2, 1, NULL),
(32, 'Hyper Battle Spec™', 'This single-seat racer has had its engine bored and stroked, upping its top speed.', 4, 3, 3, NULL, 0, 0, '2019-07-23 07:14:38', '2019-07-26 11:27:15', 2, 1, NULL),
(33, 'Hyper High Voltage™', 'With an air adjusted suspension and high-end cold air intake, this Vehicle NEVER discards equipped Shift Cards when it advances to any new Racing Realm.', 4, 2, 3, NULL, NULL, NULL, '2019-07-23 07:16:50', '2019-07-23 07:16:50', 2, 1, 3),
(34, 'Hyper Nightlife™', 'Part street bike, part explosion, Hyper nightlife\'s big bore titanium exhaust screams speed. Don\'t blink or... whoa, too late. You already missed it.', 5, 3, 4, NULL, NULL, NULL, '2019-07-23 07:19:31', '2019-07-23 07:19:31', 2, 1, 4),
(35, 'Hyper Chicane™', 'With its new coal-over suspension and reprogrammed ECU, the Hyper Chicane easily adjusts to any and all weather conditions.', 6, 4, 4, NULL, 1, NULL, '2019-07-23 07:21:25', '2019-07-23 07:21:25', 2, 1, 3),
(36, 'Hyper SpecTyte™', 'Boosted with billet titanium rods, pistons and crank, when Hyper SpecTyte is brought into play, salvage 1 Mod from your junk pile and return it to your hand.', 3, 3, 3, NULL, NULL, NULL, '2019-07-23 07:26:22', '2019-07-23 07:26:23', 2, 1, 4),
(37, 'Hyper Power Rage™', 'A converted street car turned drift machine, Hyper Power Rage has an amped-up turbocharger with 22 pounds of boost to help kick it down the road.', 6, 3, 4, NULL, NULL, NULL, '2019-07-23 07:30:39', '2019-07-23 07:30:39', 2, 1, 2),
(38, 'Hyper Bassline™', 'With a supercharger kicking out 100 additional ponies, this truck has enough horsepower to tow the moon.', 4, 3, 3, NULL, NULL, NULL, '2019-07-23 07:32:10', '2019-07-23 07:32:10', 2, 1, 4),
(39, 'Hyper Reverb™', 'Ported and polished for extra power, Hyper Reverb screams like a banshee when it blows past you on its way to the finish line.', 7, 4, 3, NULL, 1, NULL, '2019-07-23 07:36:16', '2019-07-23 07:36:16', 2, 1, 5),
(40, 'Hyper Drift Tech™', 'Hyper Drift tech - sporting a new water to air intercooler - will chew up any terrain thrown at it... and then spit out plenty of dust for everyone else to eat.', 4, 5, 6, NULL, 0, 0, '2019-07-23 07:38:50', '2019-07-23 07:44:43', 2, 1, 5),
(41, 'Carbide™', 'A modified hydrogen fuel cell powers this Silencerz race car, allowing for a significantly improved transfer of power to the wheels.', 4, 5, 4, NULL, NULL, NULL, '2019-07-23 07:49:47', '2019-07-23 07:49:47', 2, 4, NULL),
(42, 'Nitrium™', 'A chassis twin of the Silencerz\' Carbide™ vehicle, Nitrium is custom-tuned for optimum street performance.', 3, 3, 5, NULL, NULL, NULL, '2019-07-23 07:53:43', '2019-07-23 07:53:43', 2, 4, 2),
(43, 'Iridium™', 'A highly developed central exo-frame supports this finely tuned exotic car, adding to both its stability and durability.', 3, 3, 6, NULL, 0, 0, '2019-07-23 07:58:03', '2019-07-23 08:15:01', 2, 4, 6),
(44, 'Covelight™', 'The designers of the Covelight \"borrowed\" from several jet defense projects to create electronics capable of controlling everything from the car\'s torque to its compression ratio and intake flow.', 4, 3, 6, NULL, NULL, NULL, '2019-07-23 08:27:20', '2019-07-23 08:27:20', 2, 4, 7),
(45, 'Accelium™', 'When this fusion-powered Vehicle is brought into play, return 1 Mod - with any NUMBER listed in its Performance window - from your junk pile to your hand.', 2, 2, 3, NULL, NULL, NULL, '2019-07-23 08:29:18', '2019-07-23 08:29:18', 2, 4, NULL),
(46, 'Magnesium™', 'Modern carbon alloys and a central exo-frame give this extremely light motorcycle an extra edge in performance.', 4, 2, 5, NULL, NULL, NULL, '2019-07-23 08:33:21', '2019-07-23 08:33:21', 2, 4, 6),
(47, 'Octainium™', 'Plated with titanium composites, this rear engine concept vehicle performs both on and off the road.', 3, 2, 5, NULL, NULL, NULL, '2019-07-23 08:35:01', '2019-07-23 08:35:01', 2, 4, NULL),
(48, 'Metaloid™', 'The mobile command unit serves as the tactical nerve center for all Silencerz racers.', 2, 4, 4, NULL, NULL, NULL, '2019-07-23 08:36:26', '2019-07-23 08:36:26', 2, 4, NULL),
(49, 'Anthracite™', 'This top-secret concept car features advanced fuel cell technology, giving it a range far beyond that of conventional vehicles.', 3, 4, 4, NULL, NULL, NULL, '2019-07-23 08:38:24', '2019-07-23 08:38:24', 2, 4, 7),
(50, 'Technetium™', 'This rally-style racer uses a ceramic flywheel and multi adjustable air stabilizer. As long as Technetium remains in play, you may keep up to 8 cards in your hand.', 3, 3, 4, NULL, NULL, NULL, '2019-07-23 08:40:10', '2019-07-23 08:40:11', 2, 4, 5),
(51, 'Vectra Carbide™', 'Vectra Carbide couples a modified-fuel cell with an exotic gas engine for unprecedented acceleration.', 4, 6, 4, NULL, 1, NULL, '2019-07-23 08:42:43', '2019-07-23 08:42:43', 2, 4, NULL),
(52, 'Vectra Nitrium™', 'Vectra Nitrium sports an experimental propulsion system designed to reclaim exhaust and convert it into pure horsepower.', 4, 3, 5, NULL, NULL, NULL, '2019-07-23 08:44:28', '2019-07-23 08:44:28', 2, 4, 2),
(53, 'Vectra Iridium™', 'In addition to it\'s durable exo-frame, the Vectra Iridium\'s new supercharger and boost dependant fuel regulator really pump up its performance.', 3, 4, 6, NULL, NULL, NULL, '2019-07-23 08:51:47', '2019-07-23 08:51:47', 2, 4, NULL),
(54, 'Vectra Covelight™', 'Utilizing a satellite navigational matrix, the redundant onboard AI (Artificial Intelligence) auto-corrects any driver error for flawless performance.', 4, 4, 6, NULL, 1, 0, '2019-07-23 08:53:50', '2019-07-23 08:54:02', 2, 4, 7),
(55, 'Vectra Accelium™', 'When Vectra Accelium is brought into play, salvage any 1 Mod from your junk pile and return it to your hand.', 2, 3, 3, NULL, NULL, NULL, '2019-07-23 08:56:13', '2019-07-23 08:56:13', 2, 4, NULL),
(56, 'Vectra Magnesium™', 'Vectra Magnesium\'s new ram-air intake ducts and upgraded fuel injection system make it more than fast. They make it disappear.', 4, 3, 5, NULL, NULL, NULL, '2019-07-23 08:57:43', '2019-07-23 08:57:44', 2, 4, 6),
(57, 'Vectra Octainium™', 'Sporting a tricked-out carburetor and modified pistons, the Vectra Octainium can outrun its own shadow. ', 3, 3, 5, NULL, NULL, NULL, '2019-07-23 09:00:55', '2019-07-23 09:00:55', 2, 4, NULL),
(58, 'Vectra Metaloid™', 'This advanced mobile command center comes with sophisticated monitoring equipment and multiple Unmanned Aerial Vehicles (UAVs) to keep tabs on the track and all opposing racers.', 3, 4, 4, NULL, NULL, NULL, '2019-07-23 09:03:09', '2019-07-23 09:03:09', 2, 4, NULL),
(59, 'Vectra Anthracite™', 'Shrouded in secrecy, the Vectra Anthracite\'s hacking software allows it to backtrack GPS signals and break int military satellites.', 4, 4, 4, NULL, 0, 1, '2019-07-23 09:07:02', '2019-07-23 09:11:49', 2, 4, NULL),
(60, 'Vectra Technetium™', 'As long as Vectra Technetium remains in play, you may keep up to 9 cards in your hand.', 4, 3, 4, NULL, NULL, NULL, '2019-07-23 09:08:41', '2019-07-23 09:08:41', 2, 4, 5),
(61, 'RD01', 'The simplest of Racing Drone designs, the RD01\'s compressed hydrogen jet requires a computer controlled spoiler system and advanced positive traction technology to keep the car stable and on track.', 4, 5, 3, NULL, NULL, NULL, '2019-07-23 09:16:02', '2019-07-23 09:16:02', 2, 3, 6),
(62, 'RD02', 'Energized by micro-burst fusion, the jet-powered RD02 has no known weakness.', 4, 6, 4, NULL, NULL, NULL, '2019-07-23 09:17:15', '2019-07-23 09:17:15', 2, 3, 8),
(63, 'RD03', 'This mobile utility vehicle runs interference for the other Racing Drones. When RD03 is brought into play, salvage 1 Hazard Card from your junk pile and return it to your hand.', 3, 4, 2, NULL, NULL, NULL, '2019-07-23 09:19:12', '2019-07-23 09:19:12', 2, 3, 6),
(64, 'RD04', 'When RD04 is brought into play, salvage 1 Mod - with any NUMBER listed in it\'s Power window - from your junk pile and return it to your hand.', 2, 3, 3, NULL, NULL, NULL, '2019-07-23 09:20:48', '2019-07-23 09:20:48', 2, 3, 9),
(65, 'RD05', 'With its fusion-powered mag-lev systems, the RD05 is one of the fastest off-road vehicles in the race.', 2, 4, 4, NULL, NULL, NULL, '2019-07-23 09:22:22', '2019-07-26 11:31:07', 2, 3, 10),
(66, 'RD06', 'This \'hot rod\' employs meg-lev tires for speed and traction, each of them driven by the inboard fusion engine.', 3, 5, 4, NULL, NULL, NULL, '2019-07-23 09:26:57', '2019-07-23 09:26:57', 2, 3, 2),
(67, 'RD07', 'This heavy motorcycle glides on mag-lev hubless wheels. It may not be as fast as other bikes, but it gives a smooth, stable ride even in harsh, unstable terrain.', 3, 4, 3, NULL, NULL, NULL, '2019-07-23 09:30:28', '2019-07-23 09:30:29', 2, 4, 8),
(68, 'RD08', 'Designed to be easily upgradeable, this vehicle serves as a test car for most new Racing Drone technologies.', 3, 5, 2, NULL, NULL, NULL, '2019-07-23 09:32:17', '2019-07-23 09:32:17', 2, 3, 5),
(69, 'RD09', 'One of the most versatile Racing Drone vehicles, the RD09 serves as the flagship vehicle for the Racing Drone high command.', 4, 4, 3, NULL, NULL, NULL, '2019-07-23 09:33:52', '2019-07-23 09:33:52', 2, 3, 5),
(70, 'RD10', 'The pinnacle of jet-fusion racers, the RD10\'s hydrogen ramjet kicks on at higher speeds to literally throw it down the road.', 3, 5, 3, NULL, NULL, NULL, '2019-07-23 09:37:12', '2019-07-26 11:31:07', 2, 3, 10),
(71, 'RD01.v2', 'Upgraded with a lighter titanium shell, the RD01.v2 is better, stronger and faster than the .v1.', 4, 5, 4, NULL, 1, NULL, '2019-07-23 09:38:59', '2019-07-23 09:39:00', 2, 3, 6),
(72, 'RD02.v2', 'Adding afterburners and advanced aerodynamics to the RD02\'s already sleek design packs even more punch into the .v2.', 4, 7, 4, NULL, 1, NULL, '2019-07-23 09:40:41', '2019-07-23 09:40:41', 2, 3, 8),
(73, 'RD03.v2', 'Upgrading with a mag-lev system, this car easily negotiates rough terrain. When RD03.v2 is brought into play, salvage 2 Hazard Cards from your junk pile and return them to our hand.', 4, 4, 3, NULL, NULL, NULL, '2019-07-23 09:42:47', '2019-07-23 09:42:47', 2, 3, 6),
(74, 'RD04.v2', 'This vehicle was assembled from wrecked Racing Drones and reversed-engineered Acceleron technology. When RD04.v2 is brought into play, salvage any 1 Mod from your junk pile and return it to your hand.', 2, 4, 3, NULL, NULL, NULL, '2019-07-23 09:45:22', '2019-07-23 09:45:22', 2, 3, 9),
(75, 'RD05.v2', 'Adapt or be scrapped. By adding compressed hydrogen jets and topographical software to the RD05.v2, this vehicle can now negotiate even the worst of terrains.', 3, 4, 4, NULL, NULL, NULL, '2019-07-23 09:47:15', '2019-07-26 11:31:07', 2, 3, 10),
(76, 'RD06.v2', 'Sporting four compressed hydrogen jets, the RD06.v2 is more of a missile than a vehicle.', 3, 6, 4, NULL, NULL, NULL, '2019-07-23 09:48:55', '2019-07-23 09:48:56', 2, 3, 2),
(77, 'RD07.v2', 'The RD07.v2 varies its magnetic polarity to adhere to metal surfaces, and the addition of gyroscopic stabilizers guarantees rock solid stability.', 3, 4, 4, NULL, NULL, NULL, '2019-07-23 09:50:35', '2019-07-23 09:50:35', 2, 3, 8),
(78, 'RD08.v2', 'Now equipped with a tough carbon composite chassis, this vehicle is even more upgradeable than the RD08.v1.', 3, 5, 3, NULL, NULL, NULL, '2019-07-23 09:51:54', '2019-07-23 09:51:54', 2, 3, 5),
(79, 'RD09.v2', 'Controlled by photonic-based optical CPUs, this choice for Racing Drone leadership is powered by twin hyper-burst fusion cells.', 4, 5, 4, NULL, NULL, 1, '2019-07-23 09:53:51', '2019-07-23 09:53:51', 2, 3, NULL),
(80, 'RD10.v2', 'Tuned to the extreme, the RD10.v2, uses specially modified spoilers and unknown stabilization technology to keep it grounded at the highest of speeds.', 4, 5, 3, NULL, NULL, NULL, '2019-07-23 09:55:11', '2019-07-26 11:31:07', 2, 3, 10),
(81, 'Swamp Realm', 'It\'s alive! This organic track sprouts from a fetid Swamp and winds up around towering trees, growing and branching faster than the cars that race on it.', NULL, 5, NULL, NULL, NULL, NULL, '2019-07-29 00:28:28', '2019-07-29 00:28:28', 1, NULL, 11),
(82, 'Canyon Realm', 'Crisis-crossing above an impossibly deep chasm, the Canyon track challenges drivers with sheer drops on every side.', NULL, NULL, 6, NULL, NULL, NULL, '2019-07-29 00:30:30', '2019-07-29 00:30:30', 1, NULL, 2),
(83, 'Chrome Realm', 'Beware: Objects in mirror are closer than they appear! Reality and reflection blur in this Chrome maze where huge sliver spheres threaten to crush cars like tin foil.', 6, NULL, NULL, NULL, NULL, NULL, '2019-07-29 00:33:00', '2019-07-29 00:33:00', 1, NULL, 9),
(84, 'Fog Realm', 'A think Fog hides gigantic obstacles and treacherous switchbacks that twist drivers into each other. No new shift cards can be equipped to any Vehicle in this realm.', NULL, NULL, 7, NULL, NULL, NULL, '2019-07-29 00:35:43', '2019-07-29 00:35:43', 1, NULL, 12),
(85, 'Storm Realm', 'The storm track loops and twists around seething thunderheads, forcing racers to slalom through heavy rains and spikes of lightning to escape.', 7, NULL, NULL, NULL, NULL, NULL, '2019-07-29 00:37:30', '2019-07-29 00:37:30', 1, NULL, 12),
(86, 'Ice Realm', 'An unstable plain atop a huge glacier, the Ice track suffers massive geological disruptions - including the impact of falling icicles as huge as skyscrapers.', 5, NULL, NULL, NULL, NULL, NULL, '2019-07-29 00:39:41', '2019-07-29 00:39:41', 1, NULL, 2),
(87, 'Wind Realm', 'A savage vortex of Wind batters racers with car-swallowing tornadoes, furiously swaying tracks and wind-blown debris that flies at supersonic speeds.', NULL, 6, NULL, NULL, NULL, NULL, '2019-07-29 00:42:10', '2019-07-29 00:42:10', 1, NULL, 12),
(88, 'Junk Realm', 'While in this Realm, ANY Mod can be equipped to ANY Vehicle. Modability rules DO NOT apply. Vehicles retain ALL equipped Mods when they advance from this Realm.', NULL, NULL, 5, NULL, NULL, NULL, '2019-07-29 00:44:18', '2019-07-29 00:44:18', 1, NULL, 11),
(89, 'Cavern Realm', 'Glowing geodes and strange fungi light this convoluted underground track, where vicious creatures lie in wait for any metal snacks that happen to drive past.', 7, NULL, NULL, NULL, NULL, NULL, '2019-07-29 00:46:35', '2019-07-29 00:46:35', 1, NULL, 12),
(90, 'Water Realm', 'Speeding through race tubes formed of \'solid water\', drivers on the Ocean track must contend with hungry aquatic hazards while negotiating an ancient coral reef.', NULL, 6, NULL, NULL, NULL, NULL, '2019-07-29 00:48:42', '2019-07-29 00:48:42', 1, NULL, 13),
(91, ' Solar Realm', 'Speed is the key to dodging Solar flares from a sun that blazes beneath the track. So floor it, smear on the SPF 1,000,000 and hope your tires don\'t melt!', 6, NULL, NULL, NULL, NULL, NULL, '2019-07-29 00:50:35', '2019-07-29 00:50:35', 1, NULL, 14),
(92, 'Cliffside Realm', 'The Cliffside track is perfect for drivers who like hairpin turns, rockslides and waterfalls. And for those who want additional thrills, there\'s always the giant vulture.', NULL, NULL, 6, NULL, NULL, NULL, '2019-07-29 00:53:07', '2019-07-29 00:53:07', 1, NULL, 10),
(93, 'Labyrinth Realm', 'The Labyrinth track\'s infinite tangle of twists and turns can totally confuse careless drivers... and then its savage Maze Minotaurs will totally trash them.', NULL, NULL, 6, NULL, NULL, NULL, '2019-07-29 00:56:06', '2019-07-29 00:56:06', 1, NULL, 12),
(94, 'Metro Realm', 'The Metro track seems eerily familiar at first, but this ordinary cityscape is devoid of life. Driverless cars and trucks careen along the deserted streets, hunting down racers one collision at a time.', NULL, NULL, 8, NULL, 0, 1, '2019-07-29 01:00:41', '2019-07-29 01:30:04', 1, NULL, 15),
(95, 'Neon Pipeline Realm', 'The so-called “Neon Pipeline\'s” 360 track unnerves most racers because it forces them to drive at all angles - even upside-down - to complete the course.', NULL, 6, NULL, NULL, NULL, NULL, '2019-07-29 01:04:08', '2019-07-29 01:04:08', 1, NULL, 12),
(96, 'Reactor Realm', 'Don\'t slow down to dodge the toxic spills throughout the Reactor - dangerous patrol machines are closing in. Sweeping the track with laser \'grids\' to wipe away anything that moves too slowly.', NULL, NULL, 8, NULL, 1, 0, '2019-07-29 01:07:05', '2019-07-29 01:30:34', 1, NULL, 11),
(97, 'Ruins Realm', 'Enormous statues, falling columns and a precarious marble track sprawl through the Ruin Realm. It\'s rumored the statues come to life. That would explain the giant fist-prints in all the wrecked cars.', 5, NULL, NULL, NULL, NULL, NULL, '2019-07-29 01:09:44', '2019-07-29 01:09:44', 1, NULL, 10),
(98, 'Lava Realm', 'Ultra-hot driving conditions, flaming boulders, super-heated gases and splashing lava pose the greatest threats on the Lava track. Only a cool hand can beat this molten heat.', 8, NULL, NULL, NULL, 1, 0, '2019-07-29 01:11:43', '2019-07-29 01:30:26', 1, NULL, 11),
(99, 'Cosmic Realm', 'The Cosmic track consists of energy rings looped around a small moon, Meteors and satellite debris bombard the track, and micro-black holes can instantly suck unwary cars to oblivion.', NULL, 7, NULL, NULL, NULL, NULL, '2019-07-29 01:14:28', '2019-07-29 01:14:28', 1, NULL, 12),
(100, 'Blizzard Realm', 'The Blizzard track thrusts drivers into a vicious snowstorm with zero visibility, sleet so fierce it punches right through windshields, and snow so deep it buries cars whole.', NULL, 7, NULL, NULL, NULL, NULL, '2019-07-29 01:16:32', '2019-07-29 01:16:32', 1, NULL, 10),
(101, 'Cybergrid Realm', 'A giant, supercharged circuit board, the Cybergrid track is a maze of 90 turns policed by electronic \'countermeasures\' that hunt down cars and burn them to bytes.', NULL, NULL, 7, NULL, NULL, NULL, '2019-07-29 01:19:01', '2019-07-29 01:19:01', 1, NULL, 12),
(102, 'Monument Realm', 'The only way to exit the ancient tombs of the Monument Realm is to decipher their mysterious hieroglyphs - a bit of a challenge when racing them at 300 mph.', NULL, NULL, 5, NULL, NULL, NULL, '2019-07-29 01:21:25', '2019-07-29 01:21:25', 1, NULL, 11),
(103, 'Desert Realm', 'On the Desert track, drivers must contend with treacherous quicksand, deadly rock passages and scathing sandstorms. And by the way, those giant scorpions are NOT a mirage.', NULL, 8, NULL, NULL, 1, 0, '2019-07-29 01:23:40', '2019-07-29 01:30:51', 1, NULL, 12),
(104, 'Warped Realm', 'In the Warped Realm, normal physics no longer apply; the track twists in on itself like a knot, gravity appears to have gone on vacation, and reality itself gets... well... warped.', NULL, 5, NULL, NULL, NULL, NULL, '2019-07-29 01:26:21', '2019-07-29 01:26:21', 1, NULL, 11),
(105, 'Micro Realm', 'Racing goes miniature on the Micro track where drivers and their vehicles collapse to the size of toy cars and get dropped onto a traffic-filled freeway to compete or be crushed!', 6, NULL, NULL, NULL, NULL, NULL, '2019-07-29 01:28:29', '2019-07-29 01:28:29', 1, NULL, 10);

-- --------------------------------------------------------

--
-- Table structure for table `cards_modabilities__modabilities_cards`
--

CREATE TABLE `cards_modabilities__modabilities_cards` (
  `id` int(11) NOT NULL,
  `card_id` int(11) DEFAULT NULL,
  `modability_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cards_modabilities__modabilities_cards`
--

INSERT INTO `cards_modabilities__modabilities_cards` (`id`, `card_id`, `modability_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(4, 3, 3),
(5, 4, 1),
(6, 4, 3),
(7, 5, 1),
(8, 6, 2),
(9, 7, 2),
(10, 8, 1),
(11, 8, 3),
(12, 9, 1),
(13, 10, 2),
(14, 11, 1),
(15, 12, 2),
(16, 13, 1),
(17, 13, 3),
(18, 14, 1),
(19, 14, 3),
(20, 15, 1),
(21, 16, 2),
(22, 17, 2),
(23, 18, 1),
(24, 18, 3),
(25, 19, 1),
(26, 19, 2),
(27, 20, 2),
(28, 21, 2),
(29, 22, 1),
(30, 23, 1),
(31, 24, 2),
(32, 25, 2),
(33, 26, 3),
(34, 27, 1),
(35, 28, 1),
(36, 29, 2),
(37, 30, 3),
(38, 31, 1),
(39, 31, 2),
(40, 32, 1),
(41, 33, 1),
(42, 34, 2),
(43, 35, 2),
(44, 36, 3),
(45, 37, 1),
(46, 38, 1),
(47, 39, 2),
(48, 40, 3),
(49, 41, 2),
(50, 42, 2),
(51, 43, 1),
(52, 44, 2),
(53, 45, 3),
(54, 46, 3),
(55, 47, 3),
(56, 48, 1),
(57, 49, 2),
(58, 50, 1),
(59, 51, 2),
(60, 52, 2),
(61, 53, 1),
(62, 54, 2),
(63, 55, 3),
(64, 56, 3),
(65, 57, 3),
(66, 58, 1),
(67, 59, 2),
(68, 60, 1),
(69, 61, 2),
(70, 62, 2),
(71, 63, 1),
(72, 64, 3),
(73, 65, 3),
(74, 66, 1),
(75, 67, 3),
(76, 68, 1),
(77, 69, 3),
(78, 70, 2),
(79, 71, 2),
(80, 72, 2),
(81, 73, 1),
(82, 74, 3),
(83, 75, 3),
(84, 76, 1),
(85, 77, 3),
(86, 78, 1),
(87, 79, 3),
(88, 80, 2);

-- --------------------------------------------------------

--
-- Table structure for table `cards_terrains__terrains_cards`
--

CREATE TABLE `cards_terrains__terrains_cards` (
  `id` int(11) NOT NULL,
  `card_id` int(11) DEFAULT NULL,
  `terrain_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cards_terrains__terrains_cards`
--

INSERT INTO `cards_terrains__terrains_cards` (`id`, `card_id`, `terrain_id`) VALUES
(1, 1, 6),
(2, 4, 5),
(3, 6, 1),
(4, 7, 3),
(5, 8, 4),
(6, 9, 2),
(7, 11, 6),
(8, 13, 2),
(9, 14, 2),
(10, 15, 6),
(11, 16, 1),
(12, 17, 3),
(13, 18, 1),
(14, 18, 4),
(15, 19, 5),
(16, 19, 2),
(17, 20, 3),
(18, 21, 5),
(19, 23, 4),
(20, 26, 1),
(21, 26, 2),
(22, 26, 4),
(23, 29, 6),
(24, 30, 3),
(25, 31, 5),
(26, 31, 6),
(27, 33, 4),
(28, 34, 5),
(29, 35, 6),
(30, 36, 2),
(31, 36, 1),
(32, 36, 4),
(33, 37, 1),
(34, 39, 6),
(35, 40, 3),
(36, 41, 5),
(37, 45, 1),
(38, 45, 4),
(39, 46, 5),
(40, 47, 1),
(41, 48, 4),
(42, 49, 6),
(43, 51, 5),
(44, 51, 6),
(45, 53, 6),
(46, 54, 6),
(47, 55, 1),
(48, 56, 5),
(49, 57, 1),
(50, 57, 2),
(51, 58, 4),
(52, 59, 6),
(53, 63, 4),
(54, 64, 2),
(55, 65, 1),
(56, 66, 6),
(57, 67, 5),
(58, 68, 3),
(59, 70, 5),
(60, 73, 2),
(61, 73, 4),
(62, 74, 1),
(63, 74, 2),
(64, 75, 1),
(65, 76, 5),
(66, 76, 6),
(67, 77, 5),
(68, 78, 3),
(69, 80, 5),
(70, 81, 2),
(71, 82, 4),
(72, 83, 5),
(73, 84, 4),
(74, 85, 3),
(75, 86, 5),
(76, 87, 1),
(77, 88, 6),
(78, 89, 2),
(79, 90, 3),
(80, 91, 6),
(81, 92, 4),
(82, 93, 5),
(83, 94, 6),
(84, 95, 3),
(85, 96, 5),
(86, 97, 4),
(87, 98, 2),
(88, 99, 1),
(89, 100, 5),
(90, 101, 6),
(91, 102, 1),
(92, 103, 1),
(93, 104, 3),
(94, 105, 6);

-- --------------------------------------------------------

--
-- Table structure for table `core_store`
--

CREATE TABLE `core_store` (
  `id` int(11) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `core_store`
--

INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'db_model_strapi_administrator', '{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"required\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false}}', 'object', NULL, NULL),
(2, 'db_model_core_store', '{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}', 'object', NULL, NULL),
(3, 'db_model_users-permissions_role', '{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true}}', 'object', NULL, NULL),
(4, 'db_model_users-permissions_user', '{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(5, 'db_model_users-permissions_permission', '{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false}}', 'object', NULL, NULL),
(6, 'db_model_upload_file', '{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"sha256\":{\"type\":\"string\",\"configurable\":false},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"public_id\":{\"type\":\"string\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(7, 'db_model_upload_file_morph', '{\"upload_file_id\":{\"type\":\"integer\"},\"related_id\":{\"type\":\"integer\"},\"related_type\":{\"type\":\"text\"},\"field\":{\"type\":\"text\"}}', 'object', NULL, NULL),
(8, 'core_application', '{\"name\":\"Default Application\",\"description\":\"This API is going to be awesome!\"}', 'object', '', ''),
(9, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"comments\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-official\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"redirect_uri\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"}}', 'object', '', ''),
(10, 'plugin_content-manager_schema', '{\"generalSettings\":{\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10},\"models\":{\"plugins\":{\"admin\":{\"administrator\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Username\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"username\",\"sortable\":true,\"searchable\":true},{\"label\":\"Email\",\"description\":\"\",\"type\":\"email\",\"disabled\":false,\"name\":\"email\",\"sortable\":true,\"searchable\":true},{\"label\":\"Password\",\"description\":\"\",\"type\":\"password\",\"disabled\":false,\"name\":\"password\",\"sortable\":true,\"searchable\":true},{\"label\":\"Blocked\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"blocked\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"strapi_administrator\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"Administrator\",\"description\":\"\"},\"globalName\":\"AdminAdministrator\",\"associations\":[],\"label\":\"Administrator\",\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"required\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false}},\"relations\":{},\"editDisplay\":{\"availableFields\":{\"username\":{\"label\":\"Username\",\"type\":\"string\",\"description\":\"\",\"name\":\"username\",\"editable\":true,\"placeholder\":\"\"},\"email\":{\"label\":\"Email\",\"type\":\"email\",\"description\":\"\",\"name\":\"email\",\"editable\":true,\"placeholder\":\"\"},\"password\":{\"label\":\"Password\",\"type\":\"password\",\"description\":\"\",\"name\":\"password\",\"editable\":true,\"placeholder\":\"\"},\"blocked\":{\"label\":\"Blocked\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"blocked\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"username\",\"email\",\"password\",\"blocked\"],\"relations\":[]},\"labelPlural\":\"Administrators\",\"fields\":{\"username\":{\"label\":\"Username\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"username\",\"sortable\":true,\"searchable\":true},\"email\":{\"label\":\"Email\",\"description\":\"\",\"type\":\"email\",\"disabled\":false,\"name\":\"email\",\"sortable\":true,\"searchable\":true},\"password\":{\"label\":\"Password\",\"description\":\"\",\"type\":\"password\",\"disabled\":false,\"name\":\"password\",\"sortable\":true,\"searchable\":true},\"blocked\":{\"label\":\"Blocked\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"blocked\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"AdminAdministrator\",\"identity\":\"Administrator\",\"sort\":\"ASC\",\"options\":{\"timestamps\":false},\"connection\":\"default\",\"defaultSort\":\"id\"}},\"users-permissions\":{\"permission\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true},{\"label\":\"Controller\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"controller\",\"sortable\":true,\"searchable\":true},{\"label\":\"Action\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"action\",\"sortable\":true,\"searchable\":true},{\"label\":\"Enabled\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"enabled\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"users-permissions_permission\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"permission\",\"description\":\"\"},\"globalName\":\"UsersPermissionsPermission\",\"associations\":[{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"permissions\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"}],\"label\":\"Permission\",\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false}},\"relations\":{\"role\":{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"permissions\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Role\",\"displayedAttribute\":\"name\"}},\"editDisplay\":{\"availableFields\":{\"type\":{\"label\":\"Type\",\"type\":\"string\",\"description\":\"\",\"name\":\"type\",\"editable\":true,\"placeholder\":\"\"},\"controller\":{\"label\":\"Controller\",\"type\":\"string\",\"description\":\"\",\"name\":\"controller\",\"editable\":true,\"placeholder\":\"\"},\"action\":{\"label\":\"Action\",\"type\":\"string\",\"description\":\"\",\"name\":\"action\",\"editable\":true,\"placeholder\":\"\"},\"enabled\":{\"label\":\"Enabled\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"enabled\",\"editable\":true,\"placeholder\":\"\"},\"policy\":{\"label\":\"Policy\",\"type\":\"string\",\"description\":\"\",\"name\":\"policy\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"type\",\"controller\",\"action\",\"enabled\",\"policy\"],\"relations\":[\"role\"]},\"labelPlural\":\"Permissions\",\"fields\":{\"type\":{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true},\"controller\":{\"label\":\"Controller\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"controller\",\"sortable\":true,\"searchable\":true},\"action\":{\"label\":\"Action\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"action\",\"sortable\":true,\"searchable\":true},\"enabled\":{\"label\":\"Enabled\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"enabled\",\"sortable\":true,\"searchable\":true},\"policy\":{\"label\":\"Policy\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"policy\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"UsersPermissionsPermission\",\"sort\":\"ASC\",\"options\":{\"timestamps\":false},\"connection\":\"default\",\"defaultSort\":\"id\"},\"role\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Description\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true},{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"users-permissions_role\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"role\",\"description\":\"\"},\"globalName\":\"UsersPermissionsRole\",\"associations\":[{\"alias\":\"permissions\",\"type\":\"collection\",\"collection\":\"permission\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"},{\"alias\":\"users\",\"type\":\"collection\",\"collection\":\"user\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"}],\"label\":\"Role\",\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true}},\"relations\":{\"permissions\":{\"alias\":\"permissions\",\"type\":\"collection\",\"collection\":\"permission\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Permissions\",\"displayedAttribute\":\"type\"},\"users\":{\"alias\":\"users\",\"type\":\"collection\",\"collection\":\"user\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Users\",\"displayedAttribute\":\"username\"}},\"editDisplay\":{\"availableFields\":{\"name\":{\"label\":\"Name\",\"type\":\"string\",\"description\":\"\",\"name\":\"name\",\"editable\":true,\"placeholder\":\"\"},\"description\":{\"label\":\"Description\",\"type\":\"string\",\"description\":\"\",\"name\":\"description\",\"editable\":true,\"placeholder\":\"\"},\"type\":{\"label\":\"Type\",\"type\":\"string\",\"description\":\"\",\"name\":\"type\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"name\",\"description\",\"type\"],\"relations\":[\"permissions\",\"users\"]},\"labelPlural\":\"Roles\",\"fields\":{\"name\":{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},\"description\":{\"label\":\"Description\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true},\"type\":{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"UsersPermissionsRole\",\"sort\":\"ASC\",\"options\":{\"timestamps\":false},\"connection\":\"default\",\"defaultSort\":\"id\"},\"user\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Username\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"username\",\"sortable\":true,\"searchable\":true},{\"label\":\"Email\",\"description\":\"\",\"type\":\"email\",\"disabled\":false,\"name\":\"email\",\"sortable\":true,\"searchable\":true},{\"label\":\"Provider\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"provider\",\"sortable\":true,\"searchable\":true},{\"label\":\"Password\",\"description\":\"\",\"type\":\"password\",\"disabled\":false,\"name\":\"password\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"users-permissions_user\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"user\",\"description\":\"\"},\"globalName\":\"UsersPermissionsUser\",\"associations\":[{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"users\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"}],\"label\":\"User\",\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false}},\"relations\":{\"role\":{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"users\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Role\",\"displayedAttribute\":\"name\"}},\"editDisplay\":{\"availableFields\":{\"username\":{\"label\":\"Username\",\"type\":\"string\",\"description\":\"\",\"name\":\"username\",\"editable\":true,\"placeholder\":\"\"},\"email\":{\"label\":\"Email\",\"type\":\"email\",\"description\":\"\",\"name\":\"email\",\"editable\":true,\"placeholder\":\"\"},\"provider\":{\"label\":\"Provider\",\"type\":\"string\",\"description\":\"\",\"name\":\"provider\",\"editable\":true,\"placeholder\":\"\"},\"password\":{\"label\":\"Password\",\"type\":\"password\",\"description\":\"\",\"name\":\"password\",\"editable\":true,\"placeholder\":\"\"},\"confirmed\":{\"label\":\"Confirmed\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"confirmed\",\"editable\":true,\"placeholder\":\"\"},\"blocked\":{\"label\":\"Blocked\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"blocked\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"confirmed\",\"blocked\"],\"relations\":[\"role\"]},\"labelPlural\":\"Users\",\"fields\":{\"username\":{\"label\":\"Username\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"username\",\"sortable\":true,\"searchable\":true},\"email\":{\"label\":\"Email\",\"description\":\"\",\"type\":\"email\",\"disabled\":false,\"name\":\"email\",\"sortable\":true,\"searchable\":true},\"provider\":{\"label\":\"Provider\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"provider\",\"sortable\":true,\"searchable\":true},\"password\":{\"label\":\"Password\",\"description\":\"\",\"type\":\"password\",\"disabled\":false,\"name\":\"password\",\"sortable\":true,\"searchable\":true},\"confirmed\":{\"label\":\"Confirmed\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"confirmed\",\"sortable\":true,\"searchable\":true},\"blocked\":{\"label\":\"Blocked\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"blocked\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"UsersPermissionsUser\",\"sort\":\"ASC\",\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"connection\":\"default\",\"defaultSort\":\"id\"}},\"upload\":{\"file\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Hash\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"hash\",\"sortable\":true,\"searchable\":true},{\"label\":\"Sha256\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"sha256\",\"sortable\":true,\"searchable\":true},{\"label\":\"Ext\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"ext\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"upload_file\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"file\",\"description\":\"\"},\"globalName\":\"UploadFile\",\"associations\":[{\"alias\":\"related\",\"type\":\"collection\",\"related\":[],\"nature\":\"manyMorphToMany\",\"autoPopulate\":true,\"filter\":\"field\"}],\"label\":\"File\",\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"sha256\":{\"type\":\"string\",\"configurable\":false},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"public_id\":{\"type\":\"string\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false}},\"relations\":{\"related\":{\"alias\":\"related\",\"type\":\"collection\",\"related\":[],\"nature\":\"manyMorphToMany\",\"autoPopulate\":true,\"filter\":\"field\",\"description\":\"\",\"label\":\"Related\",\"displayedAttribute\":\"id\"}},\"editDisplay\":{\"availableFields\":{\"size\":{\"label\":\"Size\",\"type\":\"string\",\"description\":\"\",\"name\":\"size\",\"editable\":true,\"placeholder\":\"\"},\"ext\":{\"label\":\"Ext\",\"type\":\"string\",\"description\":\"\",\"name\":\"ext\",\"editable\":true,\"placeholder\":\"\"},\"sha256\":{\"label\":\"Sha256\",\"type\":\"string\",\"description\":\"\",\"name\":\"sha256\",\"editable\":true,\"placeholder\":\"\"},\"name\":{\"label\":\"Name\",\"type\":\"string\",\"description\":\"\",\"name\":\"name\",\"editable\":true,\"placeholder\":\"\"},\"hash\":{\"label\":\"Hash\",\"type\":\"string\",\"description\":\"\",\"name\":\"hash\",\"editable\":true,\"placeholder\":\"\"},\"url\":{\"label\":\"Url\",\"type\":\"string\",\"description\":\"\",\"name\":\"url\",\"editable\":true,\"placeholder\":\"\"},\"provider\":{\"label\":\"Provider\",\"type\":\"string\",\"description\":\"\",\"name\":\"provider\",\"editable\":true,\"placeholder\":\"\"},\"public_id\":{\"label\":\"Public_id\",\"type\":\"string\",\"description\":\"\",\"name\":\"public_id\",\"editable\":true,\"placeholder\":\"\"},\"mime\":{\"label\":\"Mime\",\"type\":\"string\",\"description\":\"\",\"name\":\"mime\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"name\",\"hash\",\"sha256\",\"ext\",\"mime\",\"size\",\"url\",\"provider\",\"public_id\"],\"relations\":[]},\"labelPlural\":\"Files\",\"fields\":{\"size\":{\"label\":\"Size\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"size\",\"sortable\":true,\"searchable\":true},\"ext\":{\"label\":\"Ext\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"ext\",\"sortable\":true,\"searchable\":true},\"sha256\":{\"label\":\"Sha256\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"sha256\",\"sortable\":true,\"searchable\":true},\"name\":{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},\"hash\":{\"label\":\"Hash\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"hash\",\"sortable\":true,\"searchable\":true},\"url\":{\"label\":\"Url\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"url\",\"sortable\":true,\"searchable\":true},\"provider\":{\"label\":\"Provider\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"provider\",\"sortable\":true,\"searchable\":true},\"public_id\":{\"label\":\"Public_id\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"public_id\",\"sortable\":true,\"searchable\":true},\"mime\":{\"label\":\"Mime\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"mime\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"UploadFile\",\"sort\":\"ASC\",\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"connection\":\"default\",\"defaultSort\":\"id\"}}},\"card\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Description\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true},{\"label\":\"Speed\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"speed\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"cards\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"card\",\"description\":\"\"},\"globalName\":\"Card\",\"associations\":[{\"alias\":\"terrains\",\"type\":\"collection\",\"collection\":\"terrain\",\"via\":\"cards\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":true,\"tableCollectionName\":\"cards_terrains__terrains_cards\"},{\"alias\":\"modabilities\",\"type\":\"collection\",\"collection\":\"modability\",\"via\":\"cards\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":true,\"tableCollectionName\":\"cards_modabilities__modabilities_cards\"},{\"alias\":\"type\",\"type\":\"model\",\"model\":\"type\",\"via\":\"cards\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true},{\"alias\":\"team\",\"type\":\"model\",\"model\":\"team\",\"via\":\"cards\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true},{\"alias\":\"illustrator\",\"type\":\"model\",\"model\":\"illustrator\",\"via\":\"cards\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true}],\"label\":\"Card\",\"attributes\":{\"name\":{\"unique\":true,\"required\":true,\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"speed\":{\"type\":\"integer\"},\"power\":{\"type\":\"integer\"},\"performance\":{\"type\":\"integer\"},\"actionPoint\":{\"type\":\"integer\"},\"foil\":{\"type\":\"boolean\"},\"hologram\":{\"type\":\"boolean\"},\"terrains\":{\"collection\":\"terrain\",\"via\":\"cards\",\"dominant\":true,\"attribute\":\"terrain\",\"column\":\"id\",\"isVirtual\":true},\"modabilities\":{\"collection\":\"modability\",\"via\":\"cards\",\"dominant\":true,\"attribute\":\"modability\",\"column\":\"id\",\"isVirtual\":true},\"type\":{\"model\":\"type\",\"via\":\"cards\"},\"team\":{\"model\":\"team\",\"via\":\"cards\"},\"illustrator\":{\"model\":\"illustrator\",\"via\":\"cards\"}},\"relations\":{\"terrains\":{\"alias\":\"terrains\",\"type\":\"collection\",\"collection\":\"terrain\",\"via\":\"cards\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":true,\"tableCollectionName\":\"cards_terrains__terrains_cards\",\"description\":\"\",\"label\":\"Terrains\",\"displayedAttribute\":\"name\"},\"modabilities\":{\"alias\":\"modabilities\",\"type\":\"collection\",\"collection\":\"modability\",\"via\":\"cards\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":true,\"tableCollectionName\":\"cards_modabilities__modabilities_cards\",\"description\":\"\",\"label\":\"Modabilities\",\"displayedAttribute\":\"name\"},\"type\":{\"alias\":\"type\",\"type\":\"model\",\"model\":\"type\",\"via\":\"cards\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Type\",\"displayedAttribute\":\"name\"},\"team\":{\"alias\":\"team\",\"type\":\"model\",\"model\":\"team\",\"via\":\"cards\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Team\",\"displayedAttribute\":\"name\"},\"illustrator\":{\"alias\":\"illustrator\",\"type\":\"model\",\"model\":\"illustrator\",\"via\":\"cards\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Illustrator\",\"displayedAttribute\":\"firstName\"}},\"editDisplay\":{\"availableFields\":{\"hologram\":{\"label\":\"Hologram\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"hologram\",\"editable\":true,\"placeholder\":\"\"},\"power\":{\"label\":\"Power\",\"type\":\"integer\",\"description\":\"\",\"name\":\"power\",\"editable\":true,\"placeholder\":\"\"},\"speed\":{\"label\":\"Speed\",\"type\":\"integer\",\"description\":\"\",\"name\":\"speed\",\"editable\":true,\"placeholder\":\"\"},\"name\":{\"label\":\"Name\",\"type\":\"string\",\"description\":\"\",\"name\":\"name\",\"editable\":true,\"placeholder\":\"\"},\"foil\":{\"label\":\"Foil\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"foil\",\"editable\":true,\"placeholder\":\"\"},\"performance\":{\"label\":\"Performance\",\"type\":\"integer\",\"description\":\"\",\"name\":\"performance\",\"editable\":true,\"placeholder\":\"\"},\"actionPoint\":{\"label\":\"ActionPoint\",\"type\":\"integer\",\"description\":\"\",\"name\":\"actionPoint\",\"editable\":true,\"placeholder\":\"\"},\"description\":{\"label\":\"Description\",\"type\":\"text\",\"description\":\"\",\"name\":\"description\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"name\",\"description\",\"speed\",\"power\",\"performance\",\"foil\",\"hologram\",\"actionPoint\"],\"relations\":[\"terrains\",\"modabilities\",\"type\",\"team\",\"illustrator\"]},\"labelPlural\":\"Cards\",\"fields\":{\"hologram\":{\"label\":\"Hologram\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"hologram\",\"sortable\":true,\"searchable\":true},\"power\":{\"label\":\"Power\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"power\",\"sortable\":true,\"searchable\":true},\"speed\":{\"label\":\"Speed\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"speed\",\"sortable\":true,\"searchable\":true},\"name\":{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},\"foil\":{\"label\":\"Foil\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"foil\",\"sortable\":true,\"searchable\":true},\"performance\":{\"label\":\"Performance\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"performance\",\"sortable\":true,\"searchable\":true},\"actionPoint\":{\"label\":\"ActionPoint\",\"description\":\"\",\"type\":\"integer\",\"disabled\":false,\"name\":\"actionPoint\",\"sortable\":true,\"searchable\":true},\"description\":{\"label\":\"Description\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Card\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"connection\":\"default\",\"defaultSort\":\"id\"},\"modability\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Description\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"modabilities\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"modability\",\"description\":\"\"},\"globalName\":\"Modability\",\"associations\":[{\"alias\":\"cards\",\"type\":\"collection\",\"collection\":\"card\",\"via\":\"modabilities\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":false,\"tableCollectionName\":\"cards_modabilities__modabilities_cards\"}],\"label\":\"Modability\",\"attributes\":{\"name\":{\"required\":true,\"unique\":true,\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"cards\":{\"collection\":\"card\",\"via\":\"modabilities\",\"attribute\":\"card\",\"column\":\"id\",\"isVirtual\":true}},\"relations\":{\"cards\":{\"alias\":\"cards\",\"type\":\"collection\",\"collection\":\"card\",\"via\":\"modabilities\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":false,\"tableCollectionName\":\"cards_modabilities__modabilities_cards\",\"description\":\"\",\"label\":\"Cards\",\"displayedAttribute\":\"name\"}},\"editDisplay\":{\"availableFields\":{\"name\":{\"label\":\"Name\",\"type\":\"string\",\"description\":\"\",\"name\":\"name\",\"editable\":true,\"placeholder\":\"\"},\"description\":{\"label\":\"Description\",\"type\":\"text\",\"description\":\"\",\"name\":\"description\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"name\",\"description\"],\"relations\":[\"cards\"]},\"labelPlural\":\"Modabilities\",\"fields\":{\"name\":{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},\"description\":{\"label\":\"Description\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Modability\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"connection\":\"default\",\"defaultSort\":\"id\"},\"terrain\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Description\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"terrains\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"terrain\",\"description\":\"\"},\"globalName\":\"Terrain\",\"associations\":[{\"alias\":\"cards\",\"type\":\"collection\",\"collection\":\"card\",\"via\":\"terrains\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":false,\"tableCollectionName\":\"cards_terrains__terrains_cards\"}],\"label\":\"Terrain\",\"attributes\":{\"name\":{\"required\":true,\"unique\":true,\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"cards\":{\"collection\":\"card\",\"via\":\"terrains\",\"attribute\":\"card\",\"column\":\"id\",\"isVirtual\":true}},\"relations\":{\"cards\":{\"alias\":\"cards\",\"type\":\"collection\",\"collection\":\"card\",\"via\":\"terrains\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":false,\"tableCollectionName\":\"cards_terrains__terrains_cards\",\"description\":\"\",\"label\":\"Cards\",\"displayedAttribute\":\"name\"}},\"editDisplay\":{\"availableFields\":{\"name\":{\"label\":\"Name\",\"type\":\"string\",\"description\":\"\",\"name\":\"name\",\"editable\":true,\"placeholder\":\"\"},\"description\":{\"label\":\"Description\",\"type\":\"text\",\"description\":\"\",\"name\":\"description\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"name\",\"description\"],\"relations\":[\"cards\"]},\"labelPlural\":\"Terrains\",\"fields\":{\"name\":{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},\"description\":{\"label\":\"Description\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Terrain\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"connection\":\"default\",\"defaultSort\":\"id\"},\"type\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Description\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"types\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"type\",\"description\":\"\"},\"globalName\":\"Type\",\"associations\":[{\"alias\":\"cards\",\"type\":\"collection\",\"collection\":\"card\",\"via\":\"type\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true}],\"label\":\"Type\",\"attributes\":{\"name\":{\"unique\":true,\"required\":true,\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"cards\":{\"collection\":\"card\",\"via\":\"type\",\"isVirtual\":true}},\"relations\":{\"cards\":{\"alias\":\"cards\",\"type\":\"collection\",\"collection\":\"card\",\"via\":\"type\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Cards\",\"displayedAttribute\":\"name\"}},\"editDisplay\":{\"availableFields\":{\"name\":{\"label\":\"Name\",\"type\":\"string\",\"description\":\"\",\"name\":\"name\",\"editable\":true,\"placeholder\":\"\"},\"description\":{\"label\":\"Description\",\"type\":\"text\",\"description\":\"\",\"name\":\"description\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"name\",\"description\"],\"relations\":[\"cards\"]},\"labelPlural\":\"Types\",\"fields\":{\"name\":{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},\"description\":{\"label\":\"Description\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Type\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"connection\":\"default\",\"defaultSort\":\"id\"},\"team\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Description\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"teams\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"team\",\"description\":\"\"},\"globalName\":\"Team\",\"associations\":[{\"alias\":\"cards\",\"type\":\"collection\",\"collection\":\"card\",\"via\":\"team\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true}],\"label\":\"Team\",\"attributes\":{\"name\":{\"unique\":true,\"required\":true,\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"cards\":{\"collection\":\"card\",\"via\":\"team\",\"isVirtual\":true}},\"relations\":{\"cards\":{\"alias\":\"cards\",\"type\":\"collection\",\"collection\":\"card\",\"via\":\"team\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Cards\",\"displayedAttribute\":\"name\"}},\"editDisplay\":{\"availableFields\":{\"name\":{\"label\":\"Name\",\"type\":\"string\",\"description\":\"\",\"name\":\"name\",\"editable\":true,\"placeholder\":\"\"},\"description\":{\"label\":\"Description\",\"type\":\"text\",\"description\":\"\",\"name\":\"description\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"name\",\"description\"],\"relations\":[\"cards\"]},\"labelPlural\":\"Teams\",\"fields\":{\"name\":{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},\"description\":{\"label\":\"Description\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Team\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"connection\":\"default\",\"defaultSort\":\"id\"},\"illustrator\":{\"pageEntries\":10,\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"FirstName\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"firstName\",\"sortable\":true,\"searchable\":true},{\"label\":\"LastName\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"lastName\",\"sortable\":true,\"searchable\":true}],\"search\":true,\"collectionName\":\"illustrators\",\"orm\":\"bookshelf\",\"bulkActions\":true,\"info\":{\"name\":\"illustrator\",\"description\":\"\"},\"globalName\":\"Illustrator\",\"associations\":[{\"alias\":\"cards\",\"type\":\"collection\",\"collection\":\"card\",\"via\":\"illustrator\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true}],\"label\":\"Illustrator\",\"attributes\":{\"firstName\":{\"required\":true,\"type\":\"string\"},\"lastName\":{\"required\":true,\"type\":\"string\"},\"cards\":{\"collection\":\"card\",\"via\":\"illustrator\",\"isVirtual\":true}},\"relations\":{\"cards\":{\"alias\":\"cards\",\"type\":\"collection\",\"collection\":\"card\",\"via\":\"illustrator\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"description\":\"\",\"label\":\"Cards\",\"displayedAttribute\":\"name\"}},\"editDisplay\":{\"availableFields\":{\"firstName\":{\"label\":\"FirstName\",\"type\":\"string\",\"description\":\"\",\"name\":\"firstName\",\"editable\":true,\"placeholder\":\"\"},\"lastName\":{\"label\":\"LastName\",\"type\":\"string\",\"description\":\"\",\"name\":\"lastName\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"firstName\",\"lastName\"],\"relations\":[\"cards\"]},\"labelPlural\":\"Illustrators\",\"fields\":{\"firstName\":{\"label\":\"FirstName\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"firstName\",\"sortable\":true,\"searchable\":true},\"lastName\":{\"label\":\"LastName\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"lastName\",\"sortable\":true,\"searchable\":true}},\"filters\":true,\"primaryKey\":\"id\",\"globalId\":\"Illustrator\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"connection\":\"default\",\"defaultSort\":\"id\"}},\"layout\":{\"user\":{\"actions\":{\"create\":\"User.create\",\"update\":\"User.update\",\"destroy\":\"User.destroy\",\"deleteall\":\"User.destroyAll\"},\"attributes\":{\"username\":{\"className\":\"col-md-6\"},\"email\":{\"className\":\"col-md-6\"},\"resetPasswordToken\":{\"className\":\"d-none\"},\"role\":{\"className\":\"d-none\"}}},\"administrator\":{\"actions\":{\"create\":\"Admin.create\",\"update\":\"Admin.update\"},\"attributes\":{\"username\":{\"className\":\"col-md-6\"},\"email\":{\"className\":\"col-md-6\"},\"resetPasswordToken\":{\"className\":\"d-none\"}}},\"card\":{\"attributes\":{\"description\":{\"appearance\":\"\"}}},\"modability\":{\"attributes\":{}},\"terrain\":{\"attributes\":{}},\"type\":{\"attributes\":{}},\"team\":{\"attributes\":{}},\"illustrator\":{\"attributes\":{}}}}', 'object', '', ''),
(11, 'plugin_email_provider', '{\"provider\":\"sendmail\",\"name\":\"Sendmail\",\"auth\":{\"sendmail_default_from\":{\"label\":\"Sendmail Default From\",\"type\":\"text\"},\"sendmail_default_replyto\":{\"label\":\"Sendmail Default Reply-To\",\"type\":\"text\"}}}', 'object', 'development', ''),
(12, 'plugin_upload_provider', '{\"provider\":\"local\",\"name\":\"Local server\",\"enabled\":true,\"sizeLimit\":1000000}', 'object', 'development', ''),
(13, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"refresh\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"­Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square-o\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', '', ''),
(14, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_confirmation_redirection\":\"http://localhost:1337/admin\",\"default_role\":\"authenticated\"}', 'object', '', ''),
(15, 'db_model_categories', '{\"name\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"description\":{\"type\":\"text\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(16, 'db_model_cards', '{\"name\":{\"unique\":true,\"required\":true,\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"speed\":{\"type\":\"integer\"},\"power\":{\"type\":\"integer\"},\"performance\":{\"type\":\"integer\"},\"actionPoint\":{\"type\":\"integer\"},\"foil\":{\"type\":\"boolean\"},\"hologram\":{\"type\":\"boolean\"},\"terrains\":{\"collection\":\"terrain\",\"via\":\"cards\",\"dominant\":true,\"attribute\":\"terrain\",\"column\":\"id\",\"isVirtual\":true},\"modabilities\":{\"collection\":\"modability\",\"via\":\"cards\",\"dominant\":true,\"attribute\":\"modability\",\"column\":\"id\",\"isVirtual\":true},\"type\":{\"model\":\"type\",\"via\":\"cards\"},\"team\":{\"model\":\"team\",\"via\":\"cards\"},\"illustrator\":{\"model\":\"illustrator\",\"via\":\"cards\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(17, 'db_model_terrains', '{\"name\":{\"required\":true,\"unique\":true,\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"cards\":{\"collection\":\"card\",\"via\":\"terrains\",\"attribute\":\"card\",\"column\":\"id\",\"isVirtual\":true},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(18, 'db_model_cardterrains', '{\"card\":{\"model\":\"card\",\"via\":\"cardterrains\"},\"terrain\":{\"model\":\"terrain\",\"via\":\"cardterrains\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(19, 'db_model_cards_terrains__terrains_cards', '{\"card_id\":{\"type\":\"integer\"},\"terrain_id\":{\"type\":\"integer\"}}', 'object', NULL, NULL),
(20, 'db_model_Card', '{\"name\":{\"required\":true,\"unique\":true,\"type\":\"string\"},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(21, 'db_model_modabilities', '{\"name\":{\"required\":true,\"unique\":true,\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"cards\":{\"collection\":\"card\",\"via\":\"modabilities\",\"attribute\":\"card\",\"column\":\"id\",\"isVirtual\":true},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(22, 'db_model_types', '{\"name\":{\"unique\":true,\"required\":true,\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"cards\":{\"collection\":\"card\",\"via\":\"type\",\"isVirtual\":true},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(23, 'db_model_teams', '{\"name\":{\"unique\":true,\"required\":true,\"type\":\"string\"},\"description\":{\"type\":\"text\"},\"cards\":{\"collection\":\"card\",\"via\":\"team\",\"isVirtual\":true},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(24, 'db_model_cards_modabilities__modabilities_cards', '{\"card_id\":{\"type\":\"integer\"},\"modability_id\":{\"type\":\"integer\"}}', 'object', NULL, NULL),
(25, 'db_model_illustrators', '{\"firstName\":{\"required\":true,\"type\":\"string\"},\"lastName\":{\"required\":true,\"type\":\"string\"},\"cards\":{\"collection\":\"card\",\"via\":\"illustrator\",\"isVirtual\":true},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `illustrators`
--

CREATE TABLE `illustrators` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `illustrators`
--

INSERT INTO `illustrators` (`id`, `firstName`, `lastName`, `created_at`, `updated_at`) VALUES
(1, 'Andy', 'Ogden', '2019-07-23 04:54:18', '2019-07-23 04:54:18'),
(2, 'Scott', 'Robertson', '2019-07-23 05:12:56', '2019-07-23 05:12:56'),
(3, 'Stephen', 'Chang', '2019-07-23 06:34:37', '2019-07-23 06:34:37'),
(4, 'Phil', 'Saunders', '2019-07-23 06:42:41', '2019-07-23 06:42:41'),
(5, 'Kasra', 'Farahani', '2019-07-23 07:00:18', '2019-07-23 07:00:19'),
(6, 'Michael', 'Trump', '2019-07-23 07:58:19', '2019-07-23 07:58:19'),
(7, 'Ian', 'Cartabiano', '2019-07-23 07:59:00', '2019-07-23 07:59:01'),
(8, 'Mike', 'Yamada', '2019-07-23 08:00:58', '2019-07-23 08:00:58'),
(9, 'Terry', 'Greenough', '2019-07-23 08:01:49', '2019-07-23 08:01:49'),
(10, 'Patrick', 'Hanenberger', '2019-07-23 08:02:19', '2019-07-26 11:31:07'),
(11, 'Mark', 'Goerner', '2019-07-23 08:03:28', '2019-07-23 08:03:28'),
(12, ' Ari', 'Bilow', '2019-07-23 08:04:19', '2019-07-23 08:04:20'),
(13, 'Neville', 'Page', '2019-07-23 08:05:13', '2019-07-23 08:05:13'),
(14, 'Will', 'Routon', '2019-07-23 08:05:52', '2019-07-23 08:05:52'),
(15, 'Khang', 'Le', '2019-07-23 08:06:34', '2019-07-23 08:06:34'),
(16, 'Ron', 'Kurniawan', '2019-07-23 08:07:49', '2019-07-23 08:07:49'),
(17, 'Ryan', 'Church', '2019-07-23 08:08:09', '2019-07-23 08:08:09'),
(18, 'Kino', 'Scialabba', '2019-07-23 08:08:31', '2019-07-23 08:08:31'),
(19, 'Francis', 'Tsai', '2019-07-23 08:09:00', '2019-07-23 08:09:00'),
(20, 'Kazu', 'Kibuishi', '2019-07-23 08:10:08', '2019-07-23 08:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `modabilities`
--

CREATE TABLE `modabilities` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modabilities`
--

INSERT INTO `modabilities` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Street', NULL, '2019-07-23 03:44:23', '2019-07-23 03:44:23'),
(2, 'Racing', NULL, '2019-07-23 03:44:31', '2019-07-23 03:44:31'),
(3, 'Off-Road', NULL, '2019-07-23 03:44:41', '2019-07-23 03:44:41');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_administrator`
--

CREATE TABLE `strapi_administrator` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `strapi_administrator`
--

INSERT INTO `strapi_administrator` (`id`, `username`, `email`, `password`, `resetPasswordToken`, `blocked`) VALUES
(1, 'PatrickWCity', 'patrickwcity@gmai.com', '$2a$10$cuyFSp3KyFHOCjfRYsw8AefNIHQmeQD4ImrkgMSh5P.aa7Pizuh46', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Teku Racers', NULL, '2019-07-23 03:42:54', '2019-07-23 03:42:54'),
(2, 'Metal Maniacs', '', '2019-07-23 03:43:13', '2019-07-23 03:43:13'),
(3, 'Racing Drones', NULL, '2019-07-23 03:43:24', '2019-07-23 03:43:24'),
(4, 'Silencerz', NULL, '2019-07-23 03:43:34', '2019-07-23 03:43:34');

-- --------------------------------------------------------

--
-- Table structure for table `terrains`
--

CREATE TABLE `terrains` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terrains`
--

INSERT INTO `terrains` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Sand', NULL, '2019-07-23 03:44:59', '2019-07-23 03:44:59'),
(2, 'Mud', NULL, '2019-07-23 03:45:05', '2019-07-23 03:45:06'),
(3, 'Water', NULL, '2019-07-23 03:45:10', '2019-07-23 03:45:10'),
(4, 'Rough', NULL, '2019-07-23 03:45:19', '2019-07-23 03:45:19'),
(5, 'Slick', NULL, '2019-07-23 03:45:24', '2019-07-23 03:45:24'),
(6, 'Paved', NULL, '2019-07-23 03:45:29', '2019-07-23 03:45:30');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Racing Realm', 'Players must race three Vehicles through four separate Racing Realms to win the game. A single race always consists of four Realms', '2019-07-23 03:48:13', '2019-07-23 03:48:14'),
(2, 'Vehicle', 'Customize your Vehicles with other cards that add to their Speed, Power and Performance values.', '2019-07-23 03:49:12', '2019-07-23 03:49:12'),
(3, 'Mod', 'Mod cards are permanent physical modifications to a Vehicle. They stay with your Vehicle as it moves from Realm to Realm.', '2019-07-23 03:50:33', '2019-07-23 03:50:33'),
(4, 'Shift', 'Shift cards reflect a driver\'s skill and can be the difference between winner and wreckage. They provide a temporary boost to a Vehicle\'s SPP rating - unlike Mods, Shifts are discarded when the Vehicle advances to a new Racing Realm. (unless the card indicates otherwise).', '2019-07-23 03:53:17', '2019-07-23 03:53:17'),
(5, 'Accele-Chargers™', 'Accele-Chargers are incredible artifacts left by the Accelerons. They may equip any Vehicle, but, like Shift cards, are temporary and must be discarded when the Vehicle they equip advances to the next Realm.', '2019-07-23 03:56:06', '2019-07-23 03:56:06'),
(6, 'Hazard', 'Hazards destroy - or \"junk\" - Mod and Shift cards, but they do not affect Accele-Chargers (unless the Hazard card specifically says so). Some of the most powerful Hazards can destroy entire Vehicles!', '2019-07-23 03:58:03', '2019-07-23 03:58:03');

-- --------------------------------------------------------

--
-- Table structure for table `upload_file`
--

CREATE TABLE `upload_file` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `sha256` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `public_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `upload_file_morph`
--

CREATE TABLE `upload_file_morph` (
  `id` int(11) NOT NULL,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext,
  `field` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_permission`
--

CREATE TABLE `users-permissions_permission` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users-permissions_permission`
--

INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`) VALUES
(1, 'settings-manager', 'settingsmanager', 'menu', 0, '', 1),
(2, 'settings-manager', 'settingsmanager', 'environments', 0, '', 1),
(3, 'settings-manager', 'settingsmanager', 'languages', 0, '', 1),
(4, 'settings-manager', 'settingsmanager', 'databases', 0, '', 1),
(5, 'settings-manager', 'settingsmanager', 'createdatabase', 0, '', 1),
(6, 'settings-manager', 'settingsmanager', 'updatedatabase', 0, '', 1),
(7, 'settings-manager', 'settingsmanager', 'deletedatabase', 0, '', 1),
(8, 'content-type-builder', 'contenttypebuilder', 'getmodels', 0, '', 1),
(9, 'settings-manager', 'settingsmanager', 'deletelanguage', 0, '', 1),
(10, 'settings-manager', 'settingsmanager', 'databasemodel', 0, '', 1),
(11, 'settings-manager', 'settingsmanager', 'createlanguage', 0, '', 1),
(12, 'settings-manager', 'settingsmanager', 'update', 0, '', 1),
(13, 'settings-manager', 'settingsmanager', 'database', 0, '', 1),
(14, 'settings-manager', 'settingsmanager', 'get', 0, '', 1),
(15, 'content-type-builder', 'contenttypebuilder', 'getmodel', 0, '', 1),
(16, 'content-type-builder', 'contenttypebuilder', 'getconnections', 0, '', 1),
(17, 'content-type-builder', 'contenttypebuilder', 'createmodel', 0, '', 1),
(18, 'content-type-builder', 'contenttypebuilder', 'updatemodel', 0, '', 1),
(19, 'content-type-builder', 'contenttypebuilder', 'deletemodel', 0, '', 1),
(20, 'content-type-builder', 'contenttypebuilder', 'checktableexists', 0, '', 1),
(21, 'content-manager', 'contentmanager', 'models', 0, '', 1),
(22, 'content-manager', 'contentmanager', 'find', 0, '', 1),
(23, 'content-manager', 'contentmanager', 'count', 0, '', 1),
(24, 'content-manager', 'contentmanager', 'findone', 0, '', 1),
(25, 'content-manager', 'contentmanager', 'create', 0, '', 1),
(26, 'content-manager', 'contentmanager', 'update', 0, '', 1),
(27, 'content-manager', 'contentmanager', 'updatesettings', 0, '', 1),
(28, 'content-manager', 'contentmanager', 'delete', 0, '', 1),
(29, 'content-manager', 'contentmanager', 'deleteall', 0, '', 1),
(30, 'users-permissions', 'auth', 'callback', 0, '', 1),
(31, 'users-permissions', 'auth', 'changepassword', 0, '', 1),
(32, 'users-permissions', 'auth', 'connect', 1, '', 1),
(33, 'users-permissions', 'auth', 'forgotpassword', 0, '', 1),
(34, 'users-permissions', 'auth', 'register', 0, '', 1),
(35, 'users-permissions', 'auth', 'emailconfirmation', 0, '', 1),
(36, 'users-permissions', 'user', 'find', 0, '', 1),
(37, 'users-permissions', 'user', 'me', 1, '', 1),
(38, 'users-permissions', 'user', 'findone', 0, '', 1),
(39, 'users-permissions', 'user', 'create', 0, '', 1),
(40, 'users-permissions', 'user', 'update', 0, '', 1),
(41, 'users-permissions', 'user', 'destroy', 0, '', 1),
(42, 'users-permissions', 'user', 'destroyall', 0, '', 1),
(43, 'users-permissions', 'userspermissions', 'createrole', 0, '', 1),
(44, 'users-permissions', 'userspermissions', 'deleteprovider', 0, '', 1),
(45, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 1),
(46, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 1),
(47, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 1),
(48, 'users-permissions', 'userspermissions', 'getrole', 0, '', 1),
(49, 'users-permissions', 'userspermissions', 'getroles', 0, '', 1),
(50, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 1),
(51, 'users-permissions', 'userspermissions', 'index', 0, '', 1),
(52, 'users-permissions', 'userspermissions', 'init', 1, '', 1),
(53, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 1),
(54, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 1),
(55, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 1),
(56, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 1),
(57, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 1),
(58, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 1),
(59, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 1),
(60, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 1),
(61, 'email', 'email', 'send', 0, '', 1),
(62, 'email', 'email', 'getenvironments', 0, '', 1),
(63, 'email', 'email', 'getsettings', 0, '', 1),
(64, 'email', 'email', 'updatesettings', 0, '', 1),
(65, 'upload', 'upload', 'upload', 0, '', 1),
(66, 'upload', 'upload', 'getenvironments', 0, '', 1),
(67, 'upload', 'upload', 'getsettings', 0, '', 1),
(68, 'upload', 'upload', 'updatesettings', 0, '', 1),
(69, 'upload', 'upload', 'find', 0, '', 1),
(70, 'upload', 'upload', 'findone', 0, '', 1),
(71, 'upload', 'upload', 'count', 0, '', 1),
(72, 'upload', 'upload', 'destroy', 0, '', 1),
(73, 'upload', 'upload', 'search', 0, '', 1),
(74, 'settings-manager', 'settingsmanager', 'menu', 0, '', 2),
(75, 'settings-manager', 'settingsmanager', 'environments', 0, '', 2),
(76, 'settings-manager', 'settingsmanager', 'languages', 0, '', 2),
(77, 'settings-manager', 'settingsmanager', 'databases', 0, '', 2),
(78, 'settings-manager', 'settingsmanager', 'database', 0, '', 2),
(79, 'settings-manager', 'settingsmanager', 'databasemodel', 0, '', 2),
(80, 'settings-manager', 'settingsmanager', 'get', 0, '', 2),
(81, 'settings-manager', 'settingsmanager', 'update', 0, '', 2),
(82, 'settings-manager', 'settingsmanager', 'createlanguage', 0, '', 2),
(83, 'settings-manager', 'settingsmanager', 'deletelanguage', 0, '', 2),
(84, 'settings-manager', 'settingsmanager', 'createdatabase', 0, '', 2),
(85, 'settings-manager', 'settingsmanager', 'updatedatabase', 0, '', 2),
(86, 'settings-manager', 'settingsmanager', 'deletedatabase', 0, '', 2),
(87, 'content-type-builder', 'contenttypebuilder', 'getmodels', 0, '', 2),
(88, 'content-type-builder', 'contenttypebuilder', 'getmodel', 0, '', 2),
(89, 'content-type-builder', 'contenttypebuilder', 'getconnections', 0, '', 2),
(90, 'content-type-builder', 'contenttypebuilder', 'createmodel', 0, '', 2),
(91, 'content-type-builder', 'contenttypebuilder', 'updatemodel', 0, '', 2),
(92, 'content-type-builder', 'contenttypebuilder', 'deletemodel', 0, '', 2),
(93, 'content-type-builder', 'contenttypebuilder', 'checktableexists', 0, '', 2),
(94, 'content-manager', 'contentmanager', 'models', 0, '', 2),
(95, 'content-manager', 'contentmanager', 'find', 0, '', 2),
(96, 'content-manager', 'contentmanager', 'count', 0, '', 2),
(97, 'content-manager', 'contentmanager', 'findone', 0, '', 2),
(98, 'content-manager', 'contentmanager', 'create', 0, '', 2),
(99, 'content-manager', 'contentmanager', 'update', 0, '', 2),
(100, 'content-manager', 'contentmanager', 'updatesettings', 0, '', 2),
(101, 'content-manager', 'contentmanager', 'delete', 0, '', 2),
(102, 'content-manager', 'contentmanager', 'deleteall', 0, '', 2),
(103, 'users-permissions', 'auth', 'callback', 1, '', 2),
(104, 'users-permissions', 'auth', 'changepassword', 1, '', 2),
(105, 'users-permissions', 'auth', 'connect', 1, '', 2),
(106, 'users-permissions', 'auth', 'forgotpassword', 1, '', 2),
(107, 'users-permissions', 'auth', 'register', 1, '', 2),
(108, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 2),
(109, 'users-permissions', 'user', 'find', 0, '', 2),
(110, 'users-permissions', 'user', 'me', 1, '', 2),
(111, 'users-permissions', 'user', 'findone', 0, '', 2),
(112, 'users-permissions', 'user', 'create', 0, '', 2),
(113, 'users-permissions', 'user', 'update', 0, '', 2),
(114, 'users-permissions', 'user', 'destroy', 0, '', 2),
(115, 'users-permissions', 'user', 'destroyall', 0, '', 2),
(116, 'users-permissions', 'userspermissions', 'createrole', 0, '', 2),
(117, 'users-permissions', 'userspermissions', 'deleteprovider', 0, '', 2),
(118, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 2),
(119, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 2),
(120, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 2),
(121, 'users-permissions', 'userspermissions', 'getrole', 0, '', 2),
(122, 'users-permissions', 'userspermissions', 'getroles', 0, '', 2),
(123, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 2),
(124, 'users-permissions', 'userspermissions', 'index', 0, '', 2),
(125, 'users-permissions', 'userspermissions', 'init', 1, '', 2),
(126, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 2),
(127, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 2),
(128, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 2),
(129, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 2),
(130, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 2),
(131, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 2),
(132, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 2),
(133, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 2),
(134, 'email', 'email', 'send', 0, '', 2),
(135, 'email', 'email', 'getenvironments', 0, '', 2),
(136, 'email', 'email', 'getsettings', 0, '', 2),
(197, 'application', 'card', 'find', 0, '', 1),
(198, 'application', 'card', 'findone', 0, '', 1),
(199, 'application', 'card', 'count', 0, '', 1),
(200, 'application', 'card', 'create', 0, '', 1),
(201, 'application', 'card', 'update', 0, '', 1),
(202, 'application', 'card', 'delete', 0, '', 1),
(203, 'application', 'card', 'find', 1, '', 2),
(204, 'application', 'card', 'findone', 1, '', 2),
(205, 'application', 'card', 'count', 0, '', 2),
(206, 'application', 'card', 'create', 0, '', 2),
(207, 'application', 'card', 'update', 0, '', 2),
(208, 'application', 'card', 'delete', 0, '', 2),
(209, 'application', 'modability', 'find', 0, '', 1),
(210, 'application', 'modability', 'findone', 0, '', 1),
(211, 'application', 'modability', 'count', 0, '', 1),
(212, 'application', 'modability', 'create', 0, '', 1),
(213, 'application', 'modability', 'update', 0, '', 1),
(214, 'application', 'modability', 'delete', 0, '', 1),
(215, 'application', 'modability', 'find', 1, '', 2),
(216, 'application', 'modability', 'findone', 1, '', 2),
(217, 'application', 'modability', 'count', 0, '', 2),
(218, 'application', 'modability', 'create', 0, '', 2),
(219, 'application', 'modability', 'update', 0, '', 2),
(220, 'application', 'modability', 'delete', 0, '', 2),
(221, 'application', 'terrain', 'find', 0, '', 1),
(222, 'application', 'terrain', 'findone', 0, '', 1),
(223, 'application', 'terrain', 'count', 0, '', 1),
(224, 'application', 'terrain', 'create', 0, '', 1),
(225, 'application', 'terrain', 'update', 0, '', 1),
(226, 'application', 'terrain', 'delete', 0, '', 1),
(227, 'application', 'terrain', 'find', 1, '', 2),
(228, 'application', 'terrain', 'findone', 1, '', 2),
(229, 'application', 'terrain', 'count', 0, '', 2),
(230, 'application', 'terrain', 'create', 0, '', 2),
(231, 'application', 'terrain', 'update', 0, '', 2),
(232, 'application', 'terrain', 'delete', 0, '', 2),
(233, 'application', 'type', 'find', 0, '', 1),
(234, 'application', 'type', 'findone', 0, '', 1),
(235, 'application', 'type', 'count', 0, '', 1),
(236, 'application', 'type', 'create', 0, '', 1),
(237, 'application', 'type', 'update', 0, '', 1),
(238, 'application', 'type', 'delete', 0, '', 1),
(239, 'application', 'type', 'find', 1, '', 2),
(240, 'application', 'type', 'findone', 1, '', 2),
(241, 'application', 'type', 'count', 0, '', 2),
(242, 'application', 'type', 'create', 0, '', 2),
(243, 'application', 'type', 'update', 0, '', 2),
(244, 'application', 'type', 'delete', 0, '', 2),
(245, 'application', 'team', 'find', 0, '', 1),
(246, 'application', 'team', 'findone', 0, '', 1),
(247, 'application', 'team', 'count', 0, '', 1),
(248, 'application', 'team', 'create', 0, '', 1),
(249, 'application', 'team', 'update', 0, '', 1),
(250, 'application', 'team', 'delete', 0, '', 1),
(251, 'application', 'team', 'find', 1, '', 2),
(252, 'application', 'team', 'findone', 1, '', 2),
(253, 'application', 'team', 'count', 0, '', 2),
(254, 'application', 'team', 'create', 0, '', 2),
(255, 'application', 'team', 'update', 0, '', 2),
(256, 'application', 'team', 'delete', 0, '', 2),
(257, 'application', 'illustrator', 'find', 0, '', 1),
(258, 'application', 'illustrator', 'findone', 0, '', 1),
(259, 'application', 'illustrator', 'count', 0, '', 1),
(260, 'application', 'illustrator', 'create', 0, '', 1),
(261, 'application', 'illustrator', 'update', 0, '', 1),
(262, 'application', 'illustrator', 'delete', 0, '', 1),
(263, 'application', 'illustrator', 'find', 1, '', 2),
(264, 'application', 'illustrator', 'findone', 1, '', 2),
(265, 'application', 'illustrator', 'count', 0, '', 2),
(266, 'application', 'illustrator', 'create', 0, '', 2),
(267, 'application', 'illustrator', 'update', 0, '', 2),
(268, 'application', 'illustrator', 'delete', 0, '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_role`
--

CREATE TABLE `users-permissions_role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users-permissions_role`
--

INSERT INTO `users-permissions_role` (`id`, `name`, `description`, `type`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated'),
(2, 'Public', 'Default role given to unauthenticated user.', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_user`
--

CREATE TABLE `users-permissions_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users-permissions_user`
--

INSERT INTO `users-permissions_user` (`id`, `username`, `email`, `provider`, `password`, `resetPasswordToken`, `confirmed`, `blocked`, `role`, `created_at`, `updated_at`) VALUES
(1, 'PatrickWCity', 'PatrickWCity@gmail.com', 'local', '$2a$10$sT5ElVm9Ntd9OLFoLQ52feohO6HadZgNfJsGb5DMdGjzYvuS41Kqi', NULL, NULL, NULL, 1, '2019-07-16 22:27:39', '2019-07-16 22:27:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `cards` ADD FULLTEXT KEY `SEARCH_CARDS` (`name`,`description`);

--
-- Indexes for table `cards_modabilities__modabilities_cards`
--
ALTER TABLE `cards_modabilities__modabilities_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cards_terrains__terrains_cards`
--
ALTER TABLE `cards_terrains__terrains_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_store`
--
ALTER TABLE `core_store`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `core_store` ADD FULLTEXT KEY `SEARCH_CORE_STORE` (`key`,`value`,`type`,`environment`,`tag`);

--
-- Indexes for table `illustrators`
--
ALTER TABLE `illustrators`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `illustrators` ADD FULLTEXT KEY `SEARCH_ILLUSTRATORS` (`firstName`,`lastName`);

--
-- Indexes for table `modabilities`
--
ALTER TABLE `modabilities`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `modabilities` ADD FULLTEXT KEY `SEARCH_MODABILITIES` (`name`,`description`);

--
-- Indexes for table `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `strapi_administrator` ADD FULLTEXT KEY `SEARCH_STRAPI_ADMINISTRATOR` (`username`,`resetPasswordToken`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `teams` ADD FULLTEXT KEY `SEARCH_TEAMS` (`name`,`description`);

--
-- Indexes for table `terrains`
--
ALTER TABLE `terrains`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `terrains` ADD FULLTEXT KEY `SEARCH_TERRAINS` (`name`,`description`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `types` ADD FULLTEXT KEY `SEARCH_TYPES` (`name`,`description`);

--
-- Indexes for table `upload_file`
--
ALTER TABLE `upload_file`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `upload_file` ADD FULLTEXT KEY `SEARCH_UPLOAD_FILE` (`name`,`hash`,`sha256`,`ext`,`mime`,`size`,`url`,`provider`,`public_id`);

--
-- Indexes for table `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `upload_file_morph` ADD FULLTEXT KEY `SEARCH_UPLOAD_FILE_MORPH` (`related_type`,`field`);

--
-- Indexes for table `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `users-permissions_permission` ADD FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_PERMISSION` (`type`,`controller`,`action`,`policy`);

--
-- Indexes for table `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `users-permissions_role` ADD FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_ROLE` (`name`,`description`,`type`);

--
-- Indexes for table `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `users-permissions_user` ADD FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_USER` (`username`,`provider`,`resetPasswordToken`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `cards_modabilities__modabilities_cards`
--
ALTER TABLE `cards_modabilities__modabilities_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `cards_terrains__terrains_cards`
--
ALTER TABLE `cards_terrains__terrains_cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `core_store`
--
ALTER TABLE `core_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `illustrators`
--
ALTER TABLE `illustrators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `modabilities`
--
ALTER TABLE `modabilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `terrains`
--
ALTER TABLE `terrains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `upload_file`
--
ALTER TABLE `upload_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
