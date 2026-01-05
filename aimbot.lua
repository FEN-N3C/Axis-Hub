local Aimbot = {}

function Aimbot.Start(Config)
	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")
	local Camera = workspace.CurrentCamera
	local LocalPlayer = Players.LocalPlayer

	RunService.RenderStepped:Connect(function()
		if not Config.Enabled then return end
		-- TBA
	end)
end

return Aimbot
