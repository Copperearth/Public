setreadonly(string, false)

string.shuffle = function(str)
    if not str then 
        return error("Argument 1 must be provided")
    end 
    if type(str) ~= "string" then 
        return error("Argument 1 must be a string")
    end
    local newStr = {}
    repeat
    	for i = 1, string.len(str) do
    		newStr[i] = string.sub(str, i, i)
    	end
    	local index = 0
    	local temp
    	for i = #newStr, 1, -1 do
    		index = math.random(1, i)
    		temp = newStr[index]
    		newStr[index] = newStr[i]
    		newStr[i] = temp
    	end
    until table.concat(newStr) ~= str 
    return table.concat(newStr)
end

setreadonly(string, true)
