
if game.PlaceId ~= "15860930970" then
    while true do
        

        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:WaitForChild("Humanoid")

        local moveSpeed = 1

        function moveToTarget(targetPosition)
            local startPosition = character.PrimaryPart.Position
            local distance = (targetPosition - startPosition).magnitude
            local duration = distance / moveSpeed 

            for i = 0, 1, 0.1 do 
                    local newPosition = startPosition:Lerp(targetPosition, i)
                    character:SetPrimaryPartCFrame(CFrame.new(newPosition))
                    wait(0.1)
            end
        end
        moveToTarget(Vector3.new(-1146.23755, 245.463013, -63))
        moveToTarget(Vector3.new(-1146.23755, 245.463013, -43))

        wait(120)
    end
else 

local args = {
    [1] = "1",
    [2] = 1,
    [3] = 1
}

game:GetService("ReplicatedStorage").Remotes.Main.Vote:FireServer(unpack(args))

wait(17)

while true do
    wait(1)

    -- auto vote
    local args = {
        [1] = true,
        [2] = "edb23418-a410-46fe-adcb-6ed4062f0512"
    }
    
    game:GetService("ReplicatedStorage").Remotes.Main.SkipWave:FireServer(unpack(args))

    -- #01 unit
    local args = {
        [1] = "Freddy",
        [2] = CFrame.new(-735.6936645507812, 4.854382038116455, 536.7514038085938) * CFrame.Angles(-0, 0, -0)
    }

    game:GetService("ReplicatedStorage").Remotes.Towers.SummonTower:FireServer(unpack(args))

    -- #02 unit
    local args = {
        [1] = "Freddy",
        [2] = CFrame.new(-742.4393310546875, 4.854382038116455, 589.6763305664062) * CFrame.Angles(-0, 0, -0)
    }

    game:GetService("ReplicatedStorage").Remotes.Towers.SummonTower:FireServer(unpack(args))

    -- #03 unit
    local args = {
        [1] = "Freddy",
        [2] = CFrame.new(-744.455810546875, 4.854382038116455, 580.974609375) * CFrame.Angles(-0, 0, -0)
    }

    game:GetService("ReplicatedStorage").Remotes.Towers.SummonTower:FireServer(unpack(args))

    -- #04 unit
    local args = {
        [1] = "Freddy",
        [2] = CFrame.new(-717.283203125, 4.854382038116455, 560.60400390625) * CFrame.Angles(-0, 0, -0)
    }

    game:GetService("ReplicatedStorage").Remotes.Towers.SummonTower:FireServer(unpack(args))

    -- #05 unit
    local args = {
        [1] = "Freddy",
        [2] = CFrame.new(-184.92681884765625, 4.854382038116455, 802.240234375) * CFrame.Angles(-0, 0, -0)
    }

    game:GetService("ReplicatedStorage").Remotes.Towers.SummonTower:FireServer(unpack(args))

    -- upgrade all
    local towers = workspace.Towers:GetChildren()
    if #towers > 4 then
        for _,v in pairs(towers) do
            local args = {
                [1] = v
            }
            
            game:GetService("ReplicatedStorage").Remotes.Towers.Upgrade:FireServer(unpack(args))
        end
    end
      
end
end
