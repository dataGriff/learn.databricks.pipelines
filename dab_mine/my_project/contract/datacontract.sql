-- Data Contract: whiskeys
-- SQL Dialect: databricks
CREATE OR REPLACE TABLE main.whiskey.whiskeys (
  whiskey_name STRING not null primary key COMMENT "Name of the whiskey",
  country STRING not null COMMENT "Country whiskey originates from"
) COMMENT "List of whiskies";
