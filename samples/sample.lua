require ("utils")

local table = {1, 2, 3, 4, 5}
local hash = { id = 0, method = "test"}
local test = "1,2,3,4,5"

print(type(table))
print(type(hash))
local utils = Utils:new()
utils.dump_table(table)
utils.dump_table(hash)

local rel = utils.split_text(test, ",")
utils.dump_table(rel)
