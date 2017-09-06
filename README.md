Lua Utilities for Lua 5.x
=========================
This module is a useful utilities for lua.

LuaRocks Installation
---------------------
`luarocks install lua-utils`

Dependencies
------------
- none

Usage
-----
API List:

- `table_dump`
- `split_text`

### `table_dump`

#### Examples

sample.lua
```lua
require ("utils")

local table = {1, 2, 3, 4, 5}
local hash = { id = 0, method = "test"}

local utils = Utils:new()
utils.dump_table(table)
utils.dump_table(hash)
```

```text
% lua sample.lua
1	1
2	2
3	3
4	4
5	5
method	"test"
id	0
```

### `split_text`

#### Examples

sample.lua
```lua
require ("utils")

local test = "1,2,3,4,5"

local utils = Utils:new()
local rel = utils.split_text(test, ",")
utils.dump_table(rel)
```

```text
% lua sample.lua
1	1
2	2
3	3
4	4
5	5
```

License(MIT)
-------
Copyright(C) 2017 by Yasuhiro Horimoto

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation
files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify,
merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING
BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
