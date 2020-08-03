-- THIS FILE CONTAINS ALL OF OUR PROJECTS IN ONE, YOU CAN ADD IT INTO YOUR CODE WITH THE FOLLOWING LINE: 
-- loadstring(game:HttpGet('https://raw.githubusercontent.com/Copperearth/Public/master/Main.lua', true))()

-- color

local function hsv_to_rgb(h, s, v)
	local r, g, b

	local i = math_floor(h * 6);
	local f = h * 6 - i;
	local p = v * (1 - s);
	local q = v * (1 - f * s);
	local t = v * (1 - (1 - f) * s);

	i = i % 6

	if i == 0 then r, g, b = v, t, p
	elseif i == 1 then r, g, b = q, v, p
	elseif i == 2 then r, g, b = p, v, t
	elseif i == 3 then r, g, b = p, q, v
	elseif i == 4 then r, g, b = t, p, v
	elseif i == 5 then r, g, b = v, p, q
	end

	return r * 255, g * 255, b * 255
end

local function rgb_to_hsv(r, g, b)
	r, g, b = r / 255, g / 255, b / 255
	local max, min = math.max(r, g, b), math.min(r, g, b)
	local h, s, v
	v = max

	local d = max - min
	if max == 0 then s = 0 else s = d / max end

	if max == min then
		h = 0 -- achromatic
	else
		if max == r then
		h = (g - b) / d
		if g < b then h = h + 6 end
		elseif max == g then h = (b - r) / d + 2
		elseif max == b then h = (r - g) / d + 4
		end
		h = h / 6
	end

	return h, s, v
end

-- Discord 

local function SendWebhook(data)
    syn.request({
        Url = data["Webhook"],
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = game:GetService("HttpService"):JSONEncode({
            username = data["Name"],
            avatar_url = data["Avatar"],
            embeds = {{
                title = data["Title"],
                description = data["Description"],
                fields = data["Fields"],
                color = data["Color"],
                thumbnail = {
                    url = data["Thumbnail"]
                }
            }}
        })
    })
end

-- Math

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

math.gcd = function(a, b)
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
    return math.max(unpack(common))
end

math.lcd = function(a, b)
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
    table.remove(common, 1)
    return math.min(unpack(common))
end

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

-- Misc 

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
    if method == "FindFirstDescendantWhichIsA" then 
        if #args == 0 then 
            return error("No argument was provided")
        end
        if #args > 1 and type(args[1]) ~= "string" then 
            return error("First argument must be a string")
        end
        for i,v in next, self:GetDescendants() do 
            if v:IsA(args[1]) then 
                return v 
            end
        end
        return nil
    end
    return oldNamecall(self,...)
end)

setreadonly(mt, true)

-- String 

setreadonly(string, false)

string.shuffle = function(str)
    if not str then 
        return error("Argument 1 must be provided")
    end 
    if type(str) ~= "string" then 
        return error("Argument 1 must be a string")
    end
    local newStr = {}
    repeat
    	for i = 1, string.len(str) do
    		newStr[i] = string.sub(str, i, i)
    	end
    	local index = 0
    	local temp
    	for i = #newStr, 1, -1 do
    		index = math.random(1, i)
    		temp = newStr[index]
    		newStr[index] = newStr[i]
    		newStr[i] = temp
    	end
    until table.concat(newStr) ~= str 
    return table.concat(newStr)
end

setreadonly(string, true)
