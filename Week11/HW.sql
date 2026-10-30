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

-- Create index
create index idx_big_cat
ON products_big("Category");

-- 
