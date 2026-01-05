local UI = {}

local Fluent = loadstring(game:HttpGet(
	"https://raw.githubusercontent.com/dawid-scripts/Fluent/master/main.lua"
))()

function UI.Init(Config)
	local Window = Fluent:CreateWindow({
		Title = "Aimbot",
		SubTitle = "internal",
		Theme = "Dark",
		Acrylic = true
	})

	local Tab = Window:AddTab({ Title = "Aimbot", Icon = "crosshair" })

	Tab:AddToggle("Enabled", {
		Title = "Aimbot",
		Default = Config.Enabled,
		Callback = function(v)
			Config.Enabled = v
		end
	})

	Tab:AddDropdown("LockType", {
		Title = "Lock Type",
		Values = { "ClosestToCursor", "ClosestToPlayer" },
		Default = Config.LockType,
		Callback = function(v)
			Config.LockType = v
		end
	})
end

return UI
