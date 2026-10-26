-- Index
-- table of contents for a database
-- helps SQL find rows faster without scanning the entire table

-- Create basic index
create index -- tells database to build our index
idx_category -- name of index- idx=index
-- everything after is what the index is being applied to
on products(category) -- Creating the index on the category column in the products table
-- Query builds index on the category column, will use it automatically when it decides its faster than a full scan
