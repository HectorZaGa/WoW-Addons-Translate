---@class addon
local addon = select(2, ...)
local L = addon.C.AddonInfo.Locales

--------------------------------

L.esMX = {}
local NS = L.esMX; L.esMX = NS

--------------------------------

function NS:Load()
	if GetLocale() ~= "esMX" then
		return
	end

	--------------------------------
	-- GENERAL
	--------------------------------

	do

	end

	--------------------------------
	-- SISTEMA DE WAYPOINT
	--------------------------------

	do
		-- PINPOINT
		L["WaypointSystem - Pinpoint - Quest - Complete"] = "Listo para entregar"
	end

	--------------------------------
	-- COMANDOS
	--------------------------------

	do
		L["SlashCommand - /way - Map ID - Prefix"] = "ID de mapa actual: "
		L["SlashCommand - /way - Map ID - Suffix"] = ""
		L["SlashCommand - /way - Position - Axis (X) - Prefix"] = "X: "
		L["SlashCommand - /way - Position - Axis (X) - Suffix"] = ""
		L["SlashCommand - /way - Position - Axis (Y) - Prefix"] = ", Y: "
		L["SlashCommand - /way - Position - Axis (Y) - Suffix"] = ""
	end

	--------------------------------
	-- CONFIGURACIÓN
	--------------------------------

	do
		L["Config - General"] = "General"
		L["Config - General - Title"] = "General"
		L["Config - General - Title - Subtext"] = "Personaliza la configuración general."
		L["Config - General - Preferences"] = "Preferencias"
		L["Config - General - Preferences - Meter"] = "Usar metros en vez de yardas"
		L["Config - General - Preferences - Meter - Description"] = "Cambia la unidad de medida a métrica."
		L["Config - General - Preferences - Font"] = "Fuente"
		L["Config - General - Preferences - Font - Description"] = "Fuente utilizada en todo el addon."
		L["Config - General - Reset"] = "Restablecer"
		L["Config - General - Reset - Button"] = "Restablecer a valores predeterminados"
		L["Config - General - Reset - Confirm"] = "¿Seguro que deseas restablecer todas las configuraciones?"
		L["Config - General - Reset - Confirm - Yes"] = "Confirmar"
		L["Config - General - Reset - Confirm - No"] = "Cancelar"

		L["Config - WaypointSystem"] = "Sistema de Waypoint"
		L["Config - WaypointSystem - Title"] = "Sistema de Waypoint"
		L["Config - WaypointSystem - Title - Subtext"] = "Gestiona el comportamiento del marcador y el pin de objetivo en el mundo."
		L["Config - WaypointSystem - Type"] = "Habilitar"
		L["Config - WaypointSystem - Type - Both"] = "Todo"
		L["Config - WaypointSystem - Type - Waypoint"] = "Waypoint"
		L["Config - WaypointSystem - Type - Pinpoint"] = "Pinpoint"
		L["Config - WaypointSystem - General"] = "General"
		L["Config - WaypointSystem - General - RightClickToClear"] = "Clic derecho para limpiar"
		L["Config - WaypointSystem - General - RightClickToClear - Description"] = "Desmarcar objetivo actual haciendo clic derecho en los marcos de navegación."
		L["Config - WaypointSystem - General - BackgroundPreview"] = "Vista previa de fondo"
		L["Config - WaypointSystem - General - BackgroundPreview - Description"] = "Reduce la visibilidad del marco de navegación cuando el mouse está sobre él."
		L["Config - WaypointSystem - General - Transition Distance"] = "Distancia de Pinpoint"
		L["Config - WaypointSystem - General - Transition Distance - Description"] = "Distancia antes de mostrar Pinpoint."
		L["Config - WaypointSystem - General - Hide Distance"] = "Distancia mínima"
		L["Config - WaypointSystem - General - Hide Distance - Description"] = "Distancia antes de ocultar."
		L["Config - WaypointSystem - Waypoint"] = "Waypoint"
		L["Config - WaypointSystem - Waypoint - Footer - Type"] = "Información adicional"
		L["Config - WaypointSystem - Waypoint - Footer - Type - Both"] = "Todo"
		L["Config - WaypointSystem - Waypoint - Footer - Type - Distance"] = "Distancia"
		L["Config - WaypointSystem - Waypoint - Footer - Type - ETA"] = "Tiempo estimado"
		L["Config - WaypointSystem - Waypoint - Footer - Type - None"] = "Ninguno"
		L["Config - WaypointSystem - Pinpoint"] = "Pinpoint"
		L["Config - WaypointSystem - Pinpoint - Info"] = "Mostrar información"
		L["Config - WaypointSystem - Pinpoint - Info - Extended"] = "Usar información extendida"
		L["Config - WaypointSystem - Pinpoint - Info - Extended - Description"] = "Como el nombre y la descripción."
		L["Config - WaypointSystem - Navigator"] = "Navegador"
		L["Config - WaypointSystem - Navigator - Enable"] = "Mostrar"
		L["Config - WaypointSystem - Navigator - Enable - Description"] = "Cuando el Waypoint o Pinpoint esté fuera de pantalla, el navegador apuntará en la dirección."

		L["Config - Appearance"] = "Apariencia"
		L["Config - Appearance - Title"] = "Apariencia"
		L["Config - Appearance - Title - Subtext"] = "Personaliza la apariencia de la interfaz de usuario."
		L["Config - Appearance - Waypoint"] = "Waypoint"
		L["Config - Appearance - Waypoint - Scale"] = "Tamaño"
		L["Config - Appearance - Waypoint - Scale - Description"] = "El tamaño cambia según la distancia. Esta opción ajusta el tamaño general."
		L["Config - Appearance - Waypoint - Scale - Min"] = "Mínimo %"
		L["Config - Appearance - Waypoint - Scale - Min - Description"] = "El tamaño puede reducirse hasta."
		L["Config - Appearance - Waypoint - Scale - Max"] = "Máximo %"
		L["Config - Appearance - Waypoint - Scale - Max - Description"] = "El tamaño puede aumentar hasta."
		L["Config - Appearance - Waypoint - Beam"] = "Mostrar haz"
		L["Config - Appearance - Waypoint - Beam - Alpha"] = "Transparencia"
		L["Config - Appearance - Waypoint - Footer"] = "Mostrar texto informativo"
		L["Config - Appearance - Waypoint - Footer - Scale"] = "Tamaño"
		L["Config - Appearance - Waypoint - Footer - Alpha"] = "Transparencia"
		L["Config - Appearance - Pinpoint"] = "Pinpoint"
		L["Config - Appearance - Pinpoint - Scale"] = "Tamaño"
		L["Config - Appearance - Navigator"] = "Navegador"
		L["Config - Appearance - Navigator - Scale"] = "Tamaño"
		L["Config - Appearance - Navigator - Alpha"] = "Transparencia"
		L['Config - Appearance - Navigator - Distance'] = "Distancia"
		L["Config - Appearance - Visual"] = "Visual"
		L["Config - Appearance - Visual - UseCustomColor"] = "Usar color personalizado"
		L["Config - Appearance - Visual - UseCustomColor - Color"] = "Color"
		L["Config - Appearance - Visual - UseCustomColor - TintIcon"] = "Teñir ícono"
		L["Config - Appearance - Visual - UseCustomColor - Reset"] = "Restablecer"
		L["Config - Appearance - Visual - UseCustomColor - Quest - Complete - Default"] = "Misión normal"
		L["Config - Appearance - Visual - UseCustomColor - Quest - Complete - Repeatable"] = "Misión repetible"
		L["Config - Appearance - Visual - UseCustomColor - Quest - Complete - Important"] = "Misión importante"
		L["Config - Appearance - Visual - UseCustomColor - Quest - Incomplete"] = "Misión incompleta"
		L["Config - Appearance - Visual - UseCustomColor - Neutral"] = "Waypoint genérico"

		L["Config - Audio"] = "Audio"
		L["Config - Audio - Title"] = "Audio"
		L["Config - Audio - Title - Subtext"] = "Configuración de los efectos de audio de Waypoint UI."
		L["Config - Audio - General"] = "General"
		L["Config - Audio - General - EnableGlobalAudio"] = "Habilitar audio"
		L["Config - Audio - Customize"] = "Personalizar"
		L["Config - Audio - Customize - UseCustomAudio"] = "Usar audio personalizado"
		L["Config - Audio - Customize - UseCustomAudio - Sound ID"] = "ID de sonido"
		L["Config - Audio - Customize - UseCustomAudio - Sound ID - Placeholder"] = "ID personalizado"
		L["Config - Audio - Customize - UseCustomAudio - Preview"] = "Vista previa"
		L["Config - Audio - Customize - UseCustomAudio - Reset"] = "Restablecer"
		L["Config - Audio - Customize - UseCustomAudio - WaypointShow"] = "Mostrar Waypoint"
		L["Config - Audio - Customize - UseCustomAudio - PinpointShow"] = "Mostrar Pinpoint"

		L["Config - About"] = "Acerca de"
		L["Config - About - Contributors"] = "Colaboradores"
		L["Config - About - Developer"] = "Desarrollador"
		L["Config - About - Developer - AdaptiveX"] = "AdaptiveX"
	end

	--------------------------------
	-- COLABORADORES
	--------------------------------

	do
		L["Contributors - ZamestoTV"] = "ZamestoTV"
		L["Contributors - ZamestoTV - Description"] = "Traductor — Ruso"
		L["Contributors - huchang47"] = "huchang47"
		L["Contributors - huchang47 - Description"] = "Traductor — Chino (Simplificado)"
		L["Contributors - BlueNightSky"] = "BlueNightSky"
		L["Contributors - BlueNightSky - Description"] = "Traductor — Chino (Tradicional)"
		L["Contributors - Crazyyoungs"] = "Crazyyoungs"
		L["Contributors - Crazyyoungs - Description"] = "Traductor — Coreano"
		L["Contributors - Klep"] = "Klep"
		L["Contributors - Klep - Description"] = "Traductor — Francés"
		L["Contributors - Kroffy"] = "Kroffy"
		L["Contributors - Kroffy - Description"] = "Traductor — Francés"
		L["Contributors - cathtail"] = "cathtail"
		L["Contributors - cathtail - Description"] = "Traductor — Portugués (Brasil)"
		L["Contributors - Larsj02"] = "Larsj02"
		L["Contributors - Larsj02 - Description"] = "Traductor — Alemán"
		L["Contributors - dabear78"] = "dabear78"
		L["Contributors - dabear78 - Description"] = "Traductor — Alemán"
		L["Contributors - Gotziko"] = "Gotziko"
		L["Contributors - Gotziko - Description"] = "Traductor — Español"
		L["Contributors - y45853160"] = "y45853160"
		L["Contributors - y45853160 - Description"] = "Código — Corrección de errores Beta"
		L["Contributors - lemieszek"] = "lemieszek"
		L["Contributors - lemieszek - Description"] = "Código — Corrección de errores Beta"
		L["Contributors - BadBoyBarny"] = "BadBoyBarny"
		L["Contributors - BadBoyBarny - Description"] = "Código — Corrección de errores"
		L["Contributors - Christinxa"] = "Christinxa"
		L["Contributors - Christinxa - Description"] = "Código — Corrección de errores"
		L["Contributors - HectorZaGa"] = "HectorZaGa"
		L["Contributors - HectorZaGa - Description"] = "Código — Corrección de errores"
		L["Contributors - SyverGiswold"] = "SyverGiswold"
		L["Contributors - SyverGiswold - Description"] = "Código — Función"
	end
end

NS:Load()
