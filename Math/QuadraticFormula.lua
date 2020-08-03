setreadonly(math, false)

math.quad = function(a, b, c)
    if not a then 
        return error("Argument 1 must be provided")
    end 
    if not b then 
        return error("Argument 2 must be provided")
    end 
    if not c then 
        return error("Argument 3 must be provided")
    end
    if type(a) ~= "number" then 
        return error("Argument 1 must be an integer")
    end 
    if type(b) ~= "number" then 
        return error("Argument 2 must be an integer")
    end 
    if type(c) ~= "number" then 
        return error("Argument 3 must be an integer")
    end 
    return 
    (-b + math.sqrt((b * b) - (4 * a * c))) / (2 * a), ",", 
    (-b - math.sqrt((b * b) - (4 * a * c))) / (2 * a)
end

setreadonly(math, true)
