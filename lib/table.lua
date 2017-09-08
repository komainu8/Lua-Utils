local table = {}

Table = {}
function Table.dump(table)
  for key, value in pairs(table) do
    print(key, value)
  end
end

function Table.new(self)
  local object = {}
  setmetatable(object, object)
  object.__index = self
  return object
end
