-- =============================================================================
-- Epithet — Locale: enGB (default)
-- NOTE: WoW Lua 5.1 does NOT support \xNN hex escapes. Use decimal byte escapes
--       (e.g. \226\128\148 = em dash) or plain ASCII.
-- =============================================================================
local _, ns = ...

if GetLocale() ~= "esMX" then return end

local L = ns.L

-- Common glyphs (decimal byte escapes)
local DOT   = "\194\183"        -- middle dot ·
local DASH  = "\226\128\148"    -- em dash —
local CHECK = "\226\156\147"    -- check mark ✓

-- Window
L["WINDOW_TITLE"] = "Títulos"
L["CLOSE"] = "Cerrar"

-- Header band
L["TITLES_EARNED"] = "Títulos obtenidos"
L["TITLES_EARNED_OBTAINABLE"] = "Obtenibles obtenidos"
L["TOGGLE_ALL_TITLES"] = "Mostrar todos los títulos en el conteo"
L["TOGGLE_OBTAINABLE_ONLY"] = "Mostrar solo los títulos obtenibles en el conteo"
L["TOGGLE_OBTAINABLE_LABEL"] = "Solo obtenibles"

-- Filter sidebar
L["SEARCH_PLACEHOLDER"] = "Buscar títulos u orígenes..."
L["STATUS"] = "Estado"
L["STATUS_ALL"] = "Todos"
L["STATUS_EARNED"] = "Obtenidos"
L["STATUS_UNEARNED"] = "Sin obtener"
L["RARITY_TIER"] = "Nivel de rareza"
L["TYPE"] = "Tipo"
L["EXPANSION"] = "Expansión"
L["ADDITIONAL_FILTERS"] = "Filtros adicionales"
L["RESET_ALL_FILTERS"] = "Restablecer todos los filtros"
L["FAVOURITES_ONLY"] = "Solo favoritos"
L["ADD_FAVOURITE"] = "Añadir a favoritos"
L["REMOVE_FAVOURITE"] = "Quitar de favoritos"
L["PREFIX"] = "Prefijo"
L["SUFFIX"] = "Sufijo"

-- Rarity names
L["COMMON"] = "Común"
L["UNCOMMON"] = "Inusual"
L["RARE"] = "Raro"
L["EPIC"] = "Épico"
L["LEGENDARY"] = "Legendario"

-- List header
L["N_TITLES"] = "%d títulos"
L["SORT_COLLECTED_FIRST"] = "Obtenidos primero"
L["SORT_BY_EXPANSION"] = "Por expansión"
L["SORT_ALPHABETICAL"] = "Alfabéticamente"
L["SORT_BY_QUALITY"] = "Por calidad"
L["SORT_BY_CATEGORY"] = "Por categoría"

-- Group headers
L["GROUP_COLLECTED"] = "Obtenidos"
L["GROUP_NOT_COLLECTED"] = "Aún no obtenidos"

-- Detail panel
L["PREVIEW_HOVERING"] = "Vista previa " .. DASH .. " Al pasar el cursor"
L["PREFIX_TITLE"] = "Título de prefijo"
L["SUFFIX_TITLE"] = "Título de sufijo"
L["HOW_TO_OBTAIN"] = "Cómo obtenerlo"
L["HELD_BY_ESTIMATE"] = "Lo posee aproximadamente el %s%% de los personajes activos."
L["EXPANSION_LABEL"] = "Expansión"
L["CATEGORY_LABEL"] = "Categoría"
L["AVAILABILITY_LABEL"] = "Disponibilidad"
L["ACCOUNT_WIDE"] = "Para toda la cuenta"
L["NO_LONGER_OBTAINABLE"] = "Ya no se puede obtener"
L["CURRENT_PATCH"] = "Parche actual " .. DOT .. " 12.0.5"
L["EARNED_DATE"] = "Obtenido el %s"
L["NOT_YET_EARNED"] = "Aún no obtenido"

-- Action footer
L["SET_AS_MY_TITLE"] = "Establecer como mi título"
L["SET_NOTE"] = "Se mostrará debajo de tu nombre para otros jugadores."
L["CURRENT_TITLE"] = "Título actual"
L["CURRENT_NOTE"] = "Este título se muestra sobre tu personaje."
L["LOCKED_BUTTON"] = "Aún no obtenido"
L["LOCKED_NOTE"] = "Obtén este título para poder usarlo."

-- Empty states
L["NO_MATCH"] = "Ningún título coincide con estos filtros."
L["NO_SELECTION"] = "Selecciona un título para ver su origen y rareza."

-- Bottom bar / rarity legend
L["RARITY"] = "Rareza"
L["SOURCE_LEGEND"] = "Origen"

-- Rarity explanation (fallback only; primary copy lives in EpithetData.rarityNote)
L["RARITY_NOTE"] = "La rareza se estima a partir de la tasa de obtención global del origen vinculado " .. DASH ..
    " el porcentaje de personajes activos de nivel máximo que lo poseen, según las estadísticas de logros " ..
    "de Blizzard. Los orígenes que posee menos del 1% de los jugadores se clasifican como legendarios; " ..
    "los títulos de rango y de eventos más comunes se clasifican como comunes. Las estimaciones se " ..
    "actualizan semanalmente y son independientes del color de calidad del objeto que tenga el título en el juego."

-- Minimap
L["MINIMAP_TOOLTIP_TITLE"] = "Epithet"
L["MINIMAP_TOOLTIP_LEFT"] = "Haz clic izquierdo para abrir el explorador de títulos."
L["MINIMAP_TOOLTIP_RIGHT"] = "Haz clic derecho para ocultar este botón."
L["MINIMAP_HIDDEN"] = "Botón del minimapa oculto. Escribe /epithet minimap para volver a mostrarlo."
L["MINIMAP_SHOWN"] = "Botón del minimapa mostrado."

-- Source kinds
L["KIND_ACHIEVEMENT"] = "Logro"
L["KIND_QUEST"] = "Misión"
L["KIND_REPUTATION"] = "Reputación"
L["KIND_PVP_RANK"] = "Rango JcJ"
L["KIND_FEAT"] = "Proeza de fuerza"
L["KIND_ITEM"] = "Objeto"
L["KIND_PROMOTION"] = "Promoción"

-- Filter facets (new)
L["CATEGORY"] = "Categoría"
L["KIND"] = "Tipo de origen"
L["FACTION"] = "Facción"
L["FACTION_ALLIANCE"] = "Alianza"
L["FACTION_HORDE"] = "Horda"
L["FACTION_BOTH"] = "Ambas facciones"
L["AVAILABILITY"] = "Disponibilidad"
L["HIDE_UNOBTAINABLE"] = "Ocultar no obtenibles"
L["HIDE_TIME_SENSITIVE"] = "Ocultar limitados por tiempo"
L["UNKNOWN_SOURCE"] = "Origen desconocido"
L["FEAT_OF_STRENGTH"] = "Proeza de fuerza (puede no ser obtenible)"

-- Source descriptions
L["SOURCE_ACHIEVEMENT_DESC"] = "Otorgado por el logro %s"
L["SOURCE_QUEST_DESC"] = "Otorgado durante la misión %s"
L["SOURCE_ITEM_DESC"] = "Otorgado por %s"

-- Meta grid
L["LAST_ASSESSED"] = "Última evaluación"

-- Availability labels
L["AVAILABILITY_SEASONAL"] = "Estacional"
L["AVAILABILITY_LIMITED"] = "Limitado"
L["AVAILABILITY_PROMOTIONAL"] = "Promocional"
L["AVAILABILITY_TEMPORARY"] = "Temporal"
L["AVAILABILITY_REMOVED"] = "Eliminado"
L["AVAILABILITY_PERMANENT"] = "Permanente"
