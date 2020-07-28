setreadonly(math, false)

math.factors = function(int)
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
