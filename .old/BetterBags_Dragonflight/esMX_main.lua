---@type string, BBDF
local _, addon = ...
---@class BetterBags: AceAddon
local BetterBags = LibStub('AceAddon-3.0'):GetAddon("BetterBags")
---@class Categories: AceModule
local categories = BetterBags:GetModule('Categories')
---@class Localization: AceModule
local L = BetterBags:GetModule('Localization')

local locales = {
    ["enUS"] = {
        ["Primal Storms"] = "|cff16B7FFPrimal Storms|r",
        ["Storm's Fury"] = "|cffB5D3E7Storm's Fury|r",
        ["Zskera Vault"] = "|cff88AAFFZskera Vault|r",
        ["Primordial Stones"] = "|cffFFAB00Primordial Stones|r",
        ["Artisan Curios"] = "|cff88AAFFArtisan Curios|r",
        ["Diamanthia Journal"] = "Diamanthia Journal",
        ["Profession Knowledge - DF"] = "|cff0070ddProfession Knowledge - DF|r",
        ["Drakewatcher Manuscript - DF"] = "|cff56BBFFDrakewatcher Manuscript - DF|r",
        ["Lizi's Reins"] = "|cffa335eeLizi's Reins|r",
        ["Temperamental Skyclaw"] = "|cffa335eeTemperamental Skyclaw|r",
        ["Magmashell"] = "|cffa335eeMagmashell|r",
        ["Loyal Magmammoth"] = "|cffa335eeLoyal Magmammoth|r",
        ["Mossy Mammoth"] = "|cffa335eeMossy Mammoth|r",
        ["Gooey Snailemental"] = "|cffa335eeGooey Snailemental|r",
        ["Chip"] = "|cff0070ddChip|r",
        ["Phoenix Wishwing"] = "|cff0070ddPhoenix Wishwing|r",
        ["Reputation - DF"] = "|cffff8040Reputation - DF|r",
        ["Contracts - DF"] = "|cffAFB42BContracts - DF|r",
        ["Treasure Sacks"] = "Treasure Sacks",
        ["Darkmoon Cards - DF"] = "Darkmoon Cards - DF",
        ["Fortune Cards"] = "Fortune Cards",
        ["Loamm"] = "|cffff8040Loamm|r",
        ["Crests - DF"] = "|cffff8040Crests - DF|r",
        ["Fyrakk Assault"] = "|cff910951Fyrakk Assault|r",
        ["Time Rift"] = "|cffEDE4D3Time Rift|r",
        ["Dreamsurge"] = "|cff67CF9EDreamsurge|r",
        ["Superbloom"] = "|cff67CF9ESuperbloom|r",
        ["Awakened"] = "|cffa335eeAwakened|r",
        ["Bronze"] = "|cfff49813Bronze|r",
        ["Eternal Threads"] = "|cfff49813Eternal Threads|r"
    },
    ["esMX"] = {
        ["Primal Storms"] = "|cff16B7FFTormentas Primigenias|r",
        ["Storm's Fury"] = "|cffB5D3E7Furia de la Tormenta|r",
        ["Zskera Vault"] = "|cff88AAFFBóveda de Zskera|r",
        ["Primordial Stones"] = "|cffFFAB00Piedras Primordiales|r",
        ["Artisan Curios"] = "|cff88AAFFCuriosidades de Artesano|r",
        ["Diamanthia Journal"] = "Diario de Diamanthia",
        ["Profession Knowledge - DF"] = "|cff0070ddConocimiento de Profesión - DF|r",
        ["Drakewatcher Manuscript - DF"] = "|cff56BBFFManuscrito de Vigilante de Dracos - DF|r",
        ["Lizi's Reins"] = "|cffa335eeRiendas de Lizi|r",
        ["Temperamental Skyclaw"] = "|cffa335eeGarra Cielotemplada|r",
        ["Magmashell"] = "|cffa335eeCaparazón de Magma|r",
        ["Loyal Magmammoth"] = "|cffa335eeMagmamuto Leal|r",
        ["Mossy Mammoth"] = "|cffa335eeMamut Musgoso|r",
        ["Gooey Snailemental"] = "|cffa335eeCaracolelemental Pegajoso|r",
        ["Chip"] = "|cff0070ddChip|r",
        ["Phoenix Wishwing"] = "|cff0070ddAla de Deseo Fénix|r",
        ["Reputation - DF"] = "|cffff8040Reputación - DF|r",
        ["Contracts - DF"] = "|cffAFB42BContratos - DF|r",
        ["Treasure Sacks"] = "Sacos de Tesoro",
        ["Darkmoon Cards - DF"] = "Cartas de la Luna Negra - DF",
        ["Fortune Cards"] = "Cartas de Fortuna",
        ["Loamm"] = "|cffff8040Loamm|r",
        ["Crests - DF"] = "|cffff8040Crestas - DF|r",
        ["Fyrakk Assault"] = "|cff910951Asalto de Fyrakk|r",
        ["Time Rift"] = "|cffEDE4D3Fisura Temporal|r",
        ["Dreamsurge"] = "|cff67CF9ETormenta de Sueños|r",
        ["Superbloom"] = "|cff67CF9ESuperfloración|r",
        ["Awakened"] = "|cffa335eeDespertado|r",
        ["Bronze"] = "|cfff49813Bronce|r",
        ["Eternal Threads"] = "|cfff49813Hilos Eternos|r"
    }
}

local currentLocale = GetLocale()

local function L(key)
    return locales[currentLocale] and locales[currentLocale][key] or locales["enUS"][key]
end

for category, items in pairs(addon.db) do
    categories:WipeCategory(L(category))
    for _, item in pairs(items) do
        categories:AddItemToCategory(item, L(category))
    end
end
