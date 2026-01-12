local BRANCH = (MODE == "DEV") and "dev" or "main"
local VERSION = (MODE == "DEV") and "V1.2.0" or "V1.1.0"

local BASE = ("https://raw.githubusercontent.com/FEN-N3C/StructraHub/%s/"):format(BRANCH)

local function Load(file)
    return loadstring(game:HttpGet(BASE .. file))()
end

local Config = Load("config.lua")
local UI = Load("ui.lua")
local Aimbot = Load("aimbot.lua")

UI.Init(Config)
Aimbot.Start(Config, Fluent.Options)

print(
    MODE == "DEV"
        and ("Successfully loaded StructraHub DEV (%s)!"):format(VERSION)
        or  ("Successfully loaded StructraHub (%s)!"):format(VERSION)
)
