local _M = {}

function _M.dump(table)
  for key, value in pairs(table) do
    print(key, value)
  end
end

function _M.new(self)
  local object = {}
  setmetatable(object, object)
  object.__index = self
  return object
end

return _M
