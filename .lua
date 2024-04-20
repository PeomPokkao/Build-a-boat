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

Tab1:Button("AuToFarm Lv.1",function(value)
    spawn(function()
        while wait() do
            TP(CFrame.new(-51.631439208984375, 46.04425811767578, 1283.8319091796875))
        end
    end)
end)

Tab1:Button("AuToFarm Lv.2",function(value)
    spawn(function()
        while wait() do
            TP(CFrame.new(-56.33596420288086, -362.31268310546875, 9488.3173828125))
        end
    end)
end)

Tab1:Toggle("PartNeon",function(value)
    _G.pno = value

    spawn(function()
        pcall(function()
            game:GetService("RunService").Heartbeat:Connect(function()
                if _G.pno then
                    if not game.Workspace:FindFirstChild("LOL") then
                        local PartNeon = Instance.new("Part")
                        PartNeon.Name = "LOL"
                        PartNeon.Parent = game.Workspace
                        PartNeon.Anchored = true
                        PartNeon.Transparency = 0
                        PartNeon.Size = Vector3.new(30, 0.5, 30)
                        PartNeon.Material = "Neon"
    
                        local colors = {
                            Color3.fromRGB(255, 0, 0),
                            Color3.fromRGB(255, 155, 0),
                            Color3.fromRGB(255, 255, 0),
                            Color3.fromRGB(0, 255, 0),
                            Color3.fromRGB(0, 255, 255),
                            Color3.fromRGB(0, 155, 255),
                            Color3.fromRGB(255, 0, 255),
                            Color3.fromRGB(255, 0, 155)
                        }
    
                        local index = 1
    
                        while true do
                            wait(0.1)
                            game:GetService('TweenService'):Create(
                                PartNeon,
                                TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
                                {Color = colors[index]}
                            ):Play()
    
                            index = index % #colors + 1
                            wait(0.5)
                        end
                    else
                        local playerPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
                        game.Workspace.LOL.CFrame = CFrame.new(playerPos.X, playerPos.Y - 3.92, playerPos.Z)
                    end
                else
                    if not _G.pno then
                        local lol = game.Workspace:FindFirstChild("LOL")
                        if lol then
                            lol:Destroy()
                        end
                    end
                end
            end)
        end)
    end)

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

Tab3:Button("Rejoin",function(value)

    pcall (function()
        while wait() do
            local ts = game:GetService("TeleportService")
            
            local p = game:GetService("Players").LocalPlayer
            
            ts:Teleport(game.PlaceId, p)
        end
    end)

end)

Tab3:Button("Hop Server",function(value)
    pcall(function()
        while wait() do
            local PlaceID = game.PlaceId
     local AllIDs = {}
     local foundAnything = ""
     local actualHour = os.date("!*t").hour
     local Deleted = false
     function TPReturner()
        local Site;
        if foundAnything == "" then
           Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
           Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
           foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
           local Possible = true
           ID = tostring(v.id)
           if tonumber(v.maxPlayers) > tonumber(v.playing) then
                 for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                       if ID == tostring(Existing) then
                             Possible = false
                       end
                    else
                       if tonumber(actualHour) ~= tonumber(Existing) then
                             local delFile = pcall(function()
                                -- delfile("NotSameServers.json")
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                             end)
                       end
                    end
                    num = num + 1
                 end
                 if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                       -- writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                       wait()
                       game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(.1)
                 end
           end
        end
     end
     function Teleport() 
        while wait() do
           pcall(function()
                 TPReturner()
                 if foundAnything ~= "" then
                    TPReturner()
                 end
           end)
        end
     end
     Teleport()
     end
    end)
end)

Tab3:Button("Hop low Server",function(value)
    spawn(function()

        while wait() do

            local Http = game:GetService("HttpService")
            local TPS = game:GetService("TeleportService")
            local Api = "https://games.roblox.com/v1/games/"
            
            local _place = game.PlaceId
            local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
            function ListServers(cursor)
                local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
                return Http:JSONDecode(Raw)
            end
            local Server, Next; repeat
                local Servers = ListServers(Next)
                Server = Servers.data[1]
                Next = Servers.nextPageCursor
            until Server
            
            TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)

        end
    end)
end)
