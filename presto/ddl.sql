CREATE TABLE IF NOT EXISTS
auction(
  auction_id BIGINT,
  item_id BIGINT,
  bid BIGINT,
  buyout BIGINT,
  quantity SMALLINT,
  ts TIMESTAMP
) WITH (
  external_location = 's3a://bucket-name/prefix/*',
  format = 'PARQUET'
)

create table customer_orc(id varchar,fname varchar,lname varchar) with (format = 'ORC', external_location = 's3a://customer-data-orc/');
