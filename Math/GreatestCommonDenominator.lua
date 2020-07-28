setreadonly(math, false)

math.gcd = function(a, b)
    local common = {}
    for i = 1, math.min(a, b) do
        if a/i == math.floor(a/i) and b/i == math.floor(b/i) then
            table.insert(common, i)
        end
    end
    return math.max(unpack(common))
end

setreadonly(math, true)