CREATE DATABASE POWERBI_assignment3;
Use POWERBI_assignment3;
SELECT * FROM user_behavior_dataset;
SHOW TABLES;

SHOW COLUMNS FROM user_behavior_dataset;

SHOW COLUMNS FROM user_behavior_dataset;

SELECT * FROM user_behavior_dataset WHERE `User ID` = 701;


INSERT INTO user_behavior_dataset  
(`User ID`, `Device Model`, `Operating System`, `App Usage Time (min/day)`, `Screen On Time (hours/day)`, `Battery Drain (mAh/day)`, `Number of Apps Installed`, `Data Usage (MB/day)`, `Age`, `Gender`, `User Behavior Class`)  
VALUES  
(701, 'iPhone 13', 'iOS', 120, 4.0, 3000, 50, 500, 25, 'Female', 1);

INSERT INTO user_behavior_dataset  
(`User ID`, `Device Model`, `Operating System`, `App Usage Time (min/day)`, `Screen On Time (hours/day)`, `Battery Drain (mAh/day)`, `Number of Apps Installed`, `Data Usage (MB/day)`, `Age`, `Gender`, `User Behavior Class`)  
VALUES  
(703, 'nokiya', 'android', 120, 4.0, 6000, 75, 500, 25, 'male', 1);

select * FROM user_behavior_dataset 
WHERE `Device Model` = 'iPhone 13' 
  AND `Operating System` = 'iOS' 
  AND `App Usage Time (min/day)` = 120 
  AND `Screen On Time (hours/day)` = 4.0 
  AND `Battery Drain (mAh/day)` = 3000 
  AND `Number of Apps Installed` = 50 
  AND `Data Usage (MB/day)` = 500 
  AND `Age` = 25 
  AND `Gender` = 'Female' 
  AND `User Behavior Class` = 1;
  
  
Delete FROM user_behavior_dataset 
WHERE `User ID` is null;

Set sql_safe_updates = 0;

SELECT * FROM user_behavior_dataset;





