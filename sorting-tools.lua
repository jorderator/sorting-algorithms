------ Reading file input:
function read_data(file)
	local file = io.open(file, "r")
	local list = {}

	local i = 0
	for line in file:lines() do
		list[i] = tonumber(line)
		i = i + 1
	end

	return list
end


------ Displaying data:
function display_data(list)
	local i = 0
	while i <= #list do
		io.write(i+1 .. " - " .. list[i])

		if type(list[1]) == "number" then
			io.write("   ")
			if i < 10 then io.write(" ") end
			if list[i] < 10 then io.write(" ") end

			for j = 1, list[i] do
				io.write("*")
			end
		end

		print()
		i = i + 1
	end
end
