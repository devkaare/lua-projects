local function lenth_to_string(l)
	local result = ""

	for _ = 1, l, 1 do
		result = result .. " "
	end
	return result
end

-- Add border to string
local function add_border_to_string(s)
	-- Max length which can fit inside box
	local min_length = 13

	if s:len() >= min_length then
		return "Input string was too long"
	end

	-- Box parts
	local top = "┌────────────────┐"
	local side = "│" -- 2 horizontal, 3 vertical
	local bottom = "└────────────────┘"

	local spaces = 16 -- Total box width should be 18 characters (with borders)

	local spaces_length = spaces / 2
	local result_length = s:len() / 2
	local length = spaces_length - result_length

	-- print("Space_length:", spaces_length)
	-- print("Result_length:", result_length)
	-- print("Length:", length)

	if length % 1 == 0 then -- Does not have a decimal point
		return top .. "\n" .. side .. lenth_to_string(length) .. s .. lenth_to_string(length) .. side .. "\n" .. bottom
	else -- Does have a decimal point
		-- Increase top and bottom length by 1
		top = "┌───────────────┐"
		bottom = "└───────────────┘"
		return top .. "\n" .. side .. lenth_to_string(length) .. s .. lenth_to_string(length) .. side .. "\n" .. bottom
	end
end

print("Input text to add a border around it")
local input = io.read()
print(add_border_to_string(input))
