
if game.PlaceId ~= 15860930970 then
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
loadstring(game:HttpGet("https://raw.githubusercontent.com/Prosexy/Demonic-HUB-V2/refs/heads/main/DemonicHub_V2.lua"))()
end
