-- Part A --
select * from products

select count (*) as total_rows
from products

-- 1. There are 100 records.
-- 2. The more records there are the longer it will take to find data.

-- Part B --
select category 
from products
WHERE category = 'Skincare';

EXPLAIN ANALYZE
select * from products
where category ='Skincare';

-- 1. Yes, it uses a Seq scan.
-- 2. Three records were returned.
-- 3. Execution time is 0.040 ms.

-- Part C --
create index idx_category2
on products(category);

EXPLAIN ANALYZE
select * from products
where category ='Skincare';

-- 1. It ran a Seq scan.
-- 2. Mine was actually faster this time.
-- 3. If the table is small enough, it is actually faster to run a Seq scan rather than an index scan

-- Part D --
SET enable_seqscan=OFF;

EXPLAIN ANALYZE
select * from products
where category ='Skincare';

SET enable_seqscan=ON;

-- 1. Yes, it is now running a Bitmap Heap Scan.
-- 2. PostgreSQL will want to run that seq scan if it's faster than an index scan. It chooses the fastest way.
