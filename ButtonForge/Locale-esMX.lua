--[[
    Author: Alternator (Massiner of Nathrezim)
    Copyright 2010
	
	Notes: Primary locale (will be used if a particular locale is not loaded)

	UPDATED 17-Mar-2011: Needs tidy up, also some of the terminology is becoming inconsistent
--]]


BFLocales["esMX"] = {};
local Locale = BFLocales["esMX"];


local Const = BFConst;

Locale["ScaleTooltip"] = "Escala\n|c"..Const.LightBlue.."(Doble clic para restablecer a predeterminada)|r";
Locale["ColsTooltip"] = "Agregar/Quitar Columnas de Botones";
Locale["RowsTooltip"] = "Agregar/Quitar Filas de Botones";
Locale["GridTooltip"] = "Visibilidad de Botones Vacíos\n";
Locale["TooltipsTooltip"] = "Visibilidad de Tooltips\n";
Locale["ButtonLockTooltip"] = "Bloqueo de Botones de Acción\n";
Locale["HideVehicleTooltip"] = "Ocultar Barra al Estar en un Vehículo\n";
Locale["HideSpec1Tooltip"] = "Ocultar Barra durante la Especialización de Talento 1\n";
Locale["HideSpec2Tooltip"] = "Ocultar Barra durante la Especialización de Talento 2\n";
Locale["HideSpec3Tooltip"] = "Ocultar Barra durante la Especialización de Talento 3\n";
Locale["HideSpec4Tooltip"] = "Ocultar Barra durante la Especialización de Talento 4\n";
Locale["HideBonusBarTooltip"] = "Ocultar Barra cuando la Barra de Reemplazo está Activa\n";
Locale["SendToBackTooltip"] = "Enviar Barra al Fondo";
Locale["SendToFrontTooltip"] = "Enviar Barra al Frente";
Locale["VisibilityTooltip"] = "Macro de Visibilidad\n";
Locale["VisibilityEgTooltip"] = "Ejemplo: |c"..Const.LightBlue.."[combat] hide; show|r"; -- Se añade al tooltip de Visibilidad si no se establece un controlador para esa barra
Locale["KeyBindModeTooltip"] = "Asignación de Teclas";
Locale["LabelModeTooltip"] = "Introducir/Editar una Etiqueta de Barra";
Locale["AdvancedToolsTooltip"] = "Opciones Avanzadas de Configuración de Barra";
Locale["DestroyBarTooltip"] = "Eliminar Barra";
Locale["CreateBarTooltip"] = "Crear Barra";
Locale["CreateBonusBarTooltip"] = "Crear una Barra de Reemplazo\n|c"..Const.LightBlue.."(Para posesión, vehículos y habilidades especiales en ciertas peleas)|r";
Locale["RightClickSelfCastTooltip"] = "Clic Derecho para Lanzar sobre Uno Mismo\n";
Locale["ConfigureModePrimaryTooltip"] = "Configuración de Barras de Button Forge\nConsejo: |c"..Const.LightBlue.."Puede Arrastrarse a una Barra BF|r";
Locale["ConfigureModeTooltip"] = "Configuración de Barras de Button Forge";
Locale["BonusActionTooltip"] = "Acción de Barra de Reemplazo";
Locale["Shown"] = "|c"..Const.DarkOrange.."No Oculta|r";
Locale["Hidden"] = "|c"..Const.DarkOrange.."Oculta|r";
Locale["Locked"] = "|c"..Const.DarkOrange.."Bloqueada|r";
Locale["Unlocked"] = "|c"..Const.DarkOrange.."Desbloqueada|r";
Locale["Enabled"] = "|c"..Const.DarkOrange.."Habilitada|r";
Locale["Disabled"] = "|c"..Const.DarkOrange.."Deshabilitada|r";
Locale["CancelPossessionTooltip"] = "Cancelar Posesión";
Locale["UpgradedChatMsg"] = "Datos Guardados de Button Forge Actualizados a: ";
Locale["DisableAutoAlignmentTooltip"] = "Mantén 'Shift' mientras arrastras para desactivar la alineación automática";
Locale["GUIHidden"] = Locale["Hidden"].." (asignaciones de teclas no afectadas)";

-- Mensajes de advertencia/error
Locale["CreateBonusBarError"] = "Solo puede realizarse en el modo de configuración de Button Forge.";
Locale["ActionFailedCombatLockdown"] = "Button Forge: La acción no puede realizarse durante el combate.";
Locale["ProfileNotFound"] = "Button Forge: Perfil no fue encontrado";


--Los siguientes se utilizan para comandos de barra (usar solo minúsculas para los valores)
Locale["SlashButtonForge1"] = "/buttonforge"; --estos dos identificadores probablemente no deberían cambiar para diferentes idiomas, pero si es necesario, se pueden cambiar
Locale["SlashButtonForge2"] = "/bufo";


--Esta tabla BoolTable permite más de un valor para verdadero o falso. En este caso, las claves deben adaptarse al idioma (tantas o tan pocas como se desee)
--Las claves se comparan con la entrada del usuario para determinar si especificó verdadero, falso (o nil)... por ejemplo, si el usuario escribe 's', esta tabla asignará el valor a verdadero. (usar solo minúsculas)
Locale.BoolTable = {};
Locale.BoolTable["yes"] 	= true;
Locale.BoolTable["no"] 		= false;

Locale.BoolTable["true"] 	= true;
Locale.BoolTable["false"] 	= false;

Locale.BoolTable["y"] 		= true;
Locale.BoolTable["n"] 		= false;

Locale.BoolTable["on"] 		= true;
Locale.BoolTable["off"] 	= false;

Locale.BoolTable["1"] 		= true;
Locale.BoolTable["0"] 		= false;

Locale.BoolTable["toggle"]	= "toggle";

--Instructions for using the slash commands
Locale["SlashHelpFormatted"] = 
	"Uso de ButtonForge:\n"..
	"Comandos válidos: |c"..Const.LightBlue.."/buttonforge|r, |c"..Const.LightBlue.."/bufo|r\n"..
	"Cambios válidos:\n"..
	"|c"..Const.LightBlue.."-bar <nombre(s) de barra>|r (la barra a la que se aplicarán los cambios, lista separada por comas, o todas las barras si no se establece)\n"..
	"|c"..Const.LightBlue.."-list|r\n"..
	"|c"..Const.LightBlue.."-rename <nuevo nombre>|r\n"..
	"|c"..Const.LightBlue.."-rows <número>|r\n"..
	"|c"..Const.LightBlue.."-cols <número>|r\n"..
	"|c"..Const.LightBlue.."-scale <tamaño>|r (1 es el tamaño normal)\n"..
	"|c"..Const.LightBlue.."-gap <tamaño>|r (2 es la separación normal)\n"..
	"|c"..Const.LightBlue.."-coords <izquierda> <arriba>|r\n"..
	"|c"..Const.LightBlue.."-tooltips <on/off/toggle>|r\n"..
	"|c"..Const.LightBlue.."-emptybuttons <on/off/toggle>|r\n"..
	"|c"..Const.LightBlue.."-lockbuttons <on/off/toggle>|r\n"..
	"|c"..Const.LightBlue.."-flyout <up/down/left/right>|r\n"..
	"|c"..Const.LightBlue.."-macrotext <on/off/toggle>|r\n"..
	"|c"..Const.LightBlue.."-keybindtext <on/off/toggle>|r\n"..
	"|c"..Const.LightBlue.."-hidespec1 <on/off/toggle>|r\n"..
	"|c"..Const.LightBlue.."-hidespec2 <on/off/toggle>|r\n"..
	"|c"..Const.LightBlue.."-hidespec3 <on/off/toggle>|r\n"..
	"|c"..Const.LightBlue.."-hidespec4 <on/off/toggle>|r\n"..
	"|c"..Const.LightBlue.."-hidevehicle <on/off/toggle>|r\n"..
	"|c"..Const.LightBlue.."-hideoverridebar <on/off/toggle>|r\n"..
	"|c"..Const.LightBlue.."-hidepetbattle <on/off/toggle>|r\n"..
	"|c"..Const.LightBlue.."-vismacro <macro de visibilidad>|r\n"..
	"|c"..Const.LightBlue.."-gui <on/off/toggle>|r (off = oculta la barra sin desactivar los atajos de teclado)\n"..
	"|c"..Const.LightBlue.."-alpha <opacidad>|r (0 - 1, 1 es completamente opaco)\n"..
	"|c"..Const.LightBlue.."-enabled <on/off/toggle>|r\n"..
	"|c"..Const.LightBlue.."-info|r\n"..
	"|c"..Const.LightBlue.."-technicalinfo|r\n"..
	"|c"..Const.LightBlue.."-createbar <nombre de barra>|r\n"..
	"|c"..Const.LightBlue.."-destroybar <nombre de barra>|r\n"..
	"|c"..Const.LightBlue.."-saveprofile <nombre de perfil>|r\n"..
	"|c"..Const.LightBlue.."-loadprofile <nombre de perfil>|r\n"..
	"|c"..Const.LightBlue.."-loadprofiletemplate <nombre de perfil>|r\n"..
	"|c"..Const.LightBlue.."-undoprofile|r\n"..
	"|c"..Const.LightBlue.."-deleteprofile <nombre de perfil>|r\n"..
	"|c"..Const.LightBlue.."-listprofiles|r\n"..	
	"|c"..Const.LightBlue.."-macrocheckdelay <número>|r (5 segundos es el valor predeterminado)\n"..
	"|c"..Const.LightBlue.."-removemissingmacros <on/off/toggle>|r\n"..
	"|c"..Const.LightBlue.."-forceoffcastonkeydown <on/off/toggle>|r (se aplicará al siguiente inicio de sesión, Deprecado)\n"..
	"|c"..Const.LightBlue.."-usecollectionsfavoritemountbutton <on/off/toggle>|r\n"..
	"|c"..Const.LightBlue.."-where|r\n"..
	"|c"..Const.LightBlue.."-quests|r\n"..
	"|c"..Const.LightBlue.."-globalsettings|r\n"..
	"Ejemplos:\n"..
	"|c"..Const.LightBlue.."/bufo -bar Mounts -tooltips off -emptybuttons off -scale 0.75|r\n"..
	"|c"..Const.LightBlue.."/bufo -macrotext off|r\n"..
	"|c"..Const.LightBlue.."/bufo -createbar MyNewBar -coords 800, 200 -rows 10 -cols 1|r\n"..
	"|c"..Const.LightBlue.."/bufo -bar MyNewBar -info|r";
	

Locale["SlashCommandRequired"]		= "<COMMANDA> requiere que también se especifique <COMMANDB>";
Locale["SlashCommandIncompatible"]	= "<COMMANDA> es incompatible con <COMMANDB>";
Locale["SlashCommandAlone"]			= "<COMMANDA> no se puede usar con otros comandos";
Locale["SlashListBarWithLabel"]		= "- <INDEX> (<LABEL>) |c"..Const.LightBlue.." Ejemplos: /bufo -bar <LABEL> -info";
Locale["SlashListBarWithIndex"]		= "- <INDEX> (No se estableció etiqueta, use Índice) |c"..Const.LightBlue.." Ejemplos: /bufo -bar <INDEX> -info";
Locale["SlashListBarNotFound"]      = "Nombre o índice de barra inválido: <LABEL>";

Locale["SlashBarNameRequired"]		=
[[El comando slash de ButtonForge falló:
Debe especificar -bar si utiliza alguno de los siguientes comandos: -rows, -cols, -coords, -rename, -info
]];

Locale["SlashCreateBarRule"]		=
[[El comando slash de ButtonForge falló:
-createbar no se puede usar con -bar
]];

Locale["SlashCreateBarFailed"]		=
[[El comando slash de ButtonForge falló:
-createbar no pudo crear una nueva barra
]];

Locale["SlashDestroyBarRule"]		=
[[El comando slash de ButtonForge falló:
-destroybar no se puede usar con otros comandos
]];

Locale["SlashAlphaRule"]			=
[[El comando slash de ButtonForge falló:
El valor de -alpha debe estar en el rango de 0.0 - 1.0
]];

Locale["SlashGlobalSettingsRule"]		=
[[El comando slash de ButtonForge falló:
-globalsettings no se puede usar con otros comandos
]];

Locale["SlashCommandNotRecognised"]	=
[[El comando slash de ButtonForge falló:
Comando no reconocido: ]];

Locale["SlashParamsInvalid"] =
[[El comando slash de ButtonForge falló:
Parámetros inválidos para el comando: ]];




-- Usado al mostrar información de la barra mediante el comando slash /bufo -info
Locale["InfoLabel"] = "Etiqueta";
Locale["InfoRowsCols"] = "Filas, Columnas";
Locale["InfoScale"] = "Escala";
Locale["InfoCoords"] = "Coordenadas";
Locale["InfoTooltips"] = "Tooltips";
Locale["InfoEmptyGrid"] = "Botones vacíos";
Locale["InfoLock"] = "Bloqueo de Botones";
Locale["InfoHSpec1"] = "Visibilidad para Especialización 1";
Locale["InfoHSpec2"] = "Visibilidad para Especialización 2";
Locale["InfoHSpec3"] = "Visibilidad para Especialización 3";
Locale["InfoHSpec4"] = "Visibilidad para Especialización 4";
Locale["InfoHVehicle"] = "Visibilidad en Vehículo";
Locale["InfoHBonusBar5"] = "Visibilidad cuando la Barra de Anulación está activa";
Locale["InfoHPetBattle"] = "Visibilidad durante un Duelo de Mascotas";
Locale["InfoVisibilityMacro"] = "Macro de Visibilidad";
Locale["InfoGUI"] = "Interfaz Gráfica";
Locale["InfoAlpha"] = "Transparencia";
Locale["InfoMacroText"] = "Etiqueta de Macro";
Locale["InfoKeybindText"] = "Etiqueta de Atajo de Teclado";
Locale["InfoEnabled"] = "Barra";
Locale["InfoGap"] = "Separación de Botones";
Locale["InfoMacroCheckDelay"] = "Retraso de Verificación de Macro";
Locale["InfoUseCollectionsFavoriteMountButton"] = "Usar el Botón de Montura Favorita de Colecciones";
Locale["InfoRemoveMissingMacros"] = "Eliminar Macros Faltantes";
Locale["InfoForceOffCastOnKeyDown"] = "Forzar Desactivación de Lanzamiento al Presionar Tecla";
Locale["InfoButtonFrameName"] = "Nombre del Marco del Botón";

-- Encabezado para la lista de perfiles
Locale["BFProfiles"] = "Perfiles de Button Forge";

Locale["SavedProfile"] = "Perfil de Button Forge guardado";
Locale["LoadedProfile"] = "Perfil de Button Forge cargado";
Locale["LoadedProfileTemplate"] = "Plantilla de perfil de Button Forge cargada";
Locale["UndoneProfile"] = "Perfil de Button Forge deshecho";
Locale["DeletedProfile"] = "Perfil de Button Forge eliminado";

