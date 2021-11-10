--The legendary swords RPG --

if game.PlaceId == 60654525 then
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("The legendary swords RPG", "Sentinel")

--Main

local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Gamepass Armor", "Gives localplayer the gamepass armor", function()
    game.Players.LocalPlayer.RemoteFunctions.ArmorSystem:FireServer("Dark Dragon")
end)


MainSection:NewButton("Polished sword", "Gives the localplayer the best sword? or not", function()
    game.Players.LocalPlayer.RemoteFunctions.SwordShopSystem:FireServer('Buy',-1000000000,'Polished Blade')
end)

MainSection:NewLabel("There isnt alot of scripts for this game")



--LocalPlayer
local Player = Window:NewTab("Local Player")
local PlayerSection = Player:NewSection("Local Player")

PlayerSection:NewSlider("Walkspeed", "Changes local player's walkspeed", 250, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("Jumppower", "Changes local player's Jumppower", 500, 50, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)



--creds

local Tab = Window:NewTab("Credits")

local CreditsSection = Tab:NewSection("Credits")

CreditsSection:NewLabel("Made by: ageud#2416")

CreditsSection:NewKeybind("Toggle UI", "Click right control for toggle", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
 

end

-- Prison life --

if game.PlaceId == 155615604 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Prison Life", "Sentinel")
 
    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
 
    MainSection:NewDropdown("Give Gun", "Gives the localplayer a gun", {"M9", "Remington 870", "AK-47"}, function(v)
        local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver[v].ITEMPICKUP
        local Event = game:GetService("Workspace").Remote.ItemHandler
        Event:InvokeServer(A_1)
    end)
 
    MainSection:NewDropdown("Gun Mod", "Makes the gun op", {"M9", "Remington 870", "AK-47"}, function(v)
        local module = nil
        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
        end
        if module ~= nil then
            module["MaxAmmo"] = math.huge
            module["CurrentAmmo"] = math.huge
            module["StoredAmmo"] = math.huge
            module["FireRate"] = 0.000001
            module["Spread"] = 0
            module["Range"] = math.huge
            module["Bullets"] = 5
            module["ReloadTime"] = 0.000001
            module["AutoFire"] = true
        end
    end)

    MainSection:NewDropdown("Lag server", "Hold it down and goodbye", {"M9", "Remington 870", "AK-47"}, function(v)
        local module = nil
        if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Backpack[v].GunStates)
        elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) then
            module = require(game:GetService("Players").LocalPlayer.Character[v].GunStates)
        end
        if module ~= nil then
            module["MaxAmmo"] = math.huge
            module["CurrentAmmo"] = math.huge
            module["StoredAmmo"] = math.huge
            module["FireRate"] = 0.000001
            module["Spread"] = 0
            module["Range"] = math.huge
            module["Bullets"] = 69
            module["ReloadTime"] = 0.000001
            module["AutoFire"] = true
        end
    end)
 
    -- PLAYER
    local Player = Window:NewTab("Player")
    local PlayerSection = Player:NewSection("Player")
 
    PlayerSection:NewSlider("Walkspeed", "Changes the walkspeed", 250, 16, function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end)
 
    PlayerSection:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end)

--tps

local Tab = Window:NewTab("TabName")

--creds

local Tab = Window:NewTab("Credits")

local CreditsSection = Tab:NewSection("Credits")

CreditsSection:NewLabel("Made by: ageud#2416")

CreditsSection:NewKeybind("Toggle UI", "Click right control for toggle", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)

end

--ninja legends

if game.PlaceId == 3956818381 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Ninja Legends", "Sentinel")
 
    -- MAIN
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("Main")
 
    MainSection:NewToggle("Auto Swing", "Make your player autoswing", function(v)
        getgenv().autoswing = v
        while true do
            if not getgenv().autoswing then return end
            for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                if v:FindFirstChild("ninjitsuGain") then
                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                    break
                end
            end
            local A_1 = "swingKatana"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1)
            wait(0.1)
        end
    end)
 
    MainSection:NewToggle("Auto Sell", "Makes your player autosell", function(v)
        getgenv().autosell = v
        while true do
            if getgenv().autoswing == false then return end
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            wait(0.1)
            game:GetService("Workspace").sellAreaCircles["sellAreaCircle16"].circleInner.CFrame = CFrame.new(0,0,0)
            wait(0.1)
        end
    end)
 
    MainSection:NewButton("Unlock all islands", "Unlocks all islands", function()
        local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        for _,v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            wait(0.1)
        end
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe
    end)
    
    MainSection:NewToggle("Auto buy all swords", "Auto buys all swords", function(v)
        getgenv().buyswords = v
        while true do
            if not getgenv().buyswords then return end
            local A_1 = "buyAllSwords"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)
 
    MainSection:NewToggle("Auto buy all belts", "Auto buys all belts", function(v)
        getgenv().buybelts = v
        while true do
            if not getgenv().buybelts then return end
            local A_1 = "buyAllBelts"
            local A_2 = "Inner Peace Island"
            local Event = game:GetService("Players").LocalPlayer.ninjaEvent
            Event:FireServer(A_1, A_2)
            wait(0.5)
        end
    end)

--creds

local Tab = Window:NewTab("Credits")

local CreditsSection = Tab:NewSection("Credits")

CreditsSection:NewLabel("Made by: ageud#2416")

CreditsSection:NewKeybind("Toggle UI", "Click right control for toggle", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)
end
--boxing simulator--
if game.PlaceId == 4058282580 then
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Boxing Simulator", "Sentinel")

local Tab = Window:NewTab("Main")
local MainSection = Tab:NewSection("Main")


MainSection:NewLabel("if u got remotespy on it will spam the fuck out of it")

MainSection:NewToggle("Auto buy gloves [DISABLE POPUPS]", "automatically buys gloves (pop up disable in settings)", function(state)
    if state then
getgenv().buyglove = true
while getgenv().buyglove == true do
local glove = game:GetService("ReplicatedStorage").Events.BuyAllGlove
glove:FireServer()
wait()
end
    else
getgenv().buyglove = false
while getgenv().buyglove == true do
local glove = game:GetService("ReplicatedStorage").Events.BuyAllGlove
glove:FireServer()
wait()
end
    end
end)

MainSection:NewToggle("Auto buy DNA", "automatically buys dna for you", function(state)
    if state then
getgenv().buydna = true
while getgenv().buydna == true do
local dna = game:GetService("ReplicatedStorage").Events.BuyAllDNA
dna:FireServer()
wait()
end
    else
getgenv().buydna = false
while getgenv().buydna == true do
local dna = game:GetService("ReplicatedStorage").Events.BuyAllDNA
dna:FireServer()
wait()
end
    end
end)



MainSection:NewToggle("Auto sell", "Automatically sells", function(state)
    if state then
getgenv().sell = true
while getgenv().sell == true do
local AutoSell = game:GetService("ReplicatedStorage").Events.SellRequest
AutoSell:FireServer()
wait()
end
    else
getgenv().sell = false
while getgenv().sell == true do
local AutoSell = game:GetService("ReplicatedStorage").Events.SellRequest
AutoSell:FireServer()
wait()
end
    end
end)

MainSection:NewButton("Unlock all islands!", "tp to all the islands", function()
local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        for _,v in pairs(game:GetService("Workspace").IslandUnlock:GetChildren()) do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            wait(1)
            game:GetService("Workspace")["ya_yeetbig"].Humanoid.Jump = true
            wait(0.1)
        end
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe

end)

--auto eggs

local Tab = Window:NewTab("Auto Buy Eggs")

local EggSection = Tab:NewSection("Auto buy eggs")

EggSection:NewToggle("Auto buy Legndary eggs (LAG)", "automatically buys eggs for you, can lag", function(state)
    if state then
getgenv().autoegg = true
while getgenv().autoegg == true do
local A_1 = "legendary"
local Event = game:GetService("ReplicatedStorage").Events.BuyEgg
Event:FireServer(A_1)
wait()
end
    else
getgenv().autoegg = false
while getgenv().autoegg == true do
local A_1 = "legendary"
local Event = game:GetService("ReplicatedStorage").Events.BuyEgg
Event:FireServer(A_1)
wait()
end
    end
end)

EggSection:NewToggle("Auto buy Gummy eggs (LAG)", "automatically buys eggs for you, can lag", function(state)
    if state then
getgenv().autoegg = true
while getgenv().autoegg == true do
local A_1 = "epic"
local Event = game:GetService("ReplicatedStorage").Events.BuyEgg
Event:FireServer(A_1)
wait()
end
    else
getgenv().autoegg = false
while getgenv().autoegg == true do
local A_1 = "epic"
local Event = game:GetService("ReplicatedStorage").Events.BuyEgg
Event:FireServer(A_1)
wait()
end
    end
end)

EggSection:NewToggle("Auto buy Earth eggs (LAG)", "automatically buys eggs for you, can lag", function(state)
    if state then
getgenv().autoegg = true
while getgenv().autoegg == true do
local A_1 = "rare"
local Event = game:GetService("ReplicatedStorage").Events.BuyEgg
Event:FireServer(A_1)
wait()
end
    else
getgenv().autoegg = false
while getgenv().autoegg == true do
local A_1 = "rare"
local Event = game:GetService("ReplicatedStorage").Events.BuyEgg
Event:FireServer(A_1)
wait()
end
    end
end)

EggSection:NewToggle("Auto buy Sand eggs (LAG)", "automatically buys eggs for you, can lag", function(state)
    if state then
getgenv().autoegg = true
while getgenv().autoegg == true do
local A_1 = "uncommon"
local Event = game:GetService("ReplicatedStorage").Events.BuyEgg
Event:FireServer(A_1)
wait()
end
    else
getgenv().autoegg = false
while getgenv().autoegg == true do
local A_1 = "uncommon"
local Event = game:GetService("ReplicatedStorage").Events.BuyEgg
Event:FireServer(A_1)
wait()
end
    end
end)

EggSection:NewToggle("Auto buy Basic eggs (LAG)", "automatically buys eggs for you, can lag", function(state)
    if state then
getgenv().autoegg = true
while getgenv().autoegg == true do
local A_1 = "basic"
local Event = game:GetService("ReplicatedStorage").Events.BuyEgg
Event:FireServer(A_1)
wait()
end
    else
getgenv().autoegg = false
while getgenv().autoegg == true do
local A_1 = "basic"
local Event = game:GetService("ReplicatedStorage").Events.BuyEgg
Event:FireServer(A_1)
wait()
end
    end
end)

--creds

local Tab = Window:NewTab("Credits")

local CreditsSection = Tab:NewSection("Credits")

CreditsSection:NewLabel("Made by: ageud#2416")

CreditsSection:NewKeybind("Toggle UI", "Toggle UI (F doesnt work)", Enum.KeyCode.E, function()
	Library:ToggleUI()
end)

end

