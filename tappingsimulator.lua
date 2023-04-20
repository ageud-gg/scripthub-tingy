local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = 'Fap simulator',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})

local Tabs = {
    Main = Window:AddTab('Main'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

local LeftGroupBox = Tabs.Main:AddLeftGroupbox('Autofarm')

LeftGroupBox:AddToggle('autoclick', {
    Text = 'Auto Tap',
    Default = false, -- Default value (true / false)
    Tooltip = 'auto tap more like auto fap xd haha xd', -- Information shown when you hover over the toggle

    Callback = function(Value)
        spawn(function()
getgenv().autoclick = Toggles.autoclick.Value
    while getgenv().autoclick == true do
        local A_1 = "Main"
        local Event = game:GetService("ReplicatedStorage").Events.Tap
        Event:FireServer(A_1)
        wait()
    end
end)
    end
})

LeftGroupBox:AddLabel('Auto Rebirth stuff')
LeftGroupBox:AddDivider()

LeftGroupBox:AddToggle('autorebirthtoggle', {
    Text = 'Auto rebirth',
    Default = false, -- Default value (true / false)
    Tooltip = 'set your amount of rebirths below', -- Information shown when you hover over the toggle

    Callback = function(Value)
        spawn(function()
getgenv().autorebirth = Toggles.autorebirthtoggle.Value
    while getgenv().autorebirth == true do
        local A_1 = Options.autorebirth.Value
        local Event = game:GetService("ReplicatedStorage").Events.Rebirth
        Event:FireServer(A_1)
        wait()
    end
end)
    end
})


LeftGroupBox:AddDropdown('autorebirth', {
    Values = { '1', '5', '10', '20', '100', '500', '4000', '13500', '32000', '62500', '108000', '171500', '256000' },
    Default = 1, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'Auto-Rebirth',
    Tooltip = 'Select amount of rebirth you want to do', -- Information shown when you hover over the dropdown

    Callback = function(Value)
        print('New value:', Value)
    end
})


LeftGroupBox:AddLabel('Auto hatch bullcrap')
LeftGroupBox:AddDivider()

LeftGroupBox:AddToggle('autohatch', {
    Text = 'Auto Hatch',
    Default = false, -- Default value (true / false)
    Tooltip = 'Auto hatch enter name of egg below', -- Information shown when you hover over the toggle

    Callback = function(Value)
        spawn(function()
getgenv().autohatch = Toggles.autohatch.Value
    while getgenv().autohatch == true do
        local A_1 = 
        {
        }
        local A_2 = Options.autohatchinput.Value
        local A_3 = 1
        local Event = game:GetService("ReplicatedStorage").Events.HatchEgg
        Event:InvokeServer(A_1, A_2, A_3)
    end
end)
    end
})

LeftGroupBox:AddInput('autohatchinput', {
    Default = 'Enter name of egg here',
    Numeric = false, -- true / false, only allows numbers
    Finished = true, -- true / false, only calls callback when you press enter

    Text = 'Egg Name:',
    Tooltip = 'there is starter egg and dark egg thats all i know', -- Information shown when you hover over the textbox

    Placeholder = 'Enter name of egg here', -- placeholder text when the box is empty
    -- MaxLength is also an option which is the max length of the text

    Callback = function(Value)
        print('[cb] Text updated. New text:', Value)
    end
})

local RightGroupbox = Tabs.Main:AddRightGroupbox('Codes');

RightGroupbox:AddLabel('LIST OF CODES:\ntesting\nrelease\nupdate4\nupdate2\nupdate3\nsecret\nsecret\nmagma\n20M\nspooky\n30m\n35m\nupd23\n40m\n75m\nupdate11ty\nupd12\nfantasy\n45M\n65m\n90m\ncountdown\nfreepetcode123\nsecretfreepetcode\nfreepetcode2\n50m\nupd15\nupd16\nspace\n50mvisits\n60m\n70m\nupd17\nupd18\nupd19\nupd20\nvoid\n\1_Cididntexpectyoutobeabletoreadbackwards\n15KLIKESTHANKYOU', true)


local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

-- I set NoUI so it does not show up in the keybinds menu
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'RightShift', NoUI = true, Text = 'Menu keybind' })

Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- ThemeManager (Allows you to have a menu theme system)

-- Hand the library over to our managers
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- Adds our MenuKeybind to the ignore list
-- (do you want each config to have a different menu key? probably not.)
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
ThemeManager:SetFolder('ageud')
SaveManager:SetFolder('ageud/TapSimulator')

-- Builds our config menu on the right side of our tab
SaveManager:BuildConfigSection(Tabs['UI Settings'])

-- Builds our theme menu (with plenty of built in themes) on the left side
-- NOTE: you can also call ThemeManager:ApplyToGroupbox to add it to a specific groupbox
ThemeManager:ApplyToTab(Tabs['UI Settings'])

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
