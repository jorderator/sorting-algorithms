require("sorting-tools")

------ Shell sort:
function sort(list, debug, step_debug)
	gaps = {701, 301, 132, 57, 23, 10, 4, 1}
	if type(list[0]) == "number" then
		number = true
	else 
		number = false
	end

	for k, gap in pairs(gaps) do
		for i = gap, #list do
			temp = list[i]
			j = i

			if debug then
				print()
				print("i: " .. i)
				print("j: " .. j)
				print("gap: " .. gap)
				print("temp: " .. temp)
				print("list[j - gap]: " .. list[j-gap])
			end

			if number then
				while j >= gap and list[j - gap] > temp do
					list[j] = list[j - gap]
					j = j - gap
				end 
			else
				while j >= gap and string.lower(list[j - gap]) > string.lower(temp) do
					list[j] = list[j - gap]
					j = j - gap
				end 
			end

			list[j] = temp

			if debug or step_debug then
				print()
				display_data(list)
				if step_debug then io.read() end
			end
		end
	end
end
