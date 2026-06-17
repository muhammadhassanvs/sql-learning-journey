# Day 1 Notes

## SQL
SQL stands for Structured Query Language.

Used to:
- Store data
- Retrieve data
- Analyze data

## Database
A database is a collection of organized data stored in tables.

## SELECT

Returns specific columns.

Example:

SELECT user_id
FROM users;

## SELECT *

Returns all columns.

Example:

SELECT *
FROM workers;

## DISTINCT

Returns unique values.

Example:

SELECT DISTINCT coin
FROM sales;

## WHERE

Filters records.

Example:

SELECT event_id
FROM events
WHERE people < 14;