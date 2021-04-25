CREATE TABLE `classification_code` (
  `contenttypeid` varchar(20) NOT NULL,
  `cat1` varchar(20) NOT NULL,
  `cat1_name` varchar(20) NOT NULL,
  `cat2` varchar(20) NOT NULL,
  `cat2_name` varchar(20) NOT NULL,
  PRIMARY KEY (`contenttypeid`,`cat1`,`cat2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `code_data` (
  `code_id` varchar(20) NOT NULL,
  `code_info` varchar(20) NOT NULL,
  `code_from` varchar(20) NOT NULL,
  PRIMARY KEY (`code_id`,`code_info`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `destination_dataset` (
  `contentid` varchar(20) NOT NULL,
  `cat1` varchar(20) NOT NULL,
  `cat2` varchar(20) NOT NULL,
  `contenttypeid` varchar(20) NOT NULL,
  `mapx` varchar(20) NOT NULL,
  `tour_Tablecol` varchar(20) NOT NULL,
  `readcount` int NOT NULL,
  `title` varchar(20) NOT NULL,
  PRIMARY KEY (`contentid`),
  UNIQUE KEY `contentid_UNIQUE` (`contentid`),
  UNIQUE KEY `contenttypeid_UNIQUE` (`contenttypeid`),
  UNIQUE KEY `title_UNIQUE` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `my_trip_data` (
  `userId` varchar(20) NOT NULL,
  `contentcode` varchar(20) NOT NULL,
  PRIMARY KEY (`userId`,`contentcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `user_fake_data_two` (
  `userId` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `pw` varchar(20) NOT NULL,
  `sex` varchar(20) NOT NULL,
  `age` int NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `user_log_data` (
  `userId` int NOT NULL,
  `contentcode` varchar(20) NOT NULL,
  `contentdes` varchar(20) NOT NULL,
  `click` int NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`userId`,`contentcode`),
  KEY `_idx` (`contentcode`,`contentdes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `user_thema_data_two` (
  `userId` varchar(20) NOT NULL,
  `themaCode` varchar(20) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `user_rating_data` (
  `userId` int NOT NULL,
  `contentid` varchar(20) DEFAULT NULL,
  `rating` varchar(20) DEFAULT NULL,
  `contenttypeid` varchar(20) DEFAULT NULL,
  `areacode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;