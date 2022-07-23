local api = vim.api
local open = io.open

local function read_file(path)
  local file = open(path, 'r')
  if not file then return nil end
  local content = file.read'*a'
  file:close()
  return content
end

local fileContent = read_file('word_dumps.words.txt')
for counter = 1 , 25 do
  print(fileContent[counter])
end


