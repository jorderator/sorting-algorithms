#!/usr/bin/lua

math.randomseed(os.time())
path = (arg[1] and arg[1] .. "/" or "./")

-- Numbers:
f = io.open(path .. "random-numbers.txt", "w")
amount = math.random(40, 50)

for i = 1, amount do
	f:write(math.random(1, 50) .. "\n")
end

f:flush()
f:close()


-- File strings:
f = io.open(path .. "random-strings.txt", "w")
amount = math.random(40, 50)

for i = 1, amount do
	local length = math.random(3,10)
	local text = ""

	for k = 1, length do
		local set = math.random(1,3)

		if set == 1 then text = text .. string.char(math.random(65, 90))
		elseif set == 2 then text = text .. string.char(math.random(97, 122))
		else text = text .. string.char(math.random(48, 57))
		end
	end

	f:write(text .. "\n")
end

f:flush()
f:close()
