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
                ["Slot"] = i
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
        if thisSlot =< 4 then
            local args = {
                [1] = "FruitsHandler",
                [2] = "SwitchSlot",
                [3] = {
                    ["Slot"] = i + 1
                }
            }
            game:GetService("ReplicatedStorage").Replicator:InvokeServer(unpack(args))
        end
    end
end

while true do
    local Heartbeat = game:GetService("RunService").Heartbeat
    Heartbeat:Wait()
    local theSlot = game:GetService("Players").LocalPlayer.MAIN_DATA.slot
    spinFruit(theSlot)
end
