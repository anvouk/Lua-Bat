::BAT:: --[[
@echo off & call lua "%~dpnx0" %* & exit /B
::]]

local params = {...}

-- your lua code here
print("argc: " .. #params)
for i,v in ipairs(params) do
	print("argv[" .. i .. "] = " .. v)
end
