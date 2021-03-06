local loader = {
	GUI = Instance.new("ScreenGui"),
	BG = Instance.new("Frame"),
	BGCorner = Instance.new("UICorner"),
	BGPadding = Instance.new("UIPadding"),
	Logo = Instance.new("Frame"),
	Ori = Instance.new("ImageLabel"),
	OriHubLogoBG = Instance.new("Frame"),
	LayerTop = Instance.new("ImageLabel"),
	LayerBottom = Instance.new("ImageLabel"),
	Game = Instance.new("TextLabel"),
	UICornerGame = Instance.new("UICorner"),
}

loader.GUI.Parent = game:GetService("CoreGui")
loader.GUI.Name = "_ORI_HUB_LOADER"

loader.BG.Name = "BG"
loader.BG.Parent = loader.GUI
loader.BG.AnchorPoint = Vector2.new(0.5, 0.5)
loader.BG.BackgroundColor3 = Color3.fromRGB(48, 48, 48)
loader.BG.Position = UDim2.new(0.5, 0, 0.5, 0)
loader.BG.Size = UDim2.new(0, 263, 0, 84)
loader.BG.BorderSizePixel = 0
loader.BG.Visible = false

loader.BGCorner.CornerRadius = UDim.new(0, 5)
loader.BGCorner.Name = "BGCorner"
loader.BGCorner.Parent = loader.BG

loader.BGPadding.Name = "BGPadding"
loader.BGPadding.Parent = loader.BG
loader.BGPadding.PaddingBottom = UDim.new(0, 5)
loader.BGPadding.PaddingLeft = UDim.new(0, 5)
loader.BGPadding.PaddingRight = UDim.new(0, 5)
loader.BGPadding.PaddingTop = UDim.new(0, 5)

loader.Logo.Name = "Logo"
loader.Logo.Parent = loader.BG
loader.Logo.AnchorPoint = Vector2.new(0.5, 0)
loader.Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
loader.Logo.BackgroundTransparency = 1.000
loader.Logo.Position = UDim2.new(0.5, 0, 0, 0)
loader.Logo.Size = UDim2.new(0, 130, -0.021417249, 50)

loader.Ori.Name = "Ori"
loader.Ori.Parent = loader.Logo
loader.Ori.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
loader.Ori.BackgroundTransparency = 1.000
loader.Ori.Size = UDim2.new(0, 76, 0, 43)
loader.Ori.Image = "http://www.roblox.com/asset/?id=6361009947"

loader.OriHubLogoBG.Name = "OriHubLogoBG"
loader.OriHubLogoBG.Parent = loader.Logo
loader.OriHubLogoBG.AnchorPoint = Vector2.new(1, 0.5)
loader.OriHubLogoBG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
loader.OriHubLogoBG.BackgroundTransparency = 1.000
loader.OriHubLogoBG.Position = UDim2.new(1, 0, 0.5, 0)
loader.OriHubLogoBG.Size = UDim2.new(1, 0, 0.800000012, 0)
loader.OriHubLogoBG.SizeConstraint = Enum.SizeConstraint.RelativeYY

loader.LayerTop.Name = "LayerTop"
loader.LayerTop.Parent = loader.OriHubLogoBG
loader.LayerTop.AnchorPoint = Vector2.new(0.5, 0)
loader.LayerTop.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
loader.LayerTop.BackgroundTransparency = 1.000
loader.LayerTop.Size = UDim2.new(0, 30, 0, 30)
loader.LayerTop.ZIndex = 2
loader.LayerTop.Image = "rbxassetid://6361961610"

loader.LayerBottom.Name = "LayerBottom"
loader.LayerBottom.Parent = loader.OriHubLogoBG
loader.LayerBottom.AnchorPoint = Vector2.new(0.5, 0)
loader.LayerBottom.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
loader.LayerBottom.BackgroundTransparency = 1.000
loader.LayerBottom.Size = UDim2.new(0, 30, 0, 30)
loader.LayerBottom.Image = "rbxassetid://6361961610"

loader.Game.Name = "Game"
loader.Game.Parent = loader.BG
loader.Game.AnchorPoint = Vector2.new(0.5, 0)
loader.Game.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
loader.Game.BorderColor3 = Color3.fromRGB(255, 255, 255)
loader.Game.Position = UDim2.new(0.5, 0, 0.681827307, 0)
loader.Game.Size = UDim2.new(1, 0, 0, 20)
loader.Game.Font = Enum.Font.Arial
loader.Game.Text = "Game Detected: Prison Life"
loader.Game.TextColor3 = Color3.fromRGB(255, 255, 255)
loader.Game.TextSize = 14.000
loader.Game.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)

loader.UICornerGame.CornerRadius = UDim.new(0, 2)
loader.UICornerGame.Name = "UICornerGame"
loader.UICornerGame.Parent = loader.Game

	-- Functionality
do -- Create tweens
	local ts = game:GetService("TweenService")
	
	local animInfo = TweenInfo.new(0.3, Enum.EasingStyle.Sine)
	local flashInfo = TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 3, true)
	
	loader.bgFadeIn = ts:Create(loader.BG, animInfo, {BackgroundTransparency = 0})
	loader.bgFadeOut = ts:Create(loader.BG, animInfo, {BackgroundTransparency = 1})
	
	loader.gameFadeIn = ts:Create(loader.Game, animInfo, {BackgroundTransparency = 0, TextTransparency = 0})
	loader.gameFadeOut = ts:Create(loader.Game, animInfo, {BackgroundTransparency = 1, TextTransparency = 1})
	loader.gameUndetected = ts:Create(loader.Game, flashInfo, {BackgroundColor3 = Color3.fromRGB(200, 48, 48)} )
	loader.gameDetected = ts:Create(loader.Game, flashInfo, {BackgroundColor3 = Color3.fromRGB(48, 200, 48)} )
	
	loader.oriFadeIn = ts:Create(loader.Ori, animInfo, {ImageTransparency = 0})
	loader.oriFadeOut = ts:Create(loader.Ori, animInfo, {ImageTransparency = 1})
	
	loader.topLayerFadeIn = ts:Create(loader.LayerTop, animInfo, {ImageTransparency = 0,
		Position = UDim2.new(0.5, 0, 0, 0),
	})
	
	loader.topLayerFadeOut = ts:Create(loader.LayerTop, animInfo, {ImageTransparency = 1,
		Position = UDim2.new(0.5, 0, 0, -80),
	})
	
	loader.bottomLayerFadeIn = ts:Create(loader.LayerBottom, animInfo, {ImageTransparency = 0,
		Position = UDim2.new(0.5, 0, 0, 6),
	})
	loader.bottomLayerFadeOut = ts:Create(loader.LayerBottom, animInfo, {ImageTransparency = 1,
		Position = UDim2.new(0.5, 0, 0, -40),
	})
end

function loader:show()
	self.LayerBottom.ImageTransparency = 1
	self.Game.TextTransparency = 1
	self.LayerTop.ImageTransparency = 1
	self.Ori.ImageTransparency = 1
	self.Game.BackgroundTransparency = 1
	self.LayerTop.Position = UDim2.new(0.5, 0, 0, -80)
	self.LayerBottom.Position = UDim2.new(0.5, 0, 0, -40)
	self.BG.BackgroundTransparency = 1
	
	self.oriFadeIn:Play()
	self.gameFadeIn:Play()
	self.bgFadeIn:Play()

	self.bottomLayerFadeIn:Play()
	self.topLayerFadeIn:Play()
end

function loader:hide()
	self.LayerBottom.ImageTransparency = 0
	self.Game.TextTransparency = 0
	self.LayerTop.ImageTransparency = 0
	self.Ori.ImageTransparency = 0
	self.Game.BackgroundTransparency = 0
	self.LayerTop.Position = UDim2.new(0.5, 0, 0, 0)
	self.LayerBottom.Position = UDim2.new(0.5, 0, 0, 6)
	self.BG.BackgroundTransparency = 0
	
	self.bgFadeOut:Play()
	self.gameFadeOut:Play()
	self.oriFadeOut:Play()

	self.bottomLayerFadeOut:Play()
	self.topLayerFadeOut:Play()
end

function loader:setGame(text)
	self.Game.Text = text
end

	-- games
loader.games = {}

function loader:registerGame(id, name, url)
	loader.games[tostring(id)] = {name = name, loadstring = url}
end

function loader:detectGame()
	local detectedGame = self.games[tostring(game.GameId)]
	
	if detectedGame then
		self:setGame(("Game detected: %s"):format(detectedGame.name))
		self.gameDetected:Play()
		return detectedGame
	else
		self:setGame("Game not detected")
		self.gameUndetected:Play()
		
	end
end

loader:registerGame(73885730, "Prison Life", "https://raw.githubusercontent.com/V-I-V-A/viva-hub/main/prisonlife.lua")
loader:registerGame(81762198, "Vehicle Simulator", "https://raw.githubusercontent.com/V-I-V-A/viva-hub/main/vehiclesimulator.lua")

	-- end
loader:show()
local detectedGame = loader:detectGame()
loader:hide()

if detectedGame then
if not ({pcall(function()
			local Elements = {"Line", "Text", "Image", "Circle", "Square", "Quad", "Triangle"}
			for i, v in ipairs(Elements) do
				Drawing.new(v):Remove()
			end
		end)})[1] then
		
		Drawing = nil
	end
--
	loadstring(game:HttpGet(detectedGame.loadstring))()
end
