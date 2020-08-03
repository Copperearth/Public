setreadonly(math, false)

math.pyth = function(a, b)
    if not a and not b then 
        return error("Arguments 1 and 2 must be provided")
    end 
    if a and not b then 
        return error("Argument 2 must be provided")
    end 
    if type(a) ~= "number" and type(b) ~= "number" then 
        return error("Arguments 1 and 2 must be integers")
    end 
    if type(a) ~= "number" and type(b) == "number" then 
        return error("Argument 1 must be an integer")
    end 
    if type(a) == "number" and type(b) ~= "number" then 
        return error("Argument 2 must be an integer")
    end
    return math.sqrt((a * a) + (b * b))
end

setreadonly(math, true)
