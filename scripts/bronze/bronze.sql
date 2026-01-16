/*
====================================================================================
  
    Bronze Layer Tables

-----------------------------------------------------------------------------------
    Purpose : To create the bronze table
  
==================================================================================

*/




CREATE EXTERNAL TABLE socialbuzz_sentiment (
  text STRING,
  sentiment STRING,
  timestamp TIMESTAMP,
  user STRING,
  platform STRING,
  hashtags STRING,
  retweets INT,
  likes INT,
  country STRING,
  year INT,
  month INT,
  day INT,
  hour INT
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar" = ",",
  "quoteChar" = "\""
)
LOCATION 's3://socialbuzz-sentiment-project/bronze/socialbuzz_sentiment/'
TBLPROPERTIES ("skip.header.line.count"="1");
