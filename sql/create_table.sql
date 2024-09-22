create database call_center;
use call_center;
CREATE TABLE call_data (
    call_id VARCHAR(100) null ,
    agent VARCHAR(50) null ,
    call_date DATE null ,
    call_time TIME null ,
    topic VARCHAR(100) null ,
    answered ENUM('Y', 'N') null ,    #ENUM(Enumerated Type): is a special column type in MySQL that allows you to store one of a predefined set of values.
    resolved ENUM('Y', 'N') null,
    speed_of_answer_sec varchar(25) null,
    avg_talk_duration_sec TIME null,
    satisfaction_rating varchar(25) null
);

SHOW VARIABLES LIKE 'secure_file_priv';     #restricts the directories where MySQL can read and write files.
SHOW GLOBAL VARIABLES LIKE 'local_infile';  #command in MySQL checks the status of the local_infile variable, which controls whether local file loading is enabled. This allows you to use the LOAD DATA LOCAL INFILE statement to read data from files on the client’s filesystem.
SET GLOBAL local_infile = 1;                #enables the local_infile option in MySQL, allowing the use of LOAD DATA LOCAL INFILE to read files from the client's filesystem.

LOAD DATA INFILE "C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\cleaned_data.csv"
INTO TABLE call_data
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(call_id, agent, call_date, call_time, topic, answered, resolved, speed_of_answer_sec, avg_talk_duration_sec, satisfaction_rating);

DESCRIBE call_data;
SELECT * FROM call_data;
SELECT call_date, COUNT(*) AS total_calls FROM call_data GROUP BY call_date ORDER BY call_date;

