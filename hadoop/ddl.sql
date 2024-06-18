CREATE EXTERNAL TABLE auction(
auction_id int,
item_id int,
bid int,
buyout int,
quantity int,
ts timestamp
) PARTITIONED BY (
year int, month int, day int, hour int, region string, realm_id int, auction_house_id int
) STORED AS PARQUET
LOCATION 's3a://bucket-name/prefix/';

MSCK REPAIR TABLE auction;

/*
create external table customer_text(id string, fname string, lname string) ROW FORMAT DELIMITED FIELDS TERMINATED BY ',' STORED AS TEXTFILE location 's3a://customer-data-text/';

create external table customer_json(customer map<string, string>) row format serde 'org.openx.data.jsonserde.JsonSerDe' location 's3a://customer-data-json/';
*/
