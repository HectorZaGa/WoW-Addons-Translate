local _, L = ...

setmetatable(L, {
	__index = function(t, k) return k end,
	__newindex = function(t, k, v) rawset(t, k, v == true and k or v) end,
	__call = function(self, locale, tab)
		return (self[locale]:gsub('($%b{})', function(w) return tab[w:sub(3, -2)] or w end))
	end
})

if GetLocale() == "esMX" then
L["CHAT_MSG_OFFICER"] = "Oficial de Hermandad"
L["CHAT_MSG_GUILD"] = "Hermandad"
L["CHAT_MSG_WHISPER"] = "Susurro"
L["CHAT_MSG_BN_WHISPER"] = "Susurro BN"
L["CHAT_MSG_PARTY"] = "Grupo"
L["CHAT_MSG_PARTY_LEADER"] = "Líder de Grupo"
L["CHAT_MSG_COMMUNITIES_CHANNEL"] = "Comunidades"
L["CHAT_MSG_RAID"] = "Banda"
L["CHAT_MSG_RAID_LEADER"] = "Líder de Banda"
L["CHAT_MSG_INSTANCE_CHAT"] = "Instancia"
L["CHAT_MSG_INSTANCE_CHAT_LEADER"] = "Líder de Instancia"
L["CHAT_MSG_SAY"] = "Decir"
L["CHAT_MSG_YELL"] = "Gritar"
L["CHAT_MSG_EMOTE"] = "Emote"

L["Config UI"] = "Configurar interfaz"
L["Open config UI"] = "Abrir interfaz de configuración"
L["Chat"] = "Chat"
L["Chats"] = "Chats"
L["Channel"] = "Canal"
L["Multi Selection"] = "Selección múltiple"
L["Select a sound"] = "Seleccionar un sonido"
L["Ignore List"] = "Lista de ignorados"
L["Add to ignore list"] = "Agregar a la lista de ignorados"
L["Remove from ignore list"] = "Eliminar de la lista de ignorados"
L["${button} to show the Config UI"] = "${button} para mostrar la interfaz de configuración"
L["Left-click"] = "Clic izquierdo"
L["${button} to unmute CSC"] = "${button} para reactivar CSC"
L["${button} to temporarily mute CSC"] = "${button} para silenciar temporalmente CSC"
L["Right-click"] = "Clic derecho"
L["Temporarily Mute"] = "Silenciar temporalmente"
L["Temporarily mute the addon, it will go back to normal after reload"] = "Silencia temporalmente el addon, volverá a la normalidad tras recargar"
L["Show minimap button"] = "Mostrar botón en el minimapa"
L["Newcomer"] = "Recién llegado"
L["Guide"] = "Guía"
L["This sound will play when you are a GUIDE and a NEWCOMER says something in the Newcomer Chat"] = "Este sonido se reproducirá cuando seas GUÍA y un RECIÉN LLEGADO diga algo en el Chat de Recién Llegados"
L["This sound will play when you are a NEWCOMER and a GUIDE says something in the Newcomer Chat"] = "Este sonido se reproducirá cuando seas RECIÉN LLEGADO y un GUÍA diga algo en el Chat de Recién Llegados"
L["Zone Channels"] = "Canales de zona"
L["General"] = "General"
L["Trade"] = "Comercio"
L["Local Defense"] = "Defensa local"
L["Sound for receiving messages"] = "Sonido al recibir mensajes"
L["Sound for sending messages"] = "Sonido al enviar mensajes"
L["Notification interval (ms)"] = "Intervalo de notificación (ms)"
L["This is the minimum interval in milliseconds for a sound to be played again. Each chat is individual."] = "Este es el intervalo mínimo en milisegundos para que un sonido se reproduzca de nuevo. Cada chat es individual."

L["Add channel"] = "Agregar canal"
L["Add player"] = "Agregar jugador"
L["Create group"] = "Crear grupo"
L["Custom Channel"] = "Canal personalizado"
L["Customized"] = "Personalizado"
L["Group"] = "Grupo"
L["Remove channel"] = "Eliminar canal"
L["Remove group"] = "Eliminar grupo"
L["Remove player"] = "Eliminar jugador"

	return
end