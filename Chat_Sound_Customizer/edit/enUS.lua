local _, L = ...

setmetatable(L, {
	__index = function(t, k) return k end,
	__newindex = function(t, k, v) rawset(t, k, v == true and k or v) end,
	__call = function(self, locale, tab)
		return (self[locale]:gsub('($%b{})', function(w) return tab[w:sub(3, -2)] or w end))
	end
})

L["CHAT_MSG_OFFICER"] = "Guild Officer"
L["CHAT_MSG_GUILD"] = "Guild"
L["CHAT_MSG_WHISPER"] = "Whisper"
L["CHAT_MSG_BN_WHISPER"] = "BN Whisper"
L["CHAT_MSG_PARTY"] = "Party"
L["CHAT_MSG_PARTY_LEADER"] = "Party Leader"
L["CHAT_MSG_COMMUNITIES_CHANNEL"] = "Communities"
L["CHAT_MSG_RAID"] = "Raid"
L["CHAT_MSG_RAID_LEADER"] = "Raid Leader"
L["CHAT_MSG_INSTANCE_CHAT"] = "Instance"
L["CHAT_MSG_INSTANCE_CHAT_LEADER"] = "Instance Leader"
L["CHAT_MSG_SAY"] = "Say"
L["CHAT_MSG_YELL"] = "Yell"
L["CHAT_MSG_EMOTE"] = "Emote"

L["Config UI"] = true
L["Open config UI"] = true
L["Chat"] = true
L["Chats"] = true
L["Channel"] = true
L["Multi Selection"] = true
L["Select a sound"] = true
L["Ignore List"] = true
L["Add to ignore list"] = true
L["Remove from ignore list"] = true
L["${button} to show the Config UI"] = true
L["Left-click"] = true
L["${button} to unmute CSC"] = true
L["${button} to temporarily mute CSC"] = true
L["Right-click"] = true
L["Temporarily Mute"] = true
L["Temporarily mute the addon, it will go back to normal after reload"] = true
L["Show minimap button"] = true
L["Newcomer"] = true
L["Guide"] = true
L["This sound will play when you are a GUIDE and a NEWCOMER says something in the Newcomer Chat"] = true
L["This sound will play when you are a NEWCOMER and a GUIDE says something in the Newcomer Chat"] = true
L["Zone Channels"] = true
L["General"] = true
L["Trade"] = true
L["Local Defense"] = true
L["Sound for receiving messages"] = true
L["Sound for sending messages"] = true
L["Notification interval (ms)"] = true
L["This is the minimum interval in milliseconds for a sound to be played again. Each chat is individual."] = true

if GetLocale() == "enUS" or GetLocale() == "enGB" then
	return
end