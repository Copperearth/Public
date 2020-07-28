local mt = getrawmetatable(game)
setreadonly(mt, false)
local oldNamecall = mt.__namecall

mt.__namecall = newcclosure(function(self,...)
    local args = {...}
    local method = getnamecallmethod()
    if method == "FindFirstDescendant" then
        if #args == 0 then 
           return error("No argument was provided") 
        end
        if #args > 1 and type(args[1]) ~= "string" then 
            return error("First argument must be a string") 
        end
        for i,v in next, self:GetDescendants() do
            if v.Name == args[1] then
                return v
            end
        end
        return nil
    end
    return oldNamecall(self,...)
end)

setreadonly(mt, true)
