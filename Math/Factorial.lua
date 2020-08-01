setreadonly(math, false)

math.factorial = function(int)
    local result = 1
    if int > 0 then
        for i = 1, int do
            result = result * i
        end
    end
    return result
end

setreadonly(math, true)
