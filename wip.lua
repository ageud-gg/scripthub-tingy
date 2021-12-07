local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))() 

if game.PlaceId == 4058282580 then

local UI = Material.Load({
     Title = "Boxing simulator",
     Style = 1,
     SizeX = 350,
     SizeY = 300,
     Theme = "Dark"
})

local SPage = UI.New({
    Title = "Main"
})

SPage.Toggle({
    Text = "Auto buy gloves",
    Callback = function(v)
        if v == true then
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

    end,
    Enabled = false
})

SPage.Toggle({
    Text = "Auto buy DNA",
    Callback = function(v)
        if v == true then
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

    end,
    Enabled = false
})

SPage.Toggle({
    Text = "Auto sell",
    Callback = function(v)
        if v == true then
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

    end,
    Enabled = false
})

SPage.Button({
    Text = "Unlock all islands",
    Callback = function()
local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        for _,v in pairs(game:GetService("Workspace").IslandUnlock:GetChildren()) do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            wait(1)
            game:GetService("Workspace")["ya_yeetbig"].Humanoid.Jump = true
            wait(0.1)
        end
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe

    end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "tp to all the islands"            
            })
        end
    }
})

local EPage = UI.New({
    Title = "Auto eggs"
})

EPage.Toggle({
    Text = "Auto buy legendary eggs",
    Callback = function(v)
        if v == true then
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

    end,
    Enabled = false
})

EPage.Toggle({
    Text = "Auto buy gummy eggs",
    Callback = function(v)
        if v == true then
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

    end,
    Enabled = false
})

EPage.Toggle({
    Text = "Auto buy Earth eggs",
    Callback = function(v)
        if v == true then
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

    end,
    Enabled = false
})

EPage.Toggle({
    Text = "Auto buy Sand eggs",
    Callback = function(v)
        if v == true then
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

    end,
    Enabled = false
})

EPage.Toggle({
    Text = "Auto buy basic eggs",
    Callback = function(v)
        if v == true then
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

    end,
    Enabled = false
})

else

local UI = Material.Load({
     Title = "Universal scripts",
     Style = 1,
     SizeX = 350,
     SizeY = 300,
     Theme = "Dark"
})


local FPage = UI.New({
    Title = "FE scripts"
})

FPage.Button({
    Text = "Add netless",
    Callback = function()
loadstring(game:HttpGet(('https://pastebin.com/raw/Cu7bKQWN'),true))()
    end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "A script for netless"            
            })
        end
    }
})

FPage.Button({
    Text = "FE nept v gui",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ageud-gg/funny-bobux-generator/main/main.lua"))()
    end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "fe nept v gui"            
            })
        end
    }
})

FPage.Button({
    Text = "FE spider script",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ageud-gg/funny-bobux-generator/main/fe/fe%20spider"))()    end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "FE spider script"            
            })
        end
    }
})

FPage.Button({
    Text = "FE neko animations script",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ageud-gg/funny-bobux-generator/main/fe/neko%20animations"))()   
end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "FE neko script"            
            })
        end
    }
})

FPage.Button({
    Text = "FE flip script",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ageud-gg/funny-bobux-generator/main/fe/fe%20flip"))()   
end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "FE flip script"            
            })
        end
    }
})

FPage.Button({
    Text = "FE flip script",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/ageud-gg/funny-bobux-generator/main/fe/fe%20telekenesis"))()   
end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "FE flip script"            
            })
        end
    }
})

local BPage = UI.New({
    Title = "Basic scripts"
})


BPage.Slider({
    Text = "Walk speed",
    Callback = function(v)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
    end,
    Min = 16,
    Max = 300,
    Def = 16
})

BPage.Slider({
    Text = "Jump power",
    Callback = function(v)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
    end,
    Min = 50,
    Max = 500,
    Def = 50
})

BPage.Button({
    Text = "Rejoin (doesnt work if only 1 player)",
    Callback = function()
local ts = game:GetService("TeleportService")

local p = game:GetService("Players").LocalPlayer

ts:Teleport(game.PlaceId, p)   
end,
    Menu = {
        Information = function(self)
            UI.Banner({
                Text = "rejoin script"            
            })
        end
    }
})

end
