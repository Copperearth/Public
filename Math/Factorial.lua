setreadonly(math, false)

math.factorial = function(int)
    if not int then 
        return error("Argument 1 must be provided")
    end
    if type(int) ~= "number" then 
        return error("Argument 1 must be an integer")
    end
    if int < 0 then 
        return error("Argument 1 must be a whole number")
    end 
    local result = 1
    if int > 0 then
        for i = 1, int do
            result = result * i
        end
    end
    return result
end

setreadonly(math, true)
