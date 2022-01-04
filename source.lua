local mrcola = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local ui = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local title1 = Instance.new("TextLabel")
local amount = Instance.new("TextBox")
local UICorner_2 = Instance.new("UICorner")
local dupe = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local title2 = Instance.new("TextLabel")
local udupe = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local dcolas = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local ddupe = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local scolas = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local cspam = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local count = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local DropShadowHolder = Instance.new("Frame")
local DropShadow = Instance.new("ImageLabel")

mrcola.Name = "mrcola"
mrcola.Parent = game:GetService("CoreGui").RobloxGui

main.Name = "main"
main.Parent = mrcola
main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
main.BackgroundTransparency = 1.000
main.Position = UDim2.new(0.362917393, 0, 0.339682549, 0)
main.Size = UDim2.new(0, 312, 0, 265)
main.Active = true
main.Draggable = true

ui.Name = "ui"
ui.Parent = main
ui.AnchorPoint = Vector2.new(0.5, 0.5)
ui.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
ui.Position = UDim2.new(0.5, 0, 0.5, 0)
ui.Size = UDim2.new(1, 0, 1, 0)

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = ui

title1.Name = "title1"
title1.Parent = ui
title1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title1.BackgroundTransparency = 1.000
title1.Position = UDim2.new(0.423076928, 0, 0, 0)
title1.Size = UDim2.new(0, 19, 0, 25)
title1.Font = Enum.Font.Gotham
title1.Text = "Mr."
title1.TextColor3 = Color3.fromRGB(255, 255, 255)
title1.TextSize = 13.000

amount.Name = "amount"
amount.Parent = ui
amount.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
amount.BorderSizePixel = 0
amount.Position = UDim2.new(0.0189999994, 0, 0.0920000002, 0)
amount.Size = UDim2.new(0, 300, 0, 25)
amount.Font = Enum.Font.Gotham
amount.PlaceholderText = "Dupe Amount"
amount.Text = ""
amount.TextColor3 = Color3.fromRGB(255, 255, 255)
amount.TextSize = 13.000

UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = amount

dupe.Name = "dupe"
dupe.Parent = ui
dupe.BackgroundColor3 = Color3.fromRGB(93, 79, 66)
dupe.BorderSizePixel = 0
dupe.Position = UDim2.new(0.0189999994, 0, 0, 54)
dupe.Size = UDim2.new(0, 300, 0, 25)
dupe.Font = Enum.Font.Gotham
dupe.Text = "Dupe"
dupe.TextColor3 = Color3.fromRGB(255, 255, 255)
dupe.TextSize = 13.000
dupping = false
stopped = false
item = "BloxyCola"
dupe.MouseButton1Click:Connect(function()
	if dupe.Text ~= "Stop Dupe" then
		dupe.Text = "Stop Dupe"
		stopped = false
	else
		dupe.Text = "Dupe"
		stopped = true
		return
	end
	if dupping == false then
		dupping = true
		game:GetService("Workspace").Handle.Transparency = 1
		spawn(function()
			while dupping == true do
				wait(0.01)
				game:GetService("Workspace").Handle.CFrame = game.Players.LocalPlayer.Character.Head.CFrame
			end
		end)
		for i=1,tonumber(amount.Text) do
			if stopped ~= true then
				local hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
				local function equip()
					for _, v in ipairs(workspace:GetChildren()) do
						if game:GetService("Players").LocalPlayer.Character and v:IsA("BackpackItem") and v:FindFirstChild("Handle") then
							if v.Name == item then
								if v:FindFirstChild("owner") and v:FindFirstChild("owner").Value == game:GetService("Players").LocalPlayer.Name then
									hum:EquipTool(v)
								end
							end
						end
					end
				end
				local function drop()
					for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.Name == item then
								v.Parent = game:GetService("Players").LocalPlayer.Character
							end
						end
					end
					wait()
					for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
						if v:IsA("Tool") then
							if v.Name == item then
								v.Parent = workspace
							end
						end
					end
				end
				local function filter()
					for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.Name == item then
								if not v:FindFirstChild("owner") then
									local e = Instance.new("StringValue", v)
									e.Name = "owner"
									e.Value = game:GetService("Players").LocalPlayer.Name
								end
							end
						end
					end
				end
				filter()
				equip()
				drop()
				wait(0.4)
				equip()
				wait(0.25)
			else
				break
			end
		end
		wait(0.25)
		dupping = false
		stopped = true
		dupe.Text = "Dupe"
	end
end)

UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = dupe

title2.Name = "title2"
title2.Parent = ui
title2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title2.BackgroundTransparency = 1.000
title2.Position = UDim2.new(0.483974367, 0, 0, 0)
title2.Size = UDim2.new(0, 29, 0, 25)
title2.Font = Enum.Font.Gotham
title2.Text = "Cola"
title2.TextColor3 = Color3.fromRGB(93, 79, 66)
title2.TextSize = 13.000

udupe.Name = "udupe"
udupe.Parent = ui
udupe.BackgroundColor3 = Color3.fromRGB(93, 79, 66)
udupe.BorderSizePixel = 0
udupe.Position = UDim2.new(0.0189999994, 0, 0, 84)
udupe.Size = UDim2.new(0, 300, 0, 25)
udupe.Font = Enum.Font.Gotham
udupe.Text = "Self-Drop Dupe"
udupe.TextColor3 = Color3.fromRGB(255, 255, 255)
udupe.TextSize = 13.000
udupe.MouseButton1Click:Connect(function()
	if udupe.Text ~= "Stop Dupe" then
		udupe.Text = "Stop Dupe"
		stopped = false
	else
		udupe.Text = "Self-Drop Dupe"
		stopped = true
		return
	end
	if dupping == false then
		dupping = true
		game:GetService("Workspace").Handle.Transparency = 1
		spawn(function()
			while dupping == true do
				wait(0.01)
				game:GetService("Workspace").Handle.CFrame = game.Players.LocalPlayer.Character.Head.CFrame
			end
		end)
		local p = workspace.DPxxPzsK7N:Clone()
		local lastcf = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
		p.CFrame = workspace.DPxxPzsK7N.CFrame * CFrame.new(Vector3.new(0,50,0))
		p.Transparency = 1
		p.Parent = workspace
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = p.CFrame * CFrame.new(Vector3.new(200,20,200))
		wait(0.5)
		for i=1,tonumber(amount.Text) do
			if stopped ~= true then
				local hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
				local function drop()
					for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.Name == item then
								v.Parent = game:GetService("Players").LocalPlayer.Character
							end
						end
					end
					wait()
					for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
						if v:IsA("Tool") then
							if v.Name == item then
								v.Parent = workspace
							end
						end
					end
				end
				function equip()
					for _, v in ipairs(workspace:GetChildren()) do
						if game:GetService("Players").LocalPlayer.Character and v:IsA("BackpackItem") and v:FindFirstChild("Handle") then
							if v.Name == item then	
								hum:EquipTool(v)
							end
						end
					end
				end
				drop()
				wait(0.25)
			else
				break
			end
		end
		equip()
		p:Destroy()
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = lastcf
		wait(0.25)
		dupping = false
		stopped = true
		udupe.Text = "Self-Drop Dupe"
	end
end)

UICorner_4.CornerRadius = UDim.new(0, 4)
UICorner_4.Parent = udupe

ddupe.Name = "ddupe"
ddupe.Parent = ui
ddupe.BackgroundColor3 = Color3.fromRGB(93, 79, 66)
ddupe.BorderSizePixel = 0
ddupe.Position = UDim2.new(0.0189999994, 0, 0, 114)
ddupe.Size = UDim2.new(0, 300, 0, 25)
ddupe.Font = Enum.Font.Gotham
ddupe.Text = "Drop Dupe"
ddupe.TextColor3 = Color3.fromRGB(255, 255, 255)
ddupe.TextSize = 13.000
ddupe.MouseButton1Click:Connect(function()
	if ddupe.Text ~= "Stop Dupe" then
		ddupe.Text = "Stop Dupe"
		stopped = false
	else
		ddupe.Text = "Drop Dupe"
		stopped = true
		return
	end
	if dupping == false then
		dupping = true
		game:GetService("Workspace").Handle.Transparency = 1
		spawn(function()
			while dupping == true do
				wait(0.01)
				game:GetService("Workspace").Handle.CFrame = game.Players.LocalPlayer.Character.Head.CFrame
			end
		end)
		for i=1,tonumber(amount.Text) do
			if stopped ~= true then
				local hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
				local function drop()
					for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							if v.Name == item then
								v.Parent = game:GetService("Players").LocalPlayer.Character
							end
						end
					end
					wait()
					for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
						if v:IsA("Tool") then
							if v.Name == item then
								v.Parent = workspace
							end
						end
					end
				end
				function equip()
					for _, v in ipairs(workspace:GetChildren()) do
						if game:GetService("Players").LocalPlayer.Character and v:IsA("BackpackItem") and v:FindFirstChild("Handle") then
							if v.Name == item then	
								hum:EquipTool(v)
							end
						end
					end
				end
				drop()
				wait(0.25)
			else
				break
			end
		end
		wait(0.25)
		dupping = false
		stopped = true
		ddupe.Text = "Drop Dupe"
	end
end)

UICorner_6.CornerRadius = UDim.new(0, 4)
UICorner_6.Parent = ddupe


dcolas.Name = "dcolas"
dcolas.Parent = ui
dcolas.BackgroundColor3 = Color3.fromRGB(93, 79, 66)
dcolas.BorderSizePixel = 0
dcolas.Position = UDim2.new(0.0189999994, 0, 0, 144)
dcolas.Size = UDim2.new(0, 300, 0, 25)
dcolas.Font = Enum.Font.Gotham
dcolas.Text = "Drop Colas"
dcolas.TextColor3 = Color3.fromRGB(255, 255, 255)
dcolas.TextSize = 13.000
dcolas.MouseButton1Click:Connect(function()
	for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			if v.Name == item then
				v.Parent = game:GetService("Players").LocalPlayer.Character
			end
		end
	end
	wait()
	for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			if v.Name == item then
				v.Parent = workspace
			end
		end
	end
end)

UICorner_5.CornerRadius = UDim.new(0, 4)
UICorner_5.Parent = dcolas

scolas.Name = "scolas"
scolas.Parent = ui
scolas.BackgroundColor3 = Color3.fromRGB(93, 79, 66)
scolas.BorderSizePixel = 0
scolas.Position = UDim2.new(0.0189999994, 0, 0, 174)
scolas.Size = UDim2.new(0, 300, 0, 25)
scolas.Font = Enum.Font.Gotham
scolas.Text = "Steal Colas"
scolas.TextColor3 = Color3.fromRGB(255, 255, 255)
scolas.TextSize = 13.000
scolas.MouseButton1Click:Connect(function()
	local hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
	for _, v in ipairs(workspace:GetChildren()) do
		if game:GetService("Players").LocalPlayer.Character and v:IsA("BackpackItem") and v:FindFirstChild("Handle") then
			if v.Name == item then
				hum:EquipTool(v)
			end
		end
	end
end)

UICorner_7.CornerRadius = UDim.new(0, 4)
UICorner_7.Parent = scolas

cspam.Name = "cspam"
cspam.Parent = ui
cspam.BackgroundColor3 = Color3.fromRGB(93, 79, 66)
cspam.BorderSizePixel = 0
cspam.Position = UDim2.new(0.0189999994, 0, 0, 204)
cspam.Size = UDim2.new(0, 300, 0, 25)
cspam.Font = Enum.Font.Gotham
cspam.Text = "Colas Spam"
cspam.TextColor3 = Color3.fromRGB(255, 255, 255)
cspam.TextSize = 13.000
cspam.MouseButton1Click:Connect(function()
	local hum = game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid")
	for _, v in ipairs(workspace:GetChildren()) do
		if game:GetService("Players").LocalPlayer.Character and v:IsA("BackpackItem") and v:FindFirstChild("Handle") then
			if v.Name == item then
				hum:EquipTool(v)
			end
		end
	end
	wait()
	for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		if v:IsA("Tool") then
			if v.Name == item then
				v.Parent = game:GetService("Players").LocalPlayer.Character
			end
		end
	end
	wait()
	for _,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			if v.Name == item then
				for i,c in pairs(v:GetDescendants()) do
					if c:IsA("SpecialMesh") then
						c:Destroy()
					end
				end
			end
		end
	end
	wait()
	local c = game:GetService("Players").LocalPlayer.Character

	for _,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
		if v:IsA("Tool") then
			if v.Name == item then
				spawn(function()
					h = game:GetService("RunService").RenderStepped:Connect(function()
						if v:FindFirstChild("Handle") then
							if game:GetService("Players").LocalPlayer.Character then
								v.Handle.CanCollide = true
							else
								h:Disconnect()
							end
						else
							h:Disconnect()
						end
					end)
				end)
			end
		end
	end
	
	c["Right Arm"]:Destroy()
end)

UICorner_8.CornerRadius = UDim.new(0, 4)
UICorner_8.Parent = cspam

count.Name = "count"
count.Parent = ui
count.BackgroundColor3 = Color3.fromRGB(93, 79, 66)
count.BorderSizePixel = 0
count.Position = UDim2.new(0.0189999994, 0, 0, 234)
count.Size = UDim2.new(0, 300, 0, 25)
count.Font = Enum.Font.Gotham
count.Text = "Count Colas"
count.TextColor3 = Color3.fromRGB(255, 255, 255)
count.TextSize = 13.000
count.MouseButton1Click:Connect(function()
	local c = 0
	game:GetService("Players").LocalPlayer.Character:FindFirstChildWhichIsA("Humanoid"):UnequipTools()
	for _,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
		if v.Name == item then
			c = c + 1
		end
	end
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack({[1] = tostring(c).." Colas",[2] = "All"}))
end)

UICorner_9.CornerRadius = UDim.new(0, 4)
UICorner_9.Parent = count

DropShadowHolder.Name = "DropShadowHolder"
DropShadowHolder.Parent = main
DropShadowHolder.BackgroundTransparency = 1.000
DropShadowHolder.BorderSizePixel = 0
DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
DropShadowHolder.ZIndex = 0

DropShadow.Name = "DropShadow"
DropShadow.Parent = DropShadowHolder
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1.000
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow.Size = UDim2.new(1, 47, 1, 47)
DropShadow.ZIndex = 0
DropShadow.Image = "rbxassetid://6014261993"
DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.ImageTransparency = 0.500
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
