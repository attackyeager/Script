local Flymguiv2 = Instance.new("ScreenGui")
local Drag = Instance.new("Frame")
local FlyFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Speed = Instance.new("TextBox")
local Fly = Instance.new("TextButton")
local Speeed = Instance.new("TextLabel")
local Stat = Instance.new("TextLabel")
local Stat2 = Instance.new("TextLabel")
local Unfly = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local Minimize = Instance.new("TextButton")
local Flyon = Instance.new("Frame")
local W = Instance.new("TextButton")
local S = Instance.new("TextButton")

-- Colores tema oscuro/púrpura
local BG_COLOR = Color3.fromRGB(10, 10, 10)        -- Fondo negro
local ACCENT_COLOR = Color3.fromRGB(138, 43, 226)  -- Púrpura violeta
local BUTTON_COLOR = Color3.fromRGB(138, 43, 226)  -- Botones púrpura
local TEXT_COLOR = Color3.fromRGB(255, 255, 255)   -- Texto blanco
local ACTIVE_COLOR = Color3.fromRGB(0, 255, 127)   -- Verde para activo

--Properties:
Flymguiv2.Name = "Flym gui v2"
Flymguiv2.Parent = game.CoreGui
Flymguiv2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Drag.Name = "Drag"
Drag.Parent = Flymguiv2
Drag.Active = true
Drag.BackgroundColor3 = BG_COLOR
Drag.BorderSizePixel = 0
Drag.Draggable = true
Drag.Position = UDim2.new(0.482438415, 0, 0.454874992, 0)
Drag.Size = UDim2.new(0, 260, 0, 30)

-- Corner redondeado para Drag
local DragCorner = Instance.new("UICorner")
DragCorner.CornerRadius = UDim.new(0, 15)
DragCorner.Parent = Drag

-- Borde púrpura para Drag
local DragStroke = Instance.new("UIStroke")
DragStroke.Color = ACCENT_COLOR
DragStroke.Thickness = 3
DragStroke.Parent = Drag

FlyFrame.Name = "FlyFrame"
FlyFrame.Parent = Drag
FlyFrame.BackgroundColor3 = BG_COLOR
FlyFrame.BorderSizePixel = 0
FlyFrame.Draggable = true
FlyFrame.Position = UDim2.new(0, 0, 1, 0)
FlyFrame.Size = UDim2.new(0, 260, 0, 180)

-- Corner redondeado para FlyFrame
local FlyFrameCorner = Instance.new("UICorner")
FlyFrameCorner.CornerRadius = UDim.new(0, 15)
FlyFrameCorner.Parent = FlyFrame

-- Borde púrpura para FlyFrame
local FlyFrameStroke = Instance.new("UIStroke")
FlyFrameStroke.Color = ACCENT_COLOR
FlyFrameStroke.Thickness = 3
FlyFrameStroke.Parent = FlyFrame

Title.Name = "Title"
Title.Parent = FlyFrame
Title.BackgroundColor3 = ACCENT_COLOR
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.05, 0, 0.03, 0)
Title.Size = UDim2.new(0, 234, 0, 28)
Title.Font = Enum.Font.GothamBold
Title.Text = "🍑 Peggi Carter 🍑"
Title.TextColor3 = TEXT_COLOR
Title.TextScaled = true
Title.TextSize = 16

-- Corner redondeado para título
local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 10)
TitleCorner.Parent = Title

Speeed.Name = "Speeed"
Speeed.Parent = FlyFrame
Speeed.BackgroundColor3 = ACCENT_COLOR
Speeed.BorderSizePixel = 0
Speeed.Position = UDim2.new(0.05, 0, 0.22, 0)
Speeed.Size = UDim2.new(0, 100, 0, 35)
Speeed.Font = Enum.Font.GothamBold
Speeed.Text = "Speed:"
Speeed.TextColor3 = TEXT_COLOR
Speeed.TextScaled = true

-- Corner redondeado
local SpeeedCorner = Instance.new("UICorner")
SpeeedCorner.CornerRadius = UDim.new(0, 10)
SpeeedCorner.Parent = Speeed

Speed.Name = "Speed"
Speed.Parent = FlyFrame
Speed.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Speed.BorderColor3 = ACCENT_COLOR
Speed.BorderSizePixel = 2
Speed.Position = UDim2.new(0.45, 0, 0.22, 0)
Speed.Size = UDim2.new(0, 130, 0, 35)
Speed.Font = Enum.Font.GothamBold
Speed.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
Speed.PlaceholderText = "99"
Speed.Text = "99"
Speed.TextColor3 = TEXT_COLOR
Speed.TextScaled = true

-- Corner redondeado
local SpeedCorner = Instance.new("UICorner")
SpeedCorner.CornerRadius = UDim.new(0, 10)
SpeedCorner.Parent = Speed

Stat.Name = "Stat"
Stat.Parent = FlyFrame
Stat.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Stat.BorderSizePixel = 0
Stat.Position = UDim2.new(0.05, 0, 0.45, 0)
Stat.Size = UDim2.new(0, 120, 0, 25)
Stat.Font = Enum.Font.Gotham
Stat.Text = "Status: "
Stat.TextColor3 = TEXT_COLOR
Stat.TextScaled = true

-- Corner redondeado
local StatCorner = Instance.new("UICorner")
StatCorner.CornerRadius = UDim.new(0, 6)
StatCorner.Parent = Stat

Stat2.Name = "Stat2"
Stat2.Parent = FlyFrame
Stat2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Stat2.BorderSizePixel = 0
Stat2.Position = UDim2.new(0.52, 0, 0.45, 0)
Stat2.Size = UDim2.new(0, 100, 0, 25)
Stat2.Font = Enum.Font.GothamBold
Stat2.Text = "OFF"
Stat2.TextColor3 = Color3.fromRGB(255, 50, 50)
Stat2.TextScaled = true

-- Corner redondeado
local Stat2Corner = Instance.new("UICorner")
Stat2Corner.CornerRadius = UDim.new(0, 6)
Stat2Corner.Parent = Stat2

Fly.Name = "Fly"
Fly.Parent = FlyFrame
Fly.BackgroundColor3 = BUTTON_COLOR
Fly.BorderSizePixel = 0
Fly.Position = UDim2.new(0.05, 0, 0.68, 0)
Fly.Size = UDim2.new(0, 110, 0, 40)
Fly.Font = Enum.Font.GothamBold
Fly.Text = "desactivado"
Fly.TextColor3 = TEXT_COLOR
Fly.TextScaled = true

-- Corner redondeado
local FlyCorner = Instance.new("UICorner")
FlyCorner.CornerRadius = UDim.new(0, 12)
FlyCorner.Parent = Fly

Unfly.Name = "Unfly"
Unfly.Parent = FlyFrame
Unfly.BackgroundColor3 = BUTTON_COLOR
Unfly.BorderSizePixel = 0
Unfly.Position = UDim2.new(0.05, 0, 0.68, 0)
Unfly.Size = UDim2.new(0, 110, 0, 40)
Unfly.Visible = false
Unfly.Font = Enum.Font.GothamBold
Unfly.Text = "activado"
Unfly.TextColor3 = TEXT_COLOR
Unfly.TextScaled = true

-- Corner redondeado
local UnflyCorner = Instance.new("UICorner")
UnflyCorner.CornerRadius = UDim.new(0, 12)
UnflyCorner.Parent = Unfly

-- Botón de velocidad manual (derecha)
local SpeedInput = Instance.new("TextButton")
SpeedInput.Name = "SpeedInput"
SpeedInput.Parent = FlyFrame
SpeedInput.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
SpeedInput.BorderSizePixel = 0
SpeedInput.Position = UDim2.new(0.52, 0, 0.68, 0)
SpeedInput.Size = UDim2.new(0, 110, 0, 40)
SpeedInput.Font = Enum.Font.Gotham
SpeedInput.Text = "Escribe el número y presiona Enter"
SpeedInput.TextColor3 = Color3.fromRGB(200, 200, 200)
SpeedInput.TextScaled = true
SpeedInput.TextWrapped = true

-- Corner redondeado
local SpeedInputCorner = Instance.new("UICorner")
SpeedInputCorner.CornerRadius = UDim.new(0, 12)
SpeedInputCorner.Parent = SpeedInput

Close.Name = "Close"
Close.Parent = Drag
Close.BackgroundColor3 = BUTTON_COLOR
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.88, 0, 0.1, 0)
Close.Size = UDim2.new(0, 25, 0, 25)
Close.Font = Enum.Font.GothamBold
Close.Text = "×"
Close.TextColor3 = TEXT_COLOR
Close.TextScaled = true

-- Corner redondeado
local CloseCorner = Instance.new("UICorner")
CloseCorner.CornerRadius = UDim.new(0, 8)
CloseCorner.Parent = Close

Close.MouseButton1Click:Connect(function()
	Flymguiv2:Destroy()
end)

Minimize.Name = "Minimize"
Minimize.Parent = Drag
Minimize.BackgroundColor3 = BUTTON_COLOR
Minimize.BorderSizePixel = 0
Minimize.Position = UDim2.new(0.77, 0, 0.1, 0)
Minimize.Size = UDim2.new(0, 25, 0, 25)
Minimize.Font = Enum.Font.GothamBold
Minimize.Text = "-"
Minimize.TextColor3 = TEXT_COLOR
Minimize.TextScaled = true

-- Corner redondeado
local MinimizeCorner = Instance.new("UICorner")
MinimizeCorner.CornerRadius = UDim.new(0, 8)
MinimizeCorner.Parent = Minimize

function Mini()
	if Minimize.Text == "-" then
		Minimize.Text = "+"
		FlyFrame.Visible = false
	elseif Minimize.Text == "+" then
		Minimize.Text = "-"
		FlyFrame.Visible = true
	end
end
Minimize.MouseButton1Click:Connect(Mini)

-- Label de título en la barra
local HeaderTitle = Instance.new("TextLabel")
HeaderTitle.Name = "HeaderTitle"
HeaderTitle.Parent = Drag
HeaderTitle.BackgroundTransparency = 1
HeaderTitle.Position = UDim2.new(0.35, 0, 0.1, 0)
HeaderTitle.Size = UDim2.new(0, 100, 0, 25)
HeaderTitle.Font = Enum.Font.GothamBold
HeaderTitle.Text = "VFly"
HeaderTitle.TextColor3 = TEXT_COLOR
HeaderTitle.TextScaled = true

Flyon.Name = "Flyon"
Flyon.Parent = Flymguiv2
Flyon.BackgroundColor3 = BG_COLOR
Flyon.BorderSizePixel = 0
Flyon.Position = UDim2.new(0.1, 0, 0.55, 0)
Flyon.Size = UDim2.new(0, 120, 0, 150)
Flyon.Visible = false
Flyon.Active = true
Flyon.Draggable = true

-- Corner redondeado
local FlyonCorner = Instance.new("UICorner")
FlyonCorner.CornerRadius = UDim.new(0, 15)
FlyonCorner.Parent = Flyon

-- Borde púrpura
local FlyonStroke = Instance.new("UIStroke")
FlyonStroke.Color = ACCENT_COLOR
FlyonStroke.Thickness = 3
FlyonStroke.Parent = Flyon

W.Name = "W"
W.Parent = Flyon
W.BackgroundColor3 = BUTTON_COLOR
W.BorderSizePixel = 0
W.Position = UDim2.new(0.15, 0, 0.05, 0)
W.Size = UDim2.new(0.7, 0, 0.4, 0)
W.Font = Enum.Font.GothamBold
W.Text = "+"
W.TextColor3 = TEXT_COLOR
W.TextScaled = true

-- Corner redondeado
local WCorner = Instance.new("UICorner")
WCorner.CornerRadius = UDim.new(0, 12)
WCorner.Parent = W

S.Name = "S"
S.Parent = Flyon
S.BackgroundColor3 = BUTTON_COLOR
S.BorderSizePixel = 0
S.Position = UDim2.new(0.15, 0, 0.55, 0)
S.Size = UDim2.new(0.7, 0, 0.4, 0)
S.Font = Enum.Font.GothamBold
S.Text = "-"
S.TextColor3 = TEXT_COLOR
S.TextScaled = true

-- Corner redondeado
local SCorner = Instance.new("UICorner")
SCorner.CornerRadius = UDim.new(0, 12)
SCorner.Parent = S

-- Funcionalidad Fly
Fly.MouseButton1Click:Connect(function()
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	Fly.Visible = false
	Stat2.Text = "ON"
	Stat2.TextColor3 = ACTIVE_COLOR
	Unfly.Visible = true
	Flyon.Visible = true
	local BV = Instance.new("BodyVelocity", HumanoidRP)
	local BG = Instance.new("BodyGyro", HumanoidRP)
	BV.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
	game:GetService('RunService').RenderStepped:connect(function()
		BG.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
		BG.D = 5000
		BG.P = 100000
		BG.CFrame = game.Workspace.CurrentCamera.CFrame
	end)
end)

Unfly.MouseButton1Click:Connect(function()
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	Fly.Visible = true
	Stat2.Text = "OFF"
	Stat2.TextColor3 = Color3.fromRGB(255, 50, 50)
	wait()
	Unfly.Visible = false
	Flyon.Visible = false
	HumanoidRP:FindFirstChildOfClass("BodyVelocity"):Destroy()
	HumanoidRP:FindFirstChildOfClass("BodyGyro"):Destroy()
end)

-- Controles W/S
W.MouseButton1Click:Connect(function()
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	for i = 1, 10 do
		HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * tonumber(Speed.Text)
		wait(.1)
	end
	HumanoidRP.BodyVelocity.Velocity = Vector3.new(0, 0, 0)
end)

S.MouseButton1Click:Connect(function()
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	for i = 1, 10 do
		HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -tonumber(Speed.Text)
		wait(.1)
	end
	HumanoidRP.BodyVelocity.Velocity = Vector3.new(0, 0, 0)
end)

W.TouchLongPress:Connect(function()
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	for i = 1, 10 do
		HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * tonumber(Speed.Text)
		wait(.1)
	end
	HumanoidRP.BodyVelocity.Velocity = Vector3.new(0, 0, 0)
end)

S.TouchLongPress:Connect(function()
	local HumanoidRP = game.Players.LocalPlayer.Character.HumanoidRootPart
	for i = 1, 10 do
		HumanoidRP.BodyVelocity.Velocity = game.Workspace.CurrentCamera.CFrame.LookVector * -tonumber(Speed.Text)
		wait(.1)
	end
	HumanoidRP.BodyVelocity.Velocity = Vector3.new(0, 0, 0)
end)
