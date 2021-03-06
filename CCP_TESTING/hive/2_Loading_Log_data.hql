--
--dfs -copyFromLocal ./2_log_data.csv /user/cloudera/ccp/.;

CREATE TABLE IF NOT EXISTS logdata( HOST STRING, IDENTITY STRING, USER STRING, timea STRING,request STRING, status STRING, size STRING  )
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.RegexSerDe'
WITH SERDEPROPERTIES (
  "input.regex" = "([^ ]*) ([^ ]*) ([^ ]*) \\[([^ ].*)\\] \"([^ ].*)\" ([0-9]*) ([0-9]*)",
  "output.format.string" = "%1$s %2$s %3$s %4$s %5$s %6$s %7$s"
);

LOAD DATA INPATH '/user/cloudera/ccp/2_log_data.csv' INTO TABLE logdata;



