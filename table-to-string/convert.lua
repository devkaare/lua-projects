local cat = {
	"  ／l、    ",
	"（ﾟ､ ｡ ７  ",
	"  l  ~ヽ  ",
	"  じしf_,)ノ",
}

-- Convert table (i.e my ascii cat table) to string
local function table_to_string(t)
	local result = ""
	for _, v in pairs(t) do
		result = result .. v .. "\\n" -- Concatenate with a newline
	end
	return result
end

print(table_to_string(cat))
