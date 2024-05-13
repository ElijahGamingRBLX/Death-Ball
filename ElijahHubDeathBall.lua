local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/thanhdat4461/OrionMoblie/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Elijah Hub - Death Ball", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Combat"
})

OrionLib:MakeNotification({
	Name = "Loaded!",
	Content = "Enjoy Using",
	Image = "rbxassetid://4483345998",
	Time = 5
})

Tab:AddButton({
	Name = "Auto Block!",
	Callback = function()
      		loadstring(Game:HttpGet("https://raw.githubusercontent.com/sirapobsriumang/Death-Ball/main/Main"))()
  	end    
})

Tab:AddButton({
	Name = "Auto Detector Spam!",
	Callback = function()
      		print("button pressed")
  	end    
})

Tab:AddSlider({
	Name = "Auto Detector Spam Range",
	Min = 5,
	Max = 30,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Range",
	Callback = function(Value)
		print(Value)
	end    
})

Tab:AddButton({
	Name = "Auto Walk!",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Auto%20Walk%20Obfuscator'))()
  	end    
})

local Tab = Window:MakeTab({
	Name = "Visualizer",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Show☄Part"
})

Tab:AddButton({
	Name = "Show Visualizer Part!",
	Callback = function()
      		-- Define a global table to simulate getgenv()
local globals = {}
-- Define placeholder for get_plr() if not already defined
local function get_plr()
    -- Placeholder implementation, replace with actual logic to get the player object.
    return game.Players.LocalPlayer
end
local Range = 10
-- Define IsAlive function if not already defined
local function IsAlive()
    -- Placeholder implementation, replace with actual logic to check if the player is alive.
    local Alive = workspace:WaitForChild("Alive", 20)
    return Alive and Alive:FindFirstChild(get_plr().Name) ~= nil
end
-- Define ViewParryArea function
local function ViewParryArea()
    -- Clean up any previous Visual object
    local previousVisual = workspace:FindFirstChild("Parry Range")
    if previousVisual then
        previousVisual:Destroy()
    end
    -- Create a new Visual part
    local Visual = Instance.new("Part", workspace)
    Visual.Name = "Parry Range"
    Visual.Material = Enum.Material.ForceField
    Visual.CastShadow = false
    Visual.CanCollide = false
    Visual.Anchored = true
    Visual.BrickColor = BrickColor.new(1004)
    Visual.Shape = Enum.PartType.Ball

    -- Retrieve the local player
    local Players = game:GetService("Players")
    local Player = Players.LocalPlayer

    -- Keep track of the visibility of the parry area
    globals.ViewParryArea = true

    -- Main loop to visualize the parry area
    while globals.ViewParryArea do
        -- Use a wait time that doesnĂ¢â‚¬â„¢t degrade performance
        
        task.wait() 
        local plrChar = Player.Character or Player.CharacterAdded:Wait()
        local plrPP = plrChar:FindFirstChild("HumanoidRootPart") or plrChar.PrimaryPart

        if plrPP then
            Visual.CFrame = CFrame.new(plrPP.Position)
            -- Additional logic for determining the Range based on your game's need
            Visual.Size = Vector3.new(Range, Range, Range)
            if plrChar:FindFirstChild("Highlight") then
                Visual.BrickColor = BrickColor.new(1004)
                Range = 40
            else
                Visual.BrickColor = BrickColor.new(1023)
                Range = 40
            end
            -- Position the Visual at the player's position
            Visual.Position = plrPP.Position
        else
            -- If the player does not have a primary part, move the Visual off-screen
            Visual.Position = Vector3.new(1000, 1000, 1000)
        end
    end
end

-- Call the ViewParryArea function to activate the parry area visualization
while true do
ViewParryArea()
task.wait()
end
  	end    
})

local Tab = Window:MakeTab({
	Name = "Boss",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Auto Farm"
})

Tab:AddButton({
	Name = "Auto Win Boss",
	Callback = function()
      		local plr = game.Players.LocalPlayer
plr.Character.HumanoidRootPart.CFrame = CFrame.new(459, 514, 988)
  	end    
})

Tab:AddButton({
	Name = "Auto Win Boss 2",
	Callback = function()
      		local plr = game.Players.LocalPlayer
plr.Character.HumanoidRootPart.CFrame = CFrame.new(291, 284, 1065)
  	end    
})


local Tab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Free"
})

Tab:AddButton({
	Name = "Infinity Yield",
	Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  	end    
})
