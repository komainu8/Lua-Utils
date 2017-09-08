require ("utils.string")
require ("utils.table")

local table = {1, 2, 3, 4, 5}
local hash = { id = 0, method = "test"}
local test = "1,2,3,4,5"

print(type(table))
print(type(hash))
local test_table = Table:new()
test_table.dump(table)
test_table.dump(hash)

local test_str = String:new()
print(test)
local rel = test_str.split(test, ",")
test_table.dump(rel)
