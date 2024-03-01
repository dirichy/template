local function file_exists(name)
	local f = io.open(name, "r")
	if f ~= nil then
		io.close(f)
		return true
	else
		return false
	end
end
for i = 1, 27, 1 do
	local filename = [[subfile]] .. i .. [[.tex]]
	if file_exists(filename) then
		tex.print([[\subfile{]] .. filename .. [[}\newpage]])
	end
end
