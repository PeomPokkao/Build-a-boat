if not game:IsLoaded() then 
    repeat 
        game.Loaded:Wait() 
    until game:IsLoaded() 
end

local id = game.PlaceId

function TP(Pos)
    local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    local Speed
    if Distance < 360 then
        Speed = 500 -- เพิ่มความเร็วให้มากขึ้น
    elseif Distance < 1000 then
        Speed = 700 -- ปรับความเร็วให้เหมาะสมกับระยะทาง
    elseif Distance >= 1000 then
        Speed = 2000 -- เพิ่มความเร็วให้มากขึ้น
    end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
end

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/PeomPokkao/SynapOver/main/README.md"))()

local GUI = library:new("Uppercut Hub "," Free Scripts ]")
local Tab1 = GUI:Tap("General")
local Tab2 = GUI:Tap("Teleport")
local Tab3 = GUI:Tap("MISC")

Tab1:Toggle("AutoFarm", function(value)
end)

Tab1:Dropdown("Select Chest",{"Common Chest", "Uncommon Chest", "Rare Chest", "Epic Chest", "Legendary Chest"},function(t)
    _G.Chest = t
end)

Tab1:Button("Buy 1 Time",function(value)

    if _G.Chest == "Common Chest" then

        local args = {
            [1] = "Common Chest",
            [2] = 1
        }
        
        workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    elseif _G.Chest == "Uncommon Chest" then

        local args = {
            [1] = "Uncommon Chest",
            [2] = 1
        }
        
        workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    elseif _G.Chest == "Rare Chest" then

        local args = {
            [1] = "Rare Chest",
            [2] = 1
        }
        
        workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    elseif _G.Chest == "Epic Chest" then

        local args = {
            [1] = "Epic Chest",
            [2] = 1
        }
        
        workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    elseif _G.Chest == "Legendary Chest" then

        local args = {
            [1] = "Legendary Chest",
            [2] = 1
        }
        
        workspace.ItemBoughtFromShop:InvokeServer(unpack(args))

    end
end)

Tab1:Dropdown("Select Team",{"Black Team", "Blue Team", "Green Team", "Pink Team", "Red Team", "White Team", "Yellow Team"},function(t)
    _G.T = t
end)

Tab1:Button("Buy 1 Time",function(value)

    if _G.T == "Black Team" then

        local args = {
            [1] = game:GetService("Teams").black
        }
        
        workspace.ChangeTeam:FireServer(unpack(args))
    
    elseif _G.T == "Blue Team" then

        local args = {
            [1] = game:GetService("Teams").blue
        }
        
        workspace.ChangeTeam:FireServer(unpack(args))

    elseif _G.T == "Green Team" then

        local args = {
            [1] = game:GetService("Teams").green
        }
        
        workspace.ChangeTeam:FireServer(unpack(args))

    elseif _G.T == "Pink Team" then

        local args = {
            [1] = game:GetService("Teams").magenta ---pink
        }
        
        workspace.ChangeTeam:FireServer(unpack(args))

    elseif _G.T == "Red Team" then

        local args = {
            [1] = game:GetService("Teams").red
        }
        
        workspace.ChangeTeam:FireServer(unpack(args))

    elseif _G.T == "White Team" then

        local args = {
            [1] = game:GetService("Teams").white
        }
        
        workspace.ChangeTeam:FireServer(unpack(args))

    elseif _G.T == "Yellow Team" then

        local args = {
            [1] = game:GetService("Teams").yellow
        }
        
        workspace.ChangeTeam:FireServer(unpack(args))

    end

end)

Tab2:Dropdown("Select Team",{"Black Team", "Blue Team", "Green Team", "Pink Team", "Red Team", "White Team", "Yellow Team"},function(t)
    _G.Te = t
end)

Tab2:Button("Start Teleport",function(value)

    if _G.Te == "Black Team" then

        TP(CFrame.new(-532.4879150390625, -9.701977729797363, -69.43873596191406))
    
    elseif _G.Te == "Blue Team" then

        TP(CFrame.new(425.80670166015625, -9.701976776123047, 300.2716064453125))

    elseif _G.Te == "Green Team" then

        TP(CFrame.new(-532.6469116210938, -9.701979637145996, 293.7119140625))

    elseif _G.Te == "Pink Team" then

        TP(CFrame.new(426.3284912109375, -9.701977729797363, 647.8021240234375))

    elseif _G.Te == "Red Team" then

        TP(CFrame.new(426.894287109375, -9.701977729797363, -64.03333282470703))

    elseif _G.Te == "White Team" then

        TP(CFrame.new(-49.495243072509766, -9.701977729797363, -549.6897583007812))

    elseif _G.Te == "Yellow Team" then

        TP(CFrame.new(-534.2293090820312, -9.701979637145996, 640.7247924804688))

    end

end)
