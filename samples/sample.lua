libstr = require ("utils.string")
libtable = require ("utils.table")

local table = {1, 2, 3, 4, 5}
local hash = { id = 0, method = "test"}
local test = "1,2,3,4,5"

--print(type(table))
--print(type(hash))
local test_table = libtable:new()
test_table.dump(table)
test_table.dump(hash)

local test_str = libstr:new()
local rel = test_str.split(test, ",")
test_table.dump(rel)
