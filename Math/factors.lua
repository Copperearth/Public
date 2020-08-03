setreadonly(math, false)

math.factors = function(int)
    if not int then 
        return error("Argument 1 must be provided")
    end 
    if type(int) ~= "number" then 
        return error("Argument 1 must be an integer")
    end
    local factors = {}
    for firstindex = 1, int do
        for secondindex = 0, int do
            if firstindex * secondindex == int then
                table.insert(factors, firstindex)
            end
        end
    end
    return factors
end

setreadonly(math, true)
