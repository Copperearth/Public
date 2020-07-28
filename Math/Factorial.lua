setreadonly(math, false)

math.factorial = function(int)
    local result = 1
    for i = 1, int do
        result = result * i
    end
    return result
end

setreadonly(math, true)
