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

local data = {
    ["Webhook"] = "", -- webhook link goes here 
    ["Name"] = "", -- name goes here
    ["Avatar"] = "", -- profile picture goes here
    ["Title"] = "Title", -- title goes here
    ["Description"] = "Description", -- description goes here
    ["Fields"] = { -- message contents go here
        {name = "field 1", value = "bruh1"},
        {name = "field 2", value = "bruh2"}
    }, 
    ["Color"] = 8656831, -- decimal color goes here
    ["Thumbnail"] = "" -- picture to be displayed in the message goes here
}

SendWebhook(data)
