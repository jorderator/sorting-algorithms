-- just change this to whatever is being worked on
require("shell-sort")

data = read_data(arg[1])

display_data(data)

sort(data)

display_data(data)

--[[
if pcall(sort) then
	print("\nwoo\n")
end
--]]
