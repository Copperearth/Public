setreadonly(math, false)

math.cd = function(a, b)
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
    local common = {}
    for i = 1, math.min(a, b) do
        if a/i == math.floor(a/i) and b/i == math.floor(b/i) then
            table.insert(common, i)
        end
    end
    return common
end

setreadonly(math, true)
