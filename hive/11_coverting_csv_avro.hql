CREATE TABLE AVRO_PERSON( ID BIGINT,
		     NAME STRING,
		     ADDRESS STRUCT<STREET1:STRING,CITY:STRING>,
		     PHONE ARRAY<STRING>,
		     BANKS_BALANCE MAP<STRING,STRING>)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
COLLECTION ITEMS TERMINATED BY ':'
MAP KEYS TERMINATED BY '='
LINES TERMINATED BY '\n'
STORED AS AVRO;
INSERT INTO TABLE AVRO_PERSON SELECT * FROM PERSON;
