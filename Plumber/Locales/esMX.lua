if not (GetLocale() == "esMX") then return end;

local _, addon = ...
local L = addon.L;


--Globals
BINDING_HEADER_PLUMBER = "Accesorio Plumber";
BINDING_NAME_TOGGLE_PLUMBER_LANDINGPAGE = "Alternar resumen de expansión de Plumber";   --Mostrar/ocultar la interfaz de Resumen de Expansión


--Panel de Control del Módulo
L["Module Control"] = "Control del módulo";
L["Quick Slot Generic Description"] = "\n\n*Ranuras rápidas son un conjunto de botones clicables que aparecen bajo ciertas condiciones.";
L["Quick Slot Edit Mode"] = HUD_EDIT_MODE_MENU or "Modo de edición";
L["Quick Slot High Contrast Mode"] = "Alternar modo de alto contraste";
L["Quick Slot Reposition"] = "Cambiar posición";
L["Quick Slot Layout"] = "Diseño";
L["Quick Slot Layout Linear"] = "Lineal";
L["Quick Slot Layout Radial"] = "Radial";
L["Restriction Combat"] = "No funciona en combate";    --Indica que una función solo puede funcionar fuera de combate
L["Map Pin Change Size Method"] = "\n\n*Puedes cambiar el tamaño del pin en mapa del mundo - Filtro de mapa - Plumber";
L["Toggle Plumber UI"] = "Alternar interfaz de Plumber";
L["Toggle Plumber UI Tooltip"] = "Muestra la siguiente interfaz de Plumber en el modo de edición:\n%s\n\nEsta casilla solo controla su visibilidad en el modo de edición. No habilita ni deshabilita estos módulos.";


--Categorías del Módulo
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
L["EditMode TalkingHead"] = "Plumber: "..L["ModuleName TalkingHead"];
L["TalkingHead Option InstantText"] = "Texto instantáneo";   --Mostrar textos inmediatamente, sin desvanecimiento gradual
L["TalkingHead Option TextOutline"] = "Contorno de texto";   --Añadir un trazo/contorno a las letras
L["TalkingHead Option Condition Header"] = "Ocultar textos de fuente:";
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


--Tienda de Saqueo
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


--Página de Aterrizaje (Resumen de Expansión Minimapa)
L["ModuleName ExpansionLandingPage"] = WAR_WITHIN_LANDING_PAGE_TITLE or "Resumen de Khaz Algar";
L["ModuleDescription ExpansionLandingPage"] = "Muestra información adicional en la página de aterrizaje:\n\n- Nivel de pacto de hilos cortados";
L["Instruction Track Reputation"] = "<Mayús+clic para seguir esta reputación>";
L["Instruction Untrack Reputation"] = CONTENT_TRACKING_UNTRACK_TOOLTIP_PROMPT or "<Mayús+clic para dejar de seguir>";
L["Error Show UI In Combat"] = "No puedes mostrar esta interfaz mientras estás en combate.";


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


--LegionRemix
L["ModuleName LegionRemix"] = "Legion Remix";
L["ModuleDescription LegionRemix"] = "Legion Remix";
L["Artifact Weapon"] = "Arma de artefacto";
L["Earn X To Upgrade Y Format"] = "Gana otro |cffffffff%s|r %s para mejorar %s"; --Example: Earn another 100 Infinite Power to upgrade Artifact Weapon
L["Until Next Upgrade Format"] = "%s hasta la próxima mejora";
L["New Trait Available"] = "Nueva habilidad disponible.";
L["Rank Increased"] = "Rango aumentado.";
L["Infinite Knowledge Tooltip"] = "Puedes obtener Conocimiento Infinito al completar ciertos logros de Legion Remix.";


--ItemUpgradeUI
L["ModuleName ItemUpgradeUI"] = "Mejoras de objetos: Mostrar panel de personaje";
L["ModuleDescription ItemUpgradeUI"] = "Abrir automáticamente el panel de personaje cuando interactúas con un NPC de mejoras de objetos.";


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
L["EditMode LootUI"] =  "Plumber: "..(HUD_EDIT_MODE_LOOT_FRAME_LABEL or "Ventana de botín");
L["Manual Loot Instruction Format"] = "Para cancelar temporalmente el auto botín en una recogida específica, presiona y mantén la tecla |cffffffff%s|r hasta que aparezca la ventana de botín.";
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


--Ranura Rápida para Desarrolladores de Terceros
L["Quickslot Module Info"] = "Información del módulo";
L["QuickSlot Error 1"] = "Ranura rápida: Ya has añadido este controlador.";
L["QuickSlot Error 2"] = "Ranura rápida: Falta el controlador \"%s\"";
L["QuickSlot Error 3"] = "Ranura rápida: Ya existe un controlador con la misma clave \"%s\".";


--Macro de Plumber
L["PlumberMacro Drive"] = "Macro de Plumber M.O.T.O.R.";
L["PlumberMacro Drawer"] = "Macro de Plumber Drawer";
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


--New Expansion Landing Page
L["ModuleName NewExpansionLandingPage"] = "Resumen de expansión";
L["ModuleDescription NewExpansionLandingPage"] = "Una interfaz que muestra facciones, actividades semanales y bloqueos de banda. Puedes abrirla:\n\n- Haciendo clic en el botón Resumen de Khaz Algar en el minimapa.\n\n- Estableciendo una tecla de acceso rápido en Configuración del Juego> Asignaciones de Teclas.";
L["Reward Available"] = "Recompensa Disponible";  --As brief as possible
L["Paragon Reward Available"] = "Recompensa de Paragon Disponible";
L["Until Next Level Format"] = "%d hasta el siguiente nivel";   --Earn x reputation to reach the next level
L["Until Paragon Reward Format"] = "%d hasta la recompensa de Paragon";
L["Instruction Click To View Renown"] = REPUTATION_BUTTON_TOOLTIP_VIEW_RENOWN_INSTRUCTION or "<Haga clic para ver el Renombre>";
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


--Genérico
L["Total Colon"] = FROM_TOTAL or "Total:";
L["Reposition Button Horizontal"] = "Mover horizontalmente";   --Mover la ventana horizontalmente
L["Reposition Button Vertical"] = "Mover verticalmente";
L["Reposition Button Tooltip"] = "Haz clic izquierdo y arrastra para mover la ventana.";
L["Font Size"] = FONT_SIZE or "Tamaño de fuente";
L["Icon Size"] = "Tamaño del icono";
L["Reset To Default Position"] = HUD_EDIT_MODE_RESET_POSITION or "Restablecer a la posición predeterminada";
L["Renown Level Label"] = RENOWN_LEVEL_LABEL or "Renombre ";  --Hay un espacio
L["Paragon Reputation"] = "Paragón";
L["Level Maxed"] = "(Máximo)";   --Alcanzado el nivel máximo
L["Current Colon"] = ITEM_UPGRADE_CURRENT or "Actual:";
L["Unclaimed Reward Alert"] = WEEKLY_REWARDS_UNCLAIMED_TITLE or "Tienes recompensas sin reclamar";
L["Uncollected Set Counter Format"] = "Tienes |cffffffff%d|r conjunto(s) de transfiguración no recolectado(s)."


--Configuración del AddOn Plumber
L["ModuleName EnableNewByDefault"] = "Habilitar nuevas funciones por defecto";
L["ModuleDescription EnableNewByDefault"] = "Habilitar siempre las nuevas funciones añadidas.\n\n*Verás una notificación en la ventana de chat cuando se habilite un nuevo módulo de esta manera.";
L["New Feature Auto Enabled Format"] = "Nuevo Módulo %s ha sido habilitado.";
L["Click To See Details"] = "Haz clic para ver detalles";




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

L["Season Maximum Colon"] = "Máximo de temporada:";  --CURRENCY_SEASON_TOTAL_MAXIMUM
L["Item Changed"] = "ha sido cambiado a";   --CHANGED_OWN_ITEM
L["Completed CHETT List"] = "Lista de T.A.R.E.A.S. completada";
L["Devourer Attack"] = "Ataque del Devorador";
L["Restored Coffer Key"] = "Llave de arca restaurada";
L["Coffer Key Shard"] = "Fragmento de llave de arca";
L["Epoch Mementos"] = "Recuerdos de época";     --See currency:3293


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