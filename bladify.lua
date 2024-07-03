local whitelist = {
    "exdiiiiiiii_i",
    "xyrrzxx",
    "gila_gamir"
}

local player = game.Players.LocalPlayer
local isInWhitelist = false

for i, username in ipairs(whitelist) do
    if player.Name == username then
        isInWhitelist = true
        break
    end
end

if not isInWhitelist then
    game.Players.LocalPlayer:Kick("NOT WHITELISTED !!!")
else
    local Library = loadstring(game:HttpGet("https://pastebin.com/raw/kpLzpNXc"))()
    local Window = Library:CreateWindow("Zeus.cc", Vector2.new(310, 310), Enum.KeyCode.P)

    local AimingTab = Window:CreateTab("Main")

    local testSection = AimingTab:CreateSector("Locks", "left")
  
    testSection:AddButton("Camlock", function(IhateGayPeople)
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Mouse = game.Players.LocalPlayer:GetMouse()
local CamlockState = false
local Prediction = 0.17496992
local HorizontalPrediction = 0.17
local VerticalPrediction = 0.19
local XPrediction = 0.020
local YPrediction = 0.3
local Smoothness = 0.482672-- Adjust this value for smoother or faster camera movement
local Locked = true
getgenv().Key = "q"

function FindNearestEnemy()
    local ClosestDistance, ClosestPlayer = math.huge, nil
    local CenterPosition =
        Vector2.new(
        game:GetService("GuiService"):GetScreenResolution().X / 2,
        game:GetService("GuiService"):GetScreenResolution().Y / 2
    )

    for _, Player in ipairs(game:GetService("Players"):GetPlayers()) do
        if Player ~= LocalPlayer then
            local Character = Player.Character
            if Character and Character:FindFirstChild("HumanoidRootPart") and Character.Humanoid.Health > 0 then
                local Position, IsVisibleOnViewport =
                    game:GetService("Workspace").CurrentCamera:WorldToViewportPoint(Character.HumanoidRootPart.Position)

                if IsVisibleOnViewport then
                    local Distance = (CenterPosition - Vector2.new(Position.X, Position.Y)).Magnitude
                    if Distance < ClosestDistance then
                        ClosestPlayer = Character.HumanoidRootPart
                        ClosestDistance = Distance
                    end
                end
            end
        end
    end

    return ClosestPlayer
end

local enemy = nil

-- Function to smoothly aim the camera at the nearest enemy's HumanoidRootPart with prediction values
RunService.Heartbeat:Connect(function()
    if CamlockState == true then
        if enemy then
            local camera = workspace.CurrentCamera
            local targetPosition = enemy.Position + enemy.Velocity * Prediction
            targetPosition = Vector3.new(targetPosition.X + XPrediction, targetPosition.Y + YPrediction, targetPosition.Z)
            
            -- Interpolate between the current camera position and the target position
            local currentPosition = camera.CFrame.Position
            local newPosition = currentPosition:Lerp(targetPosition, Smoothness)
            
            camera.CFrame = CFrame.new(newPosition, targetPosition)
        end
    end
end)

Mouse.KeyDown:Connect(function(k)	
    if k == getgenv().Key then	
            Locked = not Locked	
            if Locked then	
                enemy = FindNearestEnemy()
                CamlockState = true
             else	
                if enemy ~= nil then	
                    enemy = nil	
                    CamlockState = false
                end	
            end	
    end	
 end)

local BladLock = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Logo = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")

--Properties:

BladLock.Name = "White"
BladLock.Parent = game.CoreGui
BladLock.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = BladLock
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.133798108, 0, 0.20107238, 0)
Frame.Size = UDim2.new(0, 80, 0, 70)
Frame.Active = true
Frame.Draggable = true

local function TopContainer()
	Frame.Position = UDim2.new(0.5, -Frame.AbsoluteSize.X / 2, 0, -Frame.AbsoluteSize.Y / 2)
end

TopContainer()
Frame:GetPropertyChangedSignal("AbsoluteSize"):Connect(TopContainer)

UICorner.Parent = Frame

Logo.Name = "Logo"
Logo.Parent = Frame
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BackgroundTransparency = 5.000
Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0.326732665, 0, 0, 0)
Logo.Size = UDim2.new(0, 43, 0, 43)
Logo.Image = "rbxassetid://17620790232"
Logo.ImageTransparency = 0.200

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BackgroundTransparency = 5.000
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0792079195, 0, 0.18571429, 0)
TextButton.Size = UDim2.new(0, 80, 0, 44)
TextButton.Font = Enum.Font.SourceSansSemibold
TextButton.Text = "Toggle Zeus.cc"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
local state = true
TextButton.MouseButton1Click:Connect(
    function()
        state = not state
        if not state then
            TextButton.Text = "Zeus.cc ON"
            CamlockState = true
            enemy = FindNearestEnemy()
        else
            TextButton.Text = "Toggle Zeus.cc"
            CamlockState = false
            enemy = nil
        end
    end
      
)

UICorner_2.Parent = TextButton
    end)
  
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BladLockk/Uilib/main/Uilib"))()
end