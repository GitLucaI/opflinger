-- Gui to Lua
-- Version: 3.2

-- Instances:

local LucasFlingGui = Instance.new("ScreenGui")
local MainUI = Instance.new("Frame")
local TextBox = Instance.new("TextBox")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local Minimize = Instance.new("TextButton")
local Maximize = Instance.new("TextButton")

--Properties:

LucasFlingGui.Name = "Luca's Fling Gui"
LucasFlingGui.Parent = game:GetService("CoreGui")
LucasFlingGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainUI.Name = "MainUI"
MainUI.Parent = LucasFlingGui
MainUI.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
MainUI.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainUI.BorderSizePixel = 0
MainUI.Position = UDim2.new(0.443579763, 0, 0.292134821, 0)
MainUI.Size = UDim2.new(0.324254215, 0, 0.249687895, 0)

TextBox.Parent = MainUI
TextBox.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.0399999991, 0, 0.25, 0)
TextBox.Size = UDim2.new(0.920000017, 0, 0.25, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "Target"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

TextLabel.Parent = MainUI
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(1, 0, 0.25, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Stupid Nigger Flinger (Made by Luca)"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

TextButton.Parent = MainUI
TextButton.BackgroundColor3 = Color3.fromRGB(85, 170, 127)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0399999991, 0, 0.579999983, 0)
TextButton.Size = UDim2.new(0.920000017, 0, 0.25, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "DeathRape"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

Minimize.Name = "Minimize"
Minimize.Parent = MainUI
Minimize.BackgroundColor3 = Color3.fromRGB(255, 106, 108)
Minimize.BorderColor3 = Color3.fromRGB(0, 0, 0)
Minimize.BorderSizePixel = 0
Minimize.Position = UDim2.new(0.959999979, 0, -0.25, 0)
Minimize.Size = UDim2.new(0.100000001, 0, 0.25, 0)
Minimize.Font = Enum.Font.SourceSansBold
Minimize.Text = "-"
Minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
Minimize.TextScaled = true
Minimize.TextSize = 14.000
Minimize.TextWrapped = true

Maximize.Name = "Maximize"
Maximize.Parent = LucasFlingGui
Maximize.BackgroundColor3 = Color3.fromRGB(255, 106, 108)
Maximize.BorderColor3 = Color3.fromRGB(0, 0, 0)
Maximize.BorderSizePixel = 0
Maximize.Position = UDim2.new(0, 0, 0.167290881, 0)
Maximize.Size = UDim2.new(0.0324254222, 0, 0.0624219738, 0)
Maximize.Font = Enum.Font.SourceSansBold
Maximize.Text = "+"
Maximize.TextColor3 = Color3.fromRGB(255, 255, 255)
Maximize.TextScaled = true
Maximize.TextSize = 14.000
Maximize.TextWrapped = true

-- Scripts:

local function LHVIPFF_fake_script() -- MainUI.LocalScript 
	local script = Instance.new('LocalScript', MainUI)

	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	local LocalPlayer = Players.LocalPlayer
	local ScreenGui = script.Parent.Parent
	local MainUI = script.Parent
	local TargetBox = MainUI:WaitForChild("TextBox")
	local ActionButton = MainUI:WaitForChild("TextButton")
	local MinimizeBtn = MainUI:WaitForChild("Minimize")
	local MaximizeBtn = ScreenGui:WaitForChild("Maximize")
	
	local flinging = false
	local originalCFrame = nil
	local loopConn = nil
	local currentSpin = nil
	
	local keywords = {
		"Death Rape",
		"Fuck this bitch like it's epstein island",
		"Rape",
		"Sexually Assault",
		"Ejaculate",
		"Combust",
		"Hardcore Sex",
		"Fuck",
		"Finger This Bitch",
		"Penetrate",
		"Impregnate",
		"Backshots",
		"Clap cheeks",
		"Fuck the damn ass",
		"Send bitch back to the moon",
		"Smoke nigga"
	}
	
	MaximizeBtn.Visible = false
	MaximizeBtn.MouseButton1Click:Connect(function()
		MainUI.Visible = true
		MaximizeBtn.Visible = false
	end)
	
	MinimizeBtn.MouseButton1Click:Connect(function()
		MainUI.Visible = false
		MaximizeBtn.Visible = true
	end)
	
	local function getTarget()
		local input = TargetBox.Text
		for _, p in pairs(Players:GetPlayers()) do
			if p ~= LocalPlayer and (string.lower(p.Name):sub(1, #input) == string.lower(input) or string.lower(p.DisplayName):sub(1, #input) == string.lower(input)) then
				return p
			end
		end
	end
	
	ActionButton.MouseButton1Click:Connect(function()
		local char = LocalPlayer.Character
		local root = char and char:FindFirstChild("HumanoidRootPart")
		if not root then return end
	
		if not flinging then
			local target = getTarget()
			if not target or not target.Character or not target.Character:FindFirstChild("HumanoidRootPart") then return end
	
			flinging = true
			originalCFrame = root.CFrame
			ActionButton.Text = "Stop"
	
			char.Humanoid.PlatformStand = true
			for _, v in pairs(char:GetDescendants()) do
				if v:IsA("BasePart") then v.CanCollide = false end
			end
	
			currentSpin = Instance.new("BodyAngularVelocity")
			currentSpin.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
			currentSpin.P = math.huge
			currentSpin.Parent = root
	
			loopConn = RunService.Heartbeat:Connect(function()
				local tRoot = target.Character and target.Character:FindFirstChild("HumanoidRootPart")
				if tRoot then
					currentSpin.AngularVelocity = Vector3.new(0, 50000, 0)
					root.CFrame = tRoot.CFrame + (tRoot.AssemblyLinearVelocity * 0.5)
				end
			end)
		else
			flinging = false
			local keyword = math.random(1, #keywords)
			ActionButton.Text = keywords[keyword]
			if loopConn then loopConn:Disconnect() end
			if currentSpin then currentSpin:Destroy() end
	
			char.Humanoid.PlatformStand = false
			for _, v in pairs(char:GetDescendants()) do
				if v:IsA("BasePart") then v.CanCollide = true end
			end
	
			root.CFrame = originalCFrame
			root.AssemblyLinearVelocity = Vector3.zero
			root.AssemblyAngularVelocity = Vector3.zero
		end
	end)
end
coroutine.wrap(LHVIPFF_fake_script)()
