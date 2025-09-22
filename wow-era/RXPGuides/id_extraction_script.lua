--
--  id_extraction_script.lua
--
--  This script will iterate through all the .lua files
--  in this folder, and extract all 'questid', 'npcid',
--  'itemid', and 'factionid' key/value pairs into a file
--  called 'extracted_ids.txt'.
--

local f = io.open("extracted_ids.txt", "w")
local count = 0

for _, file in ipairs(fs.dir()) do
  if file:match(".lua$") then
    local content = fs.read(file)
    for k, v in content:gmatch("(questid|npcid|itemid|factionid)=(%d+)") do
      f:write(k, v .. "\n")
      count = count + 1
    end
  end
end

f:close()
print("Extracted " .. count .. " IDs.")
