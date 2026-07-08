---@class BBTWW
local addon = select(2, ...)

---@class BetterBags: AceAddon
local BetterBags = LibStub('AceAddon-3.0'):GetAddon("BetterBags")

---@class Categories: AceModule
---@field WipeCategory fun(self: Categories, ctx: Context, category: string)
---@field AddItemToCategory fun(self: Categories, ctx: Context, item: number, category: string)
local categories = BetterBags:GetModule('Categories')

---@class Localization: AceModule
---@field G fun(self: Localization, key: string): string
local L = BetterBags:GetModule('Localization')

---@class Context: AceModule
---@field New fun(self: Context, name: string): Context
local context = BetterBags:GetModule('Context')

local ctx = context:New('BBTWW_Event')

local locales = {
    ["enUS"] = {
        ["Radiant Echoes"] = "|cff16B7FFRadiant Echoes|r",
        ["Profession Knowledge"] = "|cff0070ddProfession Knowledge|r",
        ["Delves"] = "|cff88AAFFDelves|r",
        ["Alunira"] = "|cffa335eeAlunira|r",
        ["Airship Schematics"] = "|cff56BBFFAirship Schematics|r",
        ["Crests"] = "|cffff8040Crests|r",
        ["Valorstones"] = "|cffff8040Valorstones|r",
        ["Resonance Crystals"] = "|cfff49813Resonance Crystals|r",
        ["Contracts"] = "|cffAFB42BContracts|r",
        ["Assembly of the Deeps"] = "|cff88AAFFAssembly of the Deeps|r",
        ["Hallowfall Arathi"] = "|cff88AAFFHallowfall Arathi|r",
        ["Dusty Prospector's Chest"] = "|cff0070ddDusty Prospector's Chest|r",
        ["Illusive Kobyss Lure"] = "|cff0070ddIllusive Kobyss Lure|r",
        ["Cyrce's Circlet"] = "|cffe68cabCyrce's Circlet|r",
        ["Thrayir"] = "|cffa335eeThrayir|r"
    },
    ["esMX"] = {
        ["Radiant Echoes"] = "|cff16B7FFEcos Radiantes|r",
        ["Profession Knowledge"] = "|cff0070ddConocimiento de Profesión|r",
        ["Delves"] = "|cff88AAFFAbismos|r",
        ["Alunira"] = "|cffa335eeAlunira|r",
        ["Airship Schematics"] = "|cff56BBFFEsquemas de Dirigible|r",
        ["Crests"] = "|cffff8040Crestas|r",
        ["Valorstones"] = "|cffff8040Piedras de Valor|r",
        ["Resonance Crystals"] = "|cfff49813Cristales de Resonancia|r",
        ["Contracts"] = "|cffAFB42BContratos|r",
        ["Assembly of the Deeps"] = "|cff88AAFFAsamblea de las Minas|r",
        ["Hallowfall Arathi"] = "|cff88AAFFArathi de Cristalia|r",
        ["Dusty Prospector's Chest"] = "|cff0070ddCofre del Prospector Polvoriento|r",
        ["Illusive Kobyss Lure"] = "|cff0070ddSeñuelo Ilusorio de Kobyss|r",
        ["Cyrce's Circlet"] = "|cffe68cabAro de Cyrce|r",
        ["Thrayir"] = "|cffa335eeThrayir|r"
    }
}

local currentLocale = GetLocale()

local function L(key)
    return locales[currentLocale] and locales[currentLocale][key] or locales["enUS"][key]
end

for category, items in pairs(addon.db) do
    categories:WipeCategory(ctx, L(category))
    for _, item in pairs(items) do
        categories:AddItemToCategory(ctx, item, L(category))
    end
end
