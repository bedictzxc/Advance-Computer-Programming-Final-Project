SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

SET NAMES utf8mb4;

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(60) NOT NULL,
  `admin_username` varchar(60) NOT NULL,
  `admin_password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_username`, `admin_password`) VALUES
(1, 'Ingco John benedict', 'admin', 'admin');

CREATE TABLE `exercise_types` (
  `id` int(11) NOT NULL,
  `workout_type_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `exercise_types` (`id`, `workout_type_id`, `name`) VALUES
(1, 1, 'Bench Press'),
(2, 1, 'Push-ups'),
(3, 1, 'Chest Fly'),
(4, 1, 'Incline Press'),
(5, 2, 'Pull-ups'),
(6, 2, 'Deadlifts'),
(7, 2, 'Lat Pulldowns'),
(8, 2, 'Rows'),
(9, 3, 'Squats'),
(10, 3, 'Leg Press'),
(11, 5, 'Lunges'),
(12, 3, 'Leg Curls'),
(13, 4, 'Bicep Curls'),
(14, 4, 'Tricep Dips'),
(15, 4, 'Barbell Curl'),
(16, 4, 'Hammer Curl'),
(17, 5, 'Running'),
(18, 5, 'Cycling'),
(19, 5, 'Swimming'),
(20, 5, 'Jump Rope');

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_logged` datetime DEFAULT current_timestamp(),
  `workout_type` varchar(50) NOT NULL,
  `exercise_type` varchar(100) NOT NULL,
  `duration` float NOT NULL,
  `calories` float NOT NULL,
  `fitness_goal` varchar(255) DEFAULT NULL,
  `weight` float NOT NULL,
  `height` float NOT NULL,
  `reps` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `logs` (`id`, `user_id`, `date_logged`, `workout_type`, `exercise_type`, `duration`, `calories`, `fitness_goal`, `weight`, `height`, `reps`) VALUES
(1, 1, '2024-12-08 20:47:52', 'Chest', 'Push-ups', 20, 122, 'Build Muscle', 65, 165, 20),
(2, 1, '2024-12-08 20:48:28', 'Chest', 'Bench Press', 20, 121.2, 'Build Muscle', 65, 165, 12),
(3, 1, '2024-12-08 20:48:54', 'Legs', 'Squats', 15, 106.2, 'Build Muscle', 65, 165, 12),
(4, 1, '2024-12-08 20:49:17', 'Legs', 'Leg Curls', 15, 106.2, 'Build Muscle', 65, 165, 12),
(5, 1, '2024-12-08 20:49:51', 'Arms', 'Tricep Dips', 10, 51, 'Build Muscle', 65, 165, 10),
(6, 1, '2024-12-08 20:50:27', 'Arms', 'Barbell Curl', 10, 51, 'Build Muscle', 65, 165, 10),
(7, 1, '2024-12-08 20:57:25', 'Back', 'Pull-ups', 12, 60, 'Build Muscle', 65, 165, 12),
(8, 1, '2024-12-08 20:57:42', 'Back', 'Deadlifts', 10, 81.2, 'Build Muscle', 65, 165, 12),
(9, 1, '2024-12-08 21:39:17', 'Cardio', 'Running', 40, 200, 'Build Muscle', 65, 165, 1),
(10, 1, '2024-12-08 21:40:02', 'Cardio', 'Jump Rope', 30, 300.1, 'Build Muscle', 65, 165, 1);

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'juan', 'juan'),
(9, 'Lebron', 'Lebron'),
(10, 'Gab', '123'),
(11, 'Jean', '1111'),
(12, 'Bea', '022798'),
(13, 'Pablo', '9999'),
(14, 'Jimboy', '102030'),
(15, 'Spades', '7894'),
(16, 'Kerr', 'qwerty'),
(17, 'Ronel', '130459');

CREATE TABLE `workout_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `workout_types` (`id`, `name`) VALUES
(1, 'Chest'),
(2, 'Back to back'),
(3, 'Legs'),
(4, 'Arms'),
(5, 'Cardio');

ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

ALTER TABLE `exercise_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exercise_types_ibfk_1` (`workout_type_id`);

ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

ALTER TABLE `workout_types`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `exercise_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

ALTER TABLE `workout_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `exercise_types`
  ADD CONSTRAINT `exercise_types_ibfk_1` FOREIGN KEY (`workout_type_id`) REFERENCES `workout_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

COMMIT;
