if not (GetLocale() == "esMX") then return end;

local _, addon = ...
local L = addon.L;


--Globals
BINDING_HEADER_PLUMBER = "Accesorio Plumber";
BINDING_NAME_TOGGLE_PLUMBER_LANDINGPAGE = "Alternar resumen de expansión de Plumber";   --Mostrar/ocultar la interfaz de Resumen de Expansión
BINDING_NAME_PLUMBER_QUESTWATCH_NEXT = "Enfocar en la próxima misión";
BINDING_NAME_PLUMBER_QUESTWATCH_PREVIOUS = "Enfocar en la misión anterior";


--Panel de Control del Módulo
L["Addon Name Colon"] =  "Plumber: ";
L["Module Control"] = "Control del módulo";
L["Quick Slot Generic Description"] = "\n\n*Ranuras rápidas son un conjunto de botones clicables que aparecen bajo ciertas condiciones.";
L["Quick Slot Edit Mode"] = HUD_EDIT_MODE_MENU or "Modo de edición";
L["Quick Slot High Contrast Mode"] = "Alternar modo de alto contraste";
L["Quick Slot Reposition"] = "Cambiar posición";
L["Quick Slot Layout"] = "Diseño";
L["Quick Slot Layout Linear"] = "Lineal";
L["Quick Slot Layout Radial"] = "Radial";
L["Restriction Combat"] = "No funciona en combate";
L["Restriction Instance"] = "Esta función no funciona en instancias.";    --Indica que una función solo puede funcionar fuera de combate
L["Map Pin Change Size Method"] = "\n\n*Puedes cambiar el tamaño del pin en mapa del mundo - Filtro de mapa - Plumber";
L["Toggle Plumber UI"] = "Alternar interfaz de Plumber";
L["Toggle Plumber UI Tooltip"] = "Muestra la siguiente interfaz de Plumber en el modo de edición:\n%s\n\nEsta casilla solo controla su visibilidad en el modo de edición. No habilita ni deshabilita estos módulos.";
L["Remove New Feature Marker"] = "Eliminar marcador de función nueva";
L["Remove New Feature Marker Tooltip"] = "Los marcadores de funciones nuevas %s desaparecen después de una semana. Pero puedes hacer clic en este botón para eliminarlos ahora.";
L["Modules"] = "Módulos";
L["Release Notes"] = "Notas de la versión";
L["Option AutoShowChangelog"] = "Mostrar automáticamente las notas de la versión";
L["Option AutoShowChangelog Tooltip"] = "Muestra automáticamente las notas de la versión después de una actualización.";
L["Category Colon"] = (CATEGORY or "Categoría")..": ";
L["Module Wrong Game Version"] = "Esta función no está disponible para tu versión actual del juego.";
L["Changelog Wrong Game Version"] = "Los siguientes cambios no se aplican a tu versión actual del juego.";
L["Settings Panel"] = "Panel de configuración";
L["Version"] = "Versión";
L["New Features"] = "Novedades";
L["New Feature Abbr"] = "Nuevo";
L["Format Month Day"] = EVENT_SCHEDULER_DAY_FORMAT or "%s %d";
L["Always On Module"] = "Este módulo siempre está habilitado.";
L["Return To Module List"] = "Volver a la lista";
L["Generic Addon Conflict"] = "Este módulo podría ser incompatible con addons de funcionalidades similares:";
L["Work In Progress Tag"] = "[WIP]";
L["Colon With Space"] = ": ";
L["Disabled Module Requires Reload Format"] = "Debes %s para aplicar los cambios.";	--We'll replace %s with a clickable "reload the UI"
L["Reload The UI"] = "recargar la interfaz";
L["Click To Reload UI"] = "Haz clic para recargar la interfaz.";


--Settings Category
L["SC Signature"] = "Funciones principales";
L["SC Current"] = "Contenido actual";
L["SC ActionBar"] = "Barras de acción";
L["SC Chat"] = "Chat";
L["SC Collection"] = "Colecciones";
L["SC Instance"] = "Instancias";
L["SC Inventory"] = "Inventario";
L["SC Loot"] = "Botín";
L["SC Map"] = "Mapa";
L["SC Profession"] = "Profesiones";
L["SC Quest"] = "Misiones";
L["SC UnitFrame"] = "Marco de unidad";
L["SC Old"] = "Contenido antiguo";
L["SC Housing"] = AUCTION_CATEGORY_HOUSING or "Vivienda";
L["SC Uncategorized"] = "Sin categoría";

--Settings Search Keywords, Search Tags
L["KW Tooltip"] = "Información emergente";
L["KW Transmog"] = "Transfiguración";
L["KW Vendor"] = "Vendedor";
L["KW LegionRemix"] = "Legion Remix";
L["KW Housing"] = "Vivienda del jugador";
L["KW Combat"] = "Combate";
L["KW ActionBar"] = "Barras de acción";
L["KW Console"] = "Consola Mando Controlador";

--Filter Sort Method
L["SortMethod 1"] = "Nombre";  --Alphabetical Order
L["SortMethod 2"] = "Fecha de incorporación";  --New on the top


--Module Categories
--- order: 0
L["Module Category Unknown"] = "Unknown"    --No necesita traducción
--- order: 1
L["Module Category General"] = "General";
--- order: 2
L["Module Category NPC Interaction"] = "Interacción con NPC";
--- order: 3
L["Module Category Tooltip"] = "Tooltip";   --Información Adicional en Tooltips
--- order: 4
L["Module Category Class"] = "Clase";   --Clase del Jugador (pícaro, paladín...)
--- order: 5
L["Module Category Reduction"] = "Reducción";   --Reduce elementos de la interfaz
--- order: -1
L["Module Category Timerunning"] = "Legion Remix";   --Cambia esto según la temporada de Timerunning
--- order: -2
L["Module Category Beta"] = "Prueba de servidor";


L["Module Category Dragonflight"] = EXPANSION_NAME9 or "Dragonflight";  --Fusionar Módulos de Características de Expansión (Dreamseeds, AzerothianArchives) en este
L["Module Category Plumber"] = "Plumber";   --Nombre de este addon

--Obsoleto
L["Module Category Dreamseeds"] = "Semillas oníricas";     --Añadido en el parche 10.2.0
L["Module Category AzerothianArchives"] = "Archivos de Azeroth";     --Añadido en el parche 10.2.5


--AutoJoinEvents
L["ModuleName AutoJoinEvents"] = "Unirse automáticamente a eventos";
L["ModuleDescription AutoJoinEvents"] = "Unirse automáticamente a estos eventos cuando interactúas con el NPC: \n\n- Fisura Temporal\n\n- Compañía de Teatro";


--Rastreador de Objetos en la Mochila
L["ModuleName BackpackItemTracker"] = "Rastreador de objetos";
L["ModuleDescription BackpackItemTracker"] = "Rastrea objetos apilables en la interfaz de la bolsa como si fueran monedas.\n\nLos tokens de eventos se rastrean automáticamente y se fijan a la izquierda.";
L["Instruction Track Item"] = "Rastrear objeto";
L["Hide Not Owned Items"] = "Ocultar objetos no poseídos";
L["Hide Not Owned Items Tooltip"] = "Si ya no posees un objeto que rastreaste, se moverá a un menú oculto.";
L["Concise Tooltip"] = "Tooltip conciso";
L["Concise Tooltip Tooltip"] = "Solo muestra el tipo de vinculación del objeto y su cantidad máxima.";
L["Item Track Too Many"] = "Solo puedes rastrear %d objetos a la vez.";
L["Tracking List Empty"] = "Tu lista de rastreo personalizada está vacía.";
L["Holiday Ends Format"] = "Termina: %s";
L["Not Found"] = "No encontrado";   --Objeto no encontrado
L["Own"] = "Poseer";   --Algo que el jugador tiene/posee
L["Numbers To Earn"] = "# Para ganar";     --El número de objetos/monedas que el jugador puede ganar. La redacción debe ser lo más abreviada posible.
L["Numbers Of Earned"] = "# Ganados";    --El número de cosas que el jugador ha ganado
L["Track Upgrade Currency"] = "Rastrear crestas";       --Cresta: por ejemplo, Cresta de Ensueño de Draco
L["Track Upgrade Currency Tooltip"] = "Fija la cresta de nivel superior que has ganado en la barra.";
L["Track Holiday Item"] = "Rastrear moneda de evento";       --por ejemplo, Golosinas Travesuras (Fin de Halloween)
L["Currently Pinned Colon"] = "Actualmente fijado:";  --Indica el objeto actualmente fijado
L["Bar Inside The Bag"] = "Barra dentro de la bolsa";     --Coloca la barra dentro de la interfaz de la bolsa (debajo del dinero/moneda)
L["Bar Inside The Bag Tooltip"] = "Coloca la barra dentro de la interfaz de la bolsa.\n\nSolo funciona en el modo de Bolsas Separadas de Blizzard.";
L["Catalyst Charges"] = "Cargas de catalizador";


--Medalla de Carrera de Montar Dragones
L["ModuleName GossipFrameMedal"] = "Medalla de carrera de cielonáutica";
L["ModuleDescription GossipFrameMedal Format"] = "Reemplaza el icono predeterminado %s con la medalla %s que ganes.\n\nPuede tardar un momento en adquirir tus registros cuando interactúas con el NPC.";


--Corrección de Modelo de Druida (Deshabilitado después de 10.2.0)
L["ModuleName DruidModelFix"] = "Corrección de modelo de druida";
L["ModuleDescription DruidModelFix"] = "Corrige el problema de visualización del modelo en la interfaz de personaje causado por el uso del Glifo de las Estrellas\n\nEste error será corregido por Blizzard en la versión 10.2.0 y este módulo será eliminado.";
L["Model Layout"] = "Diseño del modelo";


--Costo de Objeto en la Interfaz de Elección de Jugador (PlayerChoiceFrame)
L["ModuleName PlayerChoiceFrameToken"] = "Interfaz de elección: Costo de objeto";
L["ModuleDescription PlayerChoiceFrameToken"] = "Muestra cuántos objetos se necesitan para completar una acción en la interfaz de elección del jugador.\n\nActualmente solo soporta eventos en La Guerra Interna.";


--Lista de Semillas de Bounty Esmeralda (Mostrar semillas disponibles al acercarse a Bounty Esmeralda 10.2.0)
L["ModuleName EmeraldBountySeedList"] = "Ranura rápida: Semillas oníricas";
L["ModuleDescription EmeraldBountySeedList"] = "Muestra una lista de Semillas Oníricas cuando te acercas a un Bounty Esmeralda."..L["Quick Slot Generic Description"];


--Pin de Mapa: Plantación de Semillas (Agregar pines a WorldMapFrame que muestran ubicaciones de suelos y ciclo/progreso de crecimiento)
L["ModuleName WorldMapPinSeedPlanting"] = "Pin de mapa: Semillas oníricas";
L["ModuleDescription WorldMapPinSeedPlanting"] = "Muestra las ubicaciones de los suelos de Semillas Oníricas y sus ciclos de crecimiento en el mapa mundial."..L["Map Pin Change Size Method"].."\n\n|cffd4641cHabilitar este módulo eliminará el pin de mapa predeterminado del juego para Bounty Esmeralda, lo que puede afectar el comportamiento de otros addons.";
L["Pin Size"] = "Tamaño del Pin";


--Interfaz de Elección de Jugador: Cuidado de Semillas Oníricas (Revisión de PlayerChoiceFrame)
L["ModuleName AlternativePlayerChoiceUI"] = "Interfaz de elección: Cuidado de semillas oníricas";
L["ModuleDescription AlternativePlayerChoiceUI"] = "Reemplaza la interfaz de cuidado de Semillas Oníricas predeterminada con una menos obstructiva, muestra la cantidad de objetos que posees y te permite contribuir automáticamente con objetos al hacer clic y mantener presionado el botón.";


--Ganzúa Práctica (Haz clic derecho en una caja fuerte en tu bolsa para desbloquearla cuando no estés en combate. Disponible para pícaros y mecagnomos)
L["ModuleName HandyLockpick"] = "Ganzúa práctica";
L["ModuleDescription HandyLockpick"] = "Haz clic derecho en una caja fuerte en tu bolsa o en la interfaz de comercio para desbloquearla.\n\n|cffd4641c- " ..L["Restriction Combat"].. "\n- No se puede desbloquear directamente un objeto del banco\n- Afectado por el Modo de Objetivo Suave";
L["Instruction Pick Lock"] = "<Haz clic derecho para Forzar Cerradura>";


--Corrección de Toast de Evento (Haz que el banner de toast (Subir de nivel, Recompensa semanal desbloqueada, etc.) no sea interactivo para que no bloquee tus clics del ratón)
L["ModuleName BlizzFixEventToast"] = "Corrección Blitz: Toast de evento";
L["ModuleDescription BlizzFixEventToast"] = "Modifica el comportamiento de los Toasts de Evento para que no consuman tus clics del ratón. También te permite hacer clic derecho en el toast y cerrarlo inmediatamente.\n\n*Los Toasts de Evento son banners que aparecen en la parte superior de la pantalla cuando completas ciertas actividades.";


--Cabeza Parlante
L["ModuleName TalkingHead"] = HUD_EDIT_MODE_TALKING_HEAD_FRAME_LABEL or "Cabeza parlante";
L["ModuleDescription TalkingHead"] = "Reemplaza la interfaz predeterminada de cabeza parlante con una limpia, sin cabeza.";
L["TalkingHead Option InstantText"] = "Texto instantáneo";   --Mostrar textos inmediatamente, sin desvanecimiento gradual
L["TalkingHead Option TextOutline"] = "Contorno de texto";   --Añadir un trazo/contorno a las letras
L["TalkingHead Option Condition Header"] = "Ocultar textos de fuente:";
L["TalkingHead Option Hide Everything"] = "Ocultar todo";
L["TalkingHead Option Hide Everything Tooltip"] = "|cffff4800Los subtítulos dejarán de mostrarse.|r\n\nLa narración de voz seguirá reproduciéndose y la transcripción se mostrará en la ventana de chat.";
L["TalkingHead Option Condition WorldQuest"] = TRACKER_HEADER_WORLD_QUESTS or "Misiones del mundo";
L["TalkingHead Option Condition WorldQuest Tooltip"] = "Ocultar la transcripción si es de una misión del Mundo.\nA veces, cabeza parlante se activa antes de aceptar la Misión del Mundo, y no podremos ocultarla.";
L["TalkingHead Option Condition Instance"] = INSTANCE or "Instancia";
L["TalkingHead Option Condition Instance Tooltip"] = "Ocultar la transcripción cuando estés en una instancia.";
L["TalkingHead Option Below WorldMap"] = "Enviar al fondo cuando el mapa está abierto";
L["TalkingHead Option Below WorldMap Tooltip"] = "Enviar la cabeza parlante al fondo cuando abres el Mapa del Mundo para que no lo bloquee.";


--Archivos de Azeroth
L["ModuleName Technoscryers"] = "Ranura rápida: Tecnoescrutadores";
L["ModuleDescription Technoscryers"] = "Muestra un botón para ponerse los Tecnoescrutadores cuando estés haciendo la misión del Mundo de Tecnoescrutación."..L["Quick Slot Generic Description"];


--Navegador (Punto de Ruta/SuperSeguimiento) Cadenas Compartidas
L["Priority"] = "Prioridad";
L["Priority Default"] = "Predeterminado";  --Prioridad predeterminada de WoW: Cadáver, Misión, Escenario, Contenido
L["Priority Default Tooltip"] = "Sigue la configuración predeterminada de WoW. Prioriza misiones, cadáveres, ubicaciones de vendedores si es posible. De lo contrario, comienza a rastrear semillas activas.";
L["Stop Tracking"] = "Dejar de rastrear";
L["Click To Track Location"] = "|TInterface/AddOns/Plumber/Art/SuperTracking/TooltipIcon-SuperTrack:0:0:0:0|t " .. "Haz clic izquierdo para rastrear ubicaciones";
L["Click To Track In TomTom"] = "|TInterface/AddOns/Plumber/Art/SuperTracking/TooltipIcon-TomTom:0:0:0:0|t " .. "Haz clic izquierdo para rastrear en TomTom";


--Navegador_SemillasOníricas (Usar Super Seguimiento para guiar a los jugadores)
L["ModuleName Navigator_Dreamseed"] = "Navegador: Semillas oníricas";
L["ModuleDescription Navigator_Dreamseed"] = "Usa el sistema de Puntos de Ruta para guiarte a las semillas oníricas.\n\n*Haz clic derecho en el indicador de ubicación (si lo hay) para más opciones.\n\n|cffd4641cLos puntos de ruta predeterminados del juego serán reemplazados mientras estés en el Sueño Esmeralda.\n\nEl indicador de ubicación de semillas puede ser reemplazado por misiones.|r";
L["Priority New Seeds"] = "Encontrando nuevas semillas";
L["Priority Rewards"] = "Recolectando recompensas";
L["Stop Tracking Dreamseed Tooltip"] = "Deja de rastrear semillas hasta que hagas clic izquierdo en un pin del mapa.";


--BlizzFixWardrobeTrackingTip (Deshabilitar permanentemente el consejo para atajos de vestuario)
L["ModuleName BlizzFixWardrobeTrackingTip"] = "Corrección Blitz: Consejo de vestuario";
L["ModuleDescription BlizzFixWardrobeTrackingTip"] = "Oculta el tutorial para atajos de vestuario.";


--Anuncio de Rareza/Ubicación
L["Announce Location Tooltip"] = "Comparte esta ubicación en el chat.";
L["Announce Forbidden Reason In Cooldown"] = "Has compartido una ubicación recientemente.";
L["Announce Forbidden Reason Duplicate Message"] = "Esta ubicación ha sido compartida por otro jugador recientemente.";
L["Announce Forbidden Reason Soon Despawn"] = "No puedes compartir esta ubicación porque pronto desaparecerá.";
L["Available In Format"] = "Disponible en: |cffffffff%s|r";
L["Seed Color Epic"] = ICON_TAG_RAID_TARGET_DIAMOND3 or "Púrpura";   --Usando GlobalStrings como predeterminados
L["Seed Color Rare"] = ICON_TAG_RAID_TARGET_SQUARE3 or "Azul";
L["Seed Color Uncommon"] = ICON_TAG_RAID_TARGET_TRIANGLE3 or "Verde";


--Tooltip Llaves de Arca
L["ModuleName TooltipChestKeys"] = "Llaves de arca";
L["ModuleDescription TooltipChestKeys"] = "Muestra información sobre la llave necesaria para abrir el arca o puerta actual.";


--Tooltip Tokens de Reputación
L["ModuleName TooltipRepTokens"] = "Tokens de reputación";
L["ModuleDescription TooltipRepTokens"] = "Muestra la información de la facción si el objeto puede usarse para aumentar la reputación.";


--Tooltip Recolor de Montura
L["ModuleName TooltipSnapdragonTreats"] = "Golosinas de dragón";
L["ModuleDescription TooltipSnapdragonTreats"] = "Muestra información adicional para las golosinas de dragón.";
L["Color Applied"] = "Este es el color actualmente aplicado.";


--Tooltip Reagentes de Objetos
L["ModuleName TooltipItemReagents"] = "Componentes";
L["ModuleDescription TooltipItemReagents"] = "Si un objeto puede usarse para combinarse en algo nuevo, muestra todos los \"componentes\" utilizados en el proceso.\n\nPresiona y mantén Mayús para mostrar el objeto creado si es compatible.";
L["Can Create Multiple Item Format"] = "Tienes los recursos para crear |cffffffff%d|r objetos.";


--Tooltip DelvesItem
L["ModuleName TooltipDelvesItem"] = "Objetos de abismos";
L["ModuleDescription TooltipDelvesItem"] = "Muestra cuántas llaves de arca y fragmentos has ganado de los cofres semanales.";
L["You Have Received Weekly Item Format"] = "Has recibido %s esta semana.";


--Tooltip ItemQuest
L["ModuleName TooltipItemQuest"] = "Información emergente: Objetos que inician misiones";
L["ModuleDescription TooltipItemQuest"] = "Si un objeto de tu bolsa inicia una misión, muestra los detalles de la misión.\n\nPuedes hacer Ctrl + clic izquierdo sobre el objeto para verlo en el registro de misiones si ya la has aceptado.";
L["Instruction Show In Quest Log"] = "<Ctrl + clic para ver en el registro de misiones>";


L["ModuleName TooltipTransmogEnsemble"] = "Información emergente: Conjuntos de transfiguración";
L["ModuleDescription TooltipTransmogEnsemble"] = "- Muestra la cantidad de apariencias coleccionables de un conjunto.\n\n- Corrige el problema donde la información emergente indica \"Ya conocido\", aunque todavía puedas usarlo para desbloquear nuevas apariencias.";
L["Collected Appearances"] = "Apariencias coleccionadas";
L["Collected Items"] = "Objetos coleccionados";
L["Other Player Classes"] = "Otras clases";


--Tooltip Housing
L["ModuleName TooltipHousing"] = "Vivienda";
L["ModuleDescription TooltipHousing"] = "Vivienda";
L["Instruction View In Dressing Room"] = "<Ctrl + clic para ver en el vestidor>";  --VIEW_IN_DRESSUP_FRAME
L["Data Loading In Progress"] = "Plumber está cargando los datos";


--Tooltip RichSoil
L["ModuleName TooltipRichSoil"] = "Acceso rápido: Semillas resistentes";
L["ModuleDescription TooltipRichSoil"] = "Para herboristas: muestra una lista de Semillas resistentes al hacer doble clic sobre Tierra fértil."..L["Quick Slot Generic Description"];
L["Instruction Show Resilient Seeds"] = "<Doble clic para mostrar las Semillas resistentes>";
L["No Resilient Seed"] = "No tienes Semillas resistentes";


--Tooltip VendorLocation
L["ModuleName TooltipVendorLocation"] = "Información emergente: Ubicación de vendedores";
L["ModuleDescription TooltipVendorLocation"] = "Muestra dónde canjear determinadas fichas en la información emergente del objeto y permite hacer Ctrl + clic sobre él para colocar un marcador en el mapa hacia el vendedor.";
L["Instruction Set Waypoint"] = "<Ctrl + clic para colocar un marcador en el mapa>";
L["NPC Name Location Format"] = "%s, %s";
L["Intruction Swtich Destinations"] = "Pulsa Alt para cambiar el destino:";
L["Location Note Inside Cave"] = "Dentro de una cueva";
L["Location Note Second Floor"] = "En el piso superior";


--Plunderstore
L["ModuleName Plunderstore"] = "Tienda de saqueo";
L["ModuleDescription Plunderstore"] = "Modifica la tienda abierta a través del buscador de grupos:\n\n- Añade una casilla para ocultar objetos recolectados.\n\n- Muestra el número de objetos no recolectados en los botones de categoría.\n\n- Añade la ubicación de equipamiento de armas y armaduras a sus tooltips.\n\n- Permite ver objetos equipables en el Probador.";
L["Store Full Purchase Price Format"] = "Gana |cffffffff%s|r Saqueo para comprar todo en la tienda.";
L["Store Item Fully Collected"] = "¡Has recolectado todo en la tienda!";


--Precio del Comerciante
L["ModuleName MerchantPrice"] = "Precio del comerciante";
L["ModuleDescription MerchantPrice"] = "Modifica los comportamientos de la interfaz del comerciante:\n\n- Atenúa solo las monedas insuficientes.\n\n- Muestra todos los objetos requeridos en la caja de monedas.";
L["Num Items In Bank Format"] = (BANK or "Banco") ..": |cffffffff%d|r";
L["Num Items In Bag Format"] = (HUD_EDIT_MODE_BAGS_LABEL or "Bolsas") ..": |cffffffff%d|r";
L["Number Thousands"] = "K";    --15K  15,000
L["Number Millions"] = "M";     --1.5M 1,500,000
L["Questionable Item Count Tooltip"] = "El conteo de objetos puede ser incorrecto debido a limitaciones del addon.";


--QueueStatus
L["ModuleName QueueStatus"] = "Estado de la cola";
L["ModuleDescription QueueStatus"] = "Añade una barra de progreso al Ojo del Buscador de grupos que muestra el porcentaje de compañeros encontrados. Los tanques y sanadores tienen un mayor peso.\n\n(Opcional) Muestra la diferencia entre el tiempo de espera promedio y el tiempo que llevas en la cola.";
L["QueueStatus Show Time"] = "Mostrar tiempo";
L["QueueStatus Show Time Tooltip"] = "Muestra la diferencia entre el tiempo de espera promedio y el tiempo que llevas en la cola.";


--Landing Page (Resumen de Expansión Minimapa)
L["ModuleName ExpansionLandingPage"] = WAR_WITHIN_LANDING_PAGE_TITLE or "Resumen de Khaz Algar";
L["ModuleDescription ExpansionLandingPage"] = "Muestra información adicional en la página de aterrizaje:\n\n- Nivel de pacto de hilos cortados";
L["Instruction Track Reputation"] = "<Mayús+clic para seguir esta reputación>";
L["Instruction Untrack Reputation"] = CONTENT_TRACKING_UNTRACK_TOOLTIP_PROMPT or "<Mayús+clic para dejar de seguir>";
L["Error Show UI In Combat"] = "No puedes mostrar esta interfaz mientras estás en combate.";
L["Error Show UI In Combat 1"] = "Realmente no puedes mostrar u ocultar esta interfaz mientras estás en combate.";
L["Error Show UI In Combat 2"] = "POR FAVOR, DETENTE";


--Landing Page Switch
L["ModuleName LandingPageSwitch"] = "Informe de misión del minimapa";
L["ModuleDescription LandingPageSwitch"] = "Accede a los informes de misión de la fortaleza y de la sala de clase haciendo clic derecho en el botón de resumen de renombre en el minimapa.";
L["Mission Complete Count Format"] = "%d Listo para completar";
L["Open Mission Report Tooltip"] = "Haz clic derecho para abrir informes de misión.";


--Pin de Mapa_TWW (Mostrar Pines en el Mapa del Continente)
L["ModuleName WorldMapPin_TWW"] = "Pin de mapa: "..(EXPANSION_NAME10 or "The War Within");
L["ModuleDescription WorldMapPin_TWW"] = "Muestra pines adicionales en el mapa del continente de Khaz Algar:\n\n- %s\n\n- %s";  --Reemplazaremos %s con locales (Ver Nombre del Filtro de Pin de Mapa al final)


--Delves
L["Great Vault Tier Format"] = GREAT_VAULT_WORLD_TIER or "Nivel %s";
L["Great Vault World Activity Tooltip"] = "Nivel 1 y actividades del mundo";
L["Item Level Format"] = ITEM_LEVEL or "Nivel de objeto %d";
L["Item Level Abbr"] = ITEM_LEVEL_ABBR or "iLvl";
L["Delves Reputation Name"] = "Viaje del explorador";
L["ModuleName Delves_SeasonProgress"] = "Abismos: Viaje del explorador";
L["ModuleDescription Delves_SeasonProgress"] = "Muestra una barra de progreso en la parte superior de la pantalla cada vez que ganes Viaje del Explorador";
L["ModuleName Delves_Dashboard"] = "Abismos: Recompensa semanal";
L["ModuleDescription Delves_Dashboard"] = "Muestra tu progreso en la Gran Bóveda y el Alijo Dorado en el tablero de abismos.";
L["ModuleName Delves_Automation"] = "Abismos: Elección automática de poder";
L["ModuleDescription Delves_Automation"] = "Elige automáticamente el poder otorgado por tesoros y raros.";
L["Delve Crest Stash No Info"] = "Esta información no está disponible en tu ubicación actual.";
L["Delve Crest Stash Requirement"] = "Aparece en los abismos abundantes de Nivel 11.";
L["Delve Crest Stash Old Data"] = "Esta información puede ser inexacta en tu ubicación actual. Consulta el selector de dificultad de las Abismos.";
L["Overcharged Delve"] = "Abismo sobrecargado";
L["Delves History Requires AddOn"] = "El historial de Abismos se almacena localmente mediante el complemento Plumber.";
L["Auto Select"] = "Selección automática";
L["Power Borrowed"] = "Poder tomado";


--Aniversario de WoW
L["ModuleName WoWAnniversary"] = "Aniversario de WoW";
L["ModuleDescription WoWAnniversary"] = "- Invoca la montura correspondiente fácilmente durante el evento de Maniaco de Monturas.\n\n- Muestra los resultados de la votación durante el evento de Frenesí de Moda.";
L["Voting Result Header"] = "Resultados";
L["Mount Not Collected"] = MOUNT_JOURNAL_NOT_COLLECTED or "No has recolectado esta montura.";


--Corrección de Artefacto de Pesca
L["ModuleName BlizzFixFishingArtifact"] = "Corrección Blitz: Angler de Luz Abisal";
L["ModuleDescription BlizzFixFishingArtifact"] = "Permite ver nuevamente los rasgos del artefacto de pesca.";


--Alerta de Destrucción de Objeto de Misión
L["ModuleName QuestItemDestroyAlert"] = "Confirmación de eliminación de objeto de misión";
L["ModuleDescription QuestItemDestroyAlert"] = "Muestra la información de la misión asociada cuando intentas destruir un objeto que inicia una misión. \n\n|cffd4641cSolo funciona para objetos que inician misiones, no para aquellos que obtienes después de aceptar una misión.|r";


--Información de Lanzamiento de Hechizos
L["ModuleName SpellcastingInfo"] = "Información de lanzamiento de hechizos del objetivo";
L["ModuleDescription SpellcastingInfo"] = "- Muestra el tooltip del hechizo al pasar el cursor sobre la Barra de Lanzamiento en el Marco del Objetivo.\n\n- Guarda las habilidades del monstruo que luego pueden ser vistas haciendo clic derecho en el Marco del Objetivo.";
L["Abilities"] = ABILITIES or "Habilidades";
L["Spell Colon"] = "Hechizo: ";   --Mostrar SpellID
L["Icon Colon"] = "Icono: ";     --Mostrar IconFileID


--Opciones de Chat
L["ModuleName ChatOptions"] = "Opciones de canal de chat";
L["ModuleDescription ChatOptions"] = "Añade botones de salir al menú que aparece al hacer clic derecho en el nombre del canal en la ventana de chat.";
L["Chat Leave"] = CHAT_LEAVE or "Salir";
L["Chat Leave All Characters"] = "Salir en todos los personajes";
L["Chat Leave All Characters Tooltip"] = "Saldrás automáticamente de este canal cuando inicies sesión en un personaje.";
L["Chat Auto Leave Alert Format"] = "¿Deseas salir automáticamente de |cffffc0c0[%s]|r en todos tus personajes?";
L["Chat Auto Leave Cancel Format"] = "Salida Automática Deshabilitada para %s. Por favor, usa el comando /join para volver a unirte al canal.";
L["Auto Leave Channel Format"] = "Salir automáticamente de \"%s\"";
L["Click To Disable"] = "Haz clic para deshabilitar";


--NameplateWidget
L["ModuleName NameplateWidget"] = "Placa de nombre: Llama clave";
L["ModuleDescription NameplateWidget"] = "Muestra el número de fragmentos radiantes poseídos en la placa de nombre.";


--NameplateQuestIndicator
L["ModuleName NameplateQuest"] = "Placas de nombre: Indicador de misión";
L["ModuleDescription NameplateQuest"] = "Muestra un indicador de misión en las placas de nombre.\n\n- (Opcional) Muestra el progreso del objetivo de la misión para tu objetivo.\n\n- (Opcional) Muestra el indicador de misión si los miembros de tu grupo aún no han completado el objetivo.";
L["NameplateQuest ShowPartyQuest"] = "Mostrar misión de los miembros del grupo";
L["NameplateQuest ShowPartyQuest Tooltip"] = "Muestra un marcador %s si uno de los miembros de tu grupo aún no ha completado el objetivo de la misión.";
L["NameplateQuest ShowTargetProgress"] = "Mostrar progreso en el objetivo";
L["NameplateQuest ShowTargetProgress Tooltip"] = "Muestra el progreso del objetivo de la misión en la placa de nombre de tu objetivo.";
L["NameplateQuest ShowProgressOnHover"] = "Mostrar progreso al pasar el cursor";
L["NameplateQuest ShowProgressOnHover Tooltip"] = "Muestra el progreso del objetivo de la misión al pasar el cursor sobre una placa de nombre o una unidad.";
L["NameplateQuest ShowProgressOnKeyPress"] = "Mostrar progreso al pulsar";
L["NameplateQuest ShowProgressOnKeyPress Tooltip Title"] = "Mostrar progreso al pulsar una tecla";
L["NameplateQuest ShowProgressOnKeyPress Tooltip Format"] = "Muestra el progreso del objetivo de la misión al pulsar la tecla |cffffffff%s|r.";
L["NameplateQuest Instruction Find Nameplate"] = "Para ajustar la posición del icono, ve a un lugar donde haya placas de nombre de PNJ visibles.";
L["NameplateQuest Progress Format"] = "Formato del progreso";
L["Progress Show Icon"] = "Mostrar icono";
L["Progress Format Completed"] = "Completado/Requerido";
L["Progress Format Remaining"] = "Restante";


--PartyInviterInfo
L["ModuleName PartyInviterInfo"] = "Información del invitador de grupo";
L["ModuleDescription PartyInviterInfo"] = "Muestra el nivel y la clase del invitador cuando te invitan a un grupo o a una hermandad.";
L["Additional Info"] = "Información adicional";
L["Race"] = RACE or "Raza";
L["Faction"] = FACTION or "Facción";
L["Click To Search Player"] = "Buscar este jugador";
L["Searching Player In Progress"] = FRIENDS_FRIENDS_WAITING or "Buscando...";
L["Player Not Found"] = ERR_FRIEND_NOT_FOUND or "Jugador no encontrado.";


--PlayerTitleUI
L["ModuleName PlayerTitleUI"] = "Gestor de títulos";
L["ModuleDescription PlayerTitleUI"] = "Añade un cuadro de búsqueda y un filtro al panel de personaje predeterminado.";
L["Right Click To Reset Filter"] = "Haz clic derecho para restablecer.";
L["Earned"] = ACHIEVEMENTFRAME_FILTER_COMPLETED or "Ganado";
L["Unearned"] = "No ganado";
L["Unearned Filter Tooltip"] = "Puede que veas títulos duplicados que no están disponibles para tu facción.";


--BlizzardSuperTrack
L["ModuleName BlizzardSuperTrack"] = "Punto de ruta: Temporizador de evento";
L["ModuleDescription BlizzardSuperTrack"] = "Añade un temporizador a tu punto de ruta activo si su tooltip de pin de mapa tiene uno.";


--ProfessionsBook
L["ModuleName ProfessionsBook"] = PROFESSIONS_SPECIALIZATION_UNSPENT_POINTS or "Conocimiento no gastado";
L["ModuleDescription ProfessionsBook"] = "Muestra la cantidad de tu Conocimiento de Especialización de Profesión no gastado en la interfaz del Libro de Profesiones";
L["Unspent Knowledge Tooltip Format"] = "Tienes |cffffffff%s|r Conocimiento de Especialización de Profesión no gastado."  --see PROFESSIONS_UNSPENT_SPEC_POINTS_REMINDER


--TooltipProfessionKnowledge
L["ModuleName TooltipProfessionKnowledge"] = L["ModuleName ProfessionsBook"];
L["ModuleDescription TooltipProfessionKnowledge"] = "Muestra la cantidad de tu Conocimiento de Especialización de Profesión no gastado.";
L["Available Knowledge Format"] = "Conocimiento disponible: |cffffffff%s|r";


--MinimapMouseover (haz clic para /tar criatura en el minimapa)
L["ModuleName MinimapMouseover"] = "Minimapa: Selección rápida";
L["ModuleDescription MinimapMouseover"] = "Haz Alt+Clic en una criatura en el minimapa para seleccionarla como tu objetivo.".."\n\n|cffd4641c- " ..L["Restriction Combat"].."|r";


--BossBanner
L["ModuleName BossBanner"] = "Banner de botín de jefes";
L["ModuleDescription BossBanner"] = "Modifica el banner que aparece en la parte superior de la pantalla cuando un jugador en tu grupo recibe un botín.\n\n- Ocultar cuando esté solo.\n\n- Mostrar solo objetos valiosos.";
L["BossBanner Hide When Solo"] = "Ocultar cuando esté solo";
L["BossBanner Hide When Solo Tooltip"] = "Ocultar el banner si solo hay una persona (tú) en tu grupo.";
L["BossBanner Valuable Item Only"] = "Solo objetos valiosos";
L["BossBanner Valuable Item Only Tooltip"] = "Mostrar solo monturas, tokens de clase y objetos que están marcados como Muy Raros o Extremadamente Raros en el banner.";


--AppearanceTab
L["ModuleName AppearanceTab"] = "Pestaña de apariencias";
L["ModuleDescription AppearanceTab"] = "Modifica la pestaña de apariencias en las colecciones de la banda:\n\n- Reduce la carga de la GPU al mejorar la secuencia de carga de modelos y cambiar el número de elementos mostrados por página. Puede reducir la posibilidad de un fallo gráfico al abrir esta interfaz.\n\n- Recuerda la página que visitas después de cambiar de ranuras.";


--SoftTargetName
L["ModuleName SoftTargetName"] = "Placa de nombre: Objetivo suave";
L["ModuleDescription SoftTargetName"] = "Muestra el nombre del objeto objetivo suave.";
L["SoftTargetName Req Title"] = "|cffd4641cDebes cambiar manualmente estas configuraciones para que funcione:|r";
L["SoftTargetName Req 1"] = "|cffffd100Habilitar la tecla de interacción|r en Opciones de juego> Jugabilidad> Controles.";
L["SoftTargetName Req 2"] = "Establecer CVar |cffffd100SoftTargetIconGameObject|r en |cffffffff1|r";
L["SoftTargetName CastBar"] = "Mostrar barra de lanzamiento";
L["SoftTargetName CastBar Tooltip"] = "Mostrar una barra de lanzamiento radial en la placa de nombre.\n\n|cffff4800El complemento no podrá determinar qué objeto es el objetivo de tu hechizo.|r"
L["SoftTargetName QuestObjective"] = QUEST_LOG_SHOW_OBJECTIVES or "Mostrar objetivos de la misión";
L["SoftTargetName QuestObjective Tooltip"] = "Mostrar los objetivos de la misión (si los hay) debajo del nombre.";
L["SoftTargetName QuestObjective Alert"] = "Esta función requiere habilitar |cffffffffMostrar información sobre el objetivo|r en Opciones de juego> Accesibilidad> General.";   --See globals: TARGET_TOOLTIP_OPTION
L["SoftTargetName ShowNPC"] = "Incluir NPC";
L["SoftTargetName ShowNPC Tooltip"] = "Si está deshabilitado, el nombre solo aparecerá en objetos de juego interactuables.";
L["SoftTargetName HideIcon"] = "Ocultar icono de interacción";
L["SoftTargetName HideIcon Tooltip"] = "Oculta el icono de interacción y la barra de lanzamiento circular cuando estés en una casa.";
L["SoftTargetName HideName"] = "Ocultar nombre del objeto";
L["SoftTargetName HideName Tooltip"] = "Oculta el nombre del objeto del objetivo flexible cuando estés en una casa.";


--LegionRemix
L["ModuleName LegionRemix"] = "Legion Remix";
L["ModuleDescription LegionRemix"] = "- Aprende automáticamente los rasgos.\n\n- Añade un widget al panel de personaje que proporciona diversos tipos de información. Puedes hacer clic en este widget para abrir una nueva interfaz del Arma artefacto.";
L["ModuleName LegionRemix_HideWorldTier"] = "Ocultar icono del nivel de mundo";
L["ModuleDescription LegionRemix_HideWorldTier"] = "Oculta el icono del nivel de mundo heroico debajo del minimapa.";
L["ModuleName LegionRemix_LFGSpam"] = "Spam del buscador de bandas";
L["ModuleDescription LegionRemix_LFGSpam"] = "Suprime el siguiente mensaje de spam:\n\n"..ERR_LFG_PROPOSAL_FAILED;
L["Artifact Weapon"] = "Arma artefacto";
L["Artifact Ability"] = "Habilidad de artefacto";
L["Artifact Traits"] = "Rasgos de artefacto";
L["Earn X To Upgrade Y Format"] = "Consigue |cffffffff%s|r %s más para mejorar %s"; --Example: Earn another 100 Infinite Power to upgrade Artifact Weapon
L["Until Next Upgrade Format"] = "%s hasta la siguiente mejora";
L["New Trait Available"] = "Hay un nuevo rasgo disponible.";
L["Rank Format"] = "Rango %s";
L["Rank Increased"] = "Rango aumentado";
L["Infinite Knowledge Tooltip"] = "Puedes obtener Conocimiento infinito completando determinados logros de Legion Remix.";
L["Stat Bonuses"] = "Bonificaciones de estadísticas";
L["Bonus Traits"] = "Rasgos adicionales:";
L["Instruction Open Artifact UI"] = "Clic izquierdo para mostrar u ocultar la interfaz del artefacto\nClic derecho para mostrar la configuración";
L["LegionRemix Widget Title"] = "Widget de Plumber";
L["Trait Icon Mode"] = "Modo de iconos de rasgos:";
L["Trait Icon Mode Hidden"] = "No mostrar";
L["Trait Icon Mode Mini"] = "Mostrar iconos pequeños";
L["Trait Icon Mode Replace"] = "Reemplazar iconos de objetos";
L["Error Drag Spell In Combat"] = "No puedes arrastrar un hechizo mientras estás en combate.";
L["Error Change Trait In Combat"] = "No puedes cambiar los rasgos mientras estás en combate.";
L["Amount Required To Unlock Format"] = "%s para desbloquear";   --Earn another x amount to unlock (something)
L["Soon To Unlock"] = "Se desbloqueará pronto";
L["You Can Unlock Title"] = "Puedes desbloquear";
L["Artifact Ability Auto Unlock Tooltip"] = "Este rasgo se desbloqueará automáticamente cuando tengas suficiente Poder infinito.";
L["Require More Bag Slot Alert"] = "Necesitas liberar espacio en tus bolsas antes de realizar esta acción.";
L["Spell Not Known"] = SPELL_FAILED_NOT_KNOWN or "Hechizo no aprendido";
L["Fully Upgraded"] = AZERITE_EMPOWERED_ITEM_FULLY_UPGRADED or "Mejorado por completo";
L["Unlock Level Requirement Format"] = "Alcanza el nivel %d para desbloquear";
L["Auto Learn Traits"] = "Aprender rasgos automáticamente";
L["Auto Learn Traits Tooltip"] = "Mejora automáticamente los rasgos del artefacto cuando tengas suficiente Poder infinito.";
L["Infinite Power Yield Format"] = "Otorga |cffffffff%s|r de Poder con tu nivel actual de Conocimiento.";
L["Infinite Knowledge Bonus Format"] = "Bonificación actual: |cffffffff%s|r";
L["Infinite Knowledge Bonus Next Format"] = "Siguiente rango: %s";


--ItemUpgradeUI
L["ModuleName ItemUpgradeUI"] = "Mejoras de objetos: Mostrar panel de personaje";
L["ModuleDescription ItemUpgradeUI"] = "Abrir automáticamente el panel de personaje cuando interactúas con un NPC de mejoras de objetos.";


--HolidayDungeon
L["ModuleName HolidayDungeon"] = "Seleccionar automáticamente clabozo de evento";
L["ModuleDescription HolidayDungeon"] = "Selecciona automáticamente las clabozos de evento y de Paseo en el tiempo la primera vez que abras el Buscador de clabozos.";


--PlayerPing
L["ModuleName PlayerPing"] = "Marcador del mapa: Ping del jugador";
L["ModuleDescription PlayerPing"] = "Resalta la ubicación del jugador con un efecto de ping cuando:\n\n- Abres el mapa del mundo.\n\n- Pulsas la tecla ALT.\n\n- Haces clic en el botón de maximizar.\n\n|cffd4641cDe forma predeterminada, WoW solo muestra el ping del jugador cuando cambias de mapa.|r";


--StaticPopup_Confirm
L["ModuleName StaticPopup_Confirm"] = "Alerta de compra no reembolsable";
L["ModuleDescription StaticPopup_Confirm"] = "Ajusta el diálogo de confirmación que aparece al comprar un objeto no reembolsable, añadiendo un breve bloqueo al botón 'Sí' y resaltando las palabras clave en rojo.\n\nEste módulo también reduce a la mitad el tiempo de conversión de conjuntos de clase.";


--Loot UI
L["ModuleName LootUI"] = HUD_EDIT_MODE_LOOT_FRAME_LABEL or "Ventana de botín";
L["ModuleDescription LootUI"] = "Reemplaza la ventana de botín predeterminada y proporciona algunas características opcionales:\n\n- Recoger objetos rápidamente.\n\n- Corregir el error de fallo de Auto Botín.\n\n- Mostrar un botón de Tomar Todo al recoger manualmente.";
L["Take All"] = "Tomar Todo";     --Tomar todos los objetos de una ventana de botín
L["You Received"] = YOU_RECEIVED_LABEL or "Has recibido";
L["Reach Currency Cap"] = "Has alcanzado el límite de moneda";
L["Sample Item 4"] = "Objeto épico asombroso";
L["Sample Item 3"] = "Objeto raro asombroso";
L["Sample Item 2"] = "Objeto poco común asombroso";
L["Sample Item 1"] = "Objeto común";
L["Manual Loot Instruction Format"] = "Para cancelar temporalmente el auto botín en una recogida específica, presiona y mantén la tecla |cffffffff%s|r hasta que aparezca la ventana de botín.";
L["LootUI Option Hide Window"] = "Ocultar ventana de botín de Plumber";
L["LootUI Option Hide Window Tooltip"] = "Oculta la ventana de notificación de botín de Plumber, pero mantiene activadas las funciones en segundo plano como el botín automático forzado.";
L["LootUI Option Hide Window Tooltip 2"] = "Esta opción no afecta a la ventana de botín de Blizzard.";
L["LootUI Option Force Auto Loot"] = "Forzar auto botín";
L["LootUI Option Force Auto Loot Tooltip"] = "Siempre habilitar auto botín para contrarrestar el fallo ocasional del auto botín.";
L["LootUI Option Owned Count"] = "Mostrar número de objetos poseídos";
L["LootUI Option New Transmog"] = "Marcar apariencia no coleccionada";
L["LootUI Option New Transmog Tooltip"] = "Añadir un marcador %s si no has coleccionado la apariencia del objeto.";
L["LootUI Option Use Hotkey"] = "Presionar tecla para tomar todos los objetos";
L["LootUI Option Use Hotkey Tooltip"] = "Mientras estés en modo de botín manual, presiona la siguiente tecla para tomar todos los objetos.";
L["LootUI Option Fade Delay"] = "Retraso de desvanecimiento por objeto";
L["LootUI Option Items Per Page"] = "Objetos por página";
L["LootUI Option Items Per Page Tooltip"] = "Ajusta la cantidad de objetos que se pueden mostrar en una página al recibir botines.\n\nEsta opción no afecta el Modo de Botín Manual o el Modo de Edición.";
L["LootUI Option Replace Default"] = "Reemplazar alerta de botín predeterminada";
L["LootUI Option Replace Default Tooltip"] = "Reemplaza las alertas de botín predeterminadas que suelen aparecer sobre las barras de acción.";
L["LootUI Option Loot Under Mouse"] = LOOT_UNDER_MOUSE_TEXT or "Abrir ventana de botín en el ratón";
L["LootUI Option Loot Under Mouse Tooltip"] = "Mientras estés en |cffffffffModo de botín manual|r, la ventana aparecerá bajo la ubicación actual del ratón";
L["LootUI Option Use Default UI"] = "Usar ventana de botín predeterminada";
L["LootUI Option Use Default UI Tooltip"] = "Usar la ventana de botín predeterminada de WoW.\n\n|cffff4800Habilitar esta opción anula todas las configuraciones anteriores.|r";
L["LootUI Option Background Opacity"] = "Opacidad";
L["LootUI Option Background Opacity Tooltip"] = "Establece la opacidad del fondo en el modo de notificación de botín.\n\nEsta opción no afecta el modo de botín manual.";
L["LootUI Option Custom Quality Color"] = "Usar color de calidad personalizado";
L["LootUI Option Custom Quality Color Tooltip"] = "Usa los colores que configuraste en Opciones del Juego > Accesibilidad > Colores.";
L["LootUI Option Grow Direction"] = "Expandir hacia arriba";
L["LootUI Option Grow Direction Tooltip 1"] = "Si está habilitado: la esquina inferior izquierda de la ventana permanece fija y las nuevas notificaciones aparecerán encima de las anteriores.";
L["LootUI Option Grow Direction Tooltip 2"] = "Si está deshabilitado: la esquina superior izquierda de la ventana permanece fija y las nuevas notificaciones aparecerán debajo de las anteriores.";
L["Junk Items"] = "Objetos basura";
L["LootUI Option Combine Items"] = "Combinar objetos similares";
L["LootUI Option Combine Items Tooltip"] = "Mostrar objetos similares en una sola fila. Categorías compatibles:\n\n- Objetos en desuso\n- Recuerdos de época (Remix de Legion)";
L["LootUI Option Low Frame Strata"] = "Enviar al fondo";
L["LootUI Option Low Frame Strata Tooltip"] = "En el modo de notificación de botín, coloca la ventana de botín detrás de otros elementos de la interfaz.\n\nEsta opción no afecta al modo de botín manual.";
L["LootUI Option Show Reputation"] = "Mostrar cambios de reputación";
L["LootUI Option Show Reputation Tooltip"] = "Muestra cualquier aumento de reputación en la ventana de botín.\n\nLas reputaciones obtenidas durante combate o en campos de batalla JcJ se mostrarán después.";
L["LootUI Option Show All Money"] = "Mostrar todo el dinero";
L["LootUI Option Show All Money Tooltip"] = "Muestra el dinero obtenido de todas las fuentes, no solo del botín.";
L["LootUI Option Show All Currency"] = "Mostrar todas las divisas";
L["LootUI Option Show All Currency Tooltip"] = "Muestra las divisas obtenidas de todas las fuentes, no solo del botín.\n\n|cffff4800A veces podrías ver divisas que no aparecen en la ventana de chat.|r";
L["LootUI Option Hide Title"] = "Ocultar texto \"Has recibido\"";
L["LootUI Option Hide Title Tooltip"] = "Oculta el texto \"Has recibido\" en la parte superior de la ventana de botín.";


--Ranura Rápida para Desarrolladores de Terceros
L["Quickslot Module Info"] = "Información del módulo";
L["QuickSlot Error 1"] = "Ranura rápida: Ya has añadido este controlador.";
L["QuickSlot Error 2"] = "Ranura rápida: Falta el controlador \"%s\"";
L["QuickSlot Error 3"] = "Ranura rápida: Ya existe un controlador con la misma clave \"%s\".";


--Macro de Plumber
L["PlumberMacro Drive"] = "Macro de Plumber M.O.T.O.R.";
L["PlumberMacro Drawer"] = "Macro de Plumber Drawer";
L["PlumberMacro Housing"] = "Macro de vivienda de Plumber";
L["PlumberMacro Torch"] = "Macro de antorcha de Plumber";
L["PlumberMacro Outfit"] = "Macro de atuendo de Plumber";
L["PlumberMacro DrawerFlag Combat"] = "El cajón se actualizará después de salir de combate.";
L["PlumberMacro DrawerFlag Stuck"] = "Algo salió mal al actualizar el cajón.";
L["PlumberMacro Error Combat"] = "No disponible en combate";
L["PlumberMacro Error NoAction"] = "No hay acciones compatibles";
L["PlumberMacro Error EditMacroInCombat"] = "No se pueden editar macros mientras estás en combate";
L["Random Favorite Mount"] = "Montura favorita aleatoria"; --A shorter version of MOUNT_JOURNAL_SUMMON_RANDOM_FAVORITE_MOUNT
L["Dismiss Battle Pet"] = "Descartar mascota de batalla";
L["Drag And Drop Item Here"] = "Arrastra y suelta un objeto aquí.";
L["Drag To Reorder"] = "Haz clic izquierdo y arrastra para reordenar";
L["Click To Set Macro Icon"] = "Ctrl clic para establecer como icono de macro";
L["Unsupported Action Type Format"] = "Tipo de acción no soportado: %s";
L["Drawer Add Action Format"] = "Añadir |cffffffff%s|r";
L["Drawer Add Profession1"] = "Primera Profesión";
L["Drawer Add Profession2"] = "Segunda Profesión";
L["Drawer Option Global Tooltip"] = "Esta configuración se comparte entre todas las macros del cajón.";
L["Drawer Option CloseAfterClick"] = "Cerrar después de hacer clic";
L["Drawer Option CloseAfterClick Tooltip"] = "Cerrar el cajón después de hacer clic en cualquier botón, independientemente de si tuvo éxito o no.";
L["Drawer Option SingleRow"] = "Fila única";
L["Drawer Option SingleRow Tooltip"] = "Si está marcado, alinea todos los botones en la misma fila en lugar de 4 elementos por fila.";
L["Drawer Option Hide Unusable"] = "Ocultar acciones no utilizables";
L["Drawer Option Hide Unusable Tooltip"] = "Ocultar objetos no poseídos y hechizos no aprendidos.\n\nLos objetos consumibles como pociones siempre se mostrarán.";
L["Drawer Option Hide Unusable Tooltip 2"] = "Los objetos consumibles como pociones siempre se mostrarán."
L["Drawer Option Update Frequently"] = "Actualizar con frecuencia";
L["Drawer Option Update Frequently Tooltip"] = "Intentar actualizar el estado de los botones siempre que haya un cambio en tus bolsas o libros de hechizos. Habilitar esta opción puede aumentar ligeramente el uso de recursos.";
L["ModuleName DrawerMacro"] = "Macro de Drawer";
L["ModuleDescription DrawerMacro"] = "Crea un menú desplegable personalizado para gestionar tus objetos, hechizos, mascotas, monturas y juguetes.\n\nPara crear un macro de cajón, primero crea un nuevo macro y luego introduce |cffd7c0a3#plumber:drawer|r en el cuadro de edición del comando.";
L["No Slot For New Character Macro Alert"] = "Necesitas tener un espacio libre en los macros específicos del personaje para completar esta acción.";


--New Expansion Landing Page
L["ModuleName NewExpansionLandingPage"] = "Resumen de expansión";
L["ModuleDescription NewExpansionLandingPage"] = "Una interfaz que muestra facciones, actividades semanales y bloqueos de banda. Puedes abrirla:\n\n- Haciendo clic en el botón Resumen de Khaz Algar en el minimapa.\n\n- Estableciendo una tecla de acceso rápido en Configuración del Juego> Asignaciones de Teclas.";
L["Abbr NewExpansionLandingPage"] = "Resumen de expansión"; --Versión abreviada de la misma frase. Afecta al alemán.
L["Reward Available"] = "Recompensa Disponible";  --As brief as possible
L["Paragon Reward Available"] = "Recompensa de Paragon Disponible";
L["Until Next Level Format"] = "%d hasta el siguiente nivel";   --Earn x reputation to reach the next level
L["Until Paragon Reward Format"] = "%d hasta la recompensa de Paragon";
L["Instruction Click To View Renown"] = REPUTATION_BUTTON_TOOLTIP_VIEW_RENOWN_INSTRUCTION or "<Haga clic para ver el Renombre>";
L["Instruction Click To View Companion"] = "<Haz clic para ver el compañero de los abismos>";
L["Not On Quest"] = "No estás en esta misión";
L["Factions"] = "Facciones";
L["Activities"] = MAP_LEGEND_CATEGORY_ACTIVITIES or "Actividades";
L["Raids"] = RAIDS or "Bandas";
L["Instruction Track Achievement"] = "<Mayús+clic para seguir este logro>";
L["Instruction Untrack Achievement"] = CONTENT_TRACKING_UNTRACK_TOOLTIP_PROMPT or "<Mayús+clic para dejar de seguir>";
L["No Data"] = "No hay datos";
L["No Raid Boss Selected"] = "Jefe no seleccionado";
L["Your Class"] = "(Tu Clase)";
L["Great Vault"] = DELVES_GREAT_VAULT_LABEL or "Gran Bóveda";
L["Item Upgrade"] = ITEM_UPGRADE or "Mejora de objeto";
L["Resources"] = WORLD_QUEST_REWARD_FILTERS_RESOURCES or "Recursos";
L["Plumber Experimental Feature Tooltip"] = "Una función experimental en el complemento Plumber.";
L["Bountiful Delves Rep Label"] = "Bono de reputación";
L["Bountiful Delves Rep Tooltip"] = "Abrir un arca abundante tiene una oportunidad de aumentar tu reputación con esta facción.";
L["Warband Weekly Reward Tooltip"] = "Tu Banda solo puede recibir esta recompensa una vez por semana.";
L["Completed"] = CRITERIA_COMPLETED or "Completado";
L["Filter Hide Completed Format"] = "Ocultar Completado (%d)";
L["Weeky Reset Format"] = "Reinicio Semanal: %s";
L["Daily Reset Format"] = "Reinicio Diario: %s";
L["Ready To Turn In Tooltip"] = "Listo para entregar.";
L["Trackers"] = "Rastreadores";
L["New Tracker Title"] = "Nuevo rastreador";     --Crear un nuevo rastreador
L["Edit Tracker Title"] = "Editar rastreador";
L["Type"] = "Tipo";
L["Select Instruction"] = LFG_LIST_SELECT or "Seleccionar";
L["Name"] = "Nombre";
L["Difficulty"] = LFG_LIST_DIFFICULTY or "Dificultad";
L["All Difficulties"] = "Todas las dificultades";
L["TrackerType Boss"] = "Jefe";
L["TrackerType Instance"] = "Instancia";
L["TrackerType Quest"] = "Misión";
L["TrackerType Rare"] = "Criatura rara";
L["TrackerTypePlural Boss"] = "Jefes";
L["TrackerTypePlural Instance"] = "Instancias";
L["TrackerTypePlural Quest"] = "Misiones";
L["TrackerTypePlural Rare"] = "Criaturas raras";
L["Accountwide"] = "Cuenta";
L["Flag Quest"] = "Misión de bandera";
L["Boss Name"] = "Nombre del jefe";
L["Instance Or Boss Name"] = "Instancia o nombre del jefe";
L["Name EditBox Disabled Reason Format"] = "Esta casilla se completará automáticamente cuando ingreses un %s válido.";
L["Search No Matches"] = CLUB_FINDER_APPLICANT_LIST_NO_MATCHING_SPECS or "Sin coincidencias";
L["Create New Tracker"] = "Nuevo rastreador";
L["FailureReason Already Exist"] = "Esta entrada ya existe.";
L["Quest ID"] = "ID de misión";
L["Creature ID"] = "ID de criatura";
L["Edit"] = EDIT or "Editar";
L["Delete"] = DELETE or "Eliminar";
L["Visit Quest Hub To Log Quests"] = "Visita el centro de misiones e interactúa con los emisarios para registrar las misiones de hoy.";
L["Quest Hub Instruction Celestials"] = "Visita al intendente de los Augustos Celestiales en el Valle de la Flor Eterna para saber qué templo necesita tu ayuda.";
L["Unavailable Klaxxi Paragons"] = "Paragones Klaxxi no disponibles:";
L["Weekly Coffer Key Tooltip"] = "Los primeros cuatro cofres semanales que ganes cada semana contienen una llave de arca restaurada.";
L["Weekly Coffer Key Shards Tooltip"] = "Los primeros cuatro cofres semanales que ganes cada semana contienen Fragmentos de llave de arca.";
L["Weekly Cap"] = "Límite semanal";
L["Weekly Cap Reached"] = "Límite semanal alcanzado.";
L["Instruction Right Click To Use"] = "<Haz clic derecho para usar>";
L["Join Queue"] = WOW_LABS_JOIN_QUEUE or "Unirse a la cola";
L["In Queue"] = BATTLEFIELD_QUEUE_STATUS or "En cola";
L["Click To Switch"] = "Haz clic para cambiar a |cffffffff%s|r";
L["Click To Queue"] = "Haz clic para entrar en la cola de |cffffffff%s|r";
L["Click to Open Format"] = "Haz clic para abrir %s";
L["List Is Empty"] = "La lista está vacía.";
L["Prey No Data"] = "Progreso de presa no disponible";
L["Abundance No Data"] = "No hay evento de abundancia activo";
L["Defeated Prey"] = "Presas derrotadas";
L["Item Expire Alert Weekly"] = "Este objeto desaparecerá tras el reinicio semanal.";
L["Delves Completion Reward Cap"] = "Recompensas de finalización";
L["Delves Completion Reward Cap Tooltip"] = "Una vez que alcances este límite de cuenta, completar un Abismo con tesoro ya no otorgará Progreso del Viaje del explorador ni EXP del compañero.\n\nLas recompensas de cofres con tesoro y cachés de némesis no se verán afectadas por este límite.\n\nEl límite aumentará en 28 cada semana.";
L["Near Completion Tooltip"] = "Esta entrada es visible porque estás a punto de alcanzar el límite semanal.";
L["Inactive Currencies Tooltip"] = "Estas divisas están ocultas porque las has marcado como no usadas:";
L["New Quest"] = "Nueva misión";
L["Trait Points Available"] = "Puntos disponibles";


--ExpansionSummaryMinimapButton
L["LandingButton Settings Title"] = "Resumen de expansión: Botón del minimapa";
L["LandingButton Tooltip Format"] = "Clic izquierdo para alternar %s.\nClic derecho para más opciones.";
L["LandingButton Customize"] = "Personalizar";
L["LandingButton Reposition Tooltip"] = "Mantén |cffffffffShift|r para desbloquear";
L["LandingButtonOption ShowButton"] = "Activar botón del minimapa";
L["LandingButtonOption Unaffected"] = "No afectado por addons del minimapa";
L["LandingButtonOption Unaffected Tooltip"] = "Hace que este botón no sea afectado por otros addons del minimapa, evitando que sea rediseñado o reposicionado.\n\nUna vez activado, el botón no se moverá con el minimapa ni respetará su escala, y usará la escala global de la interfaz.\n\n|cffff4800Puede que necesites recargar la interfaz después de cambiar esta opción.|r";
L["LandingButtonOption UseLibDBIcon"] = "Usar LibDBIcon";
L["LandingButtonOption UseLibDBIcon Tooltip"] = "Permite que LibDBIcon gestione la apariencia y posición de este botón.";
L["LandingButtonOption UseLibDBIcon NoBorder"] = "Eliminar borde del botón";
L["LandingButtonOption UseLibDBIcon NoBorder Tooltip"] = "Elimina el borde dorado del botón.\n\nPuede que esta opción no tenga efecto con algunos addons de minimapa.";
L["LandingButtonOption PrimaryUI"] = "Clic izquierdo para abrir";
L["LandingButtonOption PrimaryUI Tooltip"] = "Elige qué interfaz se abre al hacer clic izquierdo en el botón del minimapa.";
L["LandingButtonOption SmartExpansion"] = "Selección automática de expansión";
L["LandingButtonOption SmartExpansion Tooltip 1"] = "Cuando está activado: el clic izquierdo abre la interfaz adecuada según tu ubicación actual.";
L["LandingButtonOption SmartExpansion Tooltip 2"] = "Cuando está desactivado: el clic izquierdo siempre abre %s.";
L["LandingButtonOption ReduceSize"] = "Reducir tamaño del botón";
L["LandingButtonOption DarkColor"] = "Usar tema oscuro";
L["LandingButtonOption HideWhenIdle"] = "Ocultar cuando esté inactivo";
L["LandingButtonOption HideWhenIdle Tooltip"] = "El botón permanecerá oculto hasta que acerques el cursor o recibas una notificación.\n\nEsta opción se aplica al cerrar la configuración.";


--RaidCheck
L["ModuleName InstanceDifficulty"] = "Selector de dificultad de instancia";
L["ModuleDescription InstanceDifficulty"] = "- Muestra un selector de dificultad cuando estás en la entrada de una clabozo o banda.\n\n- Muestra la dificultad actual y la información de bloqueo en la parte superior de la pantalla al entrar en una instancia.";
L["Cannot Change Difficulty"] = "No se puede cambiar la dificultad en este momento.";
L["Cannot Reset Instance"] = "No puedes reiniciar instancias en este momento.";
L["Difficulty Not Accurate"] = "La dificultad no es precisa porque no eres el líder del grupo.";
L["Instruction Click To Open Adventure Guide"] = "Clic izquierdo: |cffffffffAbrir Guía de aventura|r";
L["Instruction Alt Click To Reset Instance"] = "Alt + clic derecho: |cffffffffReiniciar todas las instancias|r";
L["Instruction Link Progress In Chat"] = "<Shift + clic para publicar el progreso en el chat>";
L["Instance Name"] = "Nombre de la instancia";
L["EditMode Instruction InstanceDifficulty"] = "El ancho del marco depende del número de opciones disponibles.";
L["Difficulty Locked To Format"] = "La instancia está bloqueada en dificultad |cffffffff%s|r por haber derrotado a un jefe.";
L["Difficulty Locked To Current Alert"] = "La instancia está bloqueada en esta dificultad por haber derrotado a un jefe.";
L["Shared Difficulty Alert"] = "Derrotar a un jefe bloqueará la instancia en esta dificultad.";


--TransmogChatCommand
L["ModuleName TransmogChatCommand"] = "Comando de chat de transfiguración";
L["ModuleDescription TransmogChatCommand"] = "- Al usar un comando de transfiguración en chat, desviste primero a tu personaje para que los objetos antiguos no se mantengan en el nuevo conjunto.\n\n- En el transfigurador, el comando carga automáticamente todos los objetos disponibles en la interfaz de transfiguración.";
L["Copy To Clipboard"] = "Copiar al portapapeles";
L["Copy Current Outfit Tooltip"] = "Copia el conjunto actual para compartirlo en línea.";
L["Missing Appearances Format"] = "%d apariencias faltantes";
L["Press Key To Copy Format"] = "Pulsa |cffffd100%s|r para copiar";


--TransmogOutfitSelect
L["ModuleName TransmogOutfitSelect"] = "Colección de atuendos: acceso rápido";
L["ModuleDescription1 TransmogOutfitSelect"] = "Permite abrir la colección de atuendos y equipar apariencias guardadas en cualquier lugar.";
L["ModuleDescription2 TransmogOutfitSelect"] = "Para ello: abre la interfaz de transfiguración y arrastra el botón de acceso rápido a tus barras de acción.";
L["Outfit Collection"] = "Colección de atuendos";
L["Quick Access Outfit Button"] = "Acceso rápido";
L["Quick Access Outfit Button Tooltip"] = "Haz clic y arrastra este botón a tus barras de acción para cambiar de atuendo en cualquier lugar.";


--QuestWatchCycle
L["ModuleName QuestWatchCycle"] = "Atajos: enfocar misión";
L["ModuleDescription QuestWatchCycle"] = "Permite usar teclas para enfocar la siguiente o anterior misión en el rastreador.\n\n|cffd4641cConfigura las teclas en Asignación de teclas > Addon Plumber.|r";


--CraftSearchExtended
L["ModuleName CraftSearchExtended"] = "Ampliar resultados de búsqueda";
L["ModuleDescription CraftSearchExtended"] = "Muestra más resultados al buscar ciertos términos.\n\n- Alquimia e inscripción: encuentra recetas de pigmentos de vivienda buscando colores de tintes.";


--DecorModelScaleRef
L["ModuleName DecorModelScaleRef"] = "Vista previa de decoración: referencia de escala (banana)";
L["ModuleDescription DecorModelScaleRef"] = "- Añade una referencia de tamaño (una banana) en la vista previa de decoración.\n\n- Permite cambiar la inclinación de la cámara manteniendo el botón izquierdo y moviendo verticalmente.";
L["Toggle Banana"] = "Activar banana";


--Player Housing
L["ModuleName Housing_Macro"] = "Macros de vivienda";
L["ModuleDescription Housing_Macro"] = "Puedes crear una macro de teletransporte a casa: crea una macro nueva y escribe |cffd7c0a3#plumber:home|r en el campo de comando.";
L["Teleport Home"] = "Teletransportarse a casa";
L["Instruction Drag To Action Bar"] = "<Haz clic y arrastra a tus barras de acción>";
L["Leave Home"] = HOUSING_DASHBOARD_RETURN or "Volver a la ubicación anterior";
L["Toggle Torch"] = "Alternar antorcha";
L["ModuleName Housing_DecorHover"] = "Editor: modo decorar (1)";
L["ModuleDescription Housing_DecorHover"] = "En modo decorar:\n\n- Muestra coste, nombre y cantidad en almacenamiento al pasar el cursor sobre un objeto.\n\n- Permite duplicar decoraciones con Alt.\n\nEl nuevo objeto no hereda ángulos ni escala.";
L["Duplicate"] = "Duplicar";
L["Duplicate Decor Key"] = "Tecla de duplicar";
L["Enable Duplicate"] = "Activar duplicación";
L["Enable Duplicate tooltip"] = "En modo decorar, puedes pasar el cursor sobre un objeto y pulsar una tecla para crear otra instancia.";
L["ModuleName Housing_CustomizeMode"] = "Editor: modo personalización (3)";
L["ModuleDescription Housing_CustomizeMode"] = "En modo personalización:\n\n- Copiar tintes entre decoraciones.\n\n- Mostrar nombres de color en lugar de índices.\n\n- Shift + clic en un tinte para rastrear la receta.";
L["Copy Dyes"] = "Copiar";
L["Dyes Copied"] = "Tintes copiados";
L["Apply Dyes"] = "Aplicar";
L["Preview Dyes"] = "Previsualizar";
L["ModuleName TooltipDyeDeez"] = "Información: pigmento de tinte";
L["ModuleDescription TooltipDyeDeez"] = "Muestra el nombre del color de los pigmentos en la información emergente.";
L["Instruction Show More Info"] = "<Pulsa Alt para más información>";
L["Instruction Show Less Info"] = "<Pulsa Alt para menos información>";
L["ModuleName Housing_ItemAcquiredAlert"] = "Alerta de decoración obtenida";
L["ModuleDescription Housing_ItemAcquiredAlert"] = "Permite hacer clic en la alerta para previsualizar el modelo.";


--Housing Clock
L["ModuleName Housing_Clock"] = "Editor: reloj";
L["ModuleDescription Housing_Clock"] = "Muestra un reloj en la parte superior durante la edición de vivienda.\n\nTambién registra el tiempo en el editor.";
L["Time Spent In Editor"] = "Tiempo en el editor";
L["This Session Colon"] = "Esta sesión: ";
L["Time Spent Total Colon"] = "Total: ";
L["Right Click Show Settings"] = "Clic derecho para mostrar opciones.";
L["Plumber Clock"] = "Reloj de Plumber";
L["Clock Type"] = "Tipo de reloj";
L["Clock Type Analog"] = "Analógico";
L["Clock Type Digital"] = "Digital";


--CatalogExtendedSearch
L["ModuleName Housing_CatalogSearch"] = "Catálogo de decoración";
L["ModuleDescription Housing_CatalogSearch"] = "- Mejora la búsqueda del catálogo y almacenamiento de decoraciones.\n\n- Muestra coincidencias por categoría.\n\n- Permite enlazar decoraciones en chat.";
L["Match Sources"] = "Coincidir fuentes";


--SourceAchievementLink
L["ModuleName SourceAchievementLink"] = "Información de fuente interactiva";
L["ModuleDescription SourceAchievementLink"] = "Hace que los nombres de logros sean clicables en varias interfaces (catálogo y monturas).";


--BreakTime
L["ModuleName BreakTime"] = "Recordatorio de descanso";
L["ModuleDescription BreakTime"] = "Te recuerda tomar descansos periódicos.";
L["BreakTime Title AllCaps"] = "DESCANSO";
L["BreakTime Delay Button"] = "Posponer";
L["BreakTime Delay Button Tooltip Format"] = "Recordarme en %d min.";
L["BreakTime Cancel Button"] = "Cancelar";
L["BreakTime Cancel Button Tooltip Format 1"] = "Clic izquierdo: cancelar este ciclo. El siguiente será en %d min.";
L["BreakTime Cancel Button Tooltip 2"] = "Mantener pulsado: cancelar toda la sesión.";
L["BreakTime Announce Time Before Alert Format"] = "El próximo aviso será en |cffffffff%d|r min.";
L["BreakTime Announce Timer Cancelled"] = "Has cancelado el temporizador de esta sesión.";
L["BreakTime Current Schedule Format"] = "Descanso de |cffffffff%1$d|r min cada |cffffffff%2$d|r min.";
L["BreakTime Option Cycle"] = "Duración del ciclo";
L["BreakTime Option Cycle Tooltip"] = "Duración de cada ciclo de juego/descanso.";
L["BreakTime Option Rest"] = "Duración del descanso";
L["BreakTime Option Rest Tooltip"] = "Duración del descanso por ciclo.";
L["BreakTime Option Delay"] = "Retraso";
L["BreakTime Option Delay Tooltip"] = "Retrasa el temporizador en este número de minutos.";
L["BreakTime Option FlashTaskbar"] = "Parpadear barra de tareas";
L["BreakTime Option FlashTaskbar Tooltip"] = "Hace parpadear el icono de WoW en la barra de tareas.";
L["BreakTime Option DND"] = "No molestar";
L["BreakTime Option DNDCombat"] = "Combate o JcJ";
L["BreakTime Option DNDCombat Tooltip"] = "No mostrar el reloj en combate o JcJ.";
L["BreakTime Option DNDInstances"] = "Instancias";
L["BreakTime Option DNDInstances Tooltip"] = "No mostrar el reloj en clabozos, bandas o abismos.";
L["BreakTime AFK Pause"] = "El temporizador está en pausa porque estás ausente.";
L["BreakTime Reset Cancellation"] = "Reinicio de cancelación de descanso";
L["BreakTime Annouce Timer Deferred Combat"] = "¡Recuerda tomar un descanso después del combate!";
L["BreakTime Shared Countdown Tooltip Format"] = "Descanso programado en |cffffffff%d|r min.";


--CatalystUI
L["ModuleName CatalystUI"] = "Catalizador: ver objeto en probador";
L["ModuleDescription CatalystUI"] = "Permite Ctrl + clic para ver el objeto en el probador o Shift + clic para enlazarlo al chat.";


--HuntTable
L["ModuleName HuntTable"] = "Presas: tabla de caza";
L["ModuleDescription HuntTable"] = "- Reemplaza iconos genéricos por indicadores de dificultad.\n\n- Muestra si la presa es requisito de un logro.";
L["Prey Target Has Achievement"] = "Este objetivo es requisito de un logro no completado.";


--PreyQuestSuperTrack
L["ModuleName PreyQuestSuperTrack"] = "Presas: ruta del objetivo";
L["ModuleDescription PreyQuestSuperTrack"] = "Al revelar la ubicación del objetivo, el rastreador también coloca un marcador en el mapa.";


--BlizzFixActionBarArt
L["ModuleName BlizzFixActionBarArt"] = "Blizz Fix: arte de barras";
L["ModuleDescription BlizzFixActionBarArt"] = "Corrige el problema donde el arte de barras reaparece tras ocultar/mostrar la UI o salir del editor de vivienda.";


--HouseList
L["ModuleName Housing_HouseList"] = "Lista de viviendas";
L["ModuleDescription Housing_HouseList"] = "Mejora la interfaz de lista de viviendas:\n\n- Indica la facción.\n\n- Muestra ambos botones si hay dos casas.";
L["View Houses In Combat Warning"] = "No puedes ver viviendas en combate.";


--Genérico
L["Total Colon"] = FROM_TOTAL or "Total:";
L["Reposition Button Horizontal"] = "Mover horizontalmente";   --Mover la ventana horizontalmente
L["Reposition Button Vertical"] = "Mover verticalmente";
L["Reposition Button Tooltip"] = "Haz clic izquierdo y arrastra para mover la ventana.";
L["Font Size"] = FONT_SIZE or "Tamaño de fuente";
L["Icon Size"] = "Tamaño del icono";
L["Reset To Default Position"] = HUD_EDIT_MODE_RESET_POSITION or "Restablecer a la posición predeterminada";
L["Renown Level Label"] = "Renombre ";  --Hay un espacio
L["Progress Label"] = "Progreso"; 
L["Paragon Reputation"] = "Paragón";
L["Level Maxed"] = "(Máximo)";   --Alcanzado el nivel máximo
L["Current Colon"] = ITEM_UPGRADE_CURRENT or "Actual:";
L["Unclaimed Reward Alert"] = WEEKLY_REWARDS_UNCLAIMED_TITLE or "Tienes recompensas sin reclamar";
L["Uncollected Set Counter Format"] = "Tienes |cffffffff%d|r conjunto(s) de transfiguración no recolectado(s)."
L["InstructionFormat Left Click"] = "Clic izquierdo para %s";
L["InstructionFormat Right Click"] = "Clic derecho para %s";
L["InstructionFormat Ctrl Left Click"] = "Ctrl + clic izquierdo para %s";
L["InstructionFormat Ctrl Right Click"] = "Ctrl + clic derecho para %s";
L["InstructionFormat Alt Left Click"] = "Alt + clic izquierdo para %s";
L["InstructionFormat Alt Right Click"] = "Alt + clic derecho para %s";
L["Close Frame Format"]= "|cff808080(Cerrar %s)|r";


--Configuración del AddOn Plumber
L["ModuleName EnableNewByDefault"] = "Habilitar nuevas funciones por defecto";
L["ModuleDescription EnableNewByDefault"] = "Habilitar siempre las nuevas funciones añadidas.\n\n*Verás una notificación en la ventana de chat cuando se habilite un nuevo módulo de esta manera.";
L["New Feature Auto Enabled Format"] = "Nuevo Módulo %s ha sido habilitado.";
L["Click To See Details"] = "Haz clic para ver detalles";
L["Click To Show Settings"] = "Haz clic para mostrar la configuración";


--WIP Merchant UI
L["ItemType Consumables"] = AUCTION_CATEGORY_CONSUMABLES or "Consumibles";
L["ItemType Weapons"] = AUCTION_CATEGORY_WEAPONS or "Armas";
L["ItemType Gems"] = AUCTION_CATEGORY_GEMS or "Gemas";
L["ItemType Armor Generic"] = AUCTION_SUBCATEGORY_PROFESSION_ACCESSORIES or "Accesorios";  --Trinkets, Rings, Necks
L["ItemType Mounts"] = MOUNTS or "Monturas";
L["ItemType Pets"] = PETS or "Mascotas";
L["ItemType Toys"] = "Juguetes";
L["ItemType TransmogSet"] = PERKS_VENDOR_CATEGORY_TRANSMOG_SET or "Conjunto de transfiguración";
L["ItemType Transmog"] = "Transfiguración";


-- !! No traduzcas las siguientes entradas
L["currency-2706"] = "Vástago";
L["currency-2707"] = "Draco";
L["currency-2708"] = "Vermis";
L["currency-2709"] = "Aspecto";

L["currency-2914"] = "Deteriorado";
L["currency-2915"] = "Tallado";
L["currency-2916"] = "Rúnico";
L["currency-2917"] = "Dorado";

L["Scenario Delves"] = "Abismos";
L["GameObject Door"] = "Puerta";
L["Delve Chest 1 Rare"] = "Arca abundante";   --Usaremos el GameObjectID una vez que aparezca en la base de datos
L["GameObject Rich Soil"] = "Tierra fértil";

L["Season Maximum Colon"] = "Máximo de temporada:";  --CURRENCY_SEASON_TOTAL_MAXIMUM
L["Item Changed"] = "ha sido cambiado a";   --CHANGED_OWN_ITEM
L["Completed CHETT List"] = "Lista de T.A.R.E.A.S. completada";
L["Devourer Attack"] = "Ataque del Devorador";
L["Restored Coffer Key"] = "Llave de arca restaurada";
L["Coffer Key Shard"] = "Fragmento de llave de arca";
L["Epoch Mementos"] = "Recuerdos de época";     --See currency:3293
L["Timeless Scrolls"] = "Pergaminos sin tiempo"; --item: 217605
L["QuestName Runestone"] = "Fortalecer las runas"; --4 Misiones mutuamente excluyentes: 90575
L["QuestName HarandarRelic"] = "Leyendas de Harandar";
L["Prey System"] = "Presa";
L["Prey Difficulty Normal"] = "Normal";
L["Prey Difficulty Hard"] = "Difícil";
L["Prey Difficulty Nightmare"] = "Pesadilla";

L["CONFIRM_PURCHASE_NONREFUNDABLE_ITEM"] = "¿Estás seguro de que deseas intercambiar %s por el siguiente artículo?\n\n|cffff2020Tu compra no es reembolsable.|r\n %s";  --Base: CONFIRM_PURCHASE_NONREFUNDABLE_ITEM Change the warning's color and added a new line.


--Nombre del Filtro de Pin de Mapa (el nombre debe ser plural)
L["Bountiful Delve"] =  "Abismo abundante";
L["Special Assignment"] = "Asignación especial";

L["Match Pattern Gold"] = "([%d%,]+) Oro";
L["Match Pattern Silver"] = "([%d]+) Plata";
L["Match Pattern Copper"] = "([%d]+) Cobre";

L["Match Pattern Rep 1"] = "La reputación de tu tropa con (.+) ha aumentado ([%d%,]+)";   --FACTION_STANDING_INCREASED_ACCOUNT_WIDE
L["Match Pattern Rep 2"] = "Tu reputación con (.+) ha aumentado ([%d%,]+)";   --FACTION_STANDING_INCREASED

L["Match Pattern Item Level"] = "^Nivel de objeto (%d+)";
L["Match Pattern Item Upgrade Tooltip"] = "^Nivel de mejora: (.+) (%d+)/(%d+)"; -- Ver ITEM_UPGRADE_TOOLTIP_FORMAT_STRING
L["Upgrade Track 1"] = "Aventurero";
L["Upgrade Track 2"] = "Explorador";
L["Upgrade Track 3"] = "Veterano";
L["Upgrade Track 4"] = "Campeón";
L["Upgrade Track 5"] = "Héroe";
L["Upgrade Track 6"] = "Mítico";

L["Match Pattern Transmog Set Partially Known"] = "^Contiene (%d+) sin coleccionar"; --TRANSMOG_SET_PARTIALLY_KNOWN_CLASS

L["DyeColorNameAbbr Black"] = "Negro";
L["DyeColorNameAbbr Blue"] = "Azul";
L["DyeColorNameAbbr Brown"] = "Marrón";
L["DyeColorNameAbbr Green"] = "Verde";
L["DyeColorNameAbbr Orange"] = "Naranja";
L["DyeColorNameAbbr Purple"] = "Morado";
L["DyeColorNameAbbr Red"] = "Rojo";
L["DyeColorNameAbbr Teal"] = "Verde azulado";
L["DyeColorNameAbbr White"] = "Blanco";
L["DyeColorNameAbbr Yellow"] = "Amarillo";
