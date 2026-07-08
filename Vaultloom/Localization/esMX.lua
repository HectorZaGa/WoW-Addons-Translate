local _, ns = ...

if not ns.Locale or not ns.Locale.Register then
    return
end

local esMX = {
    ADDON_TITLE = "Vaultloom",
    ADDON_LOADED_MESSAGE = "Vaultloom %s - abre Vaultloom con /vl. Para ver las novedades, mira Opciones > Cambios.",
    ADDON_SUBTITLE = "Seguimiento premium de banda guerrera y semanales para Vaultloom",
    PROTOTYPE_NOTE = "Vaultloom sigue tu banda guerrera, semanales, abismos, JcE, JcJ y profesiones.",
    OPEN_COMMAND_HINT = "Usa /vaultloom o /vl para abrir Vaultloom.",
    CLOSE = "Cerrar",
    UNKNOWN = "Desconocido",
    MAIN_TAB_VAULT = "Cámara",
    MAIN_TAB_PVE = "JcE",
    MAIN_TAB_PVP = "JcJ",
    MAIN_TAB_SYSTEMS = "Otros",
    MAIN_TAB_MYTHICPLUS = "Mítica+",
    MAIN_TAB_FOCUS = "Foco",
    MAIN_TAB_CHRONICLE = "Crónica (Beta)",
    SUBTAB_VAULT_RAIDS = "Bandas",
    SUBTAB_VAULT_DUNGEONS = "Calabozos",
    SUBTAB_VAULT_WORLD = "Mundo / Abismos / Presas",
    SUBTAB_FOCUS_QUESTBOARD = "Questboard",
    SUBTAB_CHRONICLE_OVERVIEW = "Vista general",
    SUBTAB_PVE_PREY = "Presas",
    SUBTAB_PVE_WEEKLY = "Semanal",
    SUBTAB_PVE_DELVES = "Abismos",
    SUBTAB_PVE_DAILY = "Diario",
    SUBTAB_PVE_SPECIAL = "Eventos de calendario",
    SUBTAB_PVE_DARKMOON = "Luna Negra",
    SUBTAB_PVE_EVENTS = "Eventos",
    SUBTAB_PVE_WORLD = "Mundo",
    SUBTAB_PVE_OTHER = "Otros",
    SUBTAB_PVP_WEEKLY = "Semanal",
    SUBTAB_SYSTEMS_PROFESSIONS = "Profesiones",
    SUBTAB_MYTHICPLUS_SEASON1 = "Temporada 1",
    PROFESSIONS_SUBTITLE = "Semanales de profesiones de Midnight para el personaje seleccionado.",
    PROFESSIONS_SUBTITLE_WITH_DARKMOON = "Semanales de Midnight y misiones de profesión de la Feria de la Luna Negra para el personaje seleccionado.",
    PROFESSIONS_PROGRESS = "Progreso",
    PROFESSIONS_DARKMOON_HINT = "Luna Negra: Mensual",
    PROFESSIONS_ROW_DARKMOON = "Feria de la Luna Negra",
    PROFESSIONS_ROW_SERVICE = "Servicios solicitados",
    PROFESSIONS_ROW_TREATISE = "Tratado thalassiano",
    PROFESSIONS_EMPTY_LABEL = "Sin profesiones seguidas",
    PROFESSIONS_EMPTY_VALUE = "--",
    PROFESSIONS_TOOLTIP_DARKMOON_REQUIRES = "Llevar:",
    PROFESSIONS_TOOLTIP_DARKMOON_REWARD = "Da habilidad de profesión y conocimiento de profesión para tu expansión conocida más reciente.",
    PROFESSIONS_TOOLTIP_DARKMOON_MONTHLY = "Disponible durante la Feria de la Luna Negra y se reinicia con la Feria.",
    PROFESSIONS_TOOLTIP_DARKMOON_MISSING = "Acepta esta misión de profesión en la Isla Luna Negra mientras la Feria esté activa.",
    PROFESSIONS_TOOLTIP_DARKMOON_PROGRESS = "Esta misión de profesión de Luna Negra está activa.",
    PROFESSIONS_TOOLTIP_DARKMOON_DONE = "Ya completada para esta Feria de la Luna Negra.",
    PROFESSIONS_EMPTY_HINT = "Entra con un personaje que tenga profesiones principales para que esta pestaña pueda capturar las semanales de profesión.",
    PROFESSIONS_TOOLTIP_SERVICE_MISSING = "Esta semanal de profesión se puede aceptar en Midnight.",
    PROFESSIONS_TOOLTIP_SERVICE_PROGRESS = "Esta semanal de profesión está activa.",
    PROFESSIONS_TOOLTIP_TREATISE_MISSING = "La misión semanal del tratado aún no está aceptada.",
    PROFESSIONS_TOOLTIP_TREATISE_PROGRESS = "La misión semanal del tratado está activa.",
    PROFESSIONS_TOOLTIP_TREATISE_ITEM_HINT = "Puede fabricarla un jugador con Inscripción o pedirse mediante un encargo de fabricación.",
    PROFESSIONS_TOOLTIP_TURNIN = "Esta misión está completada y ya se puede entregar.",
    PROFESSIONS_TOOLTIP_DONE = "Ya completada esta semana.",
    PVE_DARKMOON_CONTENT_SUBTITLE = "Diarias de la Luna Negra y entregas repetibles.",
    PVE_DARKMOON_SUBTITLE = "Diarias, carreras, duelos de mascotas y artefactos de la Luna Negra.",
    PVE_DARKMOON_INACTIVE_SUBTITLE = "La Feria de la Luna Negra no está activa.",
    PVE_DARKMOON_MONTHLY_SUMMARY = "Misiones de feria: Mensual",
    PVE_DARKMOON_START_ITEM_HINT = "Empieza con el objeto: %s",
    PVE_DARKMOON_TOKEN_HINT = "Requiere %s.",
    PVE_DARKMOON_DAILY_HINT = "Diaria durante la Feria de la Luna Negra.",
    PVE_DARKMOON_MONTHLY_HINT = "Una vez por personaje y por Feria de la Luna Negra.",
    PVE_DARKMOON_ACCEPT_HINT = "Acéptala en la Isla Luna Negra mientras la Feria esté activa.",
    PVE_DARKMOON_DONE_DAILY_HINT = "Ya completada hoy.",
    PVE_DARKMOON_DONE_MONTHLY_HINT = "Ya completada para esta Feria de la Luna Negra.",
    PVE_DARKMOON_ACTIVE_HINT = "Esta misión de Luna Negra está activa.",
    RENOWN_TAB_TITLE = "Crónica (Beta)",
    RENOWN_TAB_SUBTITLE = "Gloria de Vaultloom, badges, progreso de personaje, progreso de banda guerrera y ganancias recientes de XP.",
    RENOWN_SCOPE_CHARACTER = "Personaje",
    RENOWN_SCOPE_WARBAND = "Banda",
    RENOWN_ACTIVE_CHARACTER_FORMAT = "Mostrando: %s",
    RENOWN_SELECTOR_TITLE = "Progreso",
    RENOWN_WARBAND_ENTRY = "Banda",
    RENOWN_WARBAND_META = "Todos los personajes seguidos",
    RENOWN_WARBAND_PROGRESS_META = "%d personajes seguidos",
    RENOWN_HEADER_META_FORMAT = "%s  |  %s",
    RENOWN_STAT_LINE_FORMAT = "Total %s XP  |  Siguiente rango: %s  |  Copia: SavedVariables",
    RENOWN_XP_TOOLTIP_TITLE = "XP de crónica",
    RENOWN_XP_TOOLTIP_BODY = "La XP viene de tareas completadas de Vaultloom: Filas de la cámara, objetivos diarios y semanales, calabozos, bandas, abismos, JcJ, profesiones y tareas de vecindario completadas.",
    RENOWN_RESET_BUTTON = "Reiniciar",
    RENOWN_RESET_CONFIRM = "¿Reiniciar el progreso de Crónica para %s? No se puede deshacer.",
    RENOWN_BACKUP_HINT = "Archivo de copia:\nWTF\\Account\\<Account>\nSavedVariables\\Vaultloom.lua",
    RENOWN_BACKUP_TOOLTIP_TITLE = "Archivo de copia",
    RENOWN_FRAME_SHOWN = "Marco: Sí",
    RENOWN_FRAME_HIDDEN = "Marco: No",
    RENOWN_FRAME_DEFAULT = "Oro estándar",
    RENOWN_FRAME_SELECTED = "Elegido",
    RENOWN_FRAME_CLICK_TOOLTIP = "Haz clic para usar este marco de retrato.",
    RENOWN_FRAME_LOCKED_TOOLTIP = "Alcanza este rango para desbloquear su marco de retrato.",
    RENOWN_FRAME_TOGGLE_TOOLTIP = "Muestra u oculta el marco de retrato elegido.",
    RENOWN_FRAME_DEFAULT_TOOLTIP = "Usa el marco dorado estándar.",
    RENOWN_FRAME_DROPDOWN_FORMAT = "Marco: %s",
    RENOWN_FRAME_DROPDOWN_TITLE = "Marco de retrato",
    RENOWN_FRAME_DROPDOWN_TOOLTIP = "Elige marcos de retrato desbloqueados desde el menú.",
    RENOWN_FRAME_MENU_OPTION_TOOLTIP = "Usa este marco alrededor del retrato del personaje.",
    RENOWN_BADGE_SHOWN = "Badge: Sí",
    RENOWN_BADGE_HIDDEN = "Badge: No",
    RENOWN_BADGE_DEFAULT = "Rango actual",
    RENOWN_BADGE_DROPDOWN_FORMAT = "Badge: %s",
    RENOWN_BADGE_DROPDOWN_TITLE = "Badge del encabezado",
    RENOWN_BADGE_DROPDOWN_TOOLTIP = "Elige el badge desbloqueado que aparece en el encabezado y la crónica.",
    RENOWN_BADGE_MENU_OPTION_TOOLTIP = "Usa este badge en el encabezado del personaje.",
    RENOWN_BADGE_TOGGLE_TOOLTIP = "Muestra u oculta el badge de encabezado elegido.",
    RENOWN_WARBAND_BADGE_SHOWN = "Banda: Sí",
    RENOWN_WARBAND_BADGE_HIDDEN = "Banda: No",
    RENOWN_WARBAND_BADGE_TOGGLE_TOOLTIP = "Muestra u oculta el badge de banda en el panel izquierdo de personajes.",
    RENOWN_TOAST_SHOWN = "Popups: Sí",
    RENOWN_TOAST_HIDDEN = "Popups: No",
    RENOWN_TOAST_TOGGLE_TOOLTIP = "Muestra u oculta los popups de XP de crónica. El seguimiento de XP continúa.",
    RENOWN_TOAST_XP_GAIN = "XP de crónica",
    RENOWN_TOAST_TASK_DONE = "Tarea completada",
    RENOWN_TOAST_LEVEL_UP_FORMAT = "Nivel de crónica %d",
    RENOWN_TOAST_RANK_UP_FORMAT = "Nuevo rango: %s",
    RENOWN_TOAST_WARBAND_LEVEL_FORMAT = "Nivel de banda %d",
    RENOWN_TOAST_CHARACTER_PROGRESS = "Progreso de personaje",
    RENOWN_TOAST_TEST_BUTTON = "Test",
    RENOWN_TOAST_PLACE_BUTTON = "Colocar",
    RENOWN_TOAST_HIDE_TEST_BUTTON = "Ocultar",
    RENOWN_TOAST_RESET_BUTTON = "Reiniciar",
    RENOWN_TOAST_TEST_TITLE = "Popup de prueba de crónica",
    RENOWN_TOAST_TEST_DETAIL = "Este popup no otorga XP.",
    RENOWN_TOAST_TEST_META_MOVE = "Arrastra para colocarlo y luego ocúltalo.",
    RENOWN_TOAST_TEST_TOOLTIP = "Muestra una vista previa breve del popup de crónica sin otorgar XP.",
    RENOWN_TOAST_PLACE_TOOLTIP = "Mantiene visible un popup de prueba para arrastrarlo a la posición deseada.",
    RENOWN_TOAST_HIDE_TEST_TOOLTIP = "Oculta el popup de prueba y conserva la posición guardada.",
    RENOWN_TOAST_RESET_TOOLTIP = "Devuelve el popup de crónica a la posición predeterminada y mantiene la prueba visible.",
    RENOWN_TOAST_STYLE_FORMAT = "Estilo: %s",
    RENOWN_TOAST_STYLE_NORMAL = "Normal",
    RENOWN_TOAST_STYLE_CLEAN = "Limpio",
    RENOWN_TOAST_STYLE_SIMPLE = "Simple",
    RENOWN_TOAST_STYLE_TOOLTIP = "Normal muestra el popup completo, Limpio quita el fondo, Simple muestra solo icono y XP.",
    RENOWN_TOAST_ANIMATION_FORMAT = "Intro: %s",
    RENOWN_TOAST_ANIMATION_SOFT = "Suave",
    RENOWN_TOAST_ANIMATION_FADE = "Fundido",
    RENOWN_TOAST_ANIMATION_POP = "Pop",
    RENOWN_TOAST_ANIMATION_TOOLTIP = "Elige una animación ligera de entrada para los popups de XP de crónica.",
    RENOWN_TOAST_SCALE_FORMAT = "Tamaño: %d%%",
    RENOWN_TOAST_SCALE_DECREASE = "Más pequeño",
    RENOWN_TOAST_SCALE_INCREASE = "Más grande",
    RENOWN_TOAST_SCALE_TOOLTIP = "Cambia el tamaño del popup de crónica.",
    RENOWN_TITLE_FORMAT = "Gloria de %s",
    RENOWN_SUBTITLE_FORMAT = "Progreso de %s, badges y ganancias recientes de XP.",
    RENOWN_LEVEL_FORMAT = "Nivel %d - %s",
    RENOWN_NEXT_RANK_FORMAT = "Siguiente: %s",
    RENOWN_PARAGON_FORMAT = "Paragón %d",
    RENOWN_STAT_TOTAL_XP = "XP total",
    RENOWN_STAT_LEVEL = "Nivel",
    RENOWN_STAT_NEXT_RANK = "Siguiente rango",
    RENOWN_STAT_SCOPE = "Vista",
    RENOWN_MAX_RANK = "Paragón",
    RENOWN_HISTORY_TITLE = "Gloria reciente",
    RENOWN_HISTORY_EMPTY = "Aún no hay eventos nuevos de XP. Las actividades ya completadas se marcan primero como base para que los snapshots antiguos no den XP duplicada.",
    RENOWN_PANEL_RANKS = "Camino de rango",
    RENOWN_OPTIONS_TITLE = "Opciones de visualización",
    RENOWN_OPTIONS_OPEN = "Opciones",
    RENOWN_OPTIONS_CLOSE = "Cerrar",
    RENOWN_OPTIONS_DRAWER_TITLE = "Opciones de crónica",
    RENOWN_OPTIONS_DRAWER_HINT = "Visualización, badges y popups de XP de crónica. Pasa el ratón por los botones para ver detalles.",
    RENOWN_OPTIONS_DRAWER_TOOLTIP = "Abre los ajustes agrupados de crónica para visualización, badges y popups.",
    RENOWN_OPTIONS_SECTION_APPEARANCE = "Apariencia",
    RENOWN_OPTIONS_SECTION_POPUP = "Popup de XP",
    RENOWN_OPTIONS_SECTION_WARBAND = "Banda",
    RENOWN_OPTIONS_STATE_ON = "Sí",
    RENOWN_OPTIONS_STATE_OFF = "No",
    RENOWN_OPTIONS_SUMMARY_FORMAT = "Marco %s | Badge %s | Popups %s | Banda %s",
    RENOWN_PANEL_SOURCES = "Fuentes de XP",
    RENOWN_CURRENT_RANK = "Actual",
    RENOWN_RANK_LEVEL_FORMAT = "Niv. %d",
    RENOWN_SOURCE_DAILY = "Objetivos diarios",
    RENOWN_SOURCE_WEEKLY = "Misiones semanales",
    RENOWN_SOURCE_VAULT = "Gran cámara",
    RENOWN_SOURCE_DELVES = "Abismos y presas",
    RENOWN_SOURCE_HOUSING = "Vivienda",
    RENOWN_SOURCE_PROFESSIONS = "Profesiones",
    RENOWN_SOURCE_PVP = "Semanal JcJ",
    RENOWN_SOURCE_FOCUS = "Filas Fokus",
    RENOWN_ACTIVITY_VAULT_SLOT = "Cámara %s: Casilla %d desbloqueada",
    RENOWN_ACTIVITY_VAULT_GOAL_SLOT = "Cámara %s: Recompensa máxima de casilla %d alcanzada",
    RENOWN_ACTIVITY_VAULT_MAX = "Fila de Cámara %s al máximo",
    RENOWN_ACTIVITY_PREY_DIFFICULTY = "Presa %s completada",
    RENOWN_ACTIVITY_PREY_TOTAL = "Límite total de presas alcanzado",
    RENOWN_ACTIVITY_HOUSING_LEVEL = "Nivel de casa %d alcanzado",
    RENOWN_ACTIVITY_PROFESSION_KNOWLEDGE = "Conocimiento gastado: %s",
    RENOWN_ACTIVITY_FOCUS_ROW = "Fila Fokus completada: %s",
    RENOWN_RANK_PEON = "Peón",
    RENOWN_RANK_INITIATE = "Iniciado",
    RENOWN_RANK_RUNNER = "Corredor",
    RENOWN_RANK_SCOUT = "Explorador",
    RENOWN_RANK_GRUNT = "Grunt",
    RENOWN_RANK_FOOTMAN = "Soldado",
    RENOWN_RANK_PATHFINDER = "Abrecaminos",
    RENOWN_RANK_DELVER = "Prospector",
    RENOWN_RANK_TASKHAND = "Ayudante",
    RENOWN_RANK_VAULT_SEEKER = "Buscador de Cámara",
    RENOWN_RANK_TRAILWARDEN = "Guardián del sendero",
    RENOWN_RANK_RELIC_HUNTER = "Cazador de reliquias",
    RENOWN_RANK_OATHBOUND = "Juramentado",
    RENOWN_RANK_RIFTWALKER = "Caminante de fallas",
    RENOWN_RANK_KEYBEARER = "Portallaves",
    RENOWN_RANK_WORLDBREAKER = "Rompemundos",
    RENOWN_RANK_DREAMGUARD = "Guardasueños",
    RENOWN_RANK_RUNEBINDER = "Vincularrunas",
    RENOWN_RANK_NIGHT_CHAMPION = "Campeón de la noche",
    RENOWN_RANK_VAULTWARDEN = "Guardián de la Cámara",
    RENOWN_RANK_MYTHIC_SEEKER = "Buscador mítico",
    RENOWN_RANK_ASCENDANT = "Ascendente",
    RENOWN_RANK_PARAGON = "Paragón",
    RENOWN_RANK_CHRONICLE_KEEPER = "Guardián de crónica",
    RENOWN_RANK_LEGEND = "Leyenda",
    RENOWN_RANK_ETERNAL = "Eterno",
    RENOWN_RANK_VAULTLOOM = "Vaultloom",
    RENOWN_WARBAND_RANK_CAMP = "Campamento",
    RENOWN_WARBAND_RANK_MUSTER = "Reunión",
    RENOWN_WARBAND_RANK_CREW = "Grupo",
    RENOWN_WARBAND_RANK_BANNER = "Estandarte",
    RENOWN_WARBAND_RANK_COMPANY = "Compañía",
    RENOWN_WARBAND_RANK_VANGUARD = "Vanguardia",
    RENOWN_WARBAND_RANK_COHORT = "Cohorte",
    RENOWN_WARBAND_RANK_LEGION = "Legión",
    RENOWN_WARBAND_RANK_ARMORY = "Arsenal",
    RENOWN_WARBAND_RANK_CAMPAIGN = "Campaña",
    RENOWN_WARBAND_RANK_DYNASTY = "Dinastía",
    RENOWN_WARBAND_RANK_LEGACY = "Legado",
    RENOWN_WARBAND_RANK_HIGH_COMMAND = "Alto mando",
    RENOWN_WARBAND_RANK_WARBAND_ETERNAL = "Banda eterna",
    RENOWN_WARBAND_RANK_OATH_OF_MANY = "Juramento de muchos",
    RENOWN_WARBAND_RANK_STARBOUND = "Ligados a las estrellas",
    RENOWN_WARBAND_RANK_VAULT_HOST = "Hueste de la cámara",
    RENOWN_WARBAND_RANK_MYTHIC_BOND = "Vínculo mítico",
    RENOWN_WARBAND_RANK_ASCENDANT_WARBAND = "Banda ascendente",
    RENOWN_WARBAND_RANK_PARAGON_WARBAND = "Banda parangón",
    RENOWN_WARBAND_RANK_CHRONICLE_HOST = "Hueste de crónica",
    RENOWN_WARBAND_RANK_LEGEND_WARBAND = "Banda legendaria",
    RENOWN_WARBAND_RANK_ETERNAL_WARBAND = "Banda eterna",
    RENOWN_WARBAND_RANK_VAULTLOOM_WARBAND = "Banda Vaultloom",
    PROFESSION_KNOWLEDGE_BADGE_TOOLTIP = "%d puntos de conocimiento de profesión sin gastar.",
    PROFESSIONS_KNOWLEDGE_LABEL = "Conocimiento",
    PROFESSIONS_KNOWLEDGE_TOOLTIP_AVAILABLE = "%s tiene %d puntos de conocimiento sin gastar.",
    PROFESSIONS_KNOWLEDGE_TOOLTIP_EMPTY = "%s no tiene puntos de conocimiento sin gastar.",
    PROFESSIONS_KNOWLEDGE_TOOLTIP_OPEN = "Clic izquierdo: Abrir esta profesión.",
    PROFESSIONS_KNOWLEDGE_TOOLTIP_ALT = "La apertura directa solo funciona con el personaje conectado actualmente.",
    SIDEBAR_TITLE = "Banda guerrera",
    SIDEBAR_SUBTITLE = "La fase 2 conectará aquí la lista real y la selección de personajes.",
    SIDEBAR_PLACEHOLDER = "En este primer paso solo validamos el marco, la navegación, las proporciones y la base de estilo Blizzard.",
    SIDEBAR_CURRENT_CHARACTER = "Personaje actual",
    HERO_TITLE = "Nuevo esqueleto de IU",
    HERO_SUBTITLE = "Solo marco principal, jerarquía de navegación y zonas de contenido.",
    HERO_CHARACTER = "Personaje de vista previa: %s  |  %s  |  nivel %d",
    HERO_SYNC = "Última sincronización %s",
    HERO_MONEY = "Oro %s",
    HERO_MONEY_SYNC = "Oro %s  |  Última sincronización %s",
    HERO_PROFESSION_PRIMARY_LABEL = "Profesion principal",
    HERO_PROFESSION_SECONDARY_LABEL = "Profesion secundaria",
    HERO_PROFESSION_OPEN_HINT = "Clic izquierdo: Abrir esta profesion.",
    HERO_PROFESSION_ALT_HINT = "Conecta con este personaje para abrir la ventana de profesion.",
    HERO_EMPTY = "Aún no se han encontrado datos en vivo de personajes de Vaultloom.",
    HERO_META = "%s  |  nivel %d  |  %s",
    HERO_META_WITH_ILVL = "%s  |  nivel %d  |  %s  |  ilvl %d",
    ROLE_MAIN = "Principal",
    ROLE_ALT = "Alter",
    CONTENT_TITLE_FORMAT = "%s / %s",
    CONTENT_SUBTITLE = "Esta es un área de contenido provisional para la sección seleccionada.",
    CONTENT_PLACEHOLDER = "Los próximos pasos conectarán primero la vista real de la Cámara y después JcE, JcJ y Otros paso a paso.",
    VAULT_EMPTY = "Aún no se ha encontrado una instantánea en vivo de la Cámara para este personaje.",
    VAULT_NONE_TOP = "Aún no hay ningún valor máximo registrado.",
    VAULT_TOP_CURRENT = "Máximo actual: %s",
    VAULT_BREAKPOINTS = "Umbrales: %s",
    VAULT_UNLOCK_LABEL = "Casillas",
    VAULT_GOAL_LABEL = "Recompensa máx.",
    VAULT_CURRENT_REWARD = "Actual %d ilvl",
    VAULT_CURRENT_UNKNOWN = "Actual ?",
    VAULT_CURRENT_NONE = "Actual --",
    VAULT_SLOT_LABEL = "Casilla %d",
    VAULT_GOAL_REACHED = "Alcanzado",
    VAULT_GOAL_LEFT = "%d restante",
    VAULT_MAX_REWARD_LEFT = "%d restante para recompensa máx.",
    VAULT_ROW_NOTE_NONE = "Aún no se han encontrado umbrales de recompensa.",
    VAULT_ROW_NOTE_READY = "Todas las recompensas están desbloqueadas esta semana.",
    VAULT_ROW_NOTE_PROGRESS = "%d restante para la siguiente recompensa, %d restante para el máximo.",
    VAULT_ROW_NOTE_MAX_ONLY = "%d restante para la recompensa máxima.",
    VAULT_SUMMARY_RESET = "Sigue la Gran Cámara en vivo y se reinicia en %s.",
    FOOTER_LEFT = "Vaultloom",
    FOOTER_RIGHT = "Seguro para probar junto al addon en vivo",
    SIDEBAR_EMPTY = "Aún no hay personajes de Vaultloom guardados. Entra una vez con un personaje para que Vaultloom capture la lista.",
    SIDEBAR_FOOTER = "%d personajes guardados",
    SIDEBAR_ROW_LEVEL = "Nivel %d",
    SIDEBAR_ROW_LEVEL_SHORT = "Niv. %d",
    SIDEBAR_ROW_ILVL = "ilvl %d",
    SIDEBAR_MAIN = "PRINCIPAL",
    SIDEBAR_SET_MAIN_RIGHT_CLICK = "Clic derecho: Establecer como principal",
    SIDEBAR_SORT_NAME = "Nombre",
    SIDEBAR_SORT_LEVEL = "Nivel",
    SIDEBAR_SORT_ITEM_LEVEL = "iLvl",
    SIDEBAR_SORT_PRIORITY = "AS",
    SIDEBAR_SORT_DEFAULT = "Manual",
    SIDEBAR_SORT_DROPDOWN = "Orden: %s",
    PRIORITY_SCORE_FORMAT = "AS %d",
    PRIORITY_SCORE_TOOLTIP_TITLE = "Score de alter",
    PRIORITY_SCORE_TOOLTIP_VALUE = "AS: %d / 100",
    PRIORITY_SCORE_TOOLTIP_LINE = "El score muestra cuánto completaste esta semana. Más alto es mejor.",
    PRIORITY_SCORE_LEVEL = "Nivel",
    PRIORITY_SCORE_ITEM_LEVEL = "Nivel de objeto",
    PRIORITY_SCORE_VAULT = "Gran cámara",
    PRIORITY_SCORE_WEEKLY = "Semanales",
    PRIORITY_SCORE_DAILY = "Diario",
    PRIORITY_SCORE_EVENTS = "Eventos",
    PRIORITY_SCORE_WORLD = "Mundo",
    PRIORITY_SCORE_DELVES = "Abismos",
    PRIORITY_SCORE_PREY = "Presa",
    PRIORITY_SCORE_PVP = "JcJ",
    PRIORITY_SCORE_PROFESSIONS = "Profesiones",
    PRIORITY_SCORE_HOUSING = "Housing",
    SIDEBAR_VISIBILITY_DROPDOWN = "Personajes",
    SIDEBAR_VISIBILITY_DROPDOWN_COUNT = "Personajes: %d ocultos",
    SIDEBAR_VISIBILITY_CURRENT_LOCKED = "El personaje actual siempre permanece visible.",
    SIDEBAR_HIDE = "Ocultar",
    SIDEBAR_UNHIDE = "Mostrar",
    SIDEBAR_HIDE_TOOLTIP = "Oculta el personaje seleccionado de la lista de banda guerrera.",
    SIDEBAR_HIDE_TOOLTIP_CURRENT = "El personaje conectado actualmente no se puede ocultar.",
    SIDEBAR_UNHIDE_TOOLTIP = "Vuelve a mostrar todos los personajes ocultos.",
    SIDEBAR_UNHIDE_TOOLTIP_COUNT = "Personajes ocultos: %d",
    SIDEBAR_HIDE_CURRENT_ERROR = "El personaje conectado actualmente no se puede ocultar.",
    UTILITY_TITLE = "Recursos",
    UTILITY_SUBTITLE = "Monedas y materiales de mejora para el personaje seleccionado.",
    UPGRADE_SECTION = "Mejora de objeto",
    RESOURCE_SECTION = "Recursos",
    RESOURCE_SHOW_ALL = "Mostrar todo",
    RESOURCE_SHOW_ALL_COUNT = "Mostrar todo (%d)",
    RESOURCE_SHOW_ALL_TOOLTIP = "Vuelve a mostrar todos los recursos ocultos.",
    RESOURCE_SHOW_ALL_TOOLTIP_NONE = "No hay recursos ocultos actualmente.",
    RESOURCE_HIDE_HINT = "Clic izquierdo para ocultar este recurso solo en Vaultloom. Clic derecho para abrir la pestaña de monedas de WoW.",
    UTILITY_LIVE_CURRENT = "Mostrando valores en vivo para %s.",
    UTILITY_LAST_KNOWN = "Mostrando los últimos valores conocidos para %s (%s).",
    UTILITY_NO_SNAPSHOT = "Aún no hay valores guardados para este personaje. Entra una vez con el personaje para capturarlos.",
    UTILITY_VALUE_UNKNOWN = "--",
    CUSTOM_TASKS_QUESTBOARD_TITLE = "Questboard",
    CUSTOM_TASKS_SUBTITLE = "Elige las filas de Vaultloom que quieres mantener en foco para este personaje.",
    CUSTOM_TASKS_SUMMARY_FORMAT = "%s seleccionado  |  %s",
    CUSTOM_TASKS_PROFILE_LABEL = "Lista",
    CUSTOM_TASKS_PROFILE_CHARACTER = "Este personaje",
    CUSTOM_TASKS_PROFILE_GLOBAL = "Plantilla global",
    CUSTOM_TASKS_COPY_GLOBAL = "Copiar global",
    CUSTOM_TASKS_SAVE_GLOBAL = "Guardar global",
    CUSTOM_TASKS_ADD_MENU = "Añadir foco",
    CUSTOM_TASKS_EMPTY = "Aún no hay filas de Fokus seleccionadas. Usa el menú de añadir de arriba para este personaje.",
    CUSTOM_TASKS_REMOVE = "Quitar",
    CUSTOM_TASKS_MOVE_UP = "Subir",
    CUSTOM_TASKS_MOVE_DOWN = "Bajar",
    CUSTOM_TASKS_MOVE_UP_TOOLTIP = "Mueve esta fila de Fokus una posición hacia arriba.",
    CUSTOM_TASKS_MOVE_DOWN_TOOLTIP = "Mueve esta fila de Fokus una posición hacia abajo.",
    CUSTOM_TASKS_UNKNOWN_GROUP = "No disponible",
    CUSTOM_TASKS_UNAVAILABLE_VALUE = "--",
    CUSTOM_TASKS_UNAVAILABLE_TOOLTIP = "Esta fila no está disponible para el personaje seleccionado ahora mismo.",
    CUSTOM_TASKS_TRACKER_GROUP = "Trackers Fokus",
    CUSTOM_TASKS_TRACKER_VAULT = "Gran Cámara",
    CUSTOM_TASKS_TRACKER_VAULT_RAID = "Gran Cámara: Banda",
    CUSTOM_TASKS_TRACKER_VAULT_DUNGEON = "Gran Cámara: Calabozos",
    CUSTOM_TASKS_TRACKER_VAULT_WORLD = "Gran Cámara: Mundo / abismos / cacería",
    CUSTOM_TASKS_TRACKER_VAULT_MISSING = "No hay instantánea de Gran Cámara disponible para este personaje.",
    CUSTOM_TASKS_TRACKER_DELVES = "Progreso de abismos",
    CUSTOM_TASKS_TRACKER_DELVES_TOOLTIP = "Sigue el resumen actual de abismos para este personaje.",
    CUSTOM_TASKS_TRACKER_PREY = "Progreso de cacería",
    CUSTOM_TASKS_TRACKER_PREY_TOOLTIP = "Sigue objetivos de cacería derrotados para el personaje actual.",
    CUSTOM_TASKS_TRACKER_PROFESSION_KNOWLEDGE = "Conocimiento de profesión",
    CUSTOM_TASKS_TRACKER_PROFESSION_FORMAT = "Conocimiento: %s",
    CUSTOM_TASKS_TRACKER_PROFESSION_KNOWLEDGE_TOOLTIP = "Sigue los puntos de conocimiento de profesión sin gastar.",
    CUSTOM_TASKS_TRACKER_LABEL = "Tracker",
    CUSTOM_TASKS_TRACKER_SHOW = "Mostrar tracker",
    CUSTOM_TASKS_TRACKER_HIDE = "Ocultar tracker",
    CUSTOM_TASKS_TRACKER_LOCK = "Bloquear",
    CUSTOM_TASKS_TRACKER_UNLOCK = "Desbloquear",
    CUSTOM_TASKS_TRACKER_STYLE_FORMAT = "Estilo: %s",
    CUSTOM_TASKS_TRACKER_STYLE_FRAME = "Marco",
    CUSTOM_TASKS_TRACKER_STYLE_ROWS = "Filas",
    CUSTOM_TASKS_TRACKER_STYLE_TEXT = "Texto",
    CUSTOM_TASKS_TRACKER_FONT_NORMAL = "Normal",
    CUSTOM_TASKS_TRACKER_FONT_COMPACT = "Compacto",
    CUSTOM_TASKS_TRACKER_FONT_LARGE = "Grande",
    CUSTOM_TASKS_TRACKER_EMPTY = "No hay filas de Fokus seleccionadas.",
    CUSTOM_TASKS_TOOLTIP_CHARACTER_MODE = "Usa una lista Fokus separada para este personaje.",
    CUSTOM_TASKS_TOOLTIP_GLOBAL_MODE = "Usa la lista Fokus compartida en este personaje.",
    CUSTOM_TASKS_TOOLTIP_COPY_GLOBAL = "Copia la lista Fokus global a este personaje.",
    CUSTOM_TASKS_TOOLTIP_SAVE_GLOBAL = "Guarda la lista de este personaje como plantilla global.",
    CUSTOM_TASKS_TOOLTIP_ADD_MENU = "Abre los trackers y filas de misión que puedes añadir.",
    CUSTOM_TASKS_TOOLTIP_TRACKER_TOGGLE = "Muestra u oculta el tracker Fokus flotante.",
    CUSTOM_TASKS_TOOLTIP_TRACKER_LOCK = "Bloquea o desbloquea el arrastre del tracker.",
    CUSTOM_TASKS_TOOLTIP_TRACKER_STYLE = "Cambia el estilo del tracker: Marco, filas o solo texto.",
    CUSTOM_TASKS_TOOLTIP_TRACKER_FONT = "Cambia el tamaño de fuente del tracker.",
    CUSTOM_TASKS_TOOLTIP_SCALE_DOWN = "Más pequeño",
    CUSTOM_TASKS_TOOLTIP_SCALE_DOWN_TEXT = "Hace más pequeño el tracker flotante.",
    CUSTOM_TASKS_TOOLTIP_SCALE_UP = "Más grande",
    CUSTOM_TASKS_TOOLTIP_SCALE_UP_TEXT = "Hace más grande el tracker flotante.",
    CUSTOM_TASKS_TOOLTIP_OPACITY_DOWN = "Menos visible",
    CUSTOM_TASKS_TOOLTIP_OPACITY_DOWN_TEXT = "Reduce la opacidad del tracker.",
    CUSTOM_TASKS_TOOLTIP_OPACITY_UP = "Más visible",
    CUSTOM_TASKS_TOOLTIP_OPACITY_UP_TEXT = "Aumenta la opacidad del tracker.",
    SETTINGS_BUTTON = "Opciones",
    FEATURES_BUTTON = "Funciones",
    SETTINGS_TITLE = "Opciones",
    SETTINGS_VERSION = "Versión",
    SETTINGS_SCALE = "Escala",
    SETTINGS_OPACITY = "Opacidad",
    SETTINGS_MINIMAP = "Minimapa",
    SETTINGS_MINIMAP_SHOW = "Mostrar",
    SETTINGS_MINIMAP_HIDE = "Ocultar",
    SETTINGS_ALT_SCORE = "Score de alter",
    SETTINGS_ALT_SCORE_SHOW = "Mostrar",
    SETTINGS_ALT_SCORE_HIDE = "Ocultar",
    SETTINGS_MAIN_TABS_TITLE = "Pestañas principales",
    SETTINGS_MAIN_TABS_HINT = "Elige qué pestañas principales son visibles en la navegación superior.",
    SETTINGS_MAIN_TABS_TOGGLE_TOOLTIP = "Clic izquierdo: Mostrar u ocultar esta pestaña principal.",
    SETTINGS_MAIN_TABS_LAST_VISIBLE_HINT = "Al menos una pestaña principal debe permanecer visible.",
    NEWS_ENTRY_TITLE = "Cambios %s",
    NEWS_POPUP_TITLE = "Novedades de Vaultloom",
    NEWS_POPUP_SUBTITLE = "Actualización actual y notas recientes del parche.",
    NEWS_POPUP_HINT = "Abre /vl y ve a Opciones para verlo de nuevo.",
    NEWS_OPEN_FEATURES = "Abrir funciones",
    NEWS_CHANGELOG_TITLE = "Registro de cambios de Vaultloom %s",
    NEWS_UI_UNAVAILABLE = "El módulo de IU de Vaultloom no está disponible.",
    NEWS_UI_OPEN_FAILED = "Vaultloom no pudo abrir la IU: %s",
    NEWS_LOGIN_HINT = "Vaultloom %s - abre Vaultloom con /vl. Para ver las novedades, mira Opciones > Cambios.",
    NEWS_ENTRIES = {
        {
            version = "0.9.98",
            date = "29 de junio de 2026",
            items = {
                "AÑADIDO: El seguimiento semanal de Omnium Folio se ha añadido a la pestaña JcE semanal.",
            },
        },
        {
            version = "0.9.97",
            date = "25 de junio de 2026",
            items = {
                "CORREGIDO: Ajuste de versión de WoW para el parche 12.0.7.",
            },
        },
        {
            version = "0.9.96",
            date = "27 de mayo de 2026",
            items = {
                "AÑADIDO: Nuevas opciones para el popup de XP de Crónica: Ahora tiene varios estilos y tamaño ajustable.",
                "CORREGIDO: Nodos de recolección no funcionaba como debía y los filtros podían sobrescribir la base de datos antigua. Los nodos guardados ahora deberían permanecer.",
                "ACTUALIZADO: La ventana de Vaultloom ahora se puede mover fuera del borde de la pantalla y devolver a la posición predeterminada con /vl reset.",
            },
        },
        {
            version = "0.9.95",
            date = "24 de mayo de 2026",
            items = {
                "AÑADIDO: Nueva función Botín discreto, un pequeño extra para mostrar de forma simplificada el botín y los cofres.",
                "CORREGIDO: Error ACCESS_VIOLATION al desconectar causado por escanear las misiones de la Feria de la Luna Negra.",
            },
        },
        {
            version = "0.9.94",
            date = "16 de mayo de 2026",
            items = {
                "AÑADIDO: Añadida la misión semanal de abismos con botín de banda guerrera.",
                "CORREGIDO: Optimización de CPU de Nodos de recolección. Se eliminaron muchos datos extra guardados; ahora funciona con más estabilidad.",
                "ACTUALIZADO: Compendio (Beta) actualizado con muchos arreglos de Midnight, entradas añadidas y mejor agrupación de monturas promocionales.",
            },
        },
        {
            version = "0.9.932",
            date = "12 de mayo de 2026",
            items = {
                "CORREGIDO: Los alters ya no reciben spam de XP de Crónica por las abismos generosas; ahora esta actividad solo cuenta correctamente a partir del nivel 90.",
                "CORREGIDO: Error Lua al usar profesiones de recolección dentro de instancias mientras la función de nodos de recolección estaba activa.",
            },
        },
        {
            version = "0.9.93",
            date = "11 de mayo de 2026",
            items = {
                "ACTUALIZADO: Las decoraciones del Compendio ahora leen las cantidades poseídas desde el catálogo de vivienda.",
                "ACTUALIZADO: El progreso de decoraciones cuenta una decoración como completada cuando se posee al menos una copia.",
                "CORREGIDO: Las ventanas de la IU de Blizzard ahora se abren sobre la ventana principal de Vaultloom, mientras Vaultloom sigue por encima de las barras de acción y la IU normal.",
                "CORREGIDO: La ventana de vendedor de Vaultloom vuelve a admitir clics modificados de Blizzard en objetos, incluyendo vista previa/probador y enlaces en el chat.",
                "CORREGIDO: One-Click Processing ya no provoca una advertencia protegida de `Hide()` en combate; la limpieza del botón seguro se retrasa hasta salir del combate.",
                "CORREGIDO: Los pines de nodos de recolección se ocultan en instancias y calabozos para evitar que aparezcan nodos del mundo exterior en mapas de calabozo.",
                "CORREGIDO: Las instantáneas de nodos de recolección ya no se guardan dentro de instancias, evitando que botín de calabozos se guarde en mapas del mundo exterior.",
            },
        },
        {
            version = "0.9.92",
            date = "8 de mayo de 2026",
            items = {
                "NUEVO: Nueva pestaña Compendio (Beta). Muestra contenido coleccionable de Midnight como monturas, mascotas, juguetes, decoraciones y recetas en una vista con búsqueda, filtros, tooltips y puntos de ruta.",
                "NUEVO Feature mapa del mundo: Nodos de recolección. Vaultloom crea tu propia base de datos al recolectar minería, hierbas, desuello, materiales de cocina, madera y peces, y muestra los nodos descubiertos en el mapa y minimapa.",
                "NUEVO Feature mapa del mundo: Tesoros de Midnight. Muestra los tesoros de Midnight no recogidos como pines de mapa.",
                "NUEVO Feature mapa del mundo: Conocimiento de profesiones. Muestra en el mapa los puntos de conocimiento para las profesiones activas del personaje.",
                "NUEVO: Nuevo botón de Vaultloom directamente en el mapa para activar o desactivar rápidamente los features de mapa.",
                "ACTUALIZADO: Pines de mapa, iconos de nodos, iconos de tesoros y pines de raros mejorados visualmente para leerse mejor.",
                "ACTUALIZADO: Mover ventanas Blizzard soporta más ventanas estándar y evita escalado problemático en vistas sensibles de Blizzard.",
                "CORREGIDO: La instantánea de oro de los personajes ahora se guarda con más fiabilidad para que los alters no aparezcan con 0 de oro al cambiar de personaje.",
            },
        },
        {
            version = "0.9.91",
            date = "7 de mayo de 2026",
            items = {
                "CORREGIDO: La entrega automática opcional de misiones ahora es más segura y omite misiones de NPC arriesgadas con elección de recompensa, costes o varias entregas posibles.",
                "CORREGIDO: Favor de la Corte ahora otorga XP de Crónica solo una vez por semana para la banda guerrera, igual que la semanal de Housing.",
            },
        },
        {
            version = "0.9.9",
            date = "7 de mayo de 2026",
            items = {
                "NUEVO: Los distintivos de profesiones ahora se muestran en el encabezado de la pestaña principal para todos los personajes.",
                "NUEVO: El oro de cada personaje ahora se muestra en el encabezado de la pestaña principal.",
                "NUEVA FUNCIÓN símbolos de mapa de raros de Midnight: Se muestran pequeños distintivos en el mapa para ver dónde aparecen los raros.",
                "NUEVA FUNCIÓN Filtros de vendedor: 3 modos diferentes para filtrar objetos del vendedor: Nueva ventana completa de Vaultloom, solo filtros con la IU original de WoW o versión mixta con ambas. Se puede filtrar casi todo: Recetas, profesiones, equipo, objetos de decoración y objetos ya obtenidos o conocidos. Además, se corrigió un bug de la IU de Blizzard que muestra la moneda incorrecta en algunos vendedores.",
                "NUEVA FUNCIÓN aceptar misiones automáticamente y entregarlas de forma opcional.",
                "NUEVA FUNCIÓN mostrar el ID de objeto directamente en los tooltips.",
                "CORREGIDO: La barra de progreso de presa ya no debería hacer aparecer la IU de Blizzard en Lunargenta.",
                "AÑADIDO: Soporte para italiano, portugués y ruso.",
            },
        },
        {
            version = "0.9.98",
            date = "May 6, 2026",
            items = {
                "ADDED: Added new weekly quests for Vereint gegen die Leere and Archmage Aethas to the pools.",
                "NEW: Full support for calendar event quests: Darkmoon Faire dailies, weeklies, and turn-ins are now tracked.",
                "NEW: Darkmoon Faire profession quests have been added to the Professions tab.",
                "NEW: Added a new PvE Calendar Events area for current and future special World of Warcraft events.",
                "FIXED: The Warband row filter now keeps its last setting after logout.",
                "UPDATED: Chronicle XP global quests now award XP only once to the character that completed the mission.",
                "NOTE: Please report bugs, errors, or requests in the Curse comment section. Thank you!",
            },
        },
        {
            version = "0.9.97",
            date = "4 de mayo de 2026",
            items = {
                "NEW: Blizzard window movement and scaling support lets supported Blizzard windows be repositioned and made smaller.",
                "NEW: Shopping List can be opened from crafting and auction windows or from its own movable round mini button with adjustable size.",
                "NEW: Vaultloom Bestand tracks item counts across bags, bank, and warband bank. Log into each alt once and open each storage once so Vaultloom can capture the counts.",
                "UPDATED: Vaultloom Armory and the general Vaultloom UI received visual improvements.",
                "CHANGED: The large Set Main character button was removed. Set a Main character by right-clicking a character row.",
            },
        },
        {
            version = "0.9.963",
            date = "3 de mayo de 2026",
            items = {
                "NUEVO: Pestaña Crónica: Los popups de XP ahora se pueden mover con un popup de prueba y guardar en la posición que prefieras.",
                "ACTUALIZADO: Los ajustes de Crónica ahora tienen su propio menú de opciones agrupado para visualización, badges y controles de popups.",
            },
        },
        {
            version = "0.9.96",
            date = "1 de mayo de 2026",
            items = {
                "NUEVO: Vaultloom Armory está disponible como nueva opción activable en el menú de funciones. Actívala allí para añadir una vista general extendida del personaje con comprobaciones de equipo, ranuras, encantamientos y estadísticas de combate compactas.",
                "CORREGIDO: Corregido el error Lua de raros causado por nombres protegidos en tooltips de Blizzard.",
                "ACTUALIZADO: Menú de funciones rediseñado con botones de categoría, lista desplazable, casillas y ajustes compactos.",
            },
        },
        {
            version = "0.9.95",
            date = "30 de abril de 2026",
            items = {
                "NUEVO: La pestaña JcE ahora tiene un menú de raros para los raros de Midnight, estado diario, monturas y puntos de ruta de Blizzard con clic.",
            },
        },
        {
            version = "0.9.94",
            date = "29 de abril de 2026",
            items = {
                "CORREGIDO: El progreso de recompensa máxima de la Gran Cámara para mundo / abismos / cacería ahora cuenta correctamente las actividades de nivel máximo.",
                "CORREGIDO: Los popups de XP de Crónica ahora se activan con más fiabilidad para tareas relevantes de Vaultloom sin tener que abrir el addon primero.",
            },
        },
        {
            version = "0.9.93",
            date = "29 de abril de 2026",
            items = {
                "ACTUALIZADO: Añadida una nueva misión de Asaltos del Vacío al grupo de eventos JcE.",
            },
        },
        {
            version = "0.9.92",
            date = "29 de abril de 2026",
            items = {
                "NUEVO: Las notificaciones emergentes de XP de misiones de Crónica ahora se pueden desactivar por separado en Opciones manteniendo activo el resto de Crónica.",
                "NUEVO: Mythic+ ahora tiene un botón de llaves de banda guerrera bajo la piedra actual para ver todos los alters y sus llaves guardadas de un vistazo. Inicia sesión una vez con cada alter para que Vaultloom pueda guardar su llave.",
                "NUEVO: Añadida la fila de misión diaria Duelo de decoración a la pestaña diaria JcE.",
                "ACTUALIZADO: Añadida la nueva misión semanal del archimago Aethas y ampliado el grupo de misiones semanales JcJ.",
                "CORREGIDO: Varios ajustes visuales de la IU y el progreso de cacería ahora se reinicia correctamente con el reinicio semanal.",
            },
        },
        {
            version = "0.8.98",
            date = "28 de abril de 2026",
            items = {
                "Añadido el nuevo Alt Score (AS) para el progreso semanal de personajes.",
                "La barra de presas debería estar por fin arreglada. Perdón por tantas vueltas con el comportamiento del widget de Blizzard.",
                "El progreso de recompensa máxima por casilla de la Gran Cámara ahora otorga XP de Crónica para banda, calabozo y mundo / abismos / cacería.",
                "Por favor, informa de bugs en los comentarios de Curse o en el hilo de WoW Reddit. Gracias por ayudar a probar los sistemas beta.",
            },
        },
        {
            version = "0.8.91",
            date = "27 de abril de 2026",
            items = {
                "Las cacerías de presas completadas individualmente ahora otorgan XP de Crónica.",
                "Se han pulido las barras de progreso de Crónica para que los valores muy pequeños ya no creen artefactos visuales en los bordes.",
            },
        },
        {
            version = "0.8.89",
            date = "27 de abril de 2026",
            items = {
                "Nueva pestaña Crónica (Beta): Gana XP con todos tus personajes y tu banda guerrera completando tareas dentro de Vaultloom. Desbloquea nuevos rangos y consigue badges y marcos de personaje que puedes mostrar en tu tarjeta de personaje como prefieras. Si no quieres usar el sistema, puedes desactivarlo en Opciones.",
            },
        },
        {
            version = "0.8.28",
            date = "26 de abril de 2026",
            items = {
                "Nuevo tab Fokus completo: Crea tu propia lista de misiones y tareas por personaje o como plantilla global, añade, elimina y reordena filas, y sigue solo lo que te importa.",
                "Añadido un rastreador Fokus flotante fuera de la ventana principal con bloqueo, escala, opacidad, fuente y estilos con marco o solo texto.",
                "Fokus ahora puede seguir objetivos de la Gran Cámara, abismos, caza de presas y conocimiento de profesión junto a las filas normales de misiones.",
                "Añadido Stat Focus para colorear y ordenar las estadísticas secundarias importantes según la clase y especialización directamente en los tooltips de objetos.",
                "Pulido de la IU de Funciones y Fokus con tooltips más claros, modo solo texto más compacto, opciones de estilo del rastreador e iconos de flecha consistentes.",
            },
        },
        {
            version = "0.8.00",
            date = "26 de abril de 2026",
            items = {
                "Reconstrucción completa del núcleo Lua para una base de Vaultloom más limpia y estable.",
                "Se han renovado muchos iconos visuales, pestañas y menús.",
                "Opciones incluye ahora una nueva sección para mostrar u ocultar pestañas principales.",
                "La ordenación de banda guerrera y la visibilidad de personajes usan ahora menús desplegables más claros.",
                "Nuevo encabezado del personaje seleccionado actualmente en todas las vistas principales.",
                "Nueva pestaña de Profesiones para reutilizaciones y concentración. Los tiempos estimados pueden variar ligeramente.",
                "Añadidas las localizaciones en francés y español.",
            },
        },
        {
            version = "0.7.89",
            date = "23 de abril de 2026",
            items = {
                "Añadido procesamiento con un clic para desencantar, moler, prospectar y ganzuar.",
                "Añadidos nuevos iconos personalizados para el mapa de caza de presas.",
            },
        },
        {
            version = "0.7.82",
            date = "23 de abril de 2026",
            items = {
                "Añadidos los distintivos de conocimiento de profesión y la nueva sección de conocimiento de profesión.",
                "Añadido pulido visual y lógica mejorada para la Gran Cámara.",
            },
        },
        {
            version = "0.7.65",
            date = "22 de abril de 2026",
            items = {
                "Añadidas la barra de cambio de especialización, la barra de viaje y las funciones de nivel de objeto en bolsas.",
                "Añadido soporte para el parche 12.0.5 de WoW y nuevo seguimiento diario y semanal.",
            },
        },
    },
    FEATURES_TITLE = "Funciones",
    FEATURES_SUBTITLE = "Activa funciones solo si quieres usarlas.",
    FEATURES_SECTION_CATEGORIES = "Categorías",
    FEATURES_SECTION_LIST = "Biblioteca",
    FEATURES_SECTION_DETAILS = "Detalles",
    FEATURES_HEADER_FEATURE = "Función",
    FEATURES_HEADER_STATUS = "Estado",
    FEATURES_HEADER_OPTIONS = "Ajustes",
    FEATURES_ROW_OPTIONS = "Ajustes",
    FEATURES_ROW_NO_OPTIONS = "Sin ajustes extra",
    FEATURES_DEFAULT_NOTE = "Aquí solo se muestran categorías con funciones.",
    FEATURES_EMPTY = "Aún no hay funciones disponibles en esta categoría.",
    FEATURES_STATUS_LIVE = "En vivo",
    FEATURES_STATUS_RELOAD = "Recargar",
    FEATURES_STATUS_ON = "Activado",
    FEATURES_STATUS_OFF = "Desactivado",
    FEATURES_STATUS_NEXT_UP = "Próximo",
    FEATURES_TOGGLE_ON = "Activo",
    FEATURES_TOGGLE_OFF = "Inactivo",
    FEATURES_TOOLTIP_ENABLE = "Clic izquierdo: Activar función",
    FEATURES_TOOLTIP_DISABLE = "Clic izquierdo: Desactivar función",
    FEATURE_CATEGORY_PROGRESS = "Progreso",
    FEATURE_CATEGORY_PROGRESS_DESC = "Pequeñas ayudas de progreso.",
    FEATURE_CATEGORY_CHARACTER = "Personaje",
    FEATURE_CATEGORY_CHARACTER_DESC = "Pequeñas ayudas para la ventana de personaje.",
    FEATURE_CATEGORY_INVENTORY = "Inventario",
    FEATURE_CATEGORY_INVENTORY_DESC = "Ayudas para bolsas, banco y almacenamiento de objetos.",
    FEATURE_CATEGORY_CRAFTING = "Artesanía",
    FEATURE_CATEGORY_CRAFTING_DESC = "Recetas, materiales y listas de compra.",
    FEATURE_CATEGORY_QUICK_TOOLS = "Herramientas rápidas",
    FEATURE_CATEGORY_QUICK_TOOLS_DESC = "Herramientas de acceso rápido y widgets compactos.",
    FEATURE_CATEGORY_WORLD_MAP = "Mapa del mundo",
    FEATURE_CATEGORY_WORLD_MAP_DESC = "Marcadores, pines y ayudas de seguimiento para el mapa del mundo de Blizzard.",
    FEATURE_CATEGORY_BLIZZARD = "IU Blizzard",
    FEATURE_CATEGORY_BLIZZARD_DESC = "Mejoras enfocadas para pantallas de Blizzard.",
    FEATURE_CATEGORY_LAYOUT = "Diseño y escala",
    FEATURE_CATEGORY_LAYOUT_DESC = "Herramientas extra de diseño y tamaño.",
    FEATURE_CATEGORY_EXPERIMENTAL = "Experimental",
    FEATURE_CATEGORY_EXPERIMENTAL_DESC = "Ideas tempranas que aún necesitan más pruebas.",
    FEATURE_PREY_BAR_TITLE = "Barra de progreso de presas",
    FEATURE_PREY_BAR_DESCRIPTION = "Muestra una barra de progreso de presas en la zona de caza.",
    FEATURE_PREY_BAR_INITIAL_TEXT = "Primer módulo planeado: Una barra limpia de progreso de presas que solo aparece durante una caza de presas activa en la zona correspondiente.",
    FEATURE_PREY_BAR_NOTE = "Solo visible durante una caza de presas activa. El botón de la IU de Blizzard muestra u oculta el símbolo de presa de Blizzard.",
    FEATURE_PREY_BAR_PREVIEW_LABEL = "Vista en vivo",
    FEATURE_PREY_BAR_PREVIEW_NOTE = "Barra fina de mundo con porcentaje, contexto de zona y progreso de misión.",
    FEATURE_PREY_BAR_RUNTIME_LABEL = "Caza de presas",
    FEATURE_PREY_BAR_RUNTIME_SUMMARY = "%d/%d progreso",
    FEATURE_PREY_BAR_RUNTIME_SUMMARY_FALLBACK = "Presa activa seguida en vivo",
    FEATURE_PREY_BAR_RUNTIME_STAGE = "Fase %d/3",
    FEATURE_PREY_BAR_TOGGLE_TOOLTIP = "Activa o desactiva la barra de progreso de presas.",
    FEATURE_PREY_BAR_WIDGET_LABEL = "IU Blizzard",
    FEATURE_PREY_BAR_WIDGET_HIDDEN = "Ocultar IU",
    FEATURE_PREY_BAR_WIDGET_SHOWN = "Mostrar IU",
    FEATURE_PREY_BAR_WIDGET_TOOLTIP = "Muestra u oculta el símbolo Blizzard de caza de presas.",
    FEATURE_PREY_BAR_FRAME_LABEL = "Marco",
    FEATURE_PREY_BAR_FRAME_SHOWN = "Marco",
    FEATURE_PREY_BAR_FRAME_HIDDEN = "Limpio",
    FEATURE_PREY_BAR_FRAME_TOOLTIP = "Muestra u oculta el fondo de la barra de presas.",
    FEATURE_PREY_BAR_RUNTIME_TOOLTIP_DRAG = "Arrastrar izq.: Mover",
    FEATURE_PREY_BAR_RUNTIME_TOOLTIP_WHEEL = "Mayús + rueda: Tamaño",
    FEATURE_PREY_HUNT_ICONS_TITLE = "Iconos de caza de presas",
    FEATURE_PREY_HUNT_ICONS_DESCRIPTION = "Sustituye los signos de exclamación de presas en el mapa por iconos personalizados. Desactívalo y usa /reload si los marcadores de Blizzard no vuelven de inmediato.",
    FEATURE_PREY_HUNT_ICONS_NOTE = "Calaveras, demonios y cabezas de jefe muestran la dificultad de la caza. El distintivo de trofeo significa que el objetivo aún cuenta para el logro.",
    FEATURE_PREY_HUNT_ICONS_PREVIEW_LABEL = "Mapa de caza",
    FEATURE_PREY_HUNT_ICONS_PREVIEW_NOTE = "Iconos personalizados para la mesa de caza con dificultad y contexto de logro.",
    FEATURE_PREY_HUNT_ICONS_TOGGLE_TOOLTIP = "Sustituye los marcadores de caza de presas de Blizzard por iconos personalizados.",
    FEATURE_PREY_HUNT_ICONS_RUNTIME_DIFFICULTY = "Dificultad: %s",
    FEATURE_PREY_HUNT_ICONS_RUNTIME_ACHIEVEMENT = "Aún necesario para el logro de presas.",
    FEATURE_PREY_HUNT_ICONS_RELOAD_HINT = "Si los marcadores de Blizzard no vuelven de inmediato, usa /reload una vez.",
    FEATURE_MIDNIGHT_RARE_MAP_PINS_TITLE = "Iconos de raros de Midnight",
    FEATURE_MIDNIGHT_RARE_MAP_PINS_DESCRIPTION = "Muestra los raros de Midnight pendientes en el mapa del mundo de Blizzard.",
    FEATURE_MIDNIGHT_RARE_MAP_PINS_NOTE = "Usa el icono de viñeta de raro de Blizzard. Los marcadores desaparecen tras obtener el crédito diario del personaje y vuelven tras el reinicio diario.",
    FEATURE_MIDNIGHT_RARE_MAP_PINS_PREVIEW_LABEL = "Mapa del mundo",
    FEATURE_MIDNIGHT_RARE_MAP_PINS_PREVIEW_NOTE = "Ubicaciones de raros de Midnight con ocultación diaria y puntos de ruta de Blizzard.",
    FEATURE_MIDNIGHT_RARE_MAP_PINS_TOGGLE_TOOLTIP = "Muestra u oculta los raros de Midnight pendientes en el mapa del mundo de Blizzard.",
    FEATURE_MIDNIGHT_RARE_MAP_PINS_TOOLTIP_HINT = "Clic izquierdo para colocar un punto de ruta de Blizzard.",
    FEATURE_MIDNIGHT_RARE_MAP_PINS_HIDE_DONE_HINT = "Los marcadores desaparecen cuando se obtiene el crédito diario.",
    FEATURE_PROFESSION_KNOWLEDGE_BADGES_TITLE = "Distintivos de conocimiento de profesión",
    FEATURE_PROFESSION_KNOWLEDGE_BADGES_DESCRIPTION = "Añade distintivos personalizados de conocimiento sin gastar al libro de profesiones de Blizzard.",
    FEATURE_PROFESSION_KNOWLEDGE_BADGES_NOTE = "Muestra un pequeño distintivo personalizado con la cantidad de puntos disponibles junto a cada profesión principal.",
    FEATURE_PROFESSION_KNOWLEDGE_BADGES_PREVIEW_LABEL = "Libro de profesiones",
    FEATURE_PROFESSION_KNOWLEDGE_BADGES_PREVIEW_NOTE = "Distintivos de puntos personalizados junto a los iconos de profesión de Blizzard cuando hay conocimiento sin gastar.",
    FEATURE_SPEC_SWITCHER_TITLE = "Barra de cambio de especialización",
    FEATURE_SPEC_SWITCHER_DESCRIPTION = "Muestra una barra móvil para cambiar de especialización y de talentos guardados.",
    FEATURE_SPEC_SWITCHER_NOTE = "Clic izquierdo en otra especialización para cambiar. Clic izquierdo en la especialización activa para recorrer configuraciones guardadas. Clic derecho abre el menú de configuraciones.",
    FEATURE_SPEC_SWITCHER_PREVIEW_LABEL = "Barra flotante",
    FEATURE_SPEC_SWITCHER_PREVIEW_NOTE = "Iconos premium de especialización con menú compacto de talentos, arrastre y escala con Mayús + rueda.",
    FEATURE_SPEC_SWITCHER_ORIENTATION_LABEL = "Diseño",
    FEATURE_SPEC_SWITCHER_ORIENTATION_HORIZONTAL = "Horizontal",
    FEATURE_SPEC_SWITCHER_ORIENTATION_VERTICAL = "Vertical",
    FEATURE_SPEC_SWITCHER_ORIENTATION_TOOLTIP = "Cambia entre una barra horizontal y vertical.",
    FEATURE_SPEC_SWITCHER_FRAME_LABEL = "Marco",
    FEATURE_SPEC_SWITCHER_FRAME_SHOWN = "Marco",
    FEATURE_SPEC_SWITCHER_FRAME_HIDDEN = "Limpio",
    FEATURE_SPEC_SWITCHER_FRAME_TOOLTIP = "Muestra u oculta el fondo de la barra.",
    FEATURE_SPEC_SWITCHER_RUNTIME_LABEL = "Configuraciones",
    FEATURE_SPEC_SWITCHER_RUNTIME_EMPTY = "Sin configuraciones guardadas",
    FEATURE_SPEC_SWITCHER_RUNTIME_PENDING = "Cargando: %s",
    FEATURE_SPEC_SWITCHER_RUNTIME_TOOLTIP_SWITCH = "Clic izquierdo: Cambiar de especialización",
    FEATURE_SPEC_SWITCHER_RUNTIME_TOOLTIP_CYCLE = "Clic izquierdo: Recorrer configuraciones guardadas",
    FEATURE_SPEC_SWITCHER_RUNTIME_TOOLTIP_OPEN = "Clic izquierdo: Abrir configuraciones guardadas",
    FEATURE_SPEC_SWITCHER_RUNTIME_TOOLTIP_MENU = "Clic derecho: Abrir configuraciones guardadas",
    FEATURE_SPEC_SWITCHER_RUNTIME_TOOLTIP_DRAG = "Arrastrar izq.: Mover",
    FEATURE_SPEC_SWITCHER_RUNTIME_TOOLTIP_WHEEL = "Mayús + rueda: Tamaño",
    FEATURE_SPEC_SWITCHER_RUNTIME_TOOLTIP_COMBAT = "No disponible en combate",
    FEATURE_SPEC_SWITCHER_MENU_TITLE = "Configuraciones de %s",
    FEATURE_SPEC_SWITCHER_MENU_SUBTITLE = "Elige una configuración de talentos guardada.",
    FEATURE_SPEC_SWITCHER_MENU_EMPTY = "Aún no hay configuraciones guardadas para esta especialización.",
    FEATURE_SPEC_SWITCHER_ERROR_SPEC_COMBAT = "Vaultloom: No se puede cambiar de especialización en combate.",
    FEATURE_SPEC_SWITCHER_ERROR_LOADOUT_COMBAT = "Vaultloom: No se pueden cargar talentos en combate.",
    FEATURE_TRAVEL_BAR_TITLE = "Barra de viaje",
    FEATURE_TRAVEL_BAR_DESCRIPTION = "Muestra una barra móvil de piedra de hogar y viajes con accesos inteligentes de teletransporte.",
    FEATURE_TRAVEL_BAR_NOTE = "El botón principal usa una piedra de hogar aleatoria. Los demás botones usan opciones directas como Dalaran, la ciudadela, viaje de clase y teletransportes extra.",
    FEATURE_TRAVEL_BAR_PREVIEW_LABEL = "Dock de viaje",
    FEATURE_TRAVEL_BAR_PREVIEW_NOTE = "Iconos compactos de piedra de hogar y teletransporte con arrastre, menús y escala con Mayús + rueda.",
    FEATURE_TRAVEL_BAR_TOGGLE_TOOLTIP = "Activa o desactiva la barra de piedra de hogar y viaje.",
    FEATURE_TRAVEL_BAR_ORIENTATION_LABEL = "Diseño",
    FEATURE_TRAVEL_BAR_ORIENTATION_HORIZONTAL = "Horizontal",
    FEATURE_TRAVEL_BAR_ORIENTATION_VERTICAL = "Vertical",
    FEATURE_TRAVEL_BAR_ORIENTATION_TOOLTIP = "Cambia entre una barra horizontal y vertical.",
    FEATURE_TRAVEL_BAR_FRAME_LABEL = "Marco",
    FEATURE_TRAVEL_BAR_FRAME_SHOWN = "Marco",
    FEATURE_TRAVEL_BAR_FRAME_HIDDEN = "Limpio",
    FEATURE_TRAVEL_BAR_FRAME_TOOLTIP = "Muestra u oculta el fondo de la barra.",
    FEATURE_TRAVEL_BAR_CONFIG_TITLE = "Botones de la barra de viaje",
    FEATURE_TRAVEL_BAR_CONFIG_NOTE = "Elige qué piedras de hogar y opciones de viaje permanecen visibles en la barra.",
    FEATURE_TRAVEL_BAR_CONFIG_HEARTHS = "Piedras de hogar",
    FEATURE_TRAVEL_BAR_CONFIG_TRAVEL = "Viaje",
    FEATURE_TRAVEL_BAR_CONFIG_BUTTON = "Botones",
    FEATURE_TRAVEL_BAR_CONFIG_OPEN_TOOLTIP = "Abre la lista de botones visibles.",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_DRAG = "Arrastrar izq.: Mover",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_WHEEL = "Mayús + rueda: Tamaño",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_MENU_TRAVEL = "Clic izquierdo: Abrir menú de viaje",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_MENU_HEARTH = "Clic derecho: Abrir menú de piedras de hogar",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_MENU_SHIFT_HEARTH = "Mayús + clic izquierdo: Menú de piedras de hogar",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_BUTTON_MENU = "Clic derecho en un botón: Abrir menú",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_MAIN_USE = "Clic izquierdo: Usar una piedra de hogar aleatoria",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_MAIN_MENU = "Clic derecho: Abrir menú de piedras de hogar",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_DIRECT_USE = "Clic izquierdo: Usar esta opción de viaje",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_DIRECT_MENU = "Clic derecho: Abrir menú de viaje",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_MORE_USE = "Clic izquierdo: Usar la opción de viaje seleccionada",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_MORE_MENU = "Clic derecho: Abrir menú de viaje",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_DESTINATION = "Teletransporta a: %s",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_HOME = "Teletransporta a tu hogar: %s",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_HOME_GENERIC = "Teletransporta a tu hogar.",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_HOUSING = "Teletransporta a tu casa activa.",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_HOUSING_RETURN = "Te devuelve desde una casa visitada.",
    FEATURE_TRAVEL_BAR_MENU_HEARTHS = "Piedras de hogar",
    FEATURE_TRAVEL_BAR_MENU_HEARTHS_EDIT = "Piedras visibles",
    FEATURE_TRAVEL_BAR_MENU_TRAVEL = "Viaje",
    FEATURE_TRAVEL_BAR_MENU_TRAVEL_EDIT = "Viajes visibles",
    FEATURE_TRAVEL_BAR_MENU_EMPTY = "Nada disponible ahora mismo.",
    FEATURE_TRAVEL_BAR_MENU_EDIT = "Editar botones visibles",
    FEATURE_TRAVEL_BAR_MENU_EDIT_DONE = "Listo",
    FEATURE_TRAVEL_BAR_MENU_STATE_SHOWN = "Activo",
    FEATURE_TRAVEL_BAR_MENU_STATE_HIDDEN = "Inactivo",
    FEATURE_TRAVEL_BAR_MENU_EDIT_SHOW = "Clic izquierdo: Mostrar en la barra",
    FEATURE_TRAVEL_BAR_MENU_EDIT_HIDE = "Clic izquierdo: Ocultar de la barra",
    FEATURE_TRAVEL_BAR_ERROR_COMBAT = "Vaultloom: Los menús de viaje no se pueden abrir en combate.",
    FEATURE_TRAVEL_BAR_ERROR_KEEP_ONE_HEARTH = "Vaultloom: Mantén visible al menos una piedra de hogar.",
    FEATURE_TRAVEL_BAR_ERROR_KEEP_ONE_TRAVEL = "Vaultloom: Mantén visible al menos una opción de viaje.",
    FEATURE_GEAR_ITEM_LEVEL_TITLE = "Nivel de objeto del equipo",
    FEATURE_GEAR_ITEM_LEVEL_DESCRIPTION = "Muestra el nivel de objeto directamente en tus ranuras de equipo.",
    FEATURE_GEAR_ITEM_LEVEL_NOTE = "Solo en la ventana de personaje. El botón Blanco / Coloreado cambia el color del número.",
    FEATURE_GEAR_ITEM_LEVEL_PREVIEW_LABEL = "Superposición de personaje",
    FEATURE_GEAR_ITEM_LEVEL_PREVIEW_NOTE = "Números compactos de nivel de objeto sobre iconos de equipo con colores de calidad correspondientes.",
    FEATURE_GEAR_ITEM_LEVEL_TOGGLE_TOOLTIP = "Activa o desactiva los números de nivel de objeto en tus ranuras de equipo.",
    FEATURE_GEAR_ITEM_LEVEL_STYLE_LABEL = "Estilo de texto",
    FEATURE_GEAR_ITEM_LEVEL_STYLE_WHITE = "Blanco",
    FEATURE_GEAR_ITEM_LEVEL_STYLE_COLORED = "Coloreado",
    FEATURE_GEAR_ITEM_LEVEL_STYLE_TOOLTIP = "Cambia el color de los números de nivel de objeto.",
    FEATURE_INVENTORY_TRACKER_TITLE = "Inventario Vaultloom",
    FEATURE_INVENTORY_TRACKER_DESCRIPTION = "Muestra en tooltips las cantidades guardadas de tus personajes, banco, banco de componentes, equipo y banco de banda.",
    FEATURE_INVENTORY_TRACKER_NOTE = "Los escaneos usan eventos: Bolsas tras actualizarse, banco solo abierto y tooltips con totales guardados.",
    FEATURE_INVENTORY_TRACKER_PREVIEW_LABEL = "Tooltip de objeto",
    FEATURE_INVENTORY_TRACKER_PREVIEW_NOTE = "Totales por personaje con fuentes, resumen compacto o solo total.",
    FEATURE_INVENTORY_TRACKER_MODE_LABEL = "Tooltip",
    FEATURE_INVENTORY_TRACKER_MODE_DETAIL = "Detalle",
    FEATURE_INVENTORY_TRACKER_MODE_COMPACT = "Compacto",
    FEATURE_INVENTORY_TRACKER_MODE_TOTAL = "Total",
    FEATURE_INVENTORY_TRACKER_WARBAND_LABEL = "Banda",
    FEATURE_INVENTORY_TRACKER_WARBAND_ON = "Banda sí",
    FEATURE_INVENTORY_TRACKER_WARBAND_OFF = "Banda no",
    FEATURE_INVENTORY_TRACKER_SOURCE_BAGS = "Bolsas",
    FEATURE_INVENTORY_TRACKER_SOURCE_BANK = "Banco",
    FEATURE_INVENTORY_TRACKER_SOURCE_REAGENTS = "Componentes",
    FEATURE_INVENTORY_TRACKER_SOURCE_EQUIPPED = "Equipado",
    FEATURE_INVENTORY_TRACKER_SOURCE_WARBAND = "Banco de banda",
    FEATURE_INVENTORY_TRACKER_TOOLTIP_HEADER = "Inventario Vaultloom",
    FEATURE_INVENTORY_TRACKER_TOOLTIP_TOTAL_FORMAT = "Total: %d",
    FEATURE_INVENTORY_TRACKER_TOOLTIP_MORE_FORMAT = "+%d personajes más",
    FEATURE_INVENTORY_TRACKER_TOOLTIP_COMPACT_TOTAL_FORMAT = "Inventario Vaultloom: %d total",
    FEATURE_AUTO_SELL_JUNK_TITLE = "Venta automática de basura",
    FEATURE_AUTO_SELL_JUNK_DESCRIPTION = "Vende automáticamente objetos grises cuando un vendedor normal puede comprar objetos.",
    FEATURE_AUTO_SELL_JUNK_NOTE = "Solo vende objetos grises con valor de vendedor. Omite objetos de misión y ventanas de vendedor no estándar.",
    FEATURE_AUTO_SELL_JUNK_PREVIEW_LABEL = "Vendedor",
    FEATURE_AUTO_SELL_JUNK_PREVIEW_NOTE = "Abre un vendedor válido y Vaultloom vende los objetos grises de tus bolsas en una cola segura corta.",
    FEATURE_AUTO_SELL_JUNK_SOLD_FORMAT = "%d objetos grises vendidos por %s.",
    FEATURE_SHOPPING_LIST_TITLE = "Lista de compra",
    FEATURE_SHOPPING_LIST_DESCRIPTION = "Planifica objetos y materiales de recetas con los totales de inventario guardados.",
    FEATURE_SHOPPING_LIST_NOTE = "Abre con /vl shop, arrastra objetos al cuadrado, pega enlaces de objeto o usa los botones de profesión y casa de subastas.",
    FEATURE_SHOPPING_LIST_PREVIEW_LABEL = "Plan de materiales",
    FEATURE_SHOPPING_LIST_PREVIEW_NOTE = "Objetos objetivo arriba, componentes debajo con necesarios, disponibles y faltantes.",
    FEATURE_SHOPPING_LIST_TOGGLE_TOOLTIP = "Activa la lista de compra de Vaultloom y el planificador de materiales.",
    FEATURE_SHOPPING_LIST_MINI_TOGGLE_LABEL = "Minibotón",
    FEATURE_SHOPPING_LIST_MINI_TOGGLE_ON = "Botón sí",
    FEATURE_SHOPPING_LIST_MINI_TOGGLE_OFF = "Botón no",
    FEATURE_SHOPPING_LIST_MINI_TOGGLE_TOOLTIP = "Muestra un minibotón movible que abre la lista de compra.",
    FEATURE_SHOPPING_LIST_RECIPE_TOGGLE_LABEL = "Botón receta",
    FEATURE_SHOPPING_LIST_RECIPE_TOGGLE_ON = "Receta sí",
    FEATURE_SHOPPING_LIST_RECIPE_TOGGLE_OFF = "Receta no",
    FEATURE_SHOPPING_LIST_RECIPE_TOGGLE_TOOLTIP = "Muestra en la ventana de profesión un botón para la receta seleccionada.",
    FEATURE_SHOPPING_LIST_WINDOW_TITLE = "Lista de compra Vaultloom",
    FEATURE_SHOPPING_LIST_WINDOW_SUBTITLE = "Añade objetos y recetas a tu lista de compra.",
    FEATURE_SHOPPING_LIST_REFRESH = "Actualizar",
    FEATURE_SHOPPING_LIST_CLEAR = "Vaciar",
    FEATURE_SHOPPING_LIST_CLEAR_TOOLTIP = "Mayús-clic para vaciar la lista.",
    FEATURE_SHOPPING_LIST_CLEAR_HINT = "Vaultloom: Mayús-clic para vaciar la lista de compra.",
    FEATURE_SHOPPING_LIST_INPUT_PLACEHOLDER = "Pega enlace de objeto o ID",
    FEATURE_SHOPPING_LIST_DROP_TARGET = "Soltar objeto",
    FEATURE_SHOPPING_LIST_DROP_TOOLTIP = "Arrastra un objeto aquí para añadirlo a la lista de compra.",
    FEATURE_SHOPPING_LIST_DROP_EMPTY = "Vaultloom: Arrastra un objeto al cuadrado.",
    FEATURE_SHOPPING_LIST_ADD = "Añadir",
    FEATURE_SHOPPING_LIST_ADD_RECIPE = "Receta",
    FEATURE_SHOPPING_LIST_RECIPE_BUTTON = "Lista de compra",
    FEATURE_SHOPPING_LIST_RECIPE_BUTTON_TOOLTIP = "Añade la receta de profesión seleccionada.",
    FEATURE_SHOPPING_LIST_AUCTION_BUTTON = "Añadir lista",
    FEATURE_SHOPPING_LIST_AUCTION_BUTTON_TOOLTIP = "Añade el objeto mostrado actualmente en la casa de subastas.",
    FEATURE_SHOPPING_LIST_MINI_BUTTON_TITLE = "Lista de compra",
    FEATURE_SHOPPING_LIST_MINI_BUTTON_CLICK = "Clic izquierdo: Abrir o cerrar",
    FEATURE_SHOPPING_LIST_MINI_BUTTON_DRAG = "Arrastrar con clic izquierdo: Mover",
    FEATURE_SHOPPING_LIST_MINI_BUTTON_WHEEL = "Mayús + rueda: Tamaño",
    FEATURE_SHOPPING_LIST_EMPTY = "Tu lista de compra está vacía.",
    FEATURE_SHOPPING_LIST_KIND_RECIPE = "Receta",
    FEATURE_SHOPPING_LIST_KIND_ITEM = "Objeto",
    FEATURE_SHOPPING_LIST_ITEM_SUMMARY_FORMAT = "Necesitas %d · Tienes %d · Faltan %d",
    FEATURE_SHOPPING_LIST_RECIPE_SUMMARY_FORMAT = "Faltan %d componentes",
    FEATURE_SHOPPING_LIST_REAGENT_FORMAT = "Necesitas %d · Tienes %d · Faltan %d",
    FEATURE_SHOPPING_LIST_DECREASE = "Menos",
    FEATURE_SHOPPING_LIST_DECREASE_TOOLTIP = "Reduce la cantidad objetivo.",
    FEATURE_SHOPPING_LIST_INCREASE = "Más",
    FEATURE_SHOPPING_LIST_INCREASE_TOOLTIP = "Aumenta la cantidad objetivo.",
    FEATURE_SHOPPING_LIST_REMOVE = "Quitar",
    FEATURE_SHOPPING_LIST_REMOVE_TOOLTIP = "Quita esta entrada.",
    FEATURE_SHOPPING_LIST_ADDED_FORMAT = "Vaultloom: %s añadido.",
    FEATURE_SHOPPING_LIST_RECIPE_ADDED_FORMAT = "Vaultloom: Receta %s añadida.",
    FEATURE_SHOPPING_LIST_ERROR_FEATURE_DISABLED = "Vaultloom: Activa primero la Lista de compra en Funciones.",
    FEATURE_SHOPPING_LIST_ERROR_NO_ITEM = "Vaultloom: No se encontró enlace de objeto ni ID.",
    FEATURE_SHOPPING_LIST_ERROR_NO_AUCTION_ITEM = "Vaultloom: No se encontró un objeto de la casa de subastas.",
    FEATURE_SHOPPING_LIST_ERROR_NO_RECIPE = "Vaultloom: No se encontró una receta de profesión seleccionada.",
    FEATURE_SHOPPING_LIST_ERROR_RECIPE_REAGENTS = "Vaultloom: No se encontraron componentes para esta receta.",
    FEATURE_BAG_ITEM_LEVEL_TITLE = "Nivel de objeto en bolsas",
    FEATURE_BAG_ITEM_LEVEL_DESCRIPTION = "Muestra el nivel de objeto en equipo equipable de bolsas y banco.",
    FEATURE_BAG_ITEM_LEVEL_NOTE = "Visible en botones de objetos de bolsas y banco. El botón Blanco / Coloreado cambia el color del número.",
    FEATURE_BAG_ITEM_LEVEL_PREVIEW_LABEL = "Superposición de bolsas y banco",
    FEATURE_BAG_ITEM_LEVEL_PREVIEW_NOTE = "Pequeños números de nivel de objeto en iconos visibles de equipo de tus bolsas y banco.",
    FEATURE_BAG_ITEM_LEVEL_TOGGLE_TOOLTIP = "Activa o desactiva los números de nivel de objeto en equipo de bolsas y banco.",
    FEATURE_BAG_ITEM_LEVEL_STYLE_LABEL = "Estilo de texto",
    FEATURE_BAG_ITEM_LEVEL_STYLE_WHITE = "Blanco",
    FEATURE_BAG_ITEM_LEVEL_STYLE_COLORED = "Coloreado",
    FEATURE_BAG_ITEM_LEVEL_STYLE_TOOLTIP = "Cambia el color de los niveles de objeto de bolsas y banco.",
    FEATURE_ONE_CLICK_PROCESSING_TITLE = "Procesamiento con un clic",
    FEATURE_ONE_CLICK_PROCESSING_DESCRIPTION = "Añade una ayuda de clic con modificador para moler, prospectar, desencantar y ganzuar.",
    FEATURE_ONE_CLICK_PROCESSING_NOTE = "Mantén el modificador elegido sobre un objeto válido de la bolsa y luego haz clic izquierdo en el brillo de Vaultloom.",
    FEATURE_ONE_CLICK_PROCESSING_PREVIEW_LABEL = "Brillo de acción en bolsa",
    FEATURE_ONE_CLICK_PROCESSING_PREVIEW_NOTE = "Resalta objetos procesables en bolsas con un pequeño distintivo de acción coloreado.",
    FEATURE_ONE_CLICK_PROCESSING_MODIFIER_LABEL = "Modificador",
    FEATURE_ONE_CLICK_PROCESSING_MODIFIER_ALT = "Alt",
    FEATURE_ONE_CLICK_PROCESSING_MODIFIER_ALT_SHIFT = "Alt + Mayús",
    FEATURE_ONE_CLICK_PROCESSING_MODIFIER_ALT_CTRL = "Alt + Ctrl",
    FEATURE_ONE_CLICK_PROCESSING_TOOLTIP_USE = "%s + clic izquierdo: %s",
    FEATURE_AUTO_ACCEPT_QUESTS_TITLE = "Aceptar misiones automáticamente",
    FEATURE_AUTO_ACCEPT_QUESTS_DESCRIPTION = "Acepta automáticamente misiones disponibles de PNJ y ventanas de misión.",
    FEATURE_AUTO_ACCEPT_QUESTS_NOTE = "Acepta misiones automáticamente. La entrega opcional solo completa misiones claramente seguras y omite elección de recompensa, costes, repetibles y entregas de NPC ambiguas. Mantén Alt para pausarlo brevemente.",
    FEATURE_AUTO_ACCEPT_QUESTS_PREVIEW_LABEL = "PNJ de misión",
    FEATURE_AUTO_ACCEPT_QUESTS_PREVIEW_NOTE = "Abre misiones disponibles de PNJ y acepta automáticamente la ventana de misión.",
    FEATURE_AUTO_ACCEPT_QUESTS_TRIVIAL_LABEL = "Nivel bajo",
    FEATURE_AUTO_ACCEPT_QUESTS_TRIVIAL_INCLUDE = "Todas",
    FEATURE_AUTO_ACCEPT_QUESTS_TRIVIAL_SKIP = "Omitir grises",
    FEATURE_AUTO_ACCEPT_QUESTS_TURNIN_LABEL = "Entrega",
    FEATURE_AUTO_ACCEPT_QUESTS_TURNIN_OFF = "Solo aceptar",
    FEATURE_AUTO_ACCEPT_QUESTS_TURNIN_ON = "Entrega activa",
    FEATURE_GEAR_SOCKET_ENCHANT_TITLE = "Ranuras y encantamientos",
    FEATURE_GEAR_SOCKET_ENCHANT_DESCRIPTION = "Muestra el estado de encantamiento y los iconos de ranura junto a tus ranuras de equipo.",
    FEATURE_GEAR_SOCKET_ENCHANT_NOTE = "Solo en la ventana de personaje.",
    FEATURE_GEAR_SOCKET_ENCHANT_PREVIEW_LABEL = "Marcadores laterales de equipo",
    FEATURE_GEAR_SOCKET_ENCHANT_PREVIEW_NOTE = "Arriba: Marca o x de encantamiento. Debajo: Iconos de ranura y ranuras vacías.",
    FEATURE_GEAR_SOCKET_ENCHANT_TOGGLE_TOOLTIP = "Activa o desactiva los marcadores de encantamiento y ranura en tus ranuras de equipo.",
    FEATURE_GEAR_SOCKET_ENCHANT_EMPTY_SOCKET = "Ranura vacía",
    FEATURE_GEAR_SOCKET_ENCHANT_EMPTY_SOCKET_NOTE = "No hay gema insertada.",
    FEATURE_GEAR_SOCKET_ENCHANT_MISSING = "Encantamiento faltante",
    FEATURE_GEAR_SOCKET_ENCHANT_MISSING_NOTE = "Este objeto se puede encantar.",
    FEATURE_VAULTLOOM_ARMORY_TITLE = "Armeria Vaultloom",
    FEATURE_VAULTLOOM_ARMORY_DESCRIPTION = "Anade un boton Vaultloom a la ventana de personaje de Blizzard y abre una hoja extendida con tarjetas de equipo, nivel de objeto, ranuras, encantamientos y resumen compacto de atributos.",
    FEATURE_VAULTLOOM_ARMORY_NOTE = "Se abre bajo demanda y solo se actualiza con eventos de equipo y atributos.",
    FEATURE_VAULTLOOM_ARMORY_PREVIEW_LABEL = "Hoja de personaje extendida",
    FEATURE_VAULTLOOM_ARMORY_PREVIEW_NOTE = "Mantiene el modelo 3D en el centro, reconstruye los paneles de equipo y atributos con estilo Vaultloom y evita escaneos permanentes.",
    FEATURE_VAULTLOOM_ARMORY_TOGGLE_TOOLTIP = "Anade un boton Vaultloom a la ventana de personaje de Blizzard.",
    FEATURE_VAULTLOOM_ARMORY_BUTTON = "Vaultloom",
    FEATURE_VAULTLOOM_ARMORY_BUTTON_TOOLTIP = "Abre la hoja de personaje extendida de Vaultloom.",
    FEATURE_VAULTLOOM_ARMORY_WINDOW_TITLE = "Armeria Vaultloom",
    FEATURE_VAULTLOOM_ARMORY_WINDOW_SUBTITLE = "Hoja de personaje extendida, controles de equipo y atributos de combate.",
    FEATURE_VAULTLOOM_ARMORY_REFRESH = "Actualizar",
    FEATURE_VAULTLOOM_ARMORY_GEAR_LEFT = "Equipo",
    FEATURE_VAULTLOOM_ARMORY_GEAR_RIGHT = "Equipo",
    FEATURE_VAULTLOOM_ARMORY_MODEL_TITLE = "Personaje",
    FEATURE_VAULTLOOM_ARMORY_STATS_TITLE = "Atributos",
    FEATURE_VAULTLOOM_ARMORY_EMPTY_SLOT = "Vacio",
    FEATURE_VAULTLOOM_ARMORY_NO_ITEM = "Sin objeto equipado",
    FEATURE_VAULTLOOM_ARMORY_EMPTY_SOCKET = "Ranura vacia",
    FEATURE_VAULTLOOM_ARMORY_ENCHANT_OK = "Encant. OK",
    FEATURE_VAULTLOOM_ARMORY_ENCHANT_MISSING = "Falta encant.",
    FEATURE_VAULTLOOM_ARMORY_ILVL_FORMAT = "iLvl %d",
    FEATURE_VAULTLOOM_ARMORY_SOCKET_FORMAT = "Ranuras %d/%d",
    FEATURE_VAULTLOOM_ARMORY_READY = "Listo",
    FEATURE_VAULTLOOM_ARMORY_STAT_EQUIPPED = "Equipado",
    FEATURE_VAULTLOOM_ARMORY_STAT_AVG_ILVL = "ilvl medio",
    FEATURE_VAULTLOOM_ARMORY_STAT_MISSING_ENCHANTS = "Encant. faltantes",
    FEATURE_VAULTLOOM_ARMORY_STAT_EMPTY_SOCKETS = "Ranuras vacias",
    FEATURE_VAULTLOOM_ARMORY_STAT_STRENGTH = "Fuerza",
    FEATURE_VAULTLOOM_ARMORY_STAT_AGILITY = "Agilidad",
    FEATURE_VAULTLOOM_ARMORY_STAT_INTELLECT = "Intelecto",
    FEATURE_VAULTLOOM_ARMORY_STAT_STAMINA = "Aguante",
    FEATURE_VAULTLOOM_ARMORY_STAT_REFRESH = "Actualizado",
    FEATURE_VAULTLOOM_ARMORY_MODEL_UNAVAILABLE = "Modelo 3D no disponible",
    FEATURE_VAULTLOOM_ARMORY_CHECK_PENDING = "Revision de equipo pendiente",
    FEATURE_VAULTLOOM_ARMORY_CHECK_FORMAT = "Revision: %d/%d equipado · Encant. faltantes: %d · Ranuras vacias: %d · Mejorables: %d · Huecos vacios: %d",
    FEATURE_VAULTLOOM_ARMORY_FILTER_ALL = "Todo",
    FEATURE_VAULTLOOM_ARMORY_FILTER_ISSUES = "Optimizar",
    FEATURE_VAULTLOOM_ARMORY_FILTER_EMPTY = "Sin problemas de equipo",
    FEATURE_VAULTLOOM_ARMORY_VIEW_LABEL = "Vista:",
    FEATURE_BLIZZARD_WINDOW_MOVER_TITLE = "Mover ventanas de Blizzard",
    FEATURE_BLIZZARD_WINDOW_MOVER_DESCRIPTION = "Arrastra ventanas de Blizzard compatibles con el ratón izquierdo y escálalas con Ctrl + rueda del ratón.",
    FEATURE_BLIZZARD_WINDOW_MOVER_NOTE = "Usa una lista segura de ventanas Blizzard más el registro de paneles de UI, no escanea en segundo plano e ignora marcos protegidos en combate.",
    FEATURE_BLIZZARD_WINDOW_MOVER_PREVIEW_LABEL = "Control de ventanas",
    FEATURE_BLIZZARD_WINDOW_MOVER_PREVIEW_NOTE = "Arrastra para mover. Ctrl + rueda para escalar. Mayús/Ctrl + clic derecho restablece posición o escala.",
    FEATURE_BLIZZARD_WINDOW_MOVER_TOGGLE_TOOLTIP = "Permite mover y escalar ventanas de Blizzard compatibles.",
    FEATURE_BLIZZARD_WINDOW_MOVER_SAVE_LABEL = "Guardar",
    FEATURE_BLIZZARD_WINDOW_MOVER_SAVE_SESSION = "Sesión",
    FEATURE_BLIZZARD_WINDOW_MOVER_SAVE_PERMANENT = "Permanente",
    FEATURE_BLIZZARD_WINDOW_MOVER_SAVE_TOOLTIP = "Elige si las ventanas movidas se reinician al recargar o quedan guardadas.",
    FEATURE_BLIZZARD_WINDOW_MOVER_SCALE_LABEL = "Escala",
    FEATURE_BLIZZARD_WINDOW_MOVER_SCALE_ON = "Escala activa",
    FEATURE_BLIZZARD_WINDOW_MOVER_SCALE_OFF = "Escala inactiva",
    FEATURE_BLIZZARD_WINDOW_MOVER_SCALE_TOOLTIP = "Activa o desactiva Ctrl + rueda para escalar ventanas compatibles.",
    FEATURE_BLIZZARD_WINDOW_MOVER_RESET_POSITION = "Vaultloom: Posición de ventana restablecida.",
    FEATURE_BLIZZARD_WINDOW_MOVER_RESET_SCALE = "Vaultloom: Escala de ventana restablecida.",
    FEATURE_BLIZZARD_WINDOW_MOVER_COMPAT = "Vaultloom: BlizzMove está cargado, así que el movedor de ventanas de Vaultloom queda en pausa para evitar mover marcos dos veces.",
    FEATURE_STAT_FOCUS_TITLE = "Foco de atributos",
    FEATURE_STAT_FOCUS_DESCRIPTION = "Muestra la prioridad de atributos de tu clase y especialización actuales en descripciones de objetos.\nColores: Naranja = mejor o empatado como mejor, morado = segundo, azul = tercero, verde = cuarto.",
    FEATURE_STAT_FOCUS_NOTE = "Los preajustes automáticos siguen tu clase y especialización actuales.",
    FEATURE_STAT_FOCUS_PREVIEW_LABEL = "Descripción de equipo",
    FEATURE_STAT_FOCUS_PREVIEW_NOTE = "Elige entre bloque, líneas de atributo coloreadas, ambos o una línea compacta.",
    FEATURE_STAT_FOCUS_TOGGLE_TOOLTIP = "Activa o desactiva las pistas de Foco de atributos en descripciones.",
    FEATURE_STAT_FOCUS_STYLE_LABEL = "Estilo",
    FEATURE_STAT_FOCUS_STYLE_BLOCK = "Bloque",
    FEATURE_STAT_FOCUS_STYLE_DOTS = "Puntos",
    FEATURE_STAT_FOCUS_STYLE_LINES = "Líneas",
    FEATURE_STAT_FOCUS_STYLE_FULL = "Ambos",
    FEATURE_STAT_FOCUS_STYLE_COMPACT = "Compacto",
    FEATURE_STAT_FOCUS_STYLE_TOOLTIP = "Cambia cómo aparece Foco de atributos en las descripciones.",
    FEATURE_STAT_FOCUS_MODE_LABEL = "Orden",
    FEATURE_STAT_FOCUS_MODE_PRESET = "Preajuste",
    FEATURE_STAT_FOCUS_MODE_CUSTOM = "Propio",
    FEATURE_STAT_FOCUS_MODE_TOOLTIP = "Cambia este personaje y especialización entre preajuste y orden personalizado.",
    FEATURE_STAT_FOCUS_TOOLTIP_HEADER = "Foco de atributos",
    FEATURE_STAT_FOCUS_NO_SPEC = "No hay preajuste para la especialización actual.",
    FEATURE_STAT_FOCUS_SLASH_HELP = "Define un orden personalizado: /vl stats haste mastery crit vers. Usa /vl stats preset para volver a los preajustes.",
    FEATURE_STAT_FOCUS_PRESET_ENABLED = "Foco de atributos usa el preajuste automático para este personaje y especialización.",
    FEATURE_STAT_FOCUS_CUSTOM_ENABLED = "Foco de atributos usa tu orden personalizado para este personaje y especialización.",
    FEATURE_STAT_FOCUS_CUSTOM_SAVED = "Orden personalizado de Foco de atributos guardado para este personaje y especialización.",
    FEATURE_STAT_FOCUS_CUSTOM_CLEARED = "Orden personalizado de Foco de atributos borrado para este personaje y especialización.",
    FEATURE_STAT_FOCUS_CUSTOM_FAILED = "No se pudo guardar un orden personalizado para la especialización actual.",
    FEATURES_TOOLTIP_CURRENT = "Actual: %s",
    MYTHIC_PLUS_TITLE = "Mítica+ Temporada 1",
    MYTHIC_PLUS_CONTENT_SUBTITLE = "Piedra actual, afijos, mejores calabozos, runs recientes y objetivos de recompensa.",
    MYTHIC_PLUS_LIVE_ONLY = "Los datos de Mítica+ solo están disponibles en vivo para el personaje conectado actualmente. Entra con este personaje para revisar sus piedras, afijos y progreso de temporada.",
    MYTHIC_PLUS_NO_SNAPSHOT = "Aún no hay instantánea de Mítica+ guardada para este personaje. Entra una vez con el personaje para capturarla.",
    MYTHIC_PLUS_UNAVAILABLE = "Los datos de Mítica+ aún no están disponibles. Abre la interfaz de Mítica+ o espera a que se carguen los datos de temporada de Blizzard.",
    MYTHIC_PLUS_SUMMARY_SCORE = "Puntuación de temporada",
    MYTHIC_PLUS_SUMMARY_KEY = "Piedra actual",
    MYTHIC_PLUS_SUMMARY_VAULT = "Gran Cámara",
    MYTHIC_PLUS_SUMMARY_PORTALS = "Portales",
    MYTHIC_PLUS_SECTION_DUNGEONS = "Calabozos de temporada",
    MYTHIC_PLUS_SECTION_DUNGEONS_SUBTITLE = "Mejores runs de temporada y semanales para el grupo activo.",
    MYTHIC_PLUS_SEASON_DUNGEONS = "Calabozos de temporada",
    MYTHIC_PLUS_WARBAND_KEYS = "Piedras de banda",
    MYTHIC_PLUS_WARBAND_KEYS_TITLE = "Piedras de banda",
    MYTHIC_PLUS_WARBAND_KEYS_SUBTITLE = "Piedras guardadas de tus personajes visibles.",
    MYTHIC_PLUS_WARBAND_KEYS_TOOLTIP = "Muestra las piedras guardadas de tu banda. Inicia sesión con cada personaje una vez para capturar su piedra.",
    MYTHIC_PLUS_WARBAND_KEYS_EMPTY = "Aún no hay piedras guardadas. Inicia sesión con cada personaje una vez para capturar su piedra actual.",
    MYTHIC_PLUS_WARBAND_KEYS_NO_SNAPSHOT = "Sin captura guardada",
    MYTHIC_PLUS_WARBAND_KEYS_CAPTURED = "Capturado %s",
    MYTHIC_PLUS_SECTION_AFFIXES = "Afijos actuales",
    MYTHIC_PLUS_SECTION_AFFIXES_SUBTITLE = "Modificadores de esta semana desde la API en vivo de Mítica+.",
    MYTHIC_PLUS_SECTION_REWARDS = "Objetivos",
    MYTHIC_PLUS_SECTION_REWARDS_SUBTITLE = "Hitos y recompensas de temporada.",
    MYTHIC_PLUS_SECTION_RECENT = "Runs recientes",
    MYTHIC_PLUS_SECTION_RECENT_SUBTITLE = "Últimos runs registrados de esta temporada.",
    MYTHIC_PLUS_SIDEBAR_SUBTITLE = "Tu piedra actual y los afijos de esta semana de un vistazo.",
    MYTHIC_PLUS_CENTER_SUBTITLE = "Grupo de calabozos de temporada 1 con tus mejores runs de temporada y de la semana.",
    MYTHIC_PLUS_UTILITY_TITLE = "Runs y objetivos",
    MYTHIC_PLUS_UTILITY_SUBTITLE = "Últimos pushs e hitos de temporada para el personaje seleccionado.",
    MYTHIC_PLUS_KEY_NONE = "Sin piedra",
    MYTHIC_PLUS_VAULT_NONE = "Sin run aún",
    MYTHIC_PLUS_PORTALS_META = "+10 o superior en tiempo",
    MYTHIC_PLUS_TIMED_META = "Calabozos en tiempo",
    MYTHIC_PLUS_AFFIX_ACTIVE = "Activo",
    MYTHIC_PLUS_DUNGEON_BEST_NONE = "Aún sin mejor run de temporada",
    MYTHIC_PLUS_DUNGEON_WEEKLY_NONE = "Aún sin run semanal",
    MYTHIC_PLUS_DUNGEON_SPLIT_NONE = "Aún sin puntuación Fortificada o Tiránica",
    MYTHIC_PLUS_RECENT_EMPTY = "Aún no hay runs recientes de Mítica+ registrados para esta temporada.",
    MYTHIC_PLUS_DUNGEONS_EMPTY = "Aún no se han encontrado calabozos de temporada 1.",
    MYTHIC_PLUS_TIMED = "En tiempo",
    MYTHIC_PLUS_OVERTIME = "Fuera de tiempo",
    MYTHIC_PLUS_THIS_WEEK = "Esta semana",
    MYTHIC_PLUS_BEST = "Mejor",
    MYTHIC_PLUS_REWARD_EXPLORER = "Explorador",
    MYTHIC_PLUS_REWARD_CONQUEROR = "Conquistador",
    MYTHIC_PLUS_REWARD_MASTER = "Maestro",
    MYTHIC_PLUS_REWARD_HERO = "Héroe",
    MYTHIC_PLUS_REWARD_LEGEND = "Leyenda",
    MYTHIC_PLUS_REWARD_UMBRAL_HERO = "Héroe umbrío",
    LABEL_PROGRESS = "Progreso",
    LABEL_RESET = "Reinicio",
    DAILY_RESET = "Reinicio diario",
    MINIMAP_TOOLTIP_OPEN = "Clic izquierdo: Abrir o cerrar IU",
    MINIMAP_TOOLTIP_DRAG = "Arrastrar der.: Mover botón",
    MINIMAP_TOOLTIP_OPEN_SHORT = "Clic izquierdo: Abrir",
    BROKER_TOOLTIP_MINIMAP_NOTE = "Consejo: Oculta el botón del minimapa en las opciones de Vaultloom si solo quieres el lanzador broker.",
    PVE_PREY_TITLE = "Presas",
    PVE_PREY_SUBTITLE = "Objetivos de presa derrotados por dificultad, más la misión semanal vinculada.",
    PVE_PREY_SUBTITLE_ACTIVE = "Objetivos de presa derrotados por dificultad. Presa activa: %s.",
    PVE_PREY_WEEKLY_ACCEPT_HINT = "Esta misión se puede aceptar de Astalor en Lunargenta.",
    PVE_PREY_WEEKLY_ACTIVE_HINT = "Esta misión está activa. Revisa el registro de misiones para ver el objetivo actual.",
    PVE_PREY_WEEKLY_TURNIN_HINT = "Entrega esta misión a Astalor en Lunargenta.",
    PVE_PREY_WEEKLY_DONE_HINT = "Ya completada esta semana.",
    PVE_DAILY_SUBTITLE = "Objetivos diarios para el personaje seleccionado.",
    PVE_DAILY_CONTENT_SUBTITLE = "Actividades diarias y estado de reinicio.",
    PVE_DAILY_ROW_BOUNTIFUL = "Abismos generosas",
    PVE_DAILY_BOUNTIFUL_HINT = "Sigue las abismos generosas completadas hoy.",
    PVE_DAILY_BOUNTIFUL_PROGRESS = "Completadas hoy: %d/%d",
    PVE_DAILY_BOUNTIFUL_ACTIVE = "Activas actualmente: %d",
    PVE_DELVES_SUBTITLE = "Sistemas de abismos y límites semanales para el personaje seleccionado.",
    PVE_DELVES_ROW_TROVEHUNTER = "Recompensa del buscatesoros",
    PVE_DELVES_ROW_BONUS_RENOWN = "Renombre extra",
    PVE_DELVES_ROW_GILDED_STASH = "Alijo dorado",
    PVE_DELVES_ROW_WEEKLY_DROP = "Botín semanal",
    PVE_DELVES_READY = "Listo",
    PVE_DELVES_NOT_EARNED = "No obtenido",
    PVE_DELVES_INVENTORY_COUNT = "Actualmente en bolsas: %d",
    PVE_DELVES_TROVEHUNTER_DONE_HINT = "El mapa del tesoro de esta semana ya se ha usado.",
    PVE_DELVES_TROVEHUNTER_OPEN_HINT = "Aún tienes el mapa del tesoro de esta semana en tus bolsas.",
    PVE_DELVES_TROVEHUNTER_MISSING_HINT = "Aún no has obtenido el mapa del tesoro de esta semana.",
    PVE_DELVES_TROVEHUNTER_LOCKED_HINT = "Se desbloquea con renombre %d con los exploradores de abismos.",
    PVE_DELVES_BONUS_RENOWN_HINT = "Gana estas cuatro recompensas únicas de renombre semanal de cofres de abismos generosas.",
    PVE_DELVES_GILDED_STASH_HINT = "Sigue cuántas recompensas doradas de abismos de nivel 11 quedan disponibles esta semana.",
    PVE_DELVES_WEEKLY_DROP_HINT = "Lo suelta el jefe final de una abismo y se puede entregar una vez por semana para tu banda guerrera.",
    PVE_DELVES_GILDED_STASH_STALE_HINT = "El juego puede seguir mostrando datos antiguos del widget hasta que se actualice.",
    PVE_DELVES_GILDED_STASH_NO_DATA = "No hay datos en vivo del alijo dorado disponibles actualmente.",
    DAILY_WANTED_HARANDAR = "Se busca - Harandar",
    DAILY_WANTED_HARANDAR_ACCEPT_HINT = "Esta misión se puede recoger de %s en %s.",
    DAILY_WANTED_HARANDAR_AVAILABLE_HINT = "Disponible actualmente: %s",
    DAILY_WANTED_HARANDAR_LIMITED_HINT = "Esta misión no está disponible todos los días.",
    DAILY_WANTED_HARANDAR_PROGRESS_HINT = "Esta misión está activa. Abre tu registro de misiones para ver el objetivo actual.",
    DAILY_WANTED_HARANDAR_PROGRESS_COUNT = "Completadas hoy: %d/%d",
    DAILY_WANTED_HARANDAR_ACCEPTED_HINT = "Aceptada: %s",
    DAILY_WANTED_HARANDAR_TURNIN_HINT = "Esta misión está completada y ya se puede entregar.",
    DAILY_WANTED_HARANDAR_DONE_HINT = "Completada por hoy.",
    DAILY_WANTED_HARANDAR_UNAVAILABLE_HINT = "Esta diaria no está disponible hoy.",
    DAILY_DECOR_DUEL = "Duelo de decoración",
    DAILY_DECOR_DUEL_ACCEPT_HINT = "Acepta esta misión diaria si aún no la has completado hoy.",
    DAILY_DECOR_DUEL_AVAILABLE_HINT = "Esta diaria está disponible actualmente.",
    DAILY_DECOR_DUEL_PROGRESS_HINT = "Esta misión está activa. Abre tu registro de misiones para ver el objetivo actual.",
    DAILY_DECOR_DUEL_TURNIN_HINT = "Esta misión está completada y ya se puede entregar.",
    DAILY_DECOR_DUEL_DONE_HINT = "Completada por hoy.",
    DAILY_DECOR_DUEL_UNAVAILABLE_HINT = "Esta diaria no está disponible hoy.",
    DAILY_STATUS_ACCEPT = "Aceptar",
    DAILY_STATUS_ACCEPTED = "Aceptada",
    DAILY_STATUS_DONE = "Completada",
    DAILY_STATUS_UNAVAILABLE = "No disponible",
    PVE_EVENTS_SUBTITLE = "Eventos de Midnight para el personaje seleccionado.",
    PVE_EVENTS_CONTENT_SUBTITLE = "Eventos y misiones semanales.",
    PVE_WEEKLY_SPARK_LABEL = "Unidad contra el Vacío (Lady Liadrin)",
    PVE_WEEKLY_SPARK_ACCEPT_HINT = "Esta misión se puede aceptar de Lady Liadrin en Lunargenta.",
    PVE_WEEKLY_SPARK_ACTIVE_HINT = "Esta misión está activa. Revisa el registro de misiones para ver el objetivo actual.",
    PVE_WEEKLY_SPARK_TURNIN_HINT = "Esta misión está completada y ya se puede entregar.",
    PVE_WEEKLY_SPARK_DONE_HINT = "Ya completada esta semana.",
    PVE_WEEKLY_ROW_OMNIUM_FOLIO = "Omnium Folio",
    PVE_WEEKLY_OMNIUM_FOLIO_ACCEPT_HINT = "Completa la cadena introductoria del Omnium de los Caminante del Sol y luego acepta la misión semanal actual Seeking Knowledge.",
    PVE_WEEKLY_OMNIUM_FOLIO_ACTIVE_HINT = "Esta misión Seeking Knowledge está activa. Revisa el registro de misiones para ver el objetivo actual.",
    PVE_WEEKLY_OMNIUM_FOLIO_DONE_HINT = "Ya completada esta semana.",
    MIDNIGHT_VARIANT_ARCANTINA = "Arcantina",
    MIDNIGHT_VARIANT_STORMARION = "Asalto de Stormarion",
    MIDNIGHT_VARIANT_PREY = "Presas",
    MIDNIGHT_VARIANT_BATTLEGROUNDS = "Campos de batalla",
    PVE_EVENTS_ROW_COURT_FAVOR = "Favor de la Corte",
    PVE_EVENTS_ROW_RUNESTONES = "Fortificar las piedras rúnicas",
    PVE_EVENTS_ROW_SALTHERILS_FAVOR = "Favor de Saltheril",
    PVE_EVENTS_ROW_ABUNDANT_OFFERINGS = "Ofrendas abundantes",
    PVE_EVENTS_ROW_LOST_LEGENDS = "Leyendas perdidas",
    PVE_EVENTS_ROW_STORMARION_ASSAULT = "Asalto de Stormarion",
    PVE_EVENTS_ROW_VOID_ASSAULTS = "Asaltos del Vacío",
    PVE_EVENTS_COURT_ACCEPT_HINT = "Esta misión se puede aceptar del lord Saltheril en la Corte de Lunargenta.",
    PVE_EVENTS_RUNESTONES_ACCEPT_HINT = "Esta misión se puede aceptar en la Corte de Lunargenta.",
    PVE_EVENTS_ABUNDANT_OFFERINGS_ACCEPT_HINT = "Esta semanal está disponible durante el evento activo de Abundancia.",
    PVE_EVENTS_LOST_LEGENDS_ACCEPT_HINT = "Esta semanal está disponible en Harandar durante el evento activo de Midnight.",
    PVE_EVENTS_LOST_LEGENDS_CHOOSE = "Elegir",
    PVE_EVENTS_LOST_LEGENDS_RELIC_HINT = "Entrega esta misión y elige una reliquia para iniciar la misión de Leyendas perdidas de esta semana.",
    PVE_EVENTS_STORMARION_ASSAULT_ACCEPT_HINT = "Esta semanal está disponible en la Singularidad durante el evento activo de Midnight.",
    PVE_EVENTS_VOID_ASSAULTS_ACCEPT_HINT = "Esta semanal está disponible durante asaltos activos del Vacío.",
    PVE_EVENTS_ACTIVE_HINT = "Esta misión está activa. Revisa el registro de misiones para ver el objetivo actual.",
    PVE_EVENTS_DONE_HINT = "Ya completada esta semana.",
    PVE_EVENTS_AVAILABLE_HINT = "Activo actualmente: %s",
    PVE_EVENTS_WEEKLY_ACTIVE_HINT = "Este evento de Midnight está activo esta semana.",
    PVE_EVENTS_SALTHERILS_FAVOR_HINT = "Sigue cuántos objetos Favor de Saltheril tienes actualmente en tus bolsas. Úsalos para desbloquear tareas adicionales de la Corte de Lunargenta. Caducan con el reinicio semanal.",
    PVE_EVENTS_SALTHERILS_FAVOR_COUNT = "Poseídos actualmente: %d",
    PVE_WEEKLY_ROW_HOUSING = "Semanal de vivienda",
    PVE_WEEKLY_HOUSING_ACCEPT_HINT = "Esta misión se puede aceptar de Vaeli en Lunargenta.",
    PVE_WEEKLY_HOUSING_ACTIVE_HINT = "Esta misión está activa. Revisa el registro de misiones para ver el objetivo actual.",
    PVE_WEEKLY_HOUSING_DONE_HINT = "Ya completada esta semana.",
    PVE_WEEKLY_ROW_DUNGEON = "Calabozo semanal",
    PVE_WEEKLY_DUNGEON_ACCEPT_HINT = "Esta misión se puede aceptar de Halduron en Lunargenta.",
    PVE_WEEKLY_DUNGEON_ACTIVE_HINT = "Esta misión está activa. Revisa el registro de misiones para ver el objetivo actual.",
    PVE_WEEKLY_DUNGEON_DONE_HINT = "Ya completada esta semana.",
    PVE_WEEKLY_ROW_AETHAS = "Rotatoria (Archimago Aethas)",
    PVE_WEEKLY_AETHAS_ACCEPT_HINT = "Esta misión se puede aceptar del archimago Aethas en Lunargenta.",
    PVE_WEEKLY_AETHAS_ACTIVE_HINT = "Esta misión está activa. Revisa el registro de misiones para ver el objetivo actual.",
    PVE_WEEKLY_AETHAS_DONE_HINT = "Ya completada esta semana.",
    PVE_WEEKLY_TITLE = "Objetivos JcE semanales",
    PVE_WEEKLY_SUBTITLE = "Misiones semanales principales y objetivos de evento para el personaje seleccionado.",
    PVE_WEEKLY_PROGRESS = "Progreso",
    PVE_WEEKLY_OPEN = "Abrir",
    PVP_WEEKLY_TITLE = "Objetivos JcJ semanales",
    PVP_WEEKLY_SUBTITLE = "Misiones JcJ semanales de Zerella en Lunargenta para el personaje seleccionado.",
    PVP_WEEKLY_PROGRESS = "Progreso",
    PVP_WEEKLY_GIVER_SHORT = "Zerella / Lunargenta",
    PVP_WEEKLY_ROTATING = "Semanal rotatoria",
    PVP_WEEKLY_WARMODE = "Modo Guerra",
    PVP_WEEKLY_BATTLEGROUND = "Campo de batalla / Arena",
    PVP_WEEKLY_BRAWL = "Camorra JcJ",
    PVP_WEEKLY_ROTATING_SOLO = "Solo velado",
    PVP_WEEKLY_ROTATING_WAR = "Guerra velada",
    PVP_WEEKLY_ROTATING_TEAMWORK = "Cooperación velada",
    PVP_WEEKLY_ROTATING_ARENAS = "Arenas veladas",
    PVP_WEEKLY_BATTLEGROUND_QUEST = "Batalla velada",
    PVP_WEEKLY_BATTLEGROUND_SKIRMISH_QUEST = "Escaramuza velada",
    PVP_WEEKLY_BRAWL_QUEST = "Algo diferente",
    PVE_WEEKLY_AETHAS_ARENA_CALLS = "La arena llama",
    PVP_WEEKLY_GIVER_TOOLTIP = "Esta misión se puede aceptar de Zerella en Lunargenta.",
    PVP_WEEKLY_ACTIVE_TOOLTIP = "Esta misión está activa. Revisa el registro de misiones para ver el objetivo actual.",
    PVP_WEEKLY_TURNIN_TOOLTIP = "Esta misión está completada y ya se puede entregar.",
    PVP_WEEKLY_DONE_TOOLTIP = "Ya completada esta semana.",
    PVE_WORLD_SUBTITLE = "Semanales de mundo, incluyendo jefe del mundo y límites de monedas.",
    PVE_WORLD_CONTENT_SUBTITLE = "Progreso de mundo y límites semanales.",
    PVE_WORLD_ROW_WORLD_BOSS = "Jefe del mundo",
    PVE_WORLD_ROW_SPECIAL_ASSIGNMENTS = "Encargos especiales",
    PVE_WORLD_ROW_KEY_SHARDS = "Fragmentos de llave de cofre",
    PVE_WORLD_ROW_DUNDUN_SHARDS = "Fragmento de Dundun",
    PVE_WORLD_BOSS_HINT = "Se concede automáticamente cuando atacas al jefe. Vuela hasta allí y mátalo.",
    PVE_WORLD_BOSS_DONE_HINT = "Ya completado esta semana.",
    PVE_WORLD_SPECIAL_ASSIGNMENTS_HINT = "Completa los dos encargos especiales disponibles esta semana.",
    PVE_WORLD_SPECIAL_ASSIGNMENTS_DONE_HINT = "Los dos encargos especiales están completados esta semana.",
    PVE_WORLD_SPECIAL_ASSIGNMENTS_AVAILABLE = "Disponibles actualmente: %s",
    PVE_WORLD_KEY_SHARDS_HINT = "Sigue el límite semanal de fragmentos de llave de cofre.",
    PVE_WORLD_DUNDUN_HINT = "Sigue el límite semanal de fragmentos de Dundun.",
    PVE_WORLD_CURRENCY_OWNED = "Poseídos actualmente: %d",
    PVE_WEEKLY_PREY_LABEL = "Presas",
    PVE_PREY_WEEKLY_NAME = "Una tarea de pesadilla",
    PVE_PREY_PREFERRED_NAME = "Presa preferida",
    WEEKLY_PREY_TOTAL = "Objetivos de presa derrotados",
    WEEKLY_PREY_NORMAL = "Normal",
    WEEKLY_PREY_HARD = "Difícil",
    WEEKLY_PREY_NIGHTMARE = "Pesadilla",
    STATUS_DONE = "Completado",
    STATUS_OPEN = "Aceptada",
    STATUS_MISSING = "Aceptar",
    STATUS_LOCKED = "Bloqueado",
    STATUS_TURNIN = "Entregar",
    TIME_NEVER = "nunca",
    TIME_JUST_NOW = "ahora mismo",
    TIME_AGO = "hace %s",
    TIME_DAY_HOUR = "%d d %d h",
    TIME_HOUR_MIN = "%d h %d m",
    TIME_MIN = "%d m",
}

esMX.RAIDS = "Bandas"
esMX.DUNGEONS = "Calabozos"
esMX.ALL = "Todo"
esMX.CHARACTER = "Personaje"
esMX.RAID_JOURNAL_LOOT = "Botín"
esMX.RAID_JOURNAL_DETAILS = "Detalles"
esMX.RAID_JOURNAL_DETAILS_SUBTITLE = "Notas de encuentro y contexto semanal."
esMX.RAID_JOURNAL_STATUS_LABEL = "Resumen"
esMX.RAID_JOURNAL_PROGRESS = "Progreso"
esMX.RAID_JOURNAL_PRIMARY_LABEL = "Banda"
esMX.RAID_JOURNAL_BOSSES = "Jefes"
esMX.RAID_JOURNAL_BOSSLIST_SUBTITLE = "Elige un jefe."
esMX.RAID_JOURNAL_MIDNIGHT_SUBTITLE = "Elige una banda de Midnight."
esMX.MAIN_TAB_RAIDS_MIDNIGHT = "Midnight"
esMX.MAIN_TAB_DUNGEONS_MIDNIGHT = "Midnight"
esMX.MAIN_TAB_DUNGEONS_SEASON1 = "Temporada 1"
esMX.DUNGEON_JOURNAL_PRIMARY_LABEL = "Calabozo"
esMX.DUNGEON_JOURNAL_MIDNIGHT_SUBTITLE = "Elige una calabozo de Midnight."
esMX.DUNGEON_JOURNAL_FALLBACK_DESCRIPTION = "Las entradas de calabozo de Midnight aparecerán aquí cuando estén disponibles los datos de la guía de encuentros."
esMX.DUNGEON_JOURNAL_SEASON1_SUBTITLE = "Elige una calabozo de temporada 1."
esMX.DUNGEON_JOURNAL_SEASON1_FALLBACK_DESCRIPTION = "Las calabozos de temporada 1 aparecerán aquí cuando estén disponibles los datos de Mítica+ y de la guía de encuentros."
esMX.DUNGEON_DIFFICULTY_MYTHIC0 = "Mítica 0"
esMX.DUNGEON_JOURNAL_REPEATABLE = "Repetible"
esMX.DUNGEON_JOURNAL_REPEATABLE_SUBTITLE = "Esta dificultad es repetible y no tiene contador de bloqueo."
esMX.DUNGEON_JOURNAL_BOSS_PROGRESS = "Progreso de hoy: %s"
esMX.DUNGEON_JOURNAL_STATUS_KILLED = "Completado hoy"
esMX.DUNGEON_JOURNAL_STATUS_OPEN = "Disponible hoy"
esMX.RAID_JOURNAL_SOURCE_EJ = "Guía de encuentros"
esMX.RAID_DIFFICULTY_LFR = "BdB"
esMX.RAID_DIFFICULTY_NORMAL = "Normal"
esMX.RAID_DIFFICULTY_HEROIC = "Heroica"
esMX.RAID_DIFFICULTY_MYTHIC = "Mítica"
esMX.RAID_JOURNAL_ALL_CLASSES = "Todas las clases"
esMX.RAID_JOURNAL_CLASS_FILTER_PLAYER = "Clase: %s"
esMX.RAID_JOURNAL_CLASS_FILTER_ALL = "Clase: Todas las clases"
esMX.RAID_JOURNAL_CLASS_FILTER_MENU_TITLE = "Filtro de clase"
esMX.RAID_JOURNAL_CLASS_FILTER_MENU_PLAYER = "Clase actual: %s"
esMX.RAID_JOURNAL_CLASS_FILTER_MENU_ALL = "Todas las clases"
esMX.RAID_JOURNAL_DIFFICULTY_MENU_TITLE = "Dificultad"
esMX.RAID_JOURNAL_LOOT_INFO_PLAYER = "Mostrando botín para la dificultad seleccionada y el filtro de clase actual."
esMX.RAID_JOURNAL_LOOT_INFO_ALL = "Mostrando botín para la dificultad seleccionada en todas las clases."
esMX.RAID_JOURNAL_DIFFICULTY_FILTER = "Dificultad: %s"
esMX.RAID_JOURNAL_CLASS_FILTER = "Clase: %s"
esMX.RAID_JOURNAL_LOOT_PANEL_SUBTITLE = "Botín %s para %s"
esMX.RAID_JOURNAL_LOOT_CONTEXT = "%d objetos para %s"
esMX.RAID_JOURNAL_LOOT_PENDING = "Conexión de botín pendiente"
esMX.RAID_JOURNAL_LOOT_PENDING_SLOT = "Siguiente paso"
esMX.RAID_JOURNAL_LOOT_PENDING_RESTRICTION = "Todas las clases"
esMX.RAID_JOURNAL_BOSS_PROGRESS = "Progreso semanal: %s"
esMX.RAID_JOURNAL_STATUS_KILLED = "Muerto esta semana"
esMX.RAID_JOURNAL_STATUS_OPEN = "Aún disponible esta semana"
esMX.RAID_JOURNAL_STATUS_ALT_PENDING = "Las instantáneas de alters llegarán en una pasada posterior"
esMX.RAID_JOURNAL_STATUS_PENDING = "Sincronización en vivo pendiente"
esMX.RAID_JOURNAL_STATUS_FORMAT = "%s  |  %s"
esMX.RAID_JOURNAL_HEADER_SUBTITLE = "%s  |  %s"
esMX.RAID_JOURNAL_HEADER_CONTEXT = "%s-%s  |  %s  |  %s"
esMX.RAID_JOURNAL_TOOLTIP_NO_ITEM = "Aún no hay tooltip de objeto disponible."
esMX.RAID_LOOT_TRACKER_NONE = "Sin seguimiento"
esMX.RAID_LOOT_TRACKER_WISH = "En lista"
esMX.RAID_LOOT_TRACKER_OBTAINED = "Obtenido"
esMX.RAID_LOOT_TRACKER_CLICK = "Clic izquierdo: Cambiar estado"
esMX.RAID_LOOT_TRACKER_CONTEXT = "Para %s en %s"
esMX.RAID_LOOT_TRACKER_WISH_COUNT = "Deseados: %d"
esMX.RAID_LOOT_TRACKER_OBTAINED_COUNT = "Obtenidos: %d"
esMX.RAID_LOOT_TRACKER_BADGE = "Botín seguido"
esMX.WISHLIST_BUTTON = "Deseos"
esMX.WISHLIST_TITLE = "Lista de deseos"
esMX.WISHLIST_SUBTITLE = "Todo el botín deseado para el personaje seleccionado en bandas y calabozos."
esMX.WISHLIST_BUTTON_SUMMARY = "%d deseados  |  %d obtenidos"
esMX.WISHLIST_BUTTON_OPEN = "Clic izquierdo: Abrir lista de deseos"
esMX.WISHLIST_BUTTON_CLOSE = "Clic izquierdo: Cerrar lista de deseos"
esMX.WISHLIST_SUMMARY_CHARACTER = "%d objetos deseados para %s-%s"
esMX.WISHLIST_SUMMARY_BREAKDOWN = "Bandas %d  |  Calabozos %d"
esMX.WISHLIST_EMPTY = "Aún no hay objetos deseados. Usa el icono de seguimiento en las filas de botín para añadir objetos aquí."
esMX.WISHLIST_EMPTY_FILTER = "No se han encontrado objetos deseados para este filtro."
esMX.WISHLIST_FILTER_ALL = "Todo"
esMX.WISHLIST_FILTER_RAIDS = "Bandas"
esMX.WISHLIST_FILTER_DUNGEONS = "Calabozos"
esMX.WISHLIST_SOURCE_RAID = "Banda"
esMX.WISHLIST_SOURCE_DUNGEON = "Calabozo"
esMX.WISHLIST_SOURCE_UNKNOWN = "Fuente pendiente"
esMX.WISHLIST_MORE_SOURCES = "+%d más"
esMX.WISHLIST_TOOLTIP_SOURCES = "Fuentes"
esMX.RAID_LOOT_META_JEWELRY = "Joyería"
esMX.RAID_LOOT_META_DECORATION = "Decoración"
esMX.MAIN_TAB_HOUSING = "Vivienda"
esMX.SUBTAB_HOUSING_ENDEAVORS = "Empeños"
esMX.HOUSING_TITLE = "Vivienda"
esMX.HOUSING_CONTENT_SUBTITLE = "Estado de la casa, progreso del empeño del barrio, tareas seguidas y actividad reciente."
esMX.HOUSING_LOADING = "Los datos de vivienda se están cargando. Dale al juego un momento para entregar la información de casas y barrios."
esMX.HOUSING_LIVE_ONLY = "Los datos de vivienda solo están disponibles en vivo para el personaje conectado actualmente. Entra con ese personaje para ver casas, empeños y cupones."
esMX.HOUSING_UNAVAILABLE = "Los datos de vivienda aún no están disponibles. Abre una vez el panel de vivienda o espera a que se carguen los datos de barrio de Blizzard."
esMX.HOUSING_SECTION_HOME = "Casa"
esMX.HOUSING_SECTION_HOME_SUBTITLE = "Casa activa, barrio y progreso de casa."
esMX.HOUSING_SECTION_WEEKLY = "Semanal"
esMX.HOUSING_SECTION_TRACKED = "Tareas seguidas"
esMX.HOUSING_SECTION_TRACKED_SUBTITLE = "Tareas fijadas actualmente. Clic izquierdo en una tarea para quitarla."
esMX.HOUSING_SECTION_TASKS = "Tareas de barrio"
esMX.HOUSING_SECTION_TASKS_SUBTITLE = "Tareas actuales de empeño con contribución, recompensas de cupones y progreso. Clic izquierdo para fijarlas o quitarlas."
esMX.HOUSING_SECTION_MILESTONES = "Hitos"
esMX.HOUSING_SECTION_MILESTONES_SUBTITLE = "Umbrales de progreso para el empeño de barrio actual."
esMX.HOUSING_SECTION_ACTIVITY = "Actividad reciente"
esMX.HOUSING_SECTION_ACTIVITY_SUBTITLE = "Últimas contribuciones de barrio registradas desde el historial de actividad."
esMX.HOUSING_SUMMARY_HOME_LEVEL = "Nivel de casa"
esMX.HOUSING_SUMMARY_CONTRIBUTION = "Tu contribución"
esMX.HOUSING_SUMMARY_TASKS = "Tareas"
esMX.HOUSING_PROGRESS_LABEL = "Progreso del empeño"
esMX.HOUSING_PROGRESS_NEXT = "%d para el siguiente hito"
esMX.HOUSING_PROGRESS_REACHED = "Todos los hitos alcanzados"
esMX.HOUSING_PROGRESS_DAYS = "quedan %s"
esMX.HOUSING_HOME_NONE = "Sin datos de casa"
esMX.HOUSING_HOME_META = "%d casas  |  %s"
esMX.HOUSING_HOME_ACTIVE = "Barrio activo"
esMX.HOUSING_HOME_VIEWING = "Barrio mostrado"
esMX.HOUSING_HOME_LEVEL = "Nivel"
esMX.HOUSING_HOME_FAVOR = "Progreso de casa"
esMX.HOUSING_HOME_COUPONS = "Cupones"
esMX.HOUSING_HOME_MAX = "Nivel máximo alcanzado"
esMX.HOUSING_TASK_PROGRESS_DONE = "Completada"
esMX.HOUSING_TASK_PROGRESS_OPEN = "Abierta"
esMX.HOUSING_TASK_REPEATABLE = "Repetible"
esMX.HOUSING_TASK_TRACKED = "Seguida"
esMX.HOUSING_TASK_COUPONS = "+%d cupones"
esMX.HOUSING_TASK_XP = "+%d contribución"
esMX.HOUSING_TASK_TIMES = "%dx completada"
esMX.HOUSING_TASK_TRACK_HINT = "Clic izquierdo para fijar esta tarea."
esMX.HOUSING_TASK_UNTRACK_HINT = "Clic izquierdo para quitar esta tarea."
esMX.HOUSING_TASKS_EMPTY = "Aún no se han encontrado tareas de barrio. Abre una vez el panel de vivienda para que Blizzard rellene los datos de empeño."
esMX.HOUSING_TRACKED_EMPTY = "Aún no hay tareas de vivienda seguidas."
esMX.HOUSING_UTILITY_TITLE = "Hitos y actividad"
esMX.HOUSING_UTILITY_SUBTITLE = "Umbrales de progreso y últimas contribuciones de barrio."
esMX.HOUSING_MILESTONES_EMPTY = "Aún no hay hitos disponibles."
esMX.HOUSING_MILESTONE_LABEL = "Hito %d"
esMX.HOUSING_MILESTONE_REACHED = "Alcanzado"
esMX.HOUSING_MILESTONE_LEFT = "%d restante"
esMX.HOUSING_ACTIVITY_EMPTY = "Aún no hay actividad reciente de vivienda registrada."
esMX.HOUSING_ACTIVITY_BY = "%s: %s"
esMX.HOUSING_ACTIVITY_AMOUNT = "+%s contribución"
esMX.HOUSING_NOTE_NON_ACTIVE = "El cliente está mostrando un barrio distinto al activo."
esMX.HOUSING_NO_SNAPSHOT = "Aún no hay instantánea de vivienda guardada para este personaje. Entra una vez con el personaje para capturarla."
esMX.SUBTAB_SYSTEMS_PROFESSION_COOLDOWNS = "Reutilizaciones"
esMX.PROFESSION_COOLDOWNS_SUBTITLE = "Reutilizaciones de fabricación y concentración desde el último escaneo de profesión."
esMX.PROFESSION_COOLDOWNS_PROGRESS = "Reutilizaciones"
esMX.PROFESSION_COOLDOWNS_CONCENTRATION = "Concentración"
esMX.PROFESSION_COOLDOWNS_COOLDOWNS = "Reutilizaciones de recetas"
esMX.PROFESSION_COOLDOWNS_NO_SCAN = "Abre una profesión para escanear reutilizaciones y concentración."
esMX.PROFESSION_COOLDOWNS_NO_COOLDOWNS = "Sin reutilizaciones de receta conocidas"
esMX.PROFESSION_COOLDOWNS_READY = "Listo"
esMX.PROFESSION_COOLDOWNS_READY_IN = "Listo en"
esMX.PROFESSION_COOLDOWNS_CHARGES = "cargas"
esMX.PROFESSION_COOLDOWNS_UNKNOWN_CONCENTRATION = "Sin datos de concentración"
esMX.PROFESSION_COOLDOWNS_OPEN_HINT = "Abre una ventana de profesión con este personaje para actualizar reutilizaciones y concentración."
esMX.PROFESSION_COOLDOWNS_ALT_HINT = "Los valores de alters se estiman desde el último escaneo de profesión de ese personaje."
esMX.PROFESSION_COOLDOWNS_CONCENTRATION_TOOLTIP = "Último escaneo: %d/%d. Estimado ahora: %d/%d."
esMX.PROFESSION_COOLDOWNS_MORE_ROWS = "%d filas de reutilización adicionales están guardadas para este personaje."
esMX.SUBTAB_PVE_RARES = "Raros"
esMX.PVE_RARES_TITLE = "Raros"
esMX.PVE_RARES_SUBTITLE = "Raros diarios de Midnight y monturas por zona."
esMX.PVE_RARES_CONTENT_SUBTITLE = "Raros de Midnight, estado diario, monturas y puntos de ruta de Blizzard."
esMX.PVE_RARES_MOUNTS = "Monturas"
esMX.PVE_RARES_ZONES = "Zonas"
esMX.PVE_RARES_DONE = "Completado"
esMX.PVE_RARES_OPEN = "Abierto"
esMX.PVE_RARES_MOUNT_COLLECTED = "Conseguida"
esMX.PVE_RARES_MOUNT_MISSING = "Falta"
esMX.PVE_RARES_COORDS_FORMAT = "Coordenadas: %.1f, %.1f"
esMX.PVE_RARES_WAYPOINT_HINT = "Clic izquierdo para colocar un punto de ruta de Blizzard."
esMX.PVE_RARES_WAYPOINT_SET = "Punto de ruta colocado: %s"
esMX.PVE_RARES_WAYPOINT_UNAVAILABLE = "La API de puntos de ruta de Blizzard no esta disponible."
esMX.PVE_RARES_ZONE_PROGRESS_FORMAT = "Hoy: %d/%d raros"
esMX.PVE_RARES_REFRESH = "Actualizar"
esMX.PVE_RARES_NO_DATA = "Aun no hay datos de raros disponibles."
esMX.RENOWN_ACTIVITY_RARE_KILL = "Raro derrotado: %s"
esMX.FEATURE_QUIET_LOOT_TITLE = "Botin discreto"
esMX.FEATURE_QUIET_LOOT_DESCRIPTION = "Sustituye la ventana de botin grande y los popups de botin por filas compactas con icono y texto."
esMX.FEATURE_QUIET_LOOT_NOTE = "Cuando Ventana de botin esta activa, Vaultloom despoja automaticamente y muestra filas compactas de objetos en lugar de la ventana de botin de Blizzard."
esMX.FEATURE_QUIET_LOOT_PREVIEW_LABEL = "IU de botin"
esMX.FEATURE_QUIET_LOOT_PREVIEW_NOTE = "Iconos pequenos, cantidades y texto de objeto sin la pila de recompensas de Blizzard."
esMX.FEATURE_QUIET_LOOT_TOGGLE_TOOLTIP = "Sustituye ventanas de botin y popups grandes por filas compactas con icono y texto."
esMX.FEATURE_QUIET_LOOT_TOASTS_LABEL = "IU de botin"
esMX.FEATURE_QUIET_LOOT_TOASTS_SIMPLE = "Botin simple"
esMX.FEATURE_QUIET_LOOT_TOASTS_HIDE = "Ocultar popups"
esMX.FEATURE_QUIET_LOOT_TOASTS_SHOW = "Botin Blizzard"
esMX.FEATURE_QUIET_LOOT_TOASTS_TOOLTIP = "Elige IU de botin compacta, popups automaticos ocultos o la IU de botin predeterminada de Blizzard."
esMX.FEATURE_QUIET_LOOT_WINDOW_TITLE = "Botin"
esMX.FEATURE_QUIET_LOOT_TAKE_ALL = "Tomar todo"
esMX.FEATURE_QUIET_LOOT_MENU_TITLE = "Botin discreto"
esMX.FEATURE_QUIET_LOOT_MENU_BUTTON = "Menu"
esMX.FEATURE_QUIET_LOOT_MENU_TOOLTIP = "Abre el modo de prueba, reinicio de posicion y ajustes de estilo limpio."
esMX.FEATURE_QUIET_LOOT_MENU_TEST = "Alternar modo prueba"
esMX.FEATURE_QUIET_LOOT_MENU_LOOT_WINDOW_FORMAT = "Ventana de botin: %s"
esMX.FEATURE_QUIET_LOOT_MENU_REWARD_FORMAT = "Jefes/Cofres: %s"
esMX.FEATURE_QUIET_LOOT_MENU_STYLE_FORMAT = "Estilo: %s"
esMX.FEATURE_QUIET_LOOT_MENU_DIRECTION_FORMAT = "Direccion: %s"
esMX.FEATURE_QUIET_LOOT_MENU_LOOT_SIZE_FORMAT = "Tamano botin: %d%%"
esMX.FEATURE_QUIET_LOOT_MENU_TOAST_SIZE_FORMAT = "Tamano popup: %d%%"
esMX.FEATURE_QUIET_LOOT_MENU_RESET_LOOT = "Reiniciar ventana"
esMX.FEATURE_QUIET_LOOT_MENU_RESET_TOASTS = "Reiniciar posicion popup"
esMX.FEATURE_QUIET_LOOT_MENU_HIDE_TEST = "Ocultar prueba"
esMX.FEATURE_QUIET_LOOT_TEST_HINT = "Modo de prueba Botin discreto: Arrastra la ventana de botin o las filas popup para guardar su posicion. Clic derecho abre este menu."
esMX.FEATURE_QUIET_LOOT_ANCHOR_LABEL = "Ancla"
esMX.FEATURE_QUIET_LOOT_SETTING_ON = "Activado"
esMX.FEATURE_QUIET_LOOT_SETTING_OFF = "Desactivado"
esMX.FEATURE_QUIET_LOOT_STYLE_NORMAL = "Normal"
esMX.FEATURE_QUIET_LOOT_STYLE_CLEAN = "Limpio"
esMX.FEATURE_QUIET_LOOT_DIRECTION_DOWN = "Abajo"
esMX.FEATURE_QUIET_LOOT_DIRECTION_UP = "Arriba"
esMX.FEATURE_QUIET_LOOT_BOSS_LABEL = "Banner de jefe"
esMX.FEATURE_QUIET_LOOT_BOSS_SIMPLE = "Jefe simple"
esMX.FEATURE_QUIET_LOOT_BOSS_HIDE = "Ocultar banner"
esMX.FEATURE_QUIET_LOOT_BOSS_SHOW = "Mostrar banner"
esMX.FEATURE_QUIET_LOOT_BOSS_TOOLTIP = "Elige si los banners de jefe se convierten en una linea pequena, desaparecen o quedan como Blizzard."
esMX.FEATURE_QUIET_LOOT_BOSS_DEFEATED = "Jefe derrotado"
esMX.FEATURE_MERCHANT_FILTERS_TITLE = "Filtros de vendedor"
esMX.FEATURE_MERCHANT_FILTERS_DESCRIPTION = "Reemplaza la ventana de vendedor por una ventana Vaultloom limpia con filtros."
esMX.FEATURE_MERCHANT_FILTERS_NOTE = "Empieza sin filtros. Los filtros se pueden guardar por vendedor o globalmente."
esMX.FEATURE_MERCHANT_FILTERS_PREVIEW_LABEL = "Ventana de vendedor"
esMX.FEATURE_MERCHANT_FILTERS_PREVIEW_NOTE = "Compra, recompra, reparación, oro, monedas y filtros con estilo Vaultloom."
esMX.FEATURE_MERCHANT_FILTERS_BUTTON = "Filtro"
esMX.FEATURE_MERCHANT_FILTERS_BUTTON_ACTIVE = "Filtro *"
esMX.FEATURE_MERCHANT_FILTERS_BUTTON_TOOLTIP = "Escanea este vendedor y activa filtros útiles."
esMX.FEATURE_MERCHANT_FILTERS_RESCAN = "Escanear"
esMX.FEATURE_MERCHANT_FILTERS_DEFAULTS = "Restablecer"
esMX.FEATURE_MERCHANT_FILTERS_CLEAR = "Filtros desactivados"
esMX.FEATURE_MERCHANT_FILTERS_BACK = "Atrás"
esMX.FEATURE_MERCHANT_FILTERS_RESULTS_TITLE = "Filtro Vaultloom"
esMX.FEATURE_MERCHANT_FILTERS_SUMMARY_FORMAT = "%d visibles / %d escaneados"
esMX.FEATURE_MERCHANT_FILTERS_EMPTY = "Ningún objeto del vendedor coincide con estos filtros."
esMX.FEATURE_MERCHANT_FILTERS_BUY = "Comprar"
esMX.FEATURE_MERCHANT_FILTERS_FREE = "Gratis"
esMX.FEATURE_MERCHANT_FILTERS_COST = "Coste"
esMX.FEATURE_MERCHANT_FILTERS_OWNED = "En posesión"
esMX.FEATURE_MERCHANT_FILTERS_NO_REPAIR_COST = "Sin coste de reparación."
esMX.FEATURE_MERCHANT_FILTERS_HIDE_KNOWN = "Ocultar ya conocidos"
esMX.FEATURE_MERCHANT_FILTERS_HIDE_UNUSABLE_RECIPES = "Ocultar recetas de otras profesiones"
esMX.FEATURE_MERCHANT_FILTERS_HIDE_UNAFFORDABLE = "Ocultar no comprables"
esMX.FEATURE_MERCHANT_FILTERS_ONLY_RECIPES = "Solo recetas"
esMX.FEATURE_MERCHANT_FILTERS_ONLY_KNOWN_PROFESSIONS = "Solo mis profesiones"
esMX.FEATURE_MERCHANT_FILTERS_HIDE_DECOR = "Ocultar decoración"
esMX.FEATURE_MERCHANT_FILTERS_HIDE_MOUNTS = "Ocultar monturas"
esMX.FEATURE_MERCHANT_FILTERS_HIDE_PETS = "Ocultar mascotas"
esMX.FEATURE_MERCHANT_FILTERS_HIDE_TOYS = "Ocultar juguetes"
esMX.FEATURE_MERCHANT_FILTERS_HIDE_COSMETICS = "Ocultar cosméticos"
esMX.FEATURE_MERCHANT_FILTERS_TAG_RECIPE = "Receta"
esMX.FEATURE_MERCHANT_FILTERS_TAG_DECOR = "Decoración"
esMX.FEATURE_MERCHANT_FILTERS_TAG_MOUNT = "Montura"
esMX.FEATURE_MERCHANT_FILTERS_TAG_PET = "Mascota"
esMX.FEATURE_MERCHANT_FILTERS_TAG_TOY = "Juguete"
esMX.FEATURE_MERCHANT_FILTERS_TAG_COSMETIC = "Cosmético"
esMX.FEATURE_MERCHANT_FILTERS_TAG_KNOWN = "Conocido"
esMX.FEATURE_MERCHANT_FILTERS_TAG_NO_MONEY = "No comprable"
esMX.FEATURE_MERCHANT_FILTERS_TAG_OTHER_PROFESSION = "Otra profesión"
esMX.FEATURE_MERCHANT_FILTERS_COMPAT = "Vaultloom: VendorFilter está cargado. Desactívalo antes de usar los filtros de vendedor de Vaultloom."
esMX.FEATURE_MERCHANT_FILTERS_SAVE_OFF = "Recordar: Desactivado"
esMX.FEATURE_MERCHANT_FILTERS_SAVE_MERCHANT = "Recordar: Vendedor"
esMX.FEATURE_MERCHANT_FILTERS_SAVE_GLOBAL = "Recordar: Global"
esMX.FEATURE_MERCHANT_FILTERS_EMPTY_BUYBACK = "Sin objetos de recompra."
esMX.FEATURE_MERCHANT_FILTERS_SELL_JUNK = "Vender basura"
esMX.FEATURE_MERCHANT_FILTERS_SELL_JUNK_COUNT_FORMAT = "Basura (%d)"
esMX.FEATURE_MERCHANT_FILTERS_SELLING_JUNK = "Vendiendo..."
esMX.FEATURE_MERCHANT_FILTERS_SOLD_JUNK_FORMAT = "%d objetos vendidos por %s."
esMX.FEATURE_MERCHANT_FILTERS_CLASS_ALL = "Clase: Todas"
esMX.FEATURE_MERCHANT_FILTERS_CLASS_PLAYER_FORMAT = "Clase: %s"
esMX.FEATURE_MERCHANT_FILTERS_TAG_OTHER_CLASS = "Otra clase"
esMX.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_ALL = "Ocultar equipo"
esMX.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_HEAD = "Ocultar cabeza / yelmo"
esMX.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_NECK = "Ocultar cuello"
esMX.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_SHOULDER = "Ocultar hombros"
esMX.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_BACK = "Ocultar espalda"
esMX.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_CHEST = "Ocultar pecho"
esMX.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_WRIST = "Ocultar muñecas"
esMX.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_HANDS = "Ocultar manos"
esMX.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_WAIST = "Ocultar cintura"
esMX.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_LEGS = "Ocultar piernas"
esMX.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_FEET = "Ocultar pies"
esMX.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_FINGER = "Ocultar anillos"
esMX.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_TRINKET = "Ocultar abalorios"
esMX.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_WEAPON = "Ocultar armas"
esMX.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_OFFHAND = "Ocultar mano izquierda"
esMX.FEATURE_MERCHANT_FILTERS_MODE_LABEL = "Modo"
esMX.FEATURE_MERCHANT_FILTERS_MODE_REPLACE = "Reemplazar"
esMX.FEATURE_MERCHANT_FILTERS_MODE_BUTTON = "Botón"
esMX.FEATURE_MERCHANT_FILTERS_MODE_FILTER_ONLY = "Solo filtro"

esMX.FEATURE_ITEM_ID_TOOLTIP_TITLE = "Mostrar ID de objeto"
esMX.FEATURE_ITEM_ID_TOOLTIP_DESCRIPTION = "Muestra el ID del objeto arriba a la derecha en el tooltip del objeto."
esMX.FEATURE_ITEM_ID_TOOLTIP_NOTE = "Útil para buscar, depurar y compartir objetos."
esMX.FEATURE_ITEM_ID_TOOLTIP_PREVIEW_LABEL = "Tooltip de objeto"
esMX.FEATURE_ITEM_ID_TOOLTIP_PREVIEW_NOTE = "El ID aparece directamente junto al nombre del objeto."
esMX.FEATURE_VAULTLOOM_ARMORY_SLOT_HEAD = "Cabeza"
esMX.FEATURE_VAULTLOOM_ARMORY_SLOT_NECK = "Cuello"
esMX.FEATURE_VAULTLOOM_ARMORY_SLOT_SHOULDER = "Hombros"
esMX.FEATURE_VAULTLOOM_ARMORY_SLOT_BACK = "Espalda"
esMX.FEATURE_VAULTLOOM_ARMORY_SLOT_CHEST = "Pecho"
esMX.FEATURE_VAULTLOOM_ARMORY_SLOT_WRIST = "Muñecas"
esMX.FEATURE_VAULTLOOM_ARMORY_SLOT_HANDS = "Manos"
esMX.FEATURE_VAULTLOOM_ARMORY_SLOT_WAIST = "Cintura"
esMX.FEATURE_VAULTLOOM_ARMORY_SLOT_LEGS = "Piernas"
esMX.FEATURE_VAULTLOOM_ARMORY_SLOT_FEET = "Pies"
esMX.FEATURE_VAULTLOOM_ARMORY_SLOT_FINGER_1 = "Anillo 1"
esMX.FEATURE_VAULTLOOM_ARMORY_SLOT_FINGER_2 = "Anillo 2"
esMX.FEATURE_VAULTLOOM_ARMORY_SLOT_TRINKET_1 = "Abalorio 1"
esMX.FEATURE_VAULTLOOM_ARMORY_SLOT_TRINKET_2 = "Abalorio 2"
esMX.FEATURE_VAULTLOOM_ARMORY_SLOT_MAIN_HAND = "Mano derecha"
esMX.FEATURE_VAULTLOOM_ARMORY_SLOT_OFF_HAND = "Mano izquierda"
esMX.FEATURE_VAULTLOOM_ARMORY_STAT_CRIT = "Crítico"
esMX.FEATURE_VAULTLOOM_ARMORY_STAT_HASTE = "Celeridad"
esMX.FEATURE_VAULTLOOM_ARMORY_STAT_MASTERY = "Maestría"
esMX.FEATURE_VAULTLOOM_ARMORY_STAT_VERSATILITY = "Versatilidad"
esMX.FEATURE_VAULTLOOM_ARMORY_STAT_LEECH = "Robo de vida"
esMX.FEATURE_VAULTLOOM_ARMORY_STAT_AVOIDANCE = "Evasión"
esMX.FEATURE_VAULTLOOM_ARMORY_STAT_SPEED = "Velocidad"
esMX.PVE_DELVES_GILDED_STASH_MAX = 4
esMX.PVE_RARES_WAYPOINT = "Raro"
esMX.RAID_JOURNAL_FALLBACK_SUBTITLE = "Estructura del diario de banda"
esMX.RAID_JOURNAL_FALLBACK_DESCRIPTION = "Los datos del diario aún no están disponibles."
esMX.RAID_JOURNAL_SYNC_TITLE = "Sincronización del diario"
esMX.RAID_JOURNAL_SYNC_DESCRIPTION = "Los nombres de jefes en vivo, el seguimiento semanal y la sincronización de botín se pueden conectar aquí."
esMX.RAID_JOURNAL_FILTERS = "Filtros"
esMX.RENOWN_FRAME_TOGGLE = "Marco"
esMX.RENOWN_TOAST_ACTIVITY = "Actividad completada"
esMX.SETTINGS_SUBTITLE = "Ventana, minimapa y notas de actualización."
esMX.SETTINGS_DISPLAY_TITLE = "Pantalla"
esMX.SETTINGS_CHANGELOG_TITLE = "Registro de cambios"
esMX.SETTINGS_MINIMAP_BUTTON = "Visibilidad del botón"

esMX.FEATURE_GATHERING_NODES_TITLE = "Nodos de recoleccion"
esMX.FEATURE_GATHERING_NODES_DESCRIPTION = "Crea tu propia base de mineria, herboristeria, cuero, madera, peces e ingredientes de cocina mientras recolectas."
esMX.FEATURE_GATHERING_NODES_NOTE = "Guarda un nodo cuando tu personaje lo recolecta y muestra pequenos marcadores en el mapa del mundo y el minimapa. El miniboton solo muestra u oculta los marcadores; la recoleccion continua mientras la funcion este activa."
esMX.FEATURE_GATHERING_NODES_PREVIEW_LABEL = "Marcadores de mapa"
esMX.FEATURE_GATHERING_NODES_PREVIEW_NOTE = "El mapa del mundo usa iconos de objeto de Blizzard con un marco limpio pequeno; el minimapa usa circulos de rastreo huecos."
esMX.FEATURE_GATHERING_NODES_TOGGLE_TOOLTIP = "Activa o desactiva tus marcadores de nodos guardados y el miniboton."
esMX.FEATURE_GATHERING_NODES_KIND_MINING = "Mineria"
esMX.FEATURE_GATHERING_NODES_KIND_HERBALISM = "Herboristeria"
esMX.FEATURE_GATHERING_NODES_KIND_COOKING = "Ingredientes de cocina"
esMX.FEATURE_GATHERING_NODES_KIND_LEATHER = "Cuero y pieles"
esMX.FEATURE_GATHERING_NODES_KIND_WOOD = "Madera"
esMX.FEATURE_GATHERING_NODES_KIND_FISH = "Peces"
esMX.FEATURE_GATHERING_NODES_BUTTON_TITLE = "Nodos de recoleccion"
esMX.FEATURE_GATHERING_NODES_BUTTON_ON = "Marcadores activos"
esMX.FEATURE_GATHERING_NODES_BUTTON_OFF = "Marcadores inactivos"
esMX.FEATURE_GATHERING_NODES_BUTTON_COUNT_FORMAT = "%d nodos guardados"
esMX.FEATURE_GATHERING_NODES_BUTTON_CLICK = "Clic izquierdo: Mostrar u ocultar marcadores"
esMX.FEATURE_GATHERING_NODES_BUTTON_FILTERS = "Clic derecho: Filtros"
esMX.FEATURE_GATHERING_NODES_BUTTON_DRAG = "Arrastrar izq.: Mover"
esMX.FEATURE_GATHERING_NODES_BUTTON_WHEEL = "Mayus + rueda: Tamano"
esMX.FEATURE_GATHERING_NODES_OPTIONS_TITLE = "Filtros de recoleccion"
esMX.FEATURE_GATHERING_NODES_OPTIONS_EMPTY = "Aun no hay nodos guardados."
esMX.FEATURE_GATHERING_NODES_OPTIONS_COUNT_FORMAT = "%d nodos"
esMX.FEATURE_GATHERING_NODES_OPTIONS_CATEGORY_OTHER = "Otros"
esMX.FEATURE_GATHERING_NODES_DELETED_FORMAT = "Nodo eliminado: %s"
esMX.FEATURE_GATHERING_NODES_NODE_COUNT_FORMAT = "Recolectado %d veces"
esMX.FEATURE_GATHERING_NODES_NODE_LAST_SEEN_FORMAT = "Visto por ultima vez: %s"
esMX.FEATURE_GATHERING_NODES_NODE_WAYPOINT_HINT = "Clic izquierdo para establecer un waypoint de Blizzard."
esMX.FEATURE_GATHERING_NODES_MINIMAP_HINT = "Los circulos rojos marcan lugares guardados; el rastreo en vivo de Blizzard puede verse por el centro."
esMX.FEATURE_GATHERING_NODES_WAYPOINT_SET_FORMAT = "Waypoint establecido: %s"
esMX.FEATURE_GATHERING_NODES_WAYPOINT_UNAVAILABLE = "La API de waypoint de Blizzard no esta disponible."

esMX.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_TITLE = "Tesoros de Midnight"
esMX.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_DESCRIPTION = "Muestra tesoros unicos de Midnight sin recoger en el mapa del mundo de Blizzard."
esMX.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_NOTE = "Usa pequenos iconos redondos de cofre y los oculta cuando se obtiene el credito del tesoro."
esMX.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_PREVIEW_LABEL = "Mapa de tesoros"
esMX.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_PREVIEW_NOTE = "Tesoros unicos, lugares rituales, tesoros de profesion y cofres resistentes de Delve."
esMX.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_TOGGLE_TOOLTIP = "Muestra u oculta tesoros de Midnight sin recoger en el mapa del mundo de Blizzard."
esMX.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_FALLBACK_NAME = "Tesoro"
esMX.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_KIND_TREASURE = "Tesoro"
esMX.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_KIND_PROFESSION = "Tesoro de profesion"
esMX.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_KIND_DELVE = "Tesoro de Delve"
esMX.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_KIND_RITUAL = "Tesoro ritual"
esMX.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_PROGRESS_TREASURES = "Tesoros"
esMX.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_PROGRESS_PROFESSION_KNOWLEDGE = "Conocimiento de profesion"
esMX.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_PROGRESS_DELVES = "Delves"
esMX.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_PROGRESS_RITUALS = "Rituales"
esMX.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_PROGRESS_SEPARATOR = " | "
esMX.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_PROGRESS_EMPTY = "No hay progreso de tesoros disponible."
esMX.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_TOOLTIP_HINT = "Clic izquierdo para establecer un waypoint de Blizzard."
esMX.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_HIDE_DONE_HINT = "Los marcadores desaparecen cuando se recoge el tesoro."
esMX.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_WAYPOINT_SET_FORMAT = "Waypoint establecido: %s"
esMX.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_WAYPOINT_UNAVAILABLE = "La API de waypoint de Blizzard no esta disponible."

esMX.WORLD_MAP_PIN_BUTTON_TITLE = "Marcadores de mapa de Vaultloom"
esMX.WORLD_MAP_PIN_BUTTON_TOOLTIP = "Activa o desactiva funciones de marcadores del mapa de Vaultloom."
esMX.WORLD_MAP_PIN_BUTTON_MENU_TITLE = "Marcadores de Vaultloom"
esMX.WORLD_MAP_PIN_BUTTON_EMPTY = "No hay funciones de marcadores disponibles."

esMX.MAIN_TAB_COMPENDIUM = "Compendio (Beta)"
esMX.COMPENDIUM_TAB_TITLE = "Compendio"
esMX.COMPENDIUM_TAB_SUBTITLE = "Monturas, mascotas, juguetes, decoraciones y recetas de Midnight en una colección con búsqueda."
esMX.COMPENDIUM_CATEGORY_ALL = "Todo"
esMX.COMPENDIUM_CATEGORY_MOUNTS = "Monturas"
esMX.COMPENDIUM_CATEGORY_PETS = "Mascotas"
esMX.COMPENDIUM_CATEGORY_TOYS = "Juguetes"
esMX.COMPENDIUM_CATEGORY_DECORATIONS = "Decoraciones"
esMX.COMPENDIUM_CATEGORY_RECIPES = "Recetas"
esMX.COMPENDIUM_CATEGORY_PROMOTIONS = "Promociones"
esMX.COMPENDIUM_CATEGORY_RARES = "Raros"
esMX.COMPENDIUM_PROGRESS_FORMAT = "%d/%d"
esMX.COMPENDIUM_STAT_TOTAL = "Total: %d"
esMX.COMPENDIUM_STAT_MISSING = "Faltan: %d"
esMX.COMPENDIUM_STAT_OWNED = "Hecho: %d"
esMX.COMPENDIUM_STAT_WAYPOINTS = "Puntos: %d"
esMX.COMPENDIUM_FILTER_CATEGORIES = "Categorias"
esMX.COMPENDIUM_SIDEBAR_HINT = "Consejo: Haz clic en el icono de punto de una entrada para poner un punto de ruta de Blizzard."
esMX.COMPENDIUM_DECORATION_CATALOG_HINT = "Los recuentos de decoraciones vienen del catalogo de vivienda de Blizzard. Si siguen como desconocidos al entrar, abre una vez el panel de vivienda y pulsa Actualizar. Vaultloom guarda los recuentos conocidos por personaje."
esMX.COMPENDIUM_SEARCH_PLACEHOLDER = "Buscar coleccion..."
esMX.COMPENDIUM_FILTER_STATUS_MISSING = "Faltan"
esMX.COMPENDIUM_FILTER_STATUS_ALL = "Todo"
esMX.COMPENDIUM_FILTER_STATUS_COLLECTED = "Hecho"
esMX.COMPENDIUM_FILTER_STATUS_UNKNOWN = "Desconocido"
esMX.COMPENDIUM_FILTER_SOURCE_ALL = "Todas las fuentes"
esMX.COMPENDIUM_FILTER_SOURCE_FORMAT = "Fuente: %s"
esMX.COMPENDIUM_FILTER_SOURCE_TITLE = "Filtro de fuente"
esMX.COMPENDIUM_FILTER_SOURCE_HINT = "Clic izquierdo avanza, clic derecho retrocede."
esMX.COMPENDIUM_FILTER_PROFESSION_ALL = "Todas las profesiones"
esMX.COMPENDIUM_FILTER_PROFESSION_FORMAT = "Profesion: %s"
esMX.COMPENDIUM_REFRESH = "Actualizar"
esMX.COMPENDIUM_HEADER_NAME = "Entrada"
esMX.COMPENDIUM_HEADER_SOURCE = "Fuente"
esMX.COMPENDIUM_HEADER_STATUS = "Estado"
esMX.COMPENDIUM_EMPTY = "Ninguna entrada coincide con los filtros actuales."
esMX.COMPENDIUM_STATUS_COLLECTED = "Coleccionado"
esMX.COMPENDIUM_STATUS_MISSING = "Falta"
esMX.COMPENDIUM_STATUS_UNKNOWN = "Desconocido"
esMX.COMPENDIUM_STATUS_LEARNED = "Aprendido"
esMX.COMPENDIUM_STATUS_DEFEATED = "Derrotado"
esMX.COMPENDIUM_WAYPOINT = "Punto de ruta"
esMX.COMPENDIUM_WAYPOINT_SET_FORMAT = "Punto de ruta colocado: %s"
esMX.COMPENDIUM_WAYPOINT_UNAVAILABLE = "La API de puntos de ruta de Blizzard no esta disponible."
esMX.COMPENDIUM_COST_GOLD_FORMAT = "%d oro"
esMX.COMPENDIUM_RENOWN_LEVEL_FORMAT = "%s renombre %d"
esMX.COMPENDIUM_ACHIEVEMENT_ID_FORMAT = "Logro %d"
esMX.COMPENDIUM_SOURCE_DROP_FROM_FORMAT = "Botín de: %s"
esMX.COMPENDIUM_DETAIL_CURRENTLY_UNAVAILABLE = "No disponible actualmente"
esMX.COMPENDIUM_DETAIL_PREPATCH_CURRENTLY_UNAVAILABLE = "Evento de preparche - no disponible actualmente"
esMX.COMPENDIUM_DETAIL_MIDNIGHT_SEASON_1_PVP_REWARD = "Midnight: Temporada 1 - recompensa de temporada de arena puntuado y campos de batalla puntuados"
esMX.COMPENDIUM_DETAIL_VOIDSTORM_FISHING = "Pesca de Tormenta del Vacío"
esMX.COMPENDIUM_DETAIL_RITUAL_TREASURE_RARE_SPOILS = "Sitios rituales: Tesoros y botín de raros"
esMX.COMPENDIUM_DETAIL_RITUAL_DAGGERSPINE_POINT = "Sitio ritual: Punta Espinafilada"
esMX.COMPENDIUM_DETAIL_RITUAL_BROKEN_THRONE = "Sitio ritual: Trono Roto"
esMX.COMPENDIUM_DETAIL_DECOR_DUEL = "Duelo de decoración"
esMX.COMPENDIUM_DETAIL_KEYSTONE_MYTH_UNLOCK = "Desbloqueo: Logro Mito de piedra angular"
esMX.COMPENDIUM_DETAIL_DELVER_JOURNEY_RANK_5 = "Rango 5 del Viaje del explorador"
esMX.COMPENDIUM_DETAIL_PREY_NIGHTMARE_MODE_III = "Logro: Prey: Nightmare Mode III"
esMX.COMPENDIUM_DETAIL_ABUNDANCE_WORLD_EVENT = "Evento del mundo Abundance"
esMX.COMPENDIUM_DETAIL_VOID_RESPONSE_TEAM = "Logro: Void Response Team"
esMX.COMPENDIUM_DETAIL_MIDNIGHT_HEROIC_EDITION = "Edición heroica de Midnight"
esMX.COMPENDIUM_DETAIL_MIDNIGHT_EPIC_EDITION = "Edición épica de Midnight"
esMX.COMPENDIUM_QUEST_RELICS_IN_LOYAL_HANDS = "Reliquias en buenas manos"
esMX.COMPENDIUM_COST_TWILIGHT_BLADE_INSIGNIA_100 = "100 insignias de la Hoja Crepuscular"
esMX.COMPENDIUM_DROP_ZONE_RARES = "raros de la zona"
esMX.COMPENDIUM_VENDOR_NALEIDEA_RIVERGLEAM = "Naleidea Rivergleam"
esMX.COMPENDIUM_VENDOR_TELEMANT_ASTRANDIS = "Telemancer Astrandis"
esMX.COMPENDIUM_VENDOR_TELEMANCER_ASTRANDIS = "Telemancer Astrandis"
esMX.COMPENDIUM_VENDOR_MATERIALIST_OPHINELL = "Materialist Ophinell"
esMX.COMPENDIUM_VENDOR_CHEL_THE_CHIP = "Chel the Chip"
esMX.COMPENDIUM_TOOLTIP_CATEGORY = "Categoria"
esMX.COMPENDIUM_TOOLTIP_STATUS = "Estado"
esMX.COMPENDIUM_TOOLTIP_SOURCE = "Fuente"
esMX.COMPENDIUM_TOOLTIP_HINT = "Pista"
esMX.COMPENDIUM_TOOLTIP_ZONE = "Zona"
esMX.COMPENDIUM_TOOLTIP_PROFESSION = "Profesion"
esMX.COMPENDIUM_TOOLTIP_GROUP = "Grupo"
esMX.COMPENDIUM_TOOLTIP_COST = "Coste"
esMX.COMPENDIUM_TOOLTIP_RENOWN = "Renombre"
esMX.COMPENDIUM_TOOLTIP_DROP = "Botin"
esMX.COMPENDIUM_TOOLTIP_DROP_FROM = "Botin de"
esMX.COMPENDIUM_TOOLTIP_VENDOR = "Vendedor"
esMX.COMPENDIUM_TOOLTIP_ACHIEVEMENT = "Logro"
esMX.COMPENDIUM_TOOLTIP_WAYPOINT = "Punto"
esMX.COMPENDIUM_TOOLTIP_SET_WAYPOINT = "Poner punto"
esMX.COMPENDIUM_TOOLTIP_CLICK_WAYPOINT = "Haz clic en el icono de punto para poner un punto de ruta de Blizzard."
esMX.COMPENDIUM_TOOLTIP_NO_WAYPOINT = "No hay punto guardado para esta entrada."
esMX.COMPENDIUM_SOURCE_ACHIEVEMENT = "Logro"
esMX.COMPENDIUM_SOURCE_CRAFTED = "Fabricado"
esMX.COMPENDIUM_SOURCE_DELVE = "Abismo"
esMX.COMPENDIUM_SOURCE_DISCOVERY = "Descubrimiento"
esMX.COMPENDIUM_SOURCE_DROP = "Botin"
esMX.COMPENDIUM_SOURCE_DUNGEON = "Calabozo"
esMX.COMPENDIUM_SOURCE_EVENT = "Evento"
esMX.COMPENDIUM_SOURCE_EVERSONG = "Bosque Cancion Eterna"
esMX.COMPENDIUM_SOURCE_HARANDAR = "Harandar"
esMX.COMPENDIUM_SOURCE_PREPATCH = "Preparche"
esMX.COMPENDIUM_SOURCE_PREY = "Presa"
esMX.COMPENDIUM_SOURCE_PROFESSION = "Profesion"
esMX.COMPENDIUM_SOURCE_PROMOTION = "Promoción"
esMX.COMPENDIUM_SOURCE_PVP = "JcJ"
esMX.COMPENDIUM_SOURCE_QUEST = "Mision"
esMX.COMPENDIUM_SOURCE_RAID = "Banda"
esMX.COMPENDIUM_SOURCE_RARE = "Raro"
esMX.COMPENDIUM_SOURCE_RENOWN = "Renombre"
esMX.COMPENDIUM_SOURCE_REPUTATION = "Reputacion"
esMX.COMPENDIUM_SOURCE_SPECIALIZATION = "Especializacion"
esMX.COMPENDIUM_SOURCE_TRAINER = "Instructor"
esMX.COMPENDIUM_SOURCE_TRADING_POST = "Puesto comercial"
esMX.COMPENDIUM_SOURCE_TREASURE = "Tesoro"
esMX.COMPENDIUM_SOURCE_VENDOR = "Vendedor"
esMX.COMPENDIUM_SOURCE_VOIDSTORM = "Tormenta del Vacio"
esMX.COMPENDIUM_SOURCE_WILD = "Salvaje"
esMX.COMPENDIUM_SOURCE_WORLD_EVENT = "Evento del mundo"
esMX.COMPENDIUM_SOURCE_ZULAMAN = "Zul'Aman"
esMX.COMPENDIUM_PROFESSION_ALCHEMY = "Alquimia"
esMX.COMPENDIUM_PROFESSION_BLACKSMITHING = "Herrería"
esMX.COMPENDIUM_PROFESSION_COOKING = "Cocina"
esMX.COMPENDIUM_PROFESSION_ENCHANTING = "Encantamiento"
esMX.COMPENDIUM_PROFESSION_ENGINEERING = "Ingenieria"
esMX.COMPENDIUM_PROFESSION_INSCRIPTION = "Inscripcion"
esMX.COMPENDIUM_PROFESSION_JEWELCRAFTING = "Joyería"
esMX.COMPENDIUM_PROFESSION_LEATHERWORKING = "Peletería"
esMX.COMPENDIUM_PROFESSION_TAILORING = "Sastrería"

ns.Locale:Register("esMX", esMX)
