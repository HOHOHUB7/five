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

game:GetService("RunService"):Set3dRenderingEnabled(true)

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest"})

local KAITUNTAB = Window:MakeTab({
	Name = "KAITUN",
	PremiumOnly = false
})

KAITUNTAB:AddLabel("INFOS DA CONTA: ")
local fruitsTEXT = KAITUNTAB:AddLabel("FRUTAS: CARREGANDO...")
local gemsTEXT = KAITUNTAB:AddLabel("GEMAS: CARREGANDO...")

local gems = game:GetService("Players").LocalPlayer.MAIN_DATA.Gems.Value

while gems > 49 do
    local Heartbeat = game:GetService("RunService").Heartbeat
    Heartbeat:Wait()
    local theSlot = game:GetService("Players").LocalPlayer.MAIN_DATA.Slot.Value
for i = 1, 4 do
        text = text .. game:GetService("Players").LocalPlayer.MAIN_DATA.Slots[i].Value .. ", "
    end
   print(text)
	
    spinFruit(theSlot)
    
    local gems = game:GetService("Players").LocalPlayer.MAIN_DATA.Gems.Value
    gemsTEXT:set("GEMAS: " .. gems)

    local text = "FRUTAS: "
    
end

print(326732466378246782346842386234686243682432438642366843268243)
