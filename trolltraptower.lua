function getglove()
	for i, v in pairs(game.Players:GetPlayers()) do
		if v.Character then
			for i, v in pairs(v.Character:GetChildren()) do
				if v:IsA("Tool") and (string.find(v.Name:lower(), "glove") or string.find(v.Name:lower(), "slap")) and v:FindFirstChild("FlightSpeed") and v:FindFirstChild("Power") and v:FindFirstChild("Event") then
					return v, v.Event
				end
			end
		end
		if v:FindFirstChild("Backpack") then
			for i, v in pairs(v.Backpack:GetChildren()) do
				if v:IsA("Tool") and (string.find(v.Name:lower(), "glove") or string.find(v.Name:lower(), "slap")) and v:FindFirstChild("FlightSpeed") and v:FindFirstChild("Power") and v:FindFirstChild("Event") then
					return v, v.Event
				end
			end
		end
	end
	for i, v in pairs(game.ReplicatedStorage:GetDescendants()) do
		if v:IsA("Tool") and (string.find(v.Name:lower(), "glove") or string.find(v.Name:lower(), "slap")) and v:FindFirstChild("FlightSpeed") and v:FindFirstChild("Power") and v:FindFirstChild("Event") then
			return v, v.Event
		end
	end
end 
drag = nil
if drag == nil then
	drag = function(f)
		if f then
			f.Active = true
			f.Draggable = true
		end
	end
end
local players = game:GetService("Players")
local localplr = players.LocalPlayer
local thegui = Instance.new("ScreenGui")
thegui.IgnoreGuiInset = false
thegui.ResetOnSpawn = false
thegui.ZIndexBehavior = Enum.ZIndexBehavior.Global
thegui.Name = "12952456875486445983783452227635151277232954895541"
thegui.Parent = game.CoreGui

local frame = Instance.new("Frame")
frame.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549)
frame.BorderColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 0
frame.Position = UDim2.new(0.330529869, 0, 0.31898731, 0)
frame.Size = UDim2.new(0, 402, 0, 228)
frame.Visible = true
frame.Parent = thegui
drag(frame)
local title = Instance.new("TextLabel")
title.Font = Enum.Font.FredokaOne
title.Text = "top 5 reasons why i hate noobs"
title.TextColor3 = Color3.new(0, 0, 0)
title.TextSize = 14
title.BackgroundColor3 = Color3.new(0, 0.784314, 1)
title.BorderColor3 = Color3.new(0, 0, 0)
title.BorderSizePixel = 0
title.Position = UDim2.new(0, 0, - 0.0760534182, 0)
title.Size = UDim2.new(0, 402, 0, 24)
title.Visible = true
title.ZIndex = 3
title.Name = "Title"
title.Parent = frame

local uicorner = Instance.new("UICorner")
uicorner.CornerRadius = UDim.new(0, 3)
uicorner.Parent = title

local sortinventory = Instance.new("TextButton")
sortinventory.Font = Enum.Font.FredokaOne
sortinventory.Text = "sort inventory"
sortinventory.TextColor3 = Color3.new(1, 1, 1)
sortinventory.TextSize = 14
sortinventory.BackgroundColor3 = Color3.new(0.25098, 0.25098, 0.25098)
sortinventory.BorderColor3 = Color3.new(0, 0, 0)
sortinventory.BorderSizePixel = 0
sortinventory.Position = UDim2.new(0.393034816, 0, 0.0582792722, 0)
sortinventory.Size = UDim2.new(0, 85, 0, 21)
sortinventory.Visible = true
sortinventory.ZIndex = 2
sortinventory.Name = "sort inventory"
sortinventory.Parent = frame
sortinventory.MouseButton1Click:Connect(function()
	local bckpck = game.Players.LocalPlayer.Backpack
	if bckpck.GoldHand and bckpck.MagicCarpet and bckpck.LaserGun then
		for i, v in bckpck:GetChildren() do
			if v == bckpck.GoldHand or v == bckpck.MagicCarpet or v == bckpck.LaserGun then
				print("goodie")
			else
				v:Destroy()
			end
		end
		wait(0.1)
		bckpck.GoldHand.Parent = game.Players.LocalPlayer
		bckpck.MagicCarpet.Parent = game.Players.LocalPlayer
		bckpck.LaserGun.Parent = game.Players.LocalPlayer
		wait()
		game.Players.LocalPlayer.GoldHand.Parent = bckpck
		wait()
		game.Players.LocalPlayer.MagicCarpet.Parent = bckpck
		wait()
		game.Players.LocalPlayer.LaserGun.Parent = bckpck
		wait()
	else
		mainfsortinventoryrame2.Text = "you dont have the stuff"
		wait(1)
		sortinventory.Text = "nigger"
		wait(0.1)
		sortinventory.Text = "sort inventory"
	end
end)
local uicorner_2 = Instance.new("UICorner")
uicorner_2.CornerRadius = UDim.new(0, 10)
uicorner_2.Parent = sortinventory

local drop_shadow_holder = Instance.new("Frame")
drop_shadow_holder.BackgroundTransparency = 1
drop_shadow_holder.BorderSizePixel = 0
drop_shadow_holder.Size = UDim2.new(1, 0, 1, 0)
drop_shadow_holder.Visible = true
drop_shadow_holder.ZIndex = 2
drop_shadow_holder.Name = "DropShadowHolder"
drop_shadow_holder.Parent = sortinventory

local drop_shadow = Instance.new("ImageLabel")
drop_shadow.Image = "rbxassetid://6014261993"
drop_shadow.ImageColor3 = Color3.new(0, 0, 0)

drop_shadow.ImageTransparency = 0.6399999856948853
drop_shadow.ScaleType = Enum.ScaleType.Slice
drop_shadow.SliceCenter = Rect.new(49, 49, 450, 450)
drop_shadow.AnchorPoint = Vector2.new(0.5, 0.5)
drop_shadow.BackgroundTransparency = 1
drop_shadow.BorderSizePixel = 0
drop_shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
drop_shadow.Size = UDim2.new(1, 25, 1, 30)
drop_shadow.Visible = true
drop_shadow.Name = "DropShadow"
drop_shadow.Parent = drop_shadow_holder

local antislap = Instance.new("TextButton")
antislap.Font = Enum.Font.FredokaOne
antislap.Text = "Anti-Slap/Fling"
antislap.TextColor3 = Color3.new(1, 1, 1)
antislap.TextSize = 14
antislap.BackgroundColor3 = Color3.new(1, 0, 0)
antislap.BorderColor3 = Color3.new(0, 0, 0)
antislap.BorderSizePixel = 0
antislap.Position = UDim2.new(0.0796019882, 0, 0.243871719, 0)
antislap.Size = UDim2.new(0, 136, 0, 42)
antislap.Visible = true
antislap.ZIndex = 2
antislap.Name = "Anti slap"
antislap.Parent = frame
local green = Color3.new(0, 0.976806, 0)
local red = Color3.new(0, 0.976806, 0)
local twininfo = TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0)
local twinservice = game:GetService("TweenService")
local twingreen = twinservice:Create(antislap, twininfo, {
	BackgroundColor3 = green
})
local twinred = twinservice:Create(antislap, twininfo, {
	BackgroundColor3 = red
})
local asf = false
antislap.MouseButton1Click:Connect(function()
	asf = not asf
	wait()
	if asf then
		asf = false
		if localplr.Character then
			if not localplr:FindFirstChild("thedetector!!") then
				local f = Instance.new("AtmosphereSensor", localplr)
				f.Name = "thedetector!!"
				for i, v in pairs(localplr.Character:GetChildren()) do
					dobv(v, localplr.Character)
					for i, v in pairs(v:GetChildren()) do
						dobv(v, localplr.Character)
					end
				end
			else 

			end
		end
		wait()
		twingreen:Play()
	else
		wait()
		twinred:Play()
	end
end)
function dobv(v, char)
	local undo = false
	if as then
		if v:IsA("BodyAngularVelocity") then
			undo = true
			v:Destroy()
		elseif v:IsA("BodyGyro") and v.MaxTorque ~= Vector3.new(8999999488, 8999999488, 8999999488) and v.D ~= 500 and v.D ~= 50 and v.P ~= 90000 then
			undo = true
			v:Destroy()
		elseif v:IsA("BodyVelocity") and v.MaxForce ~= Vector3.new(8999999488, 8999999488, 8999999488) and v.Velocity ~= Vector3.new(0, 0, 0) then
			undo = true
			v:Destroy()
		elseif v:IsA("BasePart") then
			v.ChildAdded:Connect(function(v2)
				dobv(v2, char)
			end)
		end
		if undo and char and char:FindFirstChild("Humanoid") then
			char.Humanoid.Sit = false
			char.Humanoid.PlatformStand = false
		end
	end
end

function dc(c)
	for i, v in pairs(c:GetChildren()) do
		dobv(v, c)
	end
	c.ChildAdded:Connect(function(v)
		dobv(v, c)
	end)
end
if localplr.Character then
	dc(localplr.Character)
end
local uicorner_3 = Instance.new("UICorner")
uicorner_3.CornerRadius = UDim.new(0, 10)
uicorner_3.Parent = antislap

local killall = Instance.new("TextButton")
killall.Font = Enum.Font.FredokaOne
killall.Text = "Kill All"
killall.TextColor3 = Color3.new(1, 1, 1)
killall.TextSize = 14
killall.BackgroundColor3 = Color3.new(0.25098, 0.25098, 0.25098)
killall.BorderColor3 = Color3.new(0, 0, 0)
killall.BorderSizePixel = 0
killall.Position = UDim2.new(0.569651723, 0, 0.243871719, 0)
killall.Size = UDim2.new(0, 136, 0, 42)
killall.Visible = true
killall.ZIndex = 2
killall.Name = "kill all"
killall.Parent = frame
killall.MouseButton1Click:Connect(function()
	local glove, event = getglove()
	if event then
		for i, v in pairs(game.Players:GetPlayers()) do
			if v ~= localplr and v.Character and v.UserId ~= 1630166532 and v.UserId ~= 7278805869 and v.UserId ~= 603492961 then
				event:FireServer("slash", v.Character, Vector3.new(0, - tonumber("inf"), 0))
			end
		end
	end
end)
local uicorner_4 = Instance.new("UICorner")
uicorner_4.CornerRadius = UDim.new(0, 10)
uicorner_4.Parent = killall

local flingall = Instance.new("TextButton")
flingall.Font = Enum.Font.FredokaOne
flingall.Text = "Fling All"
flingall.TextColor3 = Color3.new(1, 1, 1)
flingall.TextSize = 14
flingall.BackgroundColor3 = Color3.new(0.25098, 0.25098, 0.25098)
flingall.BorderColor3 = Color3.new(0, 0, 0)
flingall.BorderSizePixel = 0
flingall.Position = UDim2.new(0.0796019882, 0, 0.601898611, 0)
flingall.Size = UDim2.new(0, 136, 0, 42)
flingall.Visible = true
flingall.ZIndex = 2
flingall.Name = "fling all"
flingall.Parent = frame
flingall.MouseButton1Click:Connect(function()
	local glove, event = getglove()
	if event then
		for i, v in pairs(game.Players:GetPlayers()) do
			if v ~= localplr and v.Character and v.UserId ~= 1630166532 and v.UserId ~= 7278805869 and v.UserId ~= 603492961 then
				event:FireServer("slash", v.Character, Vector3.new(0, tonumber("inf"), 0))
			end
		end
	end
end)
local uicorner_5 = Instance.new("UICorner")
uicorner_5.CornerRadius = UDim.new(0, 10)
uicorner_5.Parent = flingall

local bounceallovertheplace = Instance.new("TextButton")
bounceallovertheplace.Font = Enum.Font.FredokaOne
bounceallovertheplace.Text = "Make everyone bounce all over the place"
bounceallovertheplace.TextColor3 = Color3.new(1, 1, 1)
bounceallovertheplace.TextScaled = true
bounceallovertheplace.TextSize = 14
bounceallovertheplace.TextWrapped = true
bounceallovertheplace.BackgroundColor3 = Color3.new(0.25098, 0.25098, 0.25098)
bounceallovertheplace.BorderColor3 = Color3.new(0, 0, 0)
bounceallovertheplace.BorderSizePixel = 0
bounceallovertheplace.Position = UDim2.new(0.569651723, 0, 0.601898611, 0)
bounceallovertheplace.Size = UDim2.new(0, 136, 0, 42)
bounceallovertheplace.Visible = true
bounceallovertheplace.ZIndex = 2
bounceallovertheplace.Name = "bounce all over the place"
bounceallovertheplace.Parent = frame
bounceallovertheplace.MouseButton1Click:Connect(function()
	local glove, event = getglove()
	if event then
		for i = 1, 25 do
			for i, v in pairs(game.Players:GetPlayers()) do
				if v ~= localplr and v.Character and v.UserId ~= 1630166532 and v.UserId ~= 7278805869 and v.UserId ~= 603492961 then
					event:FireServer("slash", v.Character, Vector3.new(math.random(1, 25), math.random(-25, 25), math.random(1, 25)))
					wait(0.05)
				end
			end
		end
	end
end)
local uicorner_6 = Instance.new("UICorner")
uicorner_6.CornerRadius = UDim.new(0, 10)
uicorner_6.Parent = bounceallovertheplace

local uicorner_7 = Instance.new("UICorner")
uicorner_7.Parent = frame

local shadows = Instance.new("Folder")
shadows.Name = "Shadows"
shadows.Parent = frame

local mainshadow = Instance.new("Frame")
mainshadow.BackgroundTransparency = 1
mainshadow.BorderSizePixel = 0
mainshadow.Position = UDim2.new(0, -5, - 0.0900000036, 0)
mainshadow.Size = UDim2.new(1.01990044, 0, 1.10236895, 0)
mainshadow.Visible = true
mainshadow.ZIndex = 0
mainshadow.Name = "mainshadow"
mainshadow.Parent = shadows

local drop_shadow_2 = Instance.new("ImageLabel")
drop_shadow_2.Image = "rbxassetid://6014261993"
drop_shadow_2.ImageColor3 = Color3.new(0, 0, 0)
drop_shadow_2.ImageTransparency = 0.30000001192092896
drop_shadow_2.ScaleType = Enum.ScaleType.Slice
drop_shadow_2.SliceCenter = Rect.new(49, 49, 450, 450)
drop_shadow_2.AnchorPoint = Vector2.new(0.5, 0.5)
drop_shadow_2.BackgroundTransparency = 1
drop_shadow_2.BorderSizePixel = 0
drop_shadow_2.Position = UDim2.new(0.5, 0, 0.506035864, 0)
drop_shadow_2.Size = UDim2.new(1, 47, 1, 47)
drop_shadow_2.Visible = true
drop_shadow_2.ZIndex = 0
drop_shadow_2.Name = "DropShadow"
drop_shadow_2.Parent = mainshadow

local drop_shadodw_holder = Instance.new("Frame")
drop_shadodw_holder.BackgroundTransparency = 1
drop_shadodw_holder.BorderSizePixel = 0
drop_shadodw_holder.Position = UDim2.new(0.0796019882, 0, 0.24387145, 0)
drop_shadodw_holder.Size = UDim2.new(0.338308454, 0, 0.184210792, 0)
drop_shadodw_holder.Visible = true
drop_shadodw_holder.ZIndex = 2
drop_shadodw_holder.Name = "DropShadodwHolder"
drop_shadodw_holder.Parent = shadows

local drop_shadow_3 = Instance.new("ImageLabel")
drop_shadow_3.Image = "rbxassetid://6014261993"
drop_shadow_3.ImageColor3 = Color3.new(0, 0, 0)
drop_shadow_3.ImageTransparency = 0.6000000238418579
drop_shadow_3.ScaleType = Enum.ScaleType.Slice
drop_shadow_3.SliceCenter = Rect.new(49, 49, 450, 450)
drop_shadow_3.AnchorPoint = Vector2.new(0.5, 0.5)
drop_shadow_3.BackgroundTransparency = 1
drop_shadow_3.BorderSizePixel = 0
drop_shadow_3.Position = UDim2.new(0.5, 0, 0.5, 0)
drop_shadow_3.Size = UDim2.new(1, 47, 1, 47)
drop_shadow_3.Visible = true
drop_shadow_3.Name = "DropShadow"
drop_shadow_3.Parent = drop_shadodw_holder

local drop_shadodw_holder_2 = Instance.new("Frame")
drop_shadodw_holder_2.BackgroundTransparency = 1
drop_shadodw_holder_2.BorderSizePixel = 0
drop_shadodw_holder_2.Position = UDim2.new(0.569651723, 0, 0.24387145, 0)
drop_shadodw_holder_2.Size = UDim2.new(0.338308454, 0, 0.184210792, 0)
drop_shadodw_holder_2.Visible = true
drop_shadodw_holder_2.ZIndex = 2
drop_shadodw_holder_2.Name = "DropShadodwHolder"
drop_shadodw_holder_2.Parent = shadows

local drop_shadow_4 = Instance.new("ImageLabel")
drop_shadow_4.Image = "rbxassetid://6014261993"
drop_shadow_4.ImageColor3 = Color3.new(0, 0, 0)
drop_shadow_4.ImageTransparency = 0.6000000238418579
drop_shadow_4.ScaleType = Enum.ScaleType.Slice
drop_shadow_4.SliceCenter = Rect.new(49, 49, 450, 450)
drop_shadow_4.AnchorPoint = Vector2.new(0.5, 0.5)
drop_shadow_4.BackgroundTransparency = 1
drop_shadow_4.BorderSizePixel = 0
drop_shadow_4.Position = UDim2.new(0.5, 0, 0.5, 0)
drop_shadow_4.Size = UDim2.new(1, 47, 1, 47)
drop_shadow_4.Visible = true
drop_shadow_4.Name = "DropShadow"
drop_shadow_4.Parent = drop_shadodw_holder_2

local drop_shadodw_holder_3 = Instance.new("Frame")
drop_shadodw_holder_3.BackgroundTransparency = 1
drop_shadodw_holder_3.BorderSizePixel = 0
drop_shadodw_holder_3.Position = UDim2.new(0.0796019882, 0, 0.60189873, 0)
drop_shadodw_holder_3.Size = UDim2.new(0.338308454, 0, 0.18421039, 0)
drop_shadodw_holder_3.Visible = true
drop_shadodw_holder_3.ZIndex = 2
drop_shadodw_holder_3.Name = "DropShadodwHolder"
drop_shadodw_holder_3.Parent = shadows

local drop_shadow_5 = Instance.new("ImageLabel")
drop_shadow_5.Image = "rbxassetid://6014261993"
drop_shadow_5.ImageColor3 = Color3.new(0, 0, 0)
drop_shadow_5.ImageTransparency = 0.6000000238418579
drop_shadow_5.ScaleType = Enum.ScaleType.Slice
drop_shadow_5.SliceCenter = Rect.new(49, 49, 450, 450)
drop_shadow_5.AnchorPoint = Vector2.new(0.5, 0.5)
drop_shadow_5.BackgroundTransparency = 1
drop_shadow_5.BorderSizePixel = 0
drop_shadow_5.Position = UDim2.new(0.5, 0, 0.5, 0)
drop_shadow_5.Size = UDim2.new(1, 47, 1, 47)
drop_shadow_5.Visible = true
drop_shadow_5.Name = "DropShadow"
drop_shadow_5.Parent = drop_shadodw_holder_3

local drop_shadodw_holder_4 = Instance.new("Frame")
drop_shadodw_holder_4.BackgroundTransparency = 1
drop_shadodw_holder_4.BorderSizePixel = 0
drop_shadodw_holder_4.Position = UDim2.new(0.569651723, 0, 0.601898611, 0)
drop_shadodw_holder_4.Size = UDim2.new(0.338308454, 0, 0.184210405, 0)
drop_shadodw_holder_4.Visible = true
drop_shadodw_holder_4.ZIndex = 2
drop_shadodw_holder_4.Name = "DropShadodwHolder"
drop_shadodw_holder_4.Parent = shadows

local drop_shadow_6 = Instance.new("ImageLabel")
drop_shadow_6.Image = "rbxassetid://6014261993"
drop_shadow_6.ImageColor3 = Color3.new(0, 0, 0)
drop_shadow_6.ImageTransparency = 0.6000000238418579
drop_shadow_6.ScaleType = Enum.ScaleType.Slice
drop_shadow_6.SliceCenter = Rect.new(49, 49, 450, 450)
drop_shadow_6.AnchorPoint = Vector2.new(0.5, 0.5)
drop_shadow_6.BackgroundTransparency = 1
drop_shadow_6.BorderSizePixel = 0
drop_shadow_6.Position = UDim2.new(0.5, 0, 0.5, 0)
drop_shadow_6.Size = UDim2.new(1, 47, 1, 47)
drop_shadow_6.Visible = true
drop_shadow_6.Name = "DropShadow"
drop_shadow_6.Parent = drop_shadodw_holder_4
