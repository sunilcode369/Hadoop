--pig -x local -l /home/cloudera/projects/ApacheSpark/pig/LOGS/ 1_loading_data.pig
input_records = LOAD 'DATA/data1.txt' USING PigStorage (',') as (id:int,name:chararray,place:chararray);
DUMP input_records;

