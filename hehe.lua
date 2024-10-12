local codes = {
    "GLITTER780K",
    "4BUNDANCY",
    "OMGREBOOTAGAIN",
    "NANAP0CALYPSE!",
    "770KWOW!",
    "760KISKRAZY",
    "750KINSANE!",
    "SORRY4DELAY",
    "NEWBOUNTYERA!",
    "HOWLINGFALL!",
    "LVLBUFFHYPE",
    "ICEW0LF",
    "SM4LLFRY",
    "HAHA740K!"
}


-- auto codes
for i = 1, #codes do
    local args = {
        [1] = "Codes",
        [2] = "Redeem",
        [3] = {
            ["Code"] = codes[i]
        }
    }
            
    game:GetService("ReplicatedStorage").Replicator:InvokeServer(unpack(args))
end

local filterFruits = {
    -- miticas
    "DarkXQuake",
    "Okuchi",
    "Soul",
    "DragonV2",
    "Nika",
    "Lightning",
    "Venom",
    "Leopard",
    "Dough",
    "Ope",

    -- lendarias
    "FlameV2",
    "LightV2",
    "MagmaV2",
    "IceV2",
    "Magnet",
    "TSRubber",
    "Dragon",
    "Phoenix",
    "Gravity",
    "Quake"
}

function matchBestFruit(theFruit) 
    local match = false
    for i = 1, #filterFruits do
        if filterFruits[i] == theFruit then
            match = true
        end
    end
    return match
end

function spinFruit(thisSlot)

    local thisFruitInSlot = game:GetService("Players").LocalPlayer.MAIN_DATA.Slots[thisSlot].Value

    if matchBestFruit(thisFruitInSlot) == false then
        local args = {
            [1] = "FruitsHandler",
            [2] = "SwitchSlot",
            [3] = {
                ["Slot"] = thisSlot
            }
        }
        game:GetService("ReplicatedStorage").Replicator:InvokeServer(unpack(args))

        local args = {
            [1] = "FruitsHandler",
            [2] = "Spin",
            [3] = {}
            }
            
        game:GetService("ReplicatedStorage").Replicator:InvokeServer(unpack(args))
    else
        if thisSlot <= 4 then
            local args = {
                [1] = "FruitsHandler",
                [2] = "SwitchSlot",
                [3] = {
                    ["Slot"] = thisSlot + 1
                }
            }
            game:GetService("ReplicatedStorage").Replicator:InvokeServer(unpack(args))
        end
    end
end

task.spawn(function()
      
    if not _env.AntiAfk then
      _env.AntiAfk = true
      
      while _wait(60*10) do
        if Settings.AntiAFK then
          VirtualUser:CaptureController()
          VirtualUser:ClickButton2(Vector2.new())
        end
      end
    end
  end)
game:GetService("RunService"):Set3dRenderingEnabled(false)

local gems = game:GetService("Players").LocalPlayer.MAIN_DATA.Gems.Value

while gems > 49 do
    local Heartbeat = game:GetService("RunService").Heartbeat
    Heartbeat:Wait()
    local theSlot = game:GetService("Players").LocalPlayer.MAIN_DATA.Slot.Value

    spinFruit(theSlot)
    
    local gems = game:GetService("Players").LocalPlayer.MAIN_DATA.Gems.Value
end

local text = ""
    for i = 1, 4 do
        text = text .. game:GetService("Players").LocalPlayer.MAIN_DATA.Slots[i].Value .. ", "
    end

local url = "https://discord.com/api/webhooks/1294593223368638484/urEtx9UREEmUmrjZU7W4DOU5GEjBf2JpGtEMvVp6zjsARDuxlsrV3yxMHuB4WnjISDWf"
local data = {
["content"] = "",
    ["embeds"] = {
        {
            ["title"] = "**Fruit Battlegrounds!** FINALIZADA",
            ["description"] = "**Username** : **" .. game.Players.LocalPlayer.DisplayName .. "**\n**frutas** : ".. text ,
            ["type"] = "rich",
            ["color"] = tonumber(0x7269da),
        }
    }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
    ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Title of the library", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})
local Tab = Window:MakeTab({
	Name = "Tab 1",
	PremiumOnly = false
})
