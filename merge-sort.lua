require("sorting-tools")


------ Merge sort: (currently not working, finish it)
function sort(list)
	if type(list[0]) == "number" then
		number = true
	else
		number = false
	end

	local sub_list = {{[1] = list[0]}}
	local j = 1
	local k = 2

	-- creating sub list:
	for i = 1, #list do
		if number then
			if list[i - 1] > list[i] then
				j = j + 1
				k = 1
				sub_list[j] = {}
			end
		else
			if string.lower(list[i - 1]) > string.lower(list[i]) then
				j = j + 1
				k = 1
				sub_list[j] = {}
			end
		end
		--print("j: " .. j .. " k: " .. k .. " i: " .. i .. " list[i-1]: " .. list[i-1] .. " list[i]: " .. list[i])
		--print(" list[i-1] > list[i]: " .. tostring(list[i - 1] > list[i]))
		sub_list[j][k] = list[i]
		k = k + 1
	end

	-- printing out sub list:
	for j = 1, #sub_list do
		print("j: " .. j)
		for k = 1, #sub_list[j] do
			print("  " .. k .. " - " .. sub_list[j][k])
		end
	end

	-- merging everything:
	for i = 2, #sub_list do
		sub_list[1] = merge(sub_list[1], sub_list[i])
	end

	--for j = 1, #sub_list do
		--print("j: " .. j)
		--for k = 1, #sub_list[j] do
			--print("  " .. k .. " - " .. sub_list[j][k])
		--end
	--end
end

function merge(list_1, list_2)
	local j = 1
	local k = 1
	local temp = {}
	local temp_i = 1

	while j < #list_1 and k < #list_2 do
		if list_1[j] <= list_2[k] then
			temp[temp_i] = list_1[j]
			j = j + 1
		else
			temp[temp_i] = list_2[k]
			k = k + 1
		end
		temp_i = temp_i + 1
	end

	while j < #list_1 do
		temp[temp_i] = list_1[j]
		j = j + 1
		temp_i = temp_i + 1
	end
	while k < #list_2 do
		temp[temp_i] = list_2[k]
		k = k + 1
		temp_i = temp_i + 1
	end

	for a, entry in pairs(temp) do print(entry) end
	print()

	return temp
end
