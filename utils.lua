local utils = {}

Utils = {}
function Utils.dump_table(table)
  for key, value in pairs(table) do
    print(key, value)
  end
end

function Utils.split_text(text, delimiter)
  if text.find(text, delimiter) == nil then
    return { text }
  end

  local splited_texts = {}
  local last_position

  for splited_text, position in text:gmatch("(.-)"..delimiter.."()") do
    table.insert(splited_texts, splited_text)
    last_position = position
  end
  table.insert(splited_texts, string.sub(text, last_position))
  return splited_texts
end

function Utils.new(self)
  local object = {}
  setmetatable(object, object)
  object.__index = self
  return object
end
