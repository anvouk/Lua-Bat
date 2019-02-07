::BAT:: --[[
@echo off & call lua "%~dpnx0" "__main__" %* & exit /B
::]]

function main(argc, argv)
	-- your lua code here
	print("argc: " .. argc)
	for i,v in ipairs(argv) do
		print("argv[" .. i .. "] = " .. v)
	end
end

local params = {...}
if params[1] == "__main__" then
	table.remove(params, 1)
	main(#params, params)
end
