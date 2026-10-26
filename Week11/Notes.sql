-- Index
-- table of contents for a database
-- helps SQL find rows faster without scanning the entire table

-- Create basic index
create index -- tells database to build our index
idx_category -- name of index- idx=index
-- everything after is what the index is being applied to
on products(category) -- Creating the index on the category column in the products table
-- Query builds index on the category column, will use it automatically when it decides its faster than a full scan

-- Analyze query performance
-- Use EXPLAIN ANALYZE before and after creating the index
-- Check index scan vs Seq scan
EXPLAIN ANALYZE
select * from products
where category ='Skincare';
-- Seq scan = full scan
-- If we see index scan, it ran our index for a faster match

-- Forcing SQL to use INDEX SCAN
SET enable_seqscan=OFF;

EXPLAIN ANALYZE
select * from products
where category ='Skincare';

-- Small tables don't benefit from Indexes
-- When the entire table fits into memory, its faster for SQL to read all rows directly

-- Indexes have lookup overhead
-- Each index lookup adds extra work,
-- PostgreSQL has to look for index, retrieve rows, piece them together

-- SQL chooses whatever is faster, either SQL or index scan
-- Indexes are useful for large databases
