--LOAD DATA LOCAL INPATH './3_data.csv' INTO TABLE PERSON_PART PARTITION(CITY='CHENNAI');
set hive.exec.dynamic.partition.mode=nonstrict;
set hive.exec.dynamic.partition=true;
INSERT INTO PERSON_PART PARTITION(CITY) SELECT id,name,address.street1,phone,banks_balance,address.city as city FROM PERSON;

