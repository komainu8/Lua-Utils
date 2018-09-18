local _M = {}

local array = {}

function _M:set(index, value)
  array[index] = value
end

function _M:get(index)
    if #array >= index then
      return array[index]
    end
end

function _M.new(self)
  local object = {}
  setmetatable(object, object)
  object.__index = self
  return object
end

return _M
