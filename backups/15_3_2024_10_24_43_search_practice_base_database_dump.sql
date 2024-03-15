--
-- Generated by mysql-backup4j
-- https://github.com/SeunMatt/mysql-backup4j
-- Date: 15-3-2024 10:24:43
--

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

--
-- start  table dump : college_practice_manager
--

CREATE TABLE IF NOT EXISTS `college_practice_manager` (
  `college_manager_id` bigint NOT NULL AUTO_INCREMENT,
  `post_manager` varchar(255) NOT NULL,
  `contact_id` bigint NOT NULL,
  `college_manager_login` varchar(255) NOT NULL,
  `college_manager_password` varchar(255) NOT NULL,
  PRIMARY KEY (`college_manager_id`),
  KEY `FKmtoklg84i5ljg7l0jggm9859w` (`contact_id`),
  CONSTRAINT `FKmtoklg84i5ljg7l0jggm9859w` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



--
-- end  table dump : college_practice_manager
--


--
-- Inserts of college_practice_manager
--


/*!40000 ALTER TABLE `college_practice_manager` DISABLE KEYS */;

--
-- start table insert : college_practice_manager
--
INSERT INTO `college_practice_manager`(`college_manager_id`, `post_manager`, `contact_id`, `college_manager_login`, `college_manager_password`) VALUES 
('1', 'Coordinator', '1', 'test', 'test123'),
('2', 'Assistant Coordinator', '2', 'test1', 'test321');
--
-- end table insert : college_practice_manager
--

/*!40000 ALTER TABLE `college_practice_manager` ENABLE KEYS */;


--
-- start  table dump : contacts
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `contact_id` bigint NOT NULL AUTO_INCREMENT,
  `location_address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number_phone` varchar(255) NOT NULL,
  `telegram_data` varchar(255) NOT NULL,
  `vk_page_data` varchar(255) NOT NULL,
  `whats_app_data` varchar(255) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



--
-- end  table dump : contacts
--


--
-- Inserts of contacts
--


/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;

--
-- start table insert : contacts
--
INSERT INTO `contacts`(`contact_id`, `location_address`, `email`, `number_phone`, `telegram_data`, `vk_page_data`, `whats_app_data`) VALUES 
('1', '123 Main St', 'john.doe@example.com', '+79773713446', 'https://t.me/DimkaSun', 'https://vk.com/drimmeritsme', 'https://wa.me/+79773713446'),
('2', '456 Oak St', 'jane.smith@example.com', '', 'https://t.me/DimkaSun', '', ''),
('4', 'gg', 'gusdimus1@gmail.com', '+78664784799', '', '', '');
--
-- end table insert : contacts
--

/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;


--
-- start  table dump : practice_base
--

CREATE TABLE IF NOT EXISTS `practice_base` (
  `base_id` bigint NOT NULL AUTO_INCREMENT,
  `description_about_base` varchar(255) NOT NULL,
  `name_base` varchar(255) NOT NULL,
  `photo_place` tinytext,
  `status_dialing` varchar(255) NOT NULL,
  `manager_id` bigint NOT NULL,
  PRIMARY KEY (`base_id`),
  UNIQUE KEY `UK_70bfawbn9rshlqxm4rbepsgj1` (`name_base`),
  KEY `FK4xrcyp6m63rtbsd2a6y7vlek6` (`manager_id`),
  CONSTRAINT `FK4xrcyp6m63rtbsd2a6y7vlek6` FOREIGN KEY (`manager_id`) REFERENCES `practice_manager` (`manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



--
-- end  table dump : practice_base
--


--
-- Inserts of practice_base
--


/*!40000 ALTER TABLE `practice_base` DISABLE KEYS */;

--
-- start table insert : practice_base
--
INSERT INTO `practice_base`(`base_id`, `description_about_base`, `name_base`, `photo_place`, `status_dialing`, `manager_id`) VALUES 
('1', 'Leading tech company', 'АО Глобальный сервис', 'bbf43a17823dc7563a0cd126a7f9ebbc.jfif', 'Active', '3'),
('2', 'Innovative engineering firm', 'Engineering Solutions', '81c9c35e2f8ef54ba6c683b0ae254921.webp', 'Inactive', '4');
--
-- end table insert : practice_base
--

/*!40000 ALTER TABLE `practice_base` ENABLE KEYS */;


--
-- start  table dump : practice_manager
--

CREATE TABLE IF NOT EXISTS `practice_manager` (
  `manager_id` bigint NOT NULL AUTO_INCREMENT,
  `post_manager` varchar(255) NOT NULL,
  `work_direction` varchar(255) NOT NULL,
  `work_experience` varchar(255) NOT NULL,
  `contact_id` bigint NOT NULL,
  `manager_login` varchar(255) NOT NULL,
  `manager_password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `second_name` varchar(255) NOT NULL,
  PRIMARY KEY (`manager_id`),
  KEY `FKmlrchniuhmmp48wrdmmi6ypm8` (`contact_id`),
  CONSTRAINT `FKmlrchniuhmmp48wrdmmi6ypm8` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



--
-- end  table dump : practice_manager
--


--
-- Inserts of practice_manager
--


/*!40000 ALTER TABLE `practice_manager` DISABLE KEYS */;

--
-- start table insert : practice_manager
--
INSERT INTO `practice_manager`(`manager_id`, `post_manager`, `work_direction`, `work_experience`, `contact_id`, `manager_login`, `manager_password`, `first_name`, `middle_name`, `second_name`) VALUES 
('3', 'Manager', 'Software Development', '5 years', '1', '456', '4567', 'Дмитрий', '', 'Дмитриев'),
('4', 'Senior Manager', 'Engineering', '10 years', '2', '4567', '45678', '', '', '');
--
-- end table insert : practice_manager
--

/*!40000 ALTER TABLE `practice_manager` ENABLE KEYS */;


--
-- start  table dump : resume_student
--

CREATE TABLE IF NOT EXISTS `resume_student` (
  `resume_id` bigint NOT NULL AUTO_INCREMENT,
  `education` varchar(255) NOT NULL,
  `photo_student` tinytext,
  `purpose_internship` varchar(255) NOT NULL,
  `contact_id` bigint NOT NULL,
  `personal_qualities` varchar(255) NOT NULL,
  `preferred_languages` varchar(255) NOT NULL,
  `professional_skills` varchar(255) NOT NULL,
  PRIMARY KEY (`resume_id`),
  KEY `FKe76mx0e9mk9oqwbtdfujajvbs` (`contact_id`),
  CONSTRAINT `FKe76mx0e9mk9oqwbtdfujajvbs` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



--
-- end  table dump : resume_student
--


--
-- Inserts of resume_student
--


/*!40000 ALTER TABLE `resume_student` DISABLE KEYS */;

--
-- start table insert : resume_student
--
INSERT INTO `resume_student`(`resume_id`, `education`, `photo_student`, `purpose_internship`, `contact_id`, `personal_qualities`, `preferred_languages`, `professional_skills`) VALUES 
('1', 'Computer Science', '1d8bc6c9940ef3cef94e392a1984e842.jpg', 'Seeking internship in IT', '1', '', '', ''),
('2', 'Engineering', '3b5e5580d27aabed66089cc023a9a2b2.jpg', 'Internship for gaining practical experience', '2', '', '', ''),
('3', '5', 'b21dc4af58d357d8a6cb84df9919fe32.jpg', '5', '4', '5', '5', '5');
--
-- end table insert : resume_student
--

/*!40000 ALTER TABLE `resume_student` ENABLE KEYS */;


--
-- start  table dump : student
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `internship_period` varchar(255) DEFAULT NULL,
  `is_internship` bit(1) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `student_login` varchar(255) NOT NULL,
  `student_password` varchar(255) NOT NULL,
  `resume_id` bigint DEFAULT NULL,
  `practice_base_id` bigint DEFAULT NULL,
  `visit_log_id` bigint DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  UNIQUE KEY `UK_20gtc190ktfn89kcj3r2y61hb` (`student_login`),
  UNIQUE KEY `UK_iu6wwuip0xj0m9dalo87fbbff` (`resume_id`),
  UNIQUE KEY `UK_houipydfhe5h6lplu8xk0ddsv` (`practice_base_id`),
  UNIQUE KEY `UK_ubx0j14v3kfynfjfv8a44l7x` (`visit_log_id`),
  CONSTRAINT `FK2w75nalnu7n2dfg77jeba0h69` FOREIGN KEY (`practice_base_id`) REFERENCES `practice_base` (`base_id`),
  CONSTRAINT `FK5hc6aixcr6jw5bvdop8g8dfvu` FOREIGN KEY (`resume_id`) REFERENCES `resume_student` (`resume_id`),
  CONSTRAINT `FKdlhf9sw8m5ykwk1blyt5cqq1y` FOREIGN KEY (`visit_log_id`) REFERENCES `visit_log` (`visit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



--
-- end  table dump : student
--


--
-- Inserts of student
--


/*!40000 ALTER TABLE `student` DISABLE KEYS */;

--
-- start table insert : student
--
INSERT INTO `student`(`student_id`, `first_name`, `internship_period`, `is_internship`, `last_name`, `middle_name`, `student_login`, `student_password`, `resume_id`, `practice_base_id`, `visit_log_id`) VALUES 
('1', 'Иван', '20 июня 2024', 1, 'Иванов', 'Иванович', '123', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', '1', '1', '1'),
('2', 'Александр', null, 0, 'Александрович', 'Александров', '1', 'ef92b778bafe771e89245b89ecbc08a44a4e166c06659911881f383d4473e94f', null, null, null),
('5', '', '', 0, '', '', '55', '02d20bbd7e394ad5999a4cebabac9619732c343a4cac99470c03e23ba2bdc2bc', '3', null, null);
--
-- end table insert : student
--

/*!40000 ALTER TABLE `student` ENABLE KEYS */;


--
-- start  table dump : student_base_change_log
--

CREATE TABLE IF NOT EXISTS `student_base_change_log` (
  `log_id` bigint NOT NULL AUTO_INCREMENT,
  `change_date_time` datetime(6) NOT NULL,
  `practice_place` varchar(255) NOT NULL,
  `manager_id` bigint NOT NULL,
  `new_base_id` bigint NOT NULL,
  `old_base_id` bigint NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `FKhlipxsv9uep4v7rgjjl1xbaqt` (`manager_id`),
  KEY `FK4q6wibgcwf11l17keem68bqgp` (`new_base_id`),
  KEY `FKjcnii6mescy3vj2c7k0goldya` (`old_base_id`),
  KEY `FK1f4egis7le9g3f04mevr3i7bp` (`student_id`),
  CONSTRAINT `FK1f4egis7le9g3f04mevr3i7bp` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  CONSTRAINT `FK4q6wibgcwf11l17keem68bqgp` FOREIGN KEY (`new_base_id`) REFERENCES `practice_base` (`base_id`),
  CONSTRAINT `FKhlipxsv9uep4v7rgjjl1xbaqt` FOREIGN KEY (`manager_id`) REFERENCES `contacts` (`contact_id`),
  CONSTRAINT `FKjcnii6mescy3vj2c7k0goldya` FOREIGN KEY (`old_base_id`) REFERENCES `practice_base` (`base_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



--
-- end  table dump : student_base_change_log
--


--
-- Inserts of student_base_change_log
--


/*!40000 ALTER TABLE `student_base_change_log` DISABLE KEYS */;

--
-- start table insert : student_base_change_log
--
INSERT INTO `student_base_change_log`(`log_id`, `change_date_time`, `practice_place`, `manager_id`, `new_base_id`, `old_base_id`, `student_id`) VALUES 
('3', '2024-02-03 10:00:00', 'TechCorp', '1', '2', '1', '1'),
('4', '2024-02-04 12:30:00', 'Engineering Solutions', '2', '1', '2', '2');
--
-- end table insert : student_base_change_log
--

/*!40000 ALTER TABLE `student_base_change_log` ENABLE KEYS */;


--
-- start  table dump : submitted_tequest
--

CREATE TABLE IF NOT EXISTS `submitted_tequest` (
  `submitted_request_id` bigint NOT NULL AUTO_INCREMENT,
  `practice_base_id` bigint DEFAULT NULL,
  `student_id` bigint DEFAULT NULL,
  PRIMARY KEY (`submitted_request_id`),
  KEY `FKmjltquylhttopt5qqx451bmnh` (`practice_base_id`),
  KEY `FK370sisewgm44wuiiigc9ex9nt` (`student_id`),
  CONSTRAINT `FK370sisewgm44wuiiigc9ex9nt` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  CONSTRAINT `FKmjltquylhttopt5qqx451bmnh` FOREIGN KEY (`practice_base_id`) REFERENCES `practice_base` (`base_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



--
-- end  table dump : submitted_tequest
--


--
-- Inserts of submitted_tequest
--


/*!40000 ALTER TABLE `submitted_tequest` DISABLE KEYS */;

--
-- start table insert : submitted_tequest
--
INSERT INTO `submitted_tequest`(`submitted_request_id`, `practice_base_id`, `student_id`) VALUES 
('1', '1', '1'),
('2', '2', '2');
--
-- end table insert : submitted_tequest
--

/*!40000 ALTER TABLE `submitted_tequest` ENABLE KEYS */;


--
-- start  table dump : visit_log
--

CREATE TABLE IF NOT EXISTS `visit_log` (
  `visit_id` bigint NOT NULL AUTO_INCREMENT,
  `date_visit` datetime(6) NOT NULL,
  `type_of_work` varchar(255) NOT NULL,
  `student_id` bigint NOT NULL,
  `practice_base_id` bigint DEFAULT NULL,
  PRIMARY KEY (`visit_id`),
  KEY `FKtos693nk3cyv9pv00949e0x3p` (`student_id`),
  KEY `FKn70eqc2dpdmpqv392cahopwtc` (`practice_base_id`),
  CONSTRAINT `FKn70eqc2dpdmpqv392cahopwtc` FOREIGN KEY (`practice_base_id`) REFERENCES `practice_base` (`base_id`),
  CONSTRAINT `FKtos693nk3cyv9pv00949e0x3p` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



--
-- end  table dump : visit_log
--


--
-- Inserts of visit_log
--


/*!40000 ALTER TABLE `visit_log` DISABLE KEYS */;

--
-- start table insert : visit_log
--
INSERT INTO `visit_log`(`visit_id`, `date_visit`, `type_of_work`, `student_id`, `practice_base_id`) VALUES 
('1', '2024-02-01 00:00:00', 'Coding', '1', null),
('2', '2024-02-02 00:00:00', 'Research', '1', null);
--
-- end table insert : visit_log
--

/*!40000 ALTER TABLE `visit_log` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;