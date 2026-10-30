-- Creating Table --
CREATE TABLE products_big (
    "Index" INTEGER PRIMARY KEY,
    "Name" TEXT,
    "Description" TEXT,
    "Brand" TEXT,
    "Category" TEXT,
    "Price" NUMERIC(10,2),
    "Currency" TEXT,
    "Stock" INTEGER,
    "EAN" BIGINT,
    "Color" TEXT,
    "Size" TEXT,
    "Availability" TEXT,
    "Internal ID" INTEGER
);

-- Verifying --
select count (*) from products_big;
-- 100000

select * from products_big limit 5;
-- Works

-- Baseline Query --
EXPLAIN ANALYZE
select * 
from products_big 
where "Category" = 'Skincare';
--"Seq Scan on products_big  (cost=0.00..3634.00 rows=2960 width=149) (actual time=0.048..15.102 rows=3019.00 loops=1)"
--"  Filter: (""Category"" = 'Skincare'::text)"
--"  Rows Removed by Filter: 96981"
--"  Buffers: shared hit=2307 read=77"
--"Planning Time: 0.109 ms"
--"Execution Time: 15.222 ms"

-- Create index --
create index idx_big_cat
ON products_big("Category");

-- Retest
EXPLAIN ANALYZE
select * 
from products_big 
where "Category" = 'Skincare';
--"Bitmap Heap Scan on products_big  (cost=35.23..2582.06 rows=2960 width=149) (actual time=1.410..46.495 rows=3019.00 loops=1)"
--"Recheck Cond: (""Category"" = 'Skincare'::text)"
--"  Heap Blocks: exact=1714"
--"  Buffers: shared hit=5 read=1714"
--"  ->  Bitmap Index Scan on idx_big_cat  (cost=0.00..34.49 rows=2960 width=0) (actual time=0.294..0.294 rows=3019.00 loops=1)"
--" Index Cond: (""Category"" = 'Skincare'::text)"
--" Index Searches: 1"
--" Buffers: shared hit=5"
--"Buffers: shared hit=96 read=6 dirtied=3"
--"Planning Time: 5.609 ms"
--"Execution Time: 46.746 ms"
-- It used the scan and took longer --

-- Create Compound Index --
create index idx_big_cat_price
ON products_big ("Category", "Price");

-- Test
EXPLAIN ANALYZE
select *
from products_big
where "Category" = 'Skincare' AND "Price" < 25;
-- It used the Btimap Heap Scan with the index and was faster

-- Part 7- Questions --
-- Once the index was available Postgre chose to use that instead of Seq.

-- Postgre chose an index when I first added the category index as well as the compound index with category and price.

-- The larger table helped show that an index is actually helpful. It used the index instead of Seq.

-- Part 8 --
-- One-to-One Relationship
-- These relationships have only one match for each key value. Can't be more

-- One-to-Many Relationship
-- This is the polygamous relationship. Usually each major data will relate to smaller minor data. Make-Model

-- Many-to-Many Relationship
-- These are messy realtionships. Both sides can be paired with many others. The baseball example is great. Players positions change
