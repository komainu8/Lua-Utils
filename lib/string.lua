local libstring = {}

String = {}
function String.split(text, delimiter)
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

function String.new(self)
  local object = {}
  setmetatable(object, object)
  object.__index = self
  return object
end
