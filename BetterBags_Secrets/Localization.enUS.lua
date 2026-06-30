-- Copyright (c) 2024 Paul Vandersypen. All Rights Reserved.
-- See License.txt for more information

-- make certain BetterBags exists and is loaded
assert(LibStub("AceAddon-3.0"):GetAddon("BetterBags"), "BetterBags_Secrets requires BetterBags")

-- how to localize an addon: https://phanx.net/addons/tutorials/localize
-- localization keyword substitutions: https://support.curseforge.com/en/support/solutions/articles/9000197354-localization-substitutions
---@type string, table
local _, addon = ...

local L = setmetatable({}, { __index = function(t, k)
	local v = tostring(k)
	rawset(t, k, v)
	return v
end })

addon.L = L

local locale = GetLocale()

if locale == "enUS" then
-- English
L["Honeyback Hive"] = "Honeyback Hive"
L["Secrets: Azeroth"] = "Secrets: Azeroth"
L["Secrets: Battle Pets"] = "Secrets: Battle Pets"
L["Secrets: Kosumoth"] = "Secrets: Kosumoth"
L["Secrets: Mounts"] =  "Secrets: Mounts"
L["Secrets: Treasures"] = "Secrets: Treasures"
L["Secrets: Uuna"] = "Secrets: Uuna"
return end

if locale == "deDE" then
-- German
L["Honeyback Hive"] = "Honigrückenschwarm"
--[[Translation missing --]]
L["Secrets: Azeroth"] = "Secrets: Azeroth"
--[[Translation missing --]]
L["Secrets: Battle Pets"] = "Secrets: Battle Pets"
--[[Translation missing --]]
L["Secrets: Kosumoth"] = "Secrets: Kosumoth"
--[[Translation missing --]]
L["Secrets: Mounts"] = "Secrets: Mounts"
--[[Translation missing --]]
L["Secrets: Treasures"] = "Secrets: Treasures"
--[[Translation missing --]]
L["Secrets: Uuna"] = "Secrets: Uuna"

return end

if locale == "esES" then
-- Spanish
L["Honeyback Hive"] = "Colmena Mielabdomen"
--[[Translation missing --]]
L["Secrets: Azeroth"] = "Secrets: Azeroth"
--[[Translation missing --]]
L["Secrets: Battle Pets"] = "Secrets: Battle Pets"
--[[Translation missing --]]
L["Secrets: Kosumoth"] = "Secrets: Kosumoth"
--[[Translation missing --]]
L["Secrets: Mounts"] = "Secrets: Mounts"
--[[Translation missing --]]
L["Secrets: Treasures"] = "Secrets: Treasures"
--[[Translation missing --]]
L["Secrets: Uuna"] = "Secrets: Uuna"

return end

if locale == "esMX" then
-- Latin American Spanish
L["Honeyback Hive"] = "Colmena Mielabdomen"
--[[Translation missing --]]
L["Secrets: Azeroth"] = "Secretos: Azeroth"
--[[Translation missing --]]
L["Secrets: Battle Pets"] = "Secretos: Mascotas de duelo"
--[[Translation missing --]]
L["Secrets: Kosumoth"] = "Secretos: Kosumoth"
--[[Translation missing --]]
L["Secrets: Mounts"] = "Secretos: Monturas"
--[[Translation missing --]]
L["Secrets: Treasures"] = "Secretos: Tesoros"
--[[Translation missing --]]
L["Secrets: Uuna"] = "Secretos: Uuna"

return end

if locale == "frFR" then
-- French
L["Honeyback Hive"] = "Essaim Dos-de-Miel"
L["Secrets: Azeroth"] = "Secrets : Azeroth"
L["Secrets: Battle Pets"] = "Secrets : Mascottes"
L["Secrets: Kosumoth"] = "Secrets : Kosumoth"
L["Secrets: Mounts"] = "Secrets : Montures"
L["Secrets: Treasures"] = "Secrets : Trésors"
L["Secrets: Uuna"] = "Secrets : Uuna"

return end

if locale == "itIT" then
-- Italian
L["Honeyback Hive"] = "Alveare Dolcedorso"
--[[Translation missing --]]
L["Secrets: Azeroth"] = "Secrets: Azeroth"
--[[Translation missing --]]
L["Secrets: Battle Pets"] = "Secrets: Battle Pets"
--[[Translation missing --]]
L["Secrets: Kosumoth"] = "Secrets: Kosumoth"
--[[Translation missing --]]
L["Secrets: Mounts"] = "Secrets: Mounts"
--[[Translation missing --]]
L["Secrets: Treasures"] = "Secrets: Treasures"
--[[Translation missing --]]
L["Secrets: Uuna"] = "Secrets: Uuna"

return end

if locale == "koKR" then
-- Korean
L["Honeyback Hive"] = "벌꿀등 벌집"
--[[Translation missing --]]
L["Secrets: Azeroth"] = "Secrets: Azeroth"
--[[Translation missing --]]
L["Secrets: Battle Pets"] = "Secrets: Battle Pets"
--[[Translation missing --]]
L["Secrets: Kosumoth"] = "Secrets: Kosumoth"
--[[Translation missing --]]
L["Secrets: Mounts"] = "Secrets: Mounts"
--[[Translation missing --]]
L["Secrets: Treasures"] = "Secrets: Treasures"
--[[Translation missing --]]
L["Secrets: Uuna"] = "Secrets: Uuna"

return end

if locale == "ptBR" then
-- Brazillian Portuegese
L["Honeyback Hive"] = "Colmeia Meleira"
--[[Translation missing --]]
L["Secrets: Azeroth"] = "Secrets: Azeroth"
--[[Translation missing --]]
L["Secrets: Battle Pets"] = "Secrets: Battle Pets"
--[[Translation missing --]]
L["Secrets: Kosumoth"] = "Secrets: Kosumoth"
--[[Translation missing --]]
L["Secrets: Mounts"] = "Secrets: Mounts"
--[[Translation missing --]]
L["Secrets: Treasures"] = "Secrets: Treasures"
--[[Translation missing --]]
L["Secrets: Uuna"] = "Secrets: Uuna"

return end

if locale == "ruRU" then
-- Russian
L["Honeyback Hive"] = "Улей Медокрылов"
--[[Translation missing --]]
L["Secrets: Azeroth"] = "Secrets: Azeroth"
--[[Translation missing --]]
L["Secrets: Battle Pets"] = "Secrets: Battle Pets"
--[[Translation missing --]]
L["Secrets: Kosumoth"] = "Secrets: Kosumoth"
--[[Translation missing --]]
L["Secrets: Mounts"] = "Secrets: Mounts"
--[[Translation missing --]]
L["Secrets: Treasures"] = "Secrets: Treasures"
--[[Translation missing --]]
L["Secrets: Uuna"] = "Secrets: Uuna"

return end

if locale == "zhCN" then
-- Simplified Chinese
L["Honeyback Hive"] = "蜜背蜂群"
--[[Translation missing --]]
L["Secrets: Azeroth"] = "Secrets: Azeroth"
--[[Translation missing --]]
L["Secrets: Battle Pets"] = "Secrets: Battle Pets"
--[[Translation missing --]]
L["Secrets: Kosumoth"] = "Secrets: Kosumoth"
--[[Translation missing --]]
L["Secrets: Mounts"] = "Secrets: Mounts"
--[[Translation missing --]]
L["Secrets: Treasures"] = "Secrets: Treasures"
--[[Translation missing --]]
L["Secrets: Uuna"] = "Secrets: Uuna"

return end

if locale == "zhTW" then
-- Traditional Chinese
L["Honeyback Hive"] = "蜜背蜂巢"
--[[Translation missing --]]
L["Secrets: Azeroth"] = "Secrets: Azeroth"
--[[Translation missing --]]
L["Secrets: Battle Pets"] = "Secrets: Battle Pets"
--[[Translation missing --]]
L["Secrets: Kosumoth"] = "Secrets: Kosumoth"
--[[Translation missing --]]
L["Secrets: Mounts"] = "Secrets: Mounts"
--[[Translation missing --]]
L["Secrets: Treasures"] = "Secrets: Treasures"
--[[Translation missing --]]
L["Secrets: Uuna"] = "Secrets: Uuna"

return end