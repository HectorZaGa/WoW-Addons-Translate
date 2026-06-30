local _, ns = ...

if not ns.Locale or not ns.Locale.Register then
    return
end

local enUS = {
    ADDON_TITLE = "Vaultloom",
    ADDON_LOADED_MESSAGE = "Vaultloom %s - open Vaultloom with /vl. For the latest updates, check Options > Changelog.",
    ADDON_SUBTITLE = "Premium warband and weekly tracker for Vaultloom",
    PROTOTYPE_NOTE = "Vaultloom tracks your warband, weeklies, delves, PvE, PvP, and professions.",
    OPEN_COMMAND_HINT = "Use /vaultloom or /vl to open Vaultloom.",
    CLOSE = "Close",
    UNKNOWN = "Unknown",
    MAIN_TAB_VAULT = "Vault",
    MAIN_TAB_PVE = "PvE",
    MAIN_TAB_PVP = "PvP",
    MAIN_TAB_SYSTEMS = "Other",
    MAIN_TAB_MYTHICPLUS = "Mythic+",
    MAIN_TAB_FOCUS = "Fokus",
    MAIN_TAB_CHRONICLE = "Chronicle (Beta)",
    SUBTAB_VAULT_RAIDS = "Raids",
    SUBTAB_VAULT_DUNGEONS = "Dungeons",
    SUBTAB_VAULT_WORLD = "World / Delves / Prey",
    SUBTAB_FOCUS_QUESTBOARD = "Questboard",
    SUBTAB_CHRONICLE_OVERVIEW = "Overview",
    SUBTAB_PVE_PREY = "Prey",
    SUBTAB_PVE_WEEKLY = "Weekly",
    SUBTAB_PVE_DELVES = "Delves",
    SUBTAB_PVE_DAILY = "Daily",
    SUBTAB_PVE_SPECIAL = "Calendar Events",
    SUBTAB_PVE_DARKMOON = "Darkmoon",
    SUBTAB_PVE_EVENTS = "Events",
    SUBTAB_PVE_WORLD = "World",
    SUBTAB_PVE_OTHER = "Other",
    SUBTAB_PVP_WEEKLY = "Weekly",
    SUBTAB_SYSTEMS_PROFESSIONS = "Professions",
    SUBTAB_MYTHICPLUS_SEASON1 = "Season 1",
    PROFESSIONS_SUBTITLE = "Midnight profession weeklies for the selected character.",
    PROFESSIONS_SUBTITLE_WITH_DARKMOON = "Midnight weeklies and Darkmoon Faire profession quests for the selected character.",
    PROFESSIONS_PROGRESS = "Progress",
    PROFESSIONS_DARKMOON_HINT = "Darkmoon: monthly",
    PROFESSIONS_ROW_DARKMOON = "Darkmoon Faire",
    PROFESSIONS_ROW_SERVICE = "Services Requested",
    PROFESSIONS_ROW_TREATISE = "Thalassian Treatise",
    PROFESSIONS_EMPTY_LABEL = "No tracked professions",
    PROFESSIONS_EMPTY_VALUE = "--",
    PROFESSIONS_TOOLTIP_DARKMOON_REQUIRES = "Bring:",
    PROFESSIONS_TOOLTIP_DARKMOON_REWARD = "Rewards profession skill and profession knowledge for your latest known expansion tier.",
    PROFESSIONS_TOOLTIP_DARKMOON_MONTHLY = "Available during the Darkmoon Faire and resets with the Faire.",
    PROFESSIONS_TOOLTIP_DARKMOON_MISSING = "Accept this profession quest on Darkmoon Island while the Faire is active.",
    PROFESSIONS_TOOLTIP_DARKMOON_PROGRESS = "This Darkmoon profession quest is currently active.",
    PROFESSIONS_TOOLTIP_DARKMOON_DONE = "Already completed for this Darkmoon Faire.",
    PROFESSIONS_EMPTY_HINT = "Log into a character with primary professions so this tab can capture profession weeklies.",
    PROFESSIONS_TOOLTIP_SERVICE_MISSING = "This profession weekly can be accepted in Midnight.",
    PROFESSIONS_TOOLTIP_SERVICE_PROGRESS = "This profession weekly is currently active.",
    PROFESSIONS_TOOLTIP_TREATISE_MISSING = "The weekly treatise quest is not accepted yet.",
    PROFESSIONS_TOOLTIP_TREATISE_PROGRESS = "The weekly treatise quest is currently active.",
    PROFESSIONS_TOOLTIP_TREATISE_ITEM_HINT = "Can be crafted by an Inscription player or requested through a Crafting Order.",
    PROFESSIONS_TOOLTIP_TURNIN = "This quest is done and can now be turned in.",
    PROFESSIONS_TOOLTIP_DONE = "Already completed this week.",
    PVE_DARKMOON_CONTENT_SUBTITLE = "Darkmoon Faire dailies and weekly turn-ins.",
    PVE_DARKMOON_SUBTITLE = "Darkmoon Faire dailies, races, pet battles, and artifact turn-ins.",
    PVE_DARKMOON_INACTIVE_SUBTITLE = "Darkmoon Faire is not active.",
    PVE_DARKMOON_MONTHLY_SUMMARY = "Faire quests: monthly",
    PVE_DARKMOON_START_ITEM_HINT = "Starts from item: %s",
    PVE_DARKMOON_TOKEN_HINT = "Requires %s.",
    PVE_DARKMOON_DAILY_HINT = "Daily during the Darkmoon Faire.",
    PVE_DARKMOON_MONTHLY_HINT = "Once per character per Darkmoon Faire.",
    PVE_DARKMOON_ACCEPT_HINT = "Accept this on Darkmoon Island while the Faire is active.",
    PVE_DARKMOON_DONE_DAILY_HINT = "Already completed today.",
    PVE_DARKMOON_DONE_MONTHLY_HINT = "Already completed for this Darkmoon Faire.",
    PVE_DARKMOON_ACTIVE_HINT = "This Darkmoon quest is currently active.",
    RENOWN_TAB_TITLE = "Chronicle (Beta)",
    RENOWN_TAB_SUBTITLE = "Vaultloom glory, badges, character progress, warband progress, and recent XP gains.",
    RENOWN_SCOPE_CHARACTER = "Character",
    RENOWN_SCOPE_WARBAND = "Warband",
    RENOWN_ACTIVE_CHARACTER_FORMAT = "Viewing: %s",
    RENOWN_SELECTOR_TITLE = "Progress",
    RENOWN_WARBAND_ENTRY = "Warband",
    RENOWN_WARBAND_META = "All tracked characters",
    RENOWN_WARBAND_PROGRESS_META = "%d tracked characters",
    RENOWN_HEADER_META_FORMAT = "%s  |  %s",
    RENOWN_STAT_LINE_FORMAT = "Total %s XP  |  Next rank: %s  |  Backup: SavedVariables",
    RENOWN_XP_TOOLTIP_TITLE = "Chronicle XP",
    RENOWN_XP_TOOLTIP_BODY = "XP comes from completed Vaultloom tasks: vault rows, weekly and daily objectives, dungeons, raids, delves, PvP, professions, and completed neighborhood tasks.",
    RENOWN_RESET_BUTTON = "Reset progress",
    RENOWN_RESET_CONFIRM = "Reset Chronik progress for %s? This cannot be undone.",
    RENOWN_BACKUP_HINT = "Backup file:\nWTF\\Account\\<Account>\nSavedVariables\\Vaultloom.lua",
    RENOWN_BACKUP_TOOLTIP_TITLE = "Backup file",
    RENOWN_FRAME_SHOWN = "Frame: On",
    RENOWN_FRAME_HIDDEN = "Frame: Off",
    RENOWN_FRAME_DEFAULT = "Standard Gold",
    RENOWN_FRAME_SELECTED = "Selected",
    RENOWN_FRAME_CLICK_TOOLTIP = "Click to use this portrait frame.",
    RENOWN_FRAME_LOCKED_TOOLTIP = "Reach this rank to unlock its portrait frame.",
    RENOWN_FRAME_TOGGLE_TOOLTIP = "Show or hide the selected portrait frame.",
    RENOWN_FRAME_DEFAULT_TOOLTIP = "Use the standard gold portrait frame.",
    RENOWN_FRAME_DROPDOWN_FORMAT = "Frame: %s",
    RENOWN_FRAME_DROPDOWN_TITLE = "Portrait frame",
    RENOWN_FRAME_DROPDOWN_TOOLTIP = "Select unlocked portrait frames from the dropdown.",
    RENOWN_FRAME_MENU_OPTION_TOOLTIP = "Use this frame around the character portrait.",
    RENOWN_BADGE_SHOWN = "Badge: On",
    RENOWN_BADGE_HIDDEN = "Badge: Off",
    RENOWN_BADGE_DEFAULT = "Current rank",
    RENOWN_BADGE_DROPDOWN_FORMAT = "Badge: %s",
    RENOWN_BADGE_DROPDOWN_TITLE = "Header badge",
    RENOWN_BADGE_DROPDOWN_TOOLTIP = "Select the unlocked badge shown in the header and Chronicle panel.",
    RENOWN_BADGE_MENU_OPTION_TOOLTIP = "Use this badge in the character header.",
    RENOWN_BADGE_TOGGLE_TOOLTIP = "Show or hide the selected header badge.",
    RENOWN_WARBAND_BADGE_SHOWN = "Warband: On",
    RENOWN_WARBAND_BADGE_HIDDEN = "Warband: Off",
    RENOWN_WARBAND_BADGE_TOGGLE_TOOLTIP = "Shows or hides the Warband badge in the left character panel.",
    RENOWN_TOAST_SHOWN = "Popups: On",
    RENOWN_TOAST_HIDDEN = "Popups: Off",
    RENOWN_TOAST_TOGGLE_TOOLTIP = "Shows or hides Chronicle XP popups. XP tracking continues.",
    RENOWN_TOAST_XP_GAIN = "Chronicle XP",
    RENOWN_TOAST_TASK_DONE = "Task complete",
    RENOWN_TOAST_LEVEL_UP_FORMAT = "Chronicle level %d",
    RENOWN_TOAST_RANK_UP_FORMAT = "New rank: %s",
    RENOWN_TOAST_WARBAND_LEVEL_FORMAT = "Warband level %d",
    RENOWN_TOAST_CHARACTER_PROGRESS = "Character progress",
    RENOWN_TOAST_TEST_BUTTON = "Test",
    RENOWN_TOAST_PLACE_BUTTON = "Place",
    RENOWN_TOAST_HIDE_TEST_BUTTON = "Hide",
    RENOWN_TOAST_RESET_BUTTON = "Reset",
    RENOWN_TOAST_TEST_TITLE = "Chronicle test popup",
    RENOWN_TOAST_TEST_DETAIL = "This popup does not grant XP.",
    RENOWN_TOAST_TEST_META_MOVE = "Drag to place, then hide the test popup.",
    RENOWN_TOAST_TEST_TOOLTIP = "Shows a short Chronicle popup preview without granting XP.",
    RENOWN_TOAST_PLACE_TOOLTIP = "Keeps a test popup visible so you can drag it to the desired position.",
    RENOWN_TOAST_HIDE_TEST_TOOLTIP = "Hides the test popup and leaves the saved position intact.",
    RENOWN_TOAST_RESET_TOOLTIP = "Resets the Chronicle popup to the default position and keeps the test popup visible.",
    RENOWN_TOAST_STYLE_FORMAT = "Style: %s",
    RENOWN_TOAST_STYLE_NORMAL = "Normal",
    RENOWN_TOAST_STYLE_CLEAN = "Clean",
    RENOWN_TOAST_STYLE_SIMPLE = "Simple",
    RENOWN_TOAST_STYLE_TOOLTIP = "Normal shows the full popup, Clean removes the background, Simple shows only icon and XP.",
    RENOWN_TOAST_ANIMATION_FORMAT = "Intro: %s",
    RENOWN_TOAST_ANIMATION_SOFT = "Soft",
    RENOWN_TOAST_ANIMATION_FADE = "Fade",
    RENOWN_TOAST_ANIMATION_POP = "Pop",
    RENOWN_TOAST_ANIMATION_TOOLTIP = "Chooses a lightweight reveal animation for Chronicle XP popups.",
    RENOWN_TOAST_SCALE_FORMAT = "Size: %d%%",
    RENOWN_TOAST_SCALE_DECREASE = "Smaller",
    RENOWN_TOAST_SCALE_INCREASE = "Bigger",
    RENOWN_TOAST_SCALE_TOOLTIP = "Changes the Chronicle popup size.",
    RENOWN_TITLE_FORMAT = "%s Glory",
    RENOWN_SUBTITLE_FORMAT = "%s progression, badges, and recent XP gains.",
    RENOWN_LEVEL_FORMAT = "Level %d - %s",
    RENOWN_NEXT_RANK_FORMAT = "Next: %s",
    RENOWN_PARAGON_FORMAT = "Paragon %d",
    RENOWN_STAT_TOTAL_XP = "Total XP",
    RENOWN_STAT_LEVEL = "Level",
    RENOWN_STAT_NEXT_RANK = "Next rank",
    RENOWN_STAT_SCOPE = "Scope",
    RENOWN_MAX_RANK = "Paragon",
    RENOWN_HISTORY_TITLE = "Recent Glory",
    RENOWN_HISTORY_EMPTY = "No new XP events yet. Existing completed activities are baselined first so old snapshots do not grant duplicate XP.",
    RENOWN_PANEL_RANKS = "Rank Path",
    RENOWN_OPTIONS_TITLE = "Display Options",
    RENOWN_OPTIONS_OPEN = "Options",
    RENOWN_OPTIONS_CLOSE = "Close",
    RENOWN_OPTIONS_DRAWER_TITLE = "Chronicle Options",
    RENOWN_OPTIONS_DRAWER_HINT = "Chronicle display, badges, and XP popups. Hover buttons for details.",
    RENOWN_OPTIONS_DRAWER_TOOLTIP = "Opens the grouped Chronicle settings for display, badges, and popups.",
    RENOWN_OPTIONS_SECTION_APPEARANCE = "Appearance",
    RENOWN_OPTIONS_SECTION_POPUP = "XP Popup",
    RENOWN_OPTIONS_SECTION_WARBAND = "Warband",
    RENOWN_OPTIONS_STATE_ON = "On",
    RENOWN_OPTIONS_STATE_OFF = "Off",
    RENOWN_OPTIONS_SUMMARY_FORMAT = "Frame %s | Badge %s | Popups %s | Warband %s",
    RENOWN_PANEL_SOURCES = "XP Sources",
    RENOWN_CURRENT_RANK = "Now",
    RENOWN_RANK_LEVEL_FORMAT = "Lv %d",
    RENOWN_SOURCE_DAILY = "Daily goals",
    RENOWN_SOURCE_WEEKLY = "Weekly quests",
    RENOWN_SOURCE_VAULT = "Great Vault",
    RENOWN_SOURCE_DELVES = "Delves & Prey",
    RENOWN_SOURCE_HOUSING = "Housing",
    RENOWN_SOURCE_PROFESSIONS = "Professions",
    RENOWN_SOURCE_PVP = "PvP weekly",
    RENOWN_SOURCE_FOCUS = "Fokus rows",
    RENOWN_ACTIVITY_VAULT_SLOT = "%s vault slot %d unlocked",
    RENOWN_ACTIVITY_VAULT_GOAL_SLOT = "%s vault slot %d max reward reached",
    RENOWN_ACTIVITY_VAULT_MAX = "%s vault row maxed",
    RENOWN_ACTIVITY_PREY_DIFFICULTY = "Prey %s completed",
    RENOWN_ACTIVITY_PREY_TOTAL = "Prey total cap reached",
    RENOWN_ACTIVITY_HOUSING_LEVEL = "House level %d reached",
    RENOWN_ACTIVITY_PROFESSION_KNOWLEDGE = "Knowledge spent: %s",
    RENOWN_ACTIVITY_FOCUS_ROW = "Fokus row completed: %s",
    RENOWN_RANK_PEON = "Peon",
    RENOWN_RANK_INITIATE = "Initiate",
    RENOWN_RANK_RUNNER = "Runner",
    RENOWN_RANK_SCOUT = "Scout",
    RENOWN_RANK_GRUNT = "Grunt",
    RENOWN_RANK_FOOTMAN = "Footman",
    RENOWN_RANK_PATHFINDER = "Pathfinder",
    RENOWN_RANK_DELVER = "Delver",
    RENOWN_RANK_TASKHAND = "Taskhand",
    RENOWN_RANK_VAULT_SEEKER = "Vault Seeker",
    RENOWN_RANK_TRAILWARDEN = "Trailwarden",
    RENOWN_RANK_RELIC_HUNTER = "Relic Hunter",
    RENOWN_RANK_OATHBOUND = "Oathbound",
    RENOWN_RANK_RIFTWALKER = "Riftwalker",
    RENOWN_RANK_KEYBEARER = "Keybearer",
    RENOWN_RANK_WORLDBREAKER = "Worldbreaker",
    RENOWN_RANK_DREAMGUARD = "Dreamguard",
    RENOWN_RANK_RUNEBINDER = "Runebinder",
    RENOWN_RANK_NIGHT_CHAMPION = "Night Champion",
    RENOWN_RANK_VAULTWARDEN = "Vaultwarden",
    RENOWN_RANK_MYTHIC_SEEKER = "Mythic Seeker",
    RENOWN_RANK_ASCENDANT = "Ascendant",
    RENOWN_RANK_PARAGON = "Paragon",
    RENOWN_RANK_CHRONICLE_KEEPER = "Chronicle Keeper",
    RENOWN_RANK_LEGEND = "Legend",
    RENOWN_RANK_ETERNAL = "Eternal",
    RENOWN_RANK_VAULTLOOM = "Vaultloom",
    RENOWN_WARBAND_RANK_CAMP = "Camp",
    RENOWN_WARBAND_RANK_MUSTER = "Muster",
    RENOWN_WARBAND_RANK_CREW = "Crew",
    RENOWN_WARBAND_RANK_BANNER = "Banner",
    RENOWN_WARBAND_RANK_COMPANY = "Company",
    RENOWN_WARBAND_RANK_VANGUARD = "Vanguard",
    RENOWN_WARBAND_RANK_COHORT = "Cohort",
    RENOWN_WARBAND_RANK_LEGION = "Legion",
    RENOWN_WARBAND_RANK_ARMORY = "Armory",
    RENOWN_WARBAND_RANK_CAMPAIGN = "Campaign",
    RENOWN_WARBAND_RANK_DYNASTY = "Dynasty",
    RENOWN_WARBAND_RANK_LEGACY = "Legacy",
    RENOWN_WARBAND_RANK_HIGH_COMMAND = "High Command",
    RENOWN_WARBAND_RANK_WARBAND_ETERNAL = "Eternal Warband",
    RENOWN_WARBAND_RANK_OATH_OF_MANY = "Oath of Many",
    RENOWN_WARBAND_RANK_STARBOUND = "Starbound",
    RENOWN_WARBAND_RANK_VAULT_HOST = "Vault Host",
    RENOWN_WARBAND_RANK_MYTHIC_BOND = "Mythic Bond",
    RENOWN_WARBAND_RANK_ASCENDANT_WARBAND = "Ascendant Warband",
    RENOWN_WARBAND_RANK_PARAGON_WARBAND = "Paragon Warband",
    RENOWN_WARBAND_RANK_CHRONICLE_HOST = "Chronicle Host",
    RENOWN_WARBAND_RANK_LEGEND_WARBAND = "Legend Warband",
    RENOWN_WARBAND_RANK_ETERNAL_WARBAND = "Eternal Warband",
    RENOWN_WARBAND_RANK_VAULTLOOM_WARBAND = "Vaultloom Warband",
    PROFESSION_KNOWLEDGE_BADGE_TOOLTIP = "%d unspent profession knowledge points.",
    PROFESSIONS_KNOWLEDGE_LABEL = "Knowledge",
    PROFESSIONS_KNOWLEDGE_TOOLTIP_AVAILABLE = "%s has %d unspent knowledge points.",
    PROFESSIONS_KNOWLEDGE_TOOLTIP_EMPTY = "%s has no unspent knowledge points.",
    PROFESSIONS_KNOWLEDGE_TOOLTIP_OPEN = "Left click: open this profession.",
    PROFESSIONS_KNOWLEDGE_TOOLTIP_ALT = "Direct open works only for the currently logged-in character.",
    SIDEBAR_TITLE = "Warband",
    SIDEBAR_SUBTITLE = "Phase 2 will wire the real roster and character selection here.",
    SIDEBAR_PLACEHOLDER = "For this first step, we are only validating the frame, navigation, proportions, and Blizzard-style foundation.",
    SIDEBAR_CURRENT_CHARACTER = "Current character",
    HERO_TITLE = "New UI Skeleton",
    HERO_SUBTITLE = "Main frame, navigation hierarchy, and content zones only.",
    HERO_CHARACTER = "Preview character: %s  |  %s  |  Level %d",
    HERO_SYNC = "Last sync %s",
    HERO_MONEY = "Gold %s",
    HERO_MONEY_SYNC = "Gold %s  |  Last sync %s",
    HERO_PROFESSION_PRIMARY_LABEL = "Main profession",
    HERO_PROFESSION_SECONDARY_LABEL = "Secondary profession",
    HERO_PROFESSION_OPEN_HINT = "Left click: open this profession.",
    HERO_PROFESSION_ALT_HINT = "Log into this character to open the profession window.",
    HERO_EMPTY = "No live Vaultloom character data found yet.",
    HERO_META = "%s  |  Level %d  |  %s",
    HERO_META_WITH_ILVL = "%s  |  Level %d  |  %s  |  ilvl %d",
    ROLE_MAIN = "Main",
    ROLE_ALT = "Alt",
    CONTENT_TITLE_FORMAT = "%s / %s",
    CONTENT_SUBTITLE = "This is a placeholder content area for the selected section.",
    CONTENT_PLACEHOLDER = "Next steps will wire the real Vault view first, then PvE, PvP, and Other step by step.",
    VAULT_EMPTY = "No live Vault snapshot found yet for this character.",
    VAULT_NONE_TOP = "No top value recorded yet.",
    VAULT_TOP_CURRENT = "Top current: %s",
    VAULT_BREAKPOINTS = "Breakpoints: %s",
    VAULT_UNLOCK_LABEL = "Vault slots",
    VAULT_GOAL_LABEL = "Max reward",
    VAULT_CURRENT_REWARD = "Current %d ilvl",
    VAULT_CURRENT_UNKNOWN = "Current ?",
    VAULT_CURRENT_NONE = "Current --",
    VAULT_SLOT_LABEL = "Slot %d",
    VAULT_GOAL_REACHED = "Reached",
    VAULT_GOAL_LEFT = "%d left",
    VAULT_MAX_REWARD_LEFT = "%d left to max reward",
    VAULT_ROW_NOTE_NONE = "No reward thresholds found yet.",
    VAULT_ROW_NOTE_READY = "All rewards unlocked for this week.",
    VAULT_ROW_NOTE_PROGRESS = "%d left to the next reward, %d left to max.",
    VAULT_ROW_NOTE_MAX_ONLY = "%d left to max reward.",
    VAULT_SUMMARY_RESET = "Tracks the live Great Vault and resets in %s.",
    FOOTER_LEFT = "Vaultloom",
    FOOTER_RIGHT = "Safe to test alongside the live addon",
    SIDEBAR_EMPTY = "No saved Vaultloom characters found yet. Log into a character once so Vaultloom can capture the roster.",
    SIDEBAR_FOOTER = "%d characters saved",
    SIDEBAR_ROW_LEVEL = "Level %d",
    SIDEBAR_ROW_LEVEL_SHORT = "Lvl %d",
    SIDEBAR_ROW_ILVL = "ilvl %d",
    SIDEBAR_MAIN = "MAIN",
    SIDEBAR_SET_MAIN_RIGHT_CLICK = "Right-click: set as Main",
    SIDEBAR_SORT_NAME = "Name",
    SIDEBAR_SORT_LEVEL = "Level",
    SIDEBAR_SORT_ITEM_LEVEL = "iLvl",
    SIDEBAR_SORT_PRIORITY = "AS",
    SIDEBAR_SORT_DEFAULT = "Manual",
    SIDEBAR_SORT_DROPDOWN = "Sort: %s",
    PRIORITY_SCORE_FORMAT = "AS %d",
    PRIORITY_SCORE_TOOLTIP_TITLE = "Alt Score",
    PRIORITY_SCORE_TOOLTIP_VALUE = "AS: %d / 100",
    PRIORITY_SCORE_TOOLTIP_LINE = "Score shows how much you completed this week. Higher is better.",
    PRIORITY_SCORE_LEVEL = "Level",
    PRIORITY_SCORE_ITEM_LEVEL = "Item level",
    PRIORITY_SCORE_VAULT = "Great Vault",
    PRIORITY_SCORE_WEEKLY = "Weeklies",
    PRIORITY_SCORE_DAILY = "Daily",
    PRIORITY_SCORE_EVENTS = "Events",
    PRIORITY_SCORE_WORLD = "World",
    PRIORITY_SCORE_DELVES = "Delves",
    PRIORITY_SCORE_PREY = "Prey",
    PRIORITY_SCORE_PVP = "PvP",
    PRIORITY_SCORE_PROFESSIONS = "Professions",
    PRIORITY_SCORE_HOUSING = "Housing",
    SIDEBAR_VISIBILITY_DROPDOWN = "Characters",
    SIDEBAR_VISIBILITY_DROPDOWN_COUNT = "Characters: %d hidden",
    SIDEBAR_VISIBILITY_CURRENT_LOCKED = "The current character is always visible.",
    SIDEBAR_HIDE = "Hide",
    SIDEBAR_UNHIDE = "Show",
    SIDEBAR_HIDE_TOOLTIP = "Hide the selected character from the warband list.",
    SIDEBAR_HIDE_TOOLTIP_CURRENT = "The currently logged-in character cannot be hidden.",
    SIDEBAR_UNHIDE_TOOLTIP = "Show all hidden characters again.",
    SIDEBAR_UNHIDE_TOOLTIP_COUNT = "Hidden characters: %d",
    SIDEBAR_HIDE_CURRENT_ERROR = "The currently logged-in character cannot be hidden.",
    UTILITY_TITLE = "Resources",
    UTILITY_SUBTITLE = "Currencies and upgrade materials for the selected character.",
    UPGRADE_SECTION = "Item upgrade",
    RESOURCE_SECTION = "Resources",
    RESOURCE_SHOW_ALL = "Show all",
    RESOURCE_SHOW_ALL_COUNT = "Show all (%d)",
    RESOURCE_SHOW_ALL_TOOLTIP = "Shows all hidden resources again.",
    RESOURCE_SHOW_ALL_TOOLTIP_NONE = "No resources are currently hidden.",
    RESOURCE_HIDE_HINT = "Left-click hides this resource only in Vaultloom. Right-click opens WoW's currency tab.",
    UTILITY_LIVE_CURRENT = "Showing live values for %s.",
    UTILITY_LAST_KNOWN = "Showing the last known values for %s (%s).",
    UTILITY_NO_SNAPSHOT = "No saved values yet for this character. Log onto the character once to capture them.",
    UTILITY_VALUE_UNKNOWN = "--",
    CUSTOM_TASKS_QUESTBOARD_TITLE = "Questboard",
    CUSTOM_TASKS_SUBTITLE = "Choose the Vaultloom rows you want to keep in focus for this character.",
    CUSTOM_TASKS_SUMMARY_FORMAT = "%s selected  |  %s",
    CUSTOM_TASKS_PROFILE_LABEL = "List",
    CUSTOM_TASKS_PROFILE_CHARACTER = "This character",
    CUSTOM_TASKS_PROFILE_GLOBAL = "Global template",
    CUSTOM_TASKS_COPY_GLOBAL = "Copy global",
    CUSTOM_TASKS_SAVE_GLOBAL = "Save as global",
    CUSTOM_TASKS_ADD_MENU = "Add focus",
    CUSTOM_TASKS_EMPTY = "No Fokus rows selected yet. Use the add menu above to choose rows for this character.",
    CUSTOM_TASKS_REMOVE = "Remove",
    CUSTOM_TASKS_MOVE_UP = "Move up",
    CUSTOM_TASKS_MOVE_DOWN = "Move down",
    CUSTOM_TASKS_MOVE_UP_TOOLTIP = "Moves this Fokus row one position up.",
    CUSTOM_TASKS_MOVE_DOWN_TOOLTIP = "Moves this Fokus row one position down.",
    CUSTOM_TASKS_UNKNOWN_GROUP = "Unavailable",
    CUSTOM_TASKS_UNAVAILABLE_VALUE = "--",
    CUSTOM_TASKS_UNAVAILABLE_TOOLTIP = "This row is not available for the selected character right now.",
    CUSTOM_TASKS_TRACKER_GROUP = "Fokus Trackers",
    CUSTOM_TASKS_TRACKER_VAULT = "Great Vault",
    CUSTOM_TASKS_TRACKER_VAULT_RAID = "Great Vault: Raid",
    CUSTOM_TASKS_TRACKER_VAULT_DUNGEON = "Great Vault: Dungeons",
    CUSTOM_TASKS_TRACKER_VAULT_WORLD = "Great Vault: World / Delves / Prey",
    CUSTOM_TASKS_TRACKER_VAULT_MISSING = "No Great Vault snapshot is available for this character yet.",
    CUSTOM_TASKS_TRACKER_DELVES = "Delves Progress",
    CUSTOM_TASKS_TRACKER_DELVES_TOOLTIP = "Tracks the current Delves summary for this character.",
    CUSTOM_TASKS_TRACKER_PREY = "Prey Progress",
    CUSTOM_TASKS_TRACKER_PREY_TOOLTIP = "Tracks defeated prey targets for the current character.",
    CUSTOM_TASKS_TRACKER_PROFESSION_KNOWLEDGE = "Profession Knowledge",
    CUSTOM_TASKS_TRACKER_PROFESSION_FORMAT = "Knowledge: %s",
    CUSTOM_TASKS_TRACKER_PROFESSION_KNOWLEDGE_TOOLTIP = "Tracks unspent profession knowledge points.",
    CUSTOM_TASKS_TRACKER_LABEL = "Tracker",
    CUSTOM_TASKS_TRACKER_SHOW = "Show tracker",
    CUSTOM_TASKS_TRACKER_HIDE = "Hide tracker",
    CUSTOM_TASKS_TRACKER_LOCK = "Lock",
    CUSTOM_TASKS_TRACKER_UNLOCK = "Unlock",
    CUSTOM_TASKS_TRACKER_STYLE_FORMAT = "Style: %s",
    CUSTOM_TASKS_TRACKER_STYLE_FRAME = "Frame",
    CUSTOM_TASKS_TRACKER_STYLE_ROWS = "Rows",
    CUSTOM_TASKS_TRACKER_STYLE_TEXT = "Text",
    CUSTOM_TASKS_TRACKER_FONT_NORMAL = "Normal",
    CUSTOM_TASKS_TRACKER_FONT_COMPACT = "Compact",
    CUSTOM_TASKS_TRACKER_FONT_LARGE = "Large",
    CUSTOM_TASKS_TRACKER_EMPTY = "No Fokus rows selected.",
    CUSTOM_TASKS_TOOLTIP_CHARACTER_MODE = "Uses a separate Fokus list for this character.",
    CUSTOM_TASKS_TOOLTIP_GLOBAL_MODE = "Uses the shared Fokus list on this character.",
    CUSTOM_TASKS_TOOLTIP_COPY_GLOBAL = "Copies the global Fokus list to this character.",
    CUSTOM_TASKS_TOOLTIP_SAVE_GLOBAL = "Saves this character's Fokus list as the global template.",
    CUSTOM_TASKS_TOOLTIP_ADD_MENU = "Opens the list of trackers and quest rows you can add.",
    CUSTOM_TASKS_TOOLTIP_TRACKER_TOGGLE = "Shows or hides the floating Fokus tracker.",
    CUSTOM_TASKS_TOOLTIP_TRACKER_LOCK = "Locks or unlocks dragging for the floating tracker.",
    CUSTOM_TASKS_TOOLTIP_TRACKER_STYLE = "Cycles the tracker style: frame, rows, or text only.",
    CUSTOM_TASKS_TOOLTIP_TRACKER_FONT = "Cycles the tracker font size.",
    CUSTOM_TASKS_TOOLTIP_SCALE_DOWN = "Smaller",
    CUSTOM_TASKS_TOOLTIP_SCALE_DOWN_TEXT = "Makes the floating tracker smaller.",
    CUSTOM_TASKS_TOOLTIP_SCALE_UP = "Larger",
    CUSTOM_TASKS_TOOLTIP_SCALE_UP_TEXT = "Makes the floating tracker larger.",
    CUSTOM_TASKS_TOOLTIP_OPACITY_DOWN = "Less visible",
    CUSTOM_TASKS_TOOLTIP_OPACITY_DOWN_TEXT = "Reduces tracker opacity.",
    CUSTOM_TASKS_TOOLTIP_OPACITY_UP = "More visible",
    CUSTOM_TASKS_TOOLTIP_OPACITY_UP_TEXT = "Increases tracker opacity.",
    SETTINGS_BUTTON = "Options",
    FEATURES_BUTTON = "Features",
    SETTINGS_TITLE = "Options",
    SETTINGS_VERSION = "Version",
    SETTINGS_SCALE = "Scale",
    SETTINGS_OPACITY = "Opacity",
    SETTINGS_MINIMAP = "Minimap",
    SETTINGS_MINIMAP_SHOW = "Show",
    SETTINGS_MINIMAP_HIDE = "Hide",
    SETTINGS_ALT_SCORE = "Alt Score",
    SETTINGS_ALT_SCORE_SHOW = "Show",
    SETTINGS_ALT_SCORE_HIDE = "Hide",
    SETTINGS_MAIN_TABS_TITLE = "Main tabs",
    SETTINGS_MAIN_TABS_HINT = "Choose which main tabs are visible in the top navigation.",
    SETTINGS_MAIN_TABS_TOGGLE_TOOLTIP = "Left click: show or hide this main tab.",
    SETTINGS_MAIN_TABS_LAST_VISIBLE_HINT = "At least one main tab must stay visible.",
    NEWS_ENTRY_TITLE = "Changelog %s",
    NEWS_POPUP_TITLE = "Vaultloom What's New",
    NEWS_POPUP_SUBTITLE = "Current update plus recent patch notes.",
    NEWS_POPUP_HINT = "Open /vl and view Options to see this again.",
    NEWS_OPEN_FEATURES = "Open Features",
    NEWS_CHANGELOG_TITLE = "Vaultloom Changelog %s",
    NEWS_UI_UNAVAILABLE = "Vaultloom UI module is unavailable.",
    NEWS_UI_OPEN_FAILED = "Vaultloom UI failed to open: %s",
    NEWS_LOGIN_HINT = "Vaultloom %s - open Vaultloom with /vl. For the latest updates, check Options > Changelog.",
    NEWS_ENTRIES = {
        {
            version = "0.9.98",
            date = "June 29, 2026",
            items = {
                "ADDED: Omnium Folio weekly tracking has been added to the PvE Weekly tab.",
            },
        },
        {
            version = "0.9.97",
            date = "June 25, 2026",
            items = {
                "FIXED: WoW update version fix for patch 12.0.7.",
            },
        },
        {
            version = "0.9.96",
            date = "May 27, 2026",
            items = {
                "ADDED: New options for the Chronicle tab XP popup: it now has multiple styles and adjustable size.",
                "FIXED: Gathering Nodes did not behave correctly and filters could overwrite the old database. Saved nodes should now stay permanent.",
                "UPDATED: The Vaultloom window can now be moved outside the screen edge and reset to the default position with /vl reset.",
            },
        },
        {
            version = "0.9.95",
            date = "May 24, 2026",
            items = {
                "ADDED: New Quiet Loot feature, a small gimmick to show simplified loot windows for loot and chests.",
                "FIXED: ACCESS_VIOLATION error on logout caused by scanning Darkmoon Faire quests.",
            },
        },
        {
            version = "0.9.94",
            date = "May 16, 2026",
            items = {
                "ADDED: Added the Delves weekly warband drop quest.",
                "FIXED: Gathering Nodes CPU usage reduced by removing unneeded stored side information. The feature now saves less data and runs much more stable.",
                "UPDATED: Compendium (Beta) received many Midnight fixes, added entries, promotion mount grouping, and item icon fallbacks.",
            },
        },
        {
            version = "0.9.932",
            date = "May 12, 2026",
            items = {
                "FIXED: Alts no longer receive Chronicle XP spam from Bountiful Delves; this activity now only counts correctly at level 90.",
                "FIXED: Lua error when using gathering professions inside instances while the Gathering Nodes feature was enabled.",
            },
        },
        {
            version = "0.9.93",
            date = "May 11, 2026",
            items = {
                "UPDATED: Compendium decorations now read owned counts from the Housing catalog.",
                "UPDATED: Decoration progress now counts owned decorations as completed when at least one copy is owned.",
                "FIXED: Blizzard UI windows now open above the main Vaultloom window while Vaultloom still stays above normal action bars and regular UI.",
                "FIXED: The Vaultloom merchant window now supports Blizzard modified item clicks again, including item preview/dress-up and chat linking.",
                "FIXED: One-Click Processing no longer triggers a protected `Hide()` action blocked warning during combat; secure button cleanup is now delayed until combat ends.",
                "FIXED: Gathering node pins are now hidden while inside instances/dungeons, preventing outdoor gathering nodes from appearing on dungeon maps.",
                "FIXED: Gathering node snapshots are no longer saved while inside instances, preventing dungeon loot from being stored on outdoor maps.",
            },
        },
        {
            version = "0.9.92",
            date = "May 8, 2026",
            items = {
                "NEW: New Compendium (Beta) tab. Shows collectible Midnight content such as mounts, pets, toys, decorations, and recipes in one searchable view with filters, tooltips, and waypoints.",
                "NEW World Map feature: Gathering Nodes. Vaultloom builds your own database while you gather mining nodes, herbs, skinning finds, cooking materials, wood, and fish, then shows discovered nodes on the world map and minimap.",
                "NEW World Map feature: Midnight Treasures. Shows uncollected Midnight treasures as map pins.",
                "NEW World Map feature: Profession Knowledge. Shows profession knowledge points for the character's active professions on the map.",
                "NEW: Added a Vaultloom map button directly on the world map to quickly toggle map features on or off.",
                "UPDATED: Map pins, gathering node icons, treasure icons, and rare pins were visually polished for better readability.",
                "UPDATED: Blizzard Window Mover supports more default frames and avoids risky scaling on sensitive Blizzard views.",
                "FIXED: Character gold snapshots now save more reliably so alts no longer appear with 0 gold after switching characters.",
            },
        },
        {
            version = "0.9.91",
            date = "May 7, 2026",
            items = {
                "FIXED: Optional auto quest turn-in is now safer and skips risky NPC quests with reward choices, costs, or multiple possible turn-ins.",
                "FIXED: Favor of the Court now grants Chronicle XP only once per week for the warband, like the Housing weekly.",
            },
        },
        {
            version = "0.9.9",
            date = "May 7, 2026",
            items = {
                "NEW: Profession badges now show in the main tab header for every character.",
                "NEW: Each character's gold is now shown in the main tab header.",
                "NEW Feature Midnight Rare Mobs map symbols: small badges are shown on the map so you can see where the rares spawn.",
                "NEW Feature Merchant Filters: 3 different modes to filter merchant items: a full new Vaultloom merchant window, filter-only with the original WoW UI, or a mixed version with both. Almost everything can be filtered: recipes, professions, gear, decor items, and already collected or known items. Additionally, a Blizzard UI bug was fixed that shows the wrong currency at some merchants.",
                "NEW Feature Auto-Accept Quests: automatically accept quests and optionally turn them in.",
                "NEW Feature Item ID Tooltip: show item IDs directly in tooltips.",
                "FIXED: The Prey progress bar should no longer make the Blizzard UI pop up in Silvermoon.",
                "ADDED: Support for Italian, Portuguese, and Russian.",
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
            date = "May 4, 2026",
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
            date = "May 3, 2026",
            items = {
                "NEW: Chronicle tab XP popups can now be moved with a test popup and saved at your preferred position.",
                "UPDATED: Chronicle settings now have their own grouped options menu for display, badges, and popup controls.",
            },
        },
        {
            version = "0.9.96",
            date = "May 1, 2026",
            items = {
                "NEW: Vaultloom Armory is available as a new optional entry in the Features menu. Enable it there to add an extended character overview with gear checks, sockets, enchants, and compact combat stats.",
                "FIXED: Fixed the Rare Mobs Lua error caused by protected Blizzard tooltip names.",
                "UPDATED: Reworked the Features menu with category buttons, a scrollable feature list, checkboxes, and compact settings.",
            },
        },
        {
            version = "0.9.95",
            date = "April 30, 2026",
            items = {
                "NEW: The PvE tab now has a Rare Mobs menu for Midnight rares, daily kill status, mount status, and clickable Blizzard waypoints.",
            },
        },
        {
            version = "0.9.94",
            date = "April 29, 2026",
            items = {
                "FIXED: Great Vault max-reward progress for World / Delves / Prey now counts max-level activities correctly.",
                "FIXED: Chronicle XP popups now trigger more reliably for relevant Vaultloom tasks without needing to open the addon first.",
            },
        },
        {
            version = "0.9.93",
            date = "April 29, 2026",
            items = {
                "UPDATED: Added a new Void Assaults quest to the PvE event pool.",
            },
        },
        {
            version = "0.9.92",
            date = "April 29, 2026",
            items = {
                "NEW: Chronicle quest XP popup notifications can now be disabled separately in Options while keeping the rest of Chronicle enabled.",
                "NEW: Mythic+ now has a Warband Keys button below the current keystone panel, showing all alts and saved keystones at a glance. Log in once on each alt so Vaultloom can save its key.",
                "NEW: Added the Decor Duel daily quest row to the PvE Daily tab.",
                "UPDATED: Added the new Archmage Aethas weekly quest and expanded the PvP weekly quest pool.",
                "FIXED: Several UI polish fixes and Prey progress now resets correctly with the weekly reset.",
            },
        },
        {
            version = "0.8.98",
            date = "April 28, 2026",
            items = {
                "Added the new Alt Score (AS) calculation for weekly character progress.",
                "The Prey Bar should finally be fixed now. Sorry for the noisy back-and-forth while we chased Blizzard's widget behavior.",
                "Great Vault max-reward progress per slot now grants Chronicle XP for Raid, Dungeon, and World / Delves / Prey rows.",
                "Please report bugs in the Curse comments or in the WoW Reddit thread. Thank you for helping test the beta systems.",
            },
        },
        {
            version = "0.8.91",
            date = "April 27, 2026",
            items = {
                "Individual Prey completions now grant Chronicle XP.",
                "Polished Chronicle progress bars so very small progress values no longer create visual edge artifacts.",
            },
        },
        {
            version = "0.8.89",
            date = "April 27, 2026",
            items = {
                "New Chronicle (Beta) tab: earn XP with all your characters and your warband by completing tasks inside Vaultloom. Unlock new ranks and earn badges and character frames that you can show on your character card however you like. If you do not want the system, you can disable it in Options.",
            },
        },
        {
            version = "0.8.28",
            date = "April 26, 2026",
            items = {
                "Added the complete new Fokus tab: build your own quest and task list per character or as a global template, add and remove rows, reorder them, and track only what matters to you.",
                "Added a floating Fokus tracker outside the main window with lock, scale, opacity, font, and frame/text style options.",
                "Fokus can now track Great Vault goals, Delves, Prey, and Profession Knowledge rows alongside normal quest rows.",
                "Added Stat Focus to color and rank important secondary stats for the current class and specialization directly in item tooltips.",
                "Polished the Features and Fokus UI with clearer tooltips, tighter text-only spacing, tracker style options, and consistent arrow icons.",
            },
        },
        {
            version = "0.8.00",
            date = "April 26, 2026",
            items = {
                "Complete Lua core rebuild for a cleaner and more stable Vaultloom base.",
                "Many visual icons, tabs, and menus have been refreshed.",
                "Options now include a new section to show or hide main tabs.",
                "Warband sorting and character visibility now use cleaner dropdown menus.",
                "Added the current logged-in character header across all major views.",
                "Added a new Professions tab for cooldowns and concentration. Estimated times can vary slightly.",
                "Added French and Spanish localizations.",
            },
        },
        {
            version = "0.7.89",
            date = "April 23, 2026",
            items = {
                "Added One-Click Processing for disenchanting, milling, prospecting, and lockpicking.",
                "Added new custom Prey Hunt map icons.",
            },
        },
        {
            version = "0.7.82",
            date = "April 23, 2026",
            items = {
                "Added Profession Knowledge Badges and the new Profession Knowledge section.",
                "Added visual polish and improved Great Vault logic.",
            },
        },
        {
            version = "0.7.65",
            date = "April 22, 2026",
            items = {
                "Added the Spec Switcher Bar, Travel Bar, and Bag Item Level features.",
                "Added support for WoW patch 12.0.5 and new daily and weekly tracking.",
            },
        },
    },
    FEATURES_TITLE = "Features",
    FEATURES_SUBTITLE = "Turn features on only if you want to use them.",
    FEATURES_SECTION_CATEGORIES = "Categories",
    FEATURES_SECTION_LIST = "Feature Library",
    FEATURES_SECTION_DETAILS = "Details",
    FEATURES_HEADER_FEATURE = "Feature",
    FEATURES_HEADER_STATUS = "Status",
    FEATURES_HEADER_OPTIONS = "Settings",
    FEATURES_ROW_OPTIONS = "Settings",
    FEATURES_ROW_NO_OPTIONS = "No extra settings",
    FEATURES_DEFAULT_NOTE = "Only categories with features are shown here.",
    FEATURES_EMPTY = "No features are available in this category yet.",
    FEATURES_STATUS_LIVE = "Live",
    FEATURES_STATUS_RELOAD = "Reload",
    FEATURES_STATUS_ON = "Enabled",
    FEATURES_STATUS_OFF = "Disabled",
    FEATURES_STATUS_NEXT_UP = "Next Up",
    FEATURES_TOGGLE_ON = "On",
    FEATURES_TOGGLE_OFF = "Off",
    FEATURES_TOOLTIP_ENABLE = "Left click: enable feature",
    FEATURES_TOOLTIP_DISABLE = "Left click: disable feature",
    FEATURE_CATEGORY_PROGRESS = "Progress",
    FEATURE_CATEGORY_PROGRESS_DESC = "Small progress helpers.",
    FEATURE_CATEGORY_CHARACTER = "Character",
    FEATURE_CATEGORY_CHARACTER_DESC = "Small character window helpers.",
    FEATURE_CATEGORY_INVENTORY = "Inventory",
    FEATURE_CATEGORY_INVENTORY_DESC = "Bag, bank, and item storage helpers.",
    FEATURE_CATEGORY_CRAFTING = "Crafting",
    FEATURE_CATEGORY_CRAFTING_DESC = "Recipes, materials, and shopping plans.",
    FEATURE_CATEGORY_QUICK_TOOLS = "Quick Tools",
    FEATURE_CATEGORY_QUICK_TOOLS_DESC = "Fast access tools and compact utility widgets.",
    FEATURE_CATEGORY_WORLD_MAP = "World Map",
    FEATURE_CATEGORY_WORLD_MAP_DESC = "Pins, markers, and tracking helpers for the Blizzard world map.",
    FEATURE_CATEGORY_BLIZZARD = "Blizzard UI",
    FEATURE_CATEGORY_BLIZZARD_DESC = "Focused upgrades for Blizzard screens.",
    FEATURE_CATEGORY_LAYOUT = "Layout & Scale",
    FEATURE_CATEGORY_LAYOUT_DESC = "Extra layout and sizing tools.",
    FEATURE_CATEGORY_EXPERIMENTAL = "Experimental",
    FEATURE_CATEGORY_EXPERIMENTAL_DESC = "Early ideas that still need more testing.",
    FEATURE_PREY_BAR_TITLE = "Prey Progress Bar",
    FEATURE_PREY_BAR_DESCRIPTION = "Shows a prey progress bar in the hunt zone.",
    FEATURE_PREY_BAR_INITIAL_TEXT = "First planned module: a clean prey progress bar that only appears during an active prey hunt in the matching zone.",
    FEATURE_PREY_BAR_NOTE = "Only visible during an active prey hunt. The Blizzard UI button shows or hides the Blizzard prey symbol.",
    FEATURE_PREY_BAR_PREVIEW_LABEL = "Live Preview",
    FEATURE_PREY_BAR_PREVIEW_NOTE = "Slim world bar with percentage, zone context, and quest progress.",
    FEATURE_PREY_BAR_RUNTIME_LABEL = "Prey Hunt",
    FEATURE_PREY_BAR_RUNTIME_SUMMARY = "%d/%d progress",
    FEATURE_PREY_BAR_RUNTIME_SUMMARY_FALLBACK = "Active prey tracked live",
    FEATURE_PREY_BAR_RUNTIME_STAGE = "Stage %d/3",
    FEATURE_PREY_BAR_TOGGLE_TOOLTIP = "Turns the prey progress bar on or off.",
    FEATURE_PREY_BAR_WIDGET_LABEL = "Blizzard UI",
    FEATURE_PREY_BAR_WIDGET_HIDDEN = "Hide UI",
    FEATURE_PREY_BAR_WIDGET_SHOWN = "Show UI",
    FEATURE_PREY_BAR_WIDGET_TOOLTIP = "Shows or hides the Blizzard prey hunt symbol.",
    FEATURE_PREY_BAR_FRAME_LABEL = "Frame",
    FEATURE_PREY_BAR_FRAME_SHOWN = "Frame",
    FEATURE_PREY_BAR_FRAME_HIDDEN = "Clean",
    FEATURE_PREY_BAR_FRAME_TOOLTIP = "Shows or hides the prey bar background.",
    FEATURE_PREY_BAR_RUNTIME_TOOLTIP_DRAG = "Left drag: move",
    FEATURE_PREY_BAR_RUNTIME_TOOLTIP_WHEEL = "Shift + mouse wheel: size",
    FEATURE_PREY_HUNT_ICONS_TITLE = "Prey Hunt Icons",
    FEATURE_PREY_HUNT_ICONS_DESCRIPTION = "Replaces prey map exclamation marks with custom icons. Turn it off and /reload if Blizzard pins do not return immediately.",
    FEATURE_PREY_HUNT_ICONS_NOTE = "Skull, demon, and boss heads show the hunt difficulty. The trophy badge means the target is still needed for the achievement.",
    FEATURE_PREY_HUNT_ICONS_PREVIEW_LABEL = "Hunt Map",
    FEATURE_PREY_HUNT_ICONS_PREVIEW_NOTE = "Custom prey icons for the hunt table with difficulty and achievement context.",
    FEATURE_PREY_HUNT_ICONS_TOGGLE_TOOLTIP = "Replaces Blizzard prey hunt map pins with custom prey icons.",
    FEATURE_PREY_HUNT_ICONS_RUNTIME_DIFFICULTY = "Difficulty: %s",
    FEATURE_PREY_HUNT_ICONS_RUNTIME_ACHIEVEMENT = "Still needed for the prey achievement.",
    FEATURE_PREY_HUNT_ICONS_RELOAD_HINT = "If Blizzard map pins do not return immediately, use /reload once.",
    FEATURE_MIDNIGHT_RARE_MAP_PINS_TITLE = "Midnight Rare Map Pins",
    FEATURE_MIDNIGHT_RARE_MAP_PINS_DESCRIPTION = "Shows unfinished Midnight rare mobs on the Blizzard world map.",
    FEATURE_MIDNIGHT_RARE_MAP_PINS_NOTE = "Uses Blizzard's rare vignette icon. Pins vanish after the character earns the daily kill credit and return after the daily reset.",
    FEATURE_MIDNIGHT_RARE_MAP_PINS_PREVIEW_LABEL = "World Map",
    FEATURE_MIDNIGHT_RARE_MAP_PINS_PREVIEW_NOTE = "Midnight rare locations with daily completion hiding and Blizzard waypoints.",
    FEATURE_MIDNIGHT_RARE_MAP_PINS_TOGGLE_TOOLTIP = "Shows or hides unfinished Midnight rare mobs on the Blizzard world map.",
    FEATURE_MIDNIGHT_RARE_MAP_PINS_TOOLTIP_HINT = "Left-click to set a Blizzard waypoint.",
    FEATURE_MIDNIGHT_RARE_MAP_PINS_HIDE_DONE_HINT = "Pins disappear after the daily kill credit is earned.",
    FEATURE_PROFESSION_KNOWLEDGE_BADGES_TITLE = "Profession Knowledge Badges",
    FEATURE_PROFESSION_KNOWLEDGE_BADGES_DESCRIPTION = "Adds custom unspent knowledge badges to the Blizzard profession book.",
    FEATURE_PROFESSION_KNOWLEDGE_BADGES_NOTE = "Shows a small custom badge with the available point count next to each primary profession.",
    FEATURE_PROFESSION_KNOWLEDGE_BADGES_PREVIEW_LABEL = "Profession Book",
    FEATURE_PROFESSION_KNOWLEDGE_BADGES_PREVIEW_NOTE = "Custom point badges next to the Blizzard profession icons when unspent knowledge is available.",
    FEATURE_SPEC_SWITCHER_TITLE = "Spec Switcher Bar",
    FEATURE_SPEC_SWITCHER_DESCRIPTION = "Shows a movable bar for specialization and saved talent switches.",
    FEATURE_SPEC_SWITCHER_NOTE = "Left click another spec to switch. Left click the active spec to cycle saved loadouts. Right click opens the saved loadout menu.",
    FEATURE_SPEC_SWITCHER_PREVIEW_LABEL = "Floating Bar",
    FEATURE_SPEC_SWITCHER_PREVIEW_NOTE = "Premium spec icons with a compact talent menu, drag support, and Shift + mouse wheel scaling.",
    FEATURE_SPEC_SWITCHER_ORIENTATION_LABEL = "Layout",
    FEATURE_SPEC_SWITCHER_ORIENTATION_HORIZONTAL = "Horizontal",
    FEATURE_SPEC_SWITCHER_ORIENTATION_VERTICAL = "Vertical",
    FEATURE_SPEC_SWITCHER_ORIENTATION_TOOLTIP = "Switches between a horizontal and vertical bar.",
    FEATURE_SPEC_SWITCHER_FRAME_LABEL = "Frame",
    FEATURE_SPEC_SWITCHER_FRAME_SHOWN = "Frame",
    FEATURE_SPEC_SWITCHER_FRAME_HIDDEN = "Clean",
    FEATURE_SPEC_SWITCHER_FRAME_TOOLTIP = "Shows or hides the bar background.",
    FEATURE_SPEC_SWITCHER_RUNTIME_LABEL = "Loadouts",
    FEATURE_SPEC_SWITCHER_RUNTIME_EMPTY = "No saved loadouts",
    FEATURE_SPEC_SWITCHER_RUNTIME_PENDING = "Loading: %s",
    FEATURE_SPEC_SWITCHER_RUNTIME_TOOLTIP_SWITCH = "Left click: switch specialization",
    FEATURE_SPEC_SWITCHER_RUNTIME_TOOLTIP_CYCLE = "Left click: cycle saved loadouts",
    FEATURE_SPEC_SWITCHER_RUNTIME_TOOLTIP_OPEN = "Left click: open saved loadouts",
    FEATURE_SPEC_SWITCHER_RUNTIME_TOOLTIP_MENU = "Right click: open saved loadouts",
    FEATURE_SPEC_SWITCHER_RUNTIME_TOOLTIP_DRAG = "Left drag: move",
    FEATURE_SPEC_SWITCHER_RUNTIME_TOOLTIP_WHEEL = "Shift + mouse wheel: size",
    FEATURE_SPEC_SWITCHER_RUNTIME_TOOLTIP_COMBAT = "Unavailable in combat",
    FEATURE_SPEC_SWITCHER_MENU_TITLE = "%s loadouts",
    FEATURE_SPEC_SWITCHER_MENU_SUBTITLE = "Choose a saved talent build.",
    FEATURE_SPEC_SWITCHER_MENU_EMPTY = "No saved loadouts for this spec yet.",
    FEATURE_SPEC_SWITCHER_ERROR_SPEC_COMBAT = "Vaultloom: cannot switch specialization in combat.",
    FEATURE_SPEC_SWITCHER_ERROR_LOADOUT_COMBAT = "Vaultloom: cannot load talents in combat.",
    FEATURE_TRAVEL_BAR_TITLE = "Travel Bar",
    FEATURE_TRAVEL_BAR_DESCRIPTION = "Shows a movable hearthstone and travel bar with smart teleport shortcuts.",
    FEATURE_TRAVEL_BAR_NOTE = "Main button uses a random hearthstone. Other buttons use direct travel options like Dalaran, Garrison, class travel, and extra teleports.",
    FEATURE_TRAVEL_BAR_PREVIEW_LABEL = "Travel Dock",
    FEATURE_TRAVEL_BAR_PREVIEW_NOTE = "Compact hearthstone and teleport icons with drag support, menus, and Shift + mouse wheel scaling.",
    FEATURE_TRAVEL_BAR_TOGGLE_TOOLTIP = "Turns the hearthstone and travel bar on or off.",
    FEATURE_TRAVEL_BAR_ORIENTATION_LABEL = "Layout",
    FEATURE_TRAVEL_BAR_ORIENTATION_HORIZONTAL = "Horizontal",
    FEATURE_TRAVEL_BAR_ORIENTATION_VERTICAL = "Vertical",
    FEATURE_TRAVEL_BAR_ORIENTATION_TOOLTIP = "Switches between a horizontal and vertical bar.",
    FEATURE_TRAVEL_BAR_FRAME_LABEL = "Frame",
    FEATURE_TRAVEL_BAR_FRAME_SHOWN = "Frame",
    FEATURE_TRAVEL_BAR_FRAME_HIDDEN = "Clean",
    FEATURE_TRAVEL_BAR_FRAME_TOOLTIP = "Shows or hides the bar background.",
    FEATURE_TRAVEL_BAR_CONFIG_TITLE = "Travel Bar Buttons",
    FEATURE_TRAVEL_BAR_CONFIG_NOTE = "Choose which hearthstones and travel options stay visible on the bar.",
    FEATURE_TRAVEL_BAR_CONFIG_HEARTHS = "Hearthstones",
    FEATURE_TRAVEL_BAR_CONFIG_TRAVEL = "Travel",
    FEATURE_TRAVEL_BAR_CONFIG_BUTTON = "Buttons",
    FEATURE_TRAVEL_BAR_CONFIG_OPEN_TOOLTIP = "Opens the visible button list.",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_DRAG = "Left drag: move",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_WHEEL = "Shift + mouse wheel: size",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_MENU_TRAVEL = "Left click: open travel menu",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_MENU_HEARTH = "Right click: open hearth menu",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_MENU_SHIFT_HEARTH = "Shift + left click: hearth menu",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_BUTTON_MENU = "Right click a button: open menu",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_MAIN_USE = "Left click: use a random hearthstone",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_MAIN_MENU = "Right click: open hearth menu",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_DIRECT_USE = "Left click: use this travel option",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_DIRECT_MENU = "Right click: open travel menu",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_MORE_USE = "Left click: use the selected travel option",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_MORE_MENU = "Right click: open travel menu",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_DESTINATION = "Teleports to: %s",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_HOME = "Teleports to your hearth location: %s",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_HOME_GENERIC = "Teleports to your hearth location.",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_HOUSING = "Teleports to your active house.",
    FEATURE_TRAVEL_BAR_RUNTIME_TOOLTIP_HOUSING_RETURN = "Returns you from a visited house.",
    FEATURE_TRAVEL_BAR_MENU_HEARTHS = "Hearthstones",
    FEATURE_TRAVEL_BAR_MENU_HEARTHS_EDIT = "Visible Hearthstones",
    FEATURE_TRAVEL_BAR_MENU_TRAVEL = "Travel",
    FEATURE_TRAVEL_BAR_MENU_TRAVEL_EDIT = "Visible Travel",
    FEATURE_TRAVEL_BAR_MENU_EMPTY = "Nothing available right now.",
    FEATURE_TRAVEL_BAR_MENU_EDIT = "Edit visible buttons",
    FEATURE_TRAVEL_BAR_MENU_EDIT_DONE = "Done",
    FEATURE_TRAVEL_BAR_MENU_STATE_SHOWN = "On",
    FEATURE_TRAVEL_BAR_MENU_STATE_HIDDEN = "Off",
    FEATURE_TRAVEL_BAR_MENU_EDIT_SHOW = "Left click: show on bar",
    FEATURE_TRAVEL_BAR_MENU_EDIT_HIDE = "Left click: hide from bar",
    FEATURE_TRAVEL_BAR_ERROR_COMBAT = "Vaultloom: travel menus cannot open in combat.",
    FEATURE_TRAVEL_BAR_ERROR_KEEP_ONE_HEARTH = "Vaultloom: keep at least one hearthstone visible.",
    FEATURE_TRAVEL_BAR_ERROR_KEEP_ONE_TRAVEL = "Vaultloom: keep at least one travel option visible.",
    FEATURE_GEAR_ITEM_LEVEL_TITLE = "Gear Item Level",
    FEATURE_GEAR_ITEM_LEVEL_DESCRIPTION = "Shows item level directly on your gear slots.",
    FEATURE_GEAR_ITEM_LEVEL_NOTE = "Only in the character window. The White / Colored button changes the number color.",
    FEATURE_GEAR_ITEM_LEVEL_PREVIEW_LABEL = "Character Overlay",
    FEATURE_GEAR_ITEM_LEVEL_PREVIEW_NOTE = "Compact item level numbers on gear icons with matching item-quality colors.",
    FEATURE_GEAR_ITEM_LEVEL_TOGGLE_TOOLTIP = "Turns the item level numbers on your gear slots on or off.",
    FEATURE_GEAR_ITEM_LEVEL_STYLE_LABEL = "Text Style",
    FEATURE_GEAR_ITEM_LEVEL_STYLE_WHITE = "White",
    FEATURE_GEAR_ITEM_LEVEL_STYLE_COLORED = "Colored",
    FEATURE_GEAR_ITEM_LEVEL_STYLE_TOOLTIP = "Changes the color of the item level numbers.",
    FEATURE_INVENTORY_TRACKER_TITLE = "Vaultloom Inventory",
    FEATURE_INVENTORY_TRACKER_DESCRIPTION = "Shows saved item counts from your characters, bank, reagent bank, equipped gear, and Warband bank in item tooltips.",
    FEATURE_INVENTORY_TRACKER_NOTE = "Scans are event-based: bags after bag updates, bank data only while the bank is open, and tooltips read cached totals.",
    FEATURE_INVENTORY_TRACKER_PREVIEW_LABEL = "Item Tooltip",
    FEATURE_INVENTORY_TRACKER_PREVIEW_NOTE = "Character totals with source details, compact summaries, or total-only mode.",
    FEATURE_INVENTORY_TRACKER_MODE_LABEL = "Tooltip",
    FEATURE_INVENTORY_TRACKER_MODE_DETAIL = "Detail",
    FEATURE_INVENTORY_TRACKER_MODE_COMPACT = "Compact",
    FEATURE_INVENTORY_TRACKER_MODE_TOTAL = "Total",
    FEATURE_INVENTORY_TRACKER_WARBAND_LABEL = "Warband",
    FEATURE_INVENTORY_TRACKER_WARBAND_ON = "Warband On",
    FEATURE_INVENTORY_TRACKER_WARBAND_OFF = "Warband Off",
    FEATURE_INVENTORY_TRACKER_SOURCE_BAGS = "Bags",
    FEATURE_INVENTORY_TRACKER_SOURCE_BANK = "Bank",
    FEATURE_INVENTORY_TRACKER_SOURCE_REAGENTS = "Reagents",
    FEATURE_INVENTORY_TRACKER_SOURCE_EQUIPPED = "Equipped",
    FEATURE_INVENTORY_TRACKER_SOURCE_WARBAND = "Warband Bank",
    FEATURE_INVENTORY_TRACKER_TOOLTIP_HEADER = "Vaultloom Inventory",
    FEATURE_INVENTORY_TRACKER_TOOLTIP_TOTAL_FORMAT = "Total: %d",
    FEATURE_INVENTORY_TRACKER_TOOLTIP_MORE_FORMAT = "+%d more characters",
    FEATURE_INVENTORY_TRACKER_TOOLTIP_COMPACT_TOTAL_FORMAT = "Vaultloom Inventory: %d total",
    FEATURE_AUTO_SELL_JUNK_TITLE = "Auto-Sell Plunder",
    FEATURE_AUTO_SELL_JUNK_DESCRIPTION = "Automatically sells poor-quality junk when a normal merchant can buy items.",
    FEATURE_AUTO_SELL_JUNK_NOTE = "Only sells gray poor-quality items with vendor value. Skips quest items and non-standard merchant windows.",
    FEATURE_AUTO_SELL_JUNK_PREVIEW_LABEL = "Merchant",
    FEATURE_AUTO_SELL_JUNK_PREVIEW_NOTE = "Open a valid merchant and Vaultloom sells gray junk from your bags in a short safe queue.",
    FEATURE_AUTO_SELL_JUNK_SOLD_FORMAT = "Sold %d junk items for %s.",
    FEATURE_SHOPPING_LIST_TITLE = "Shopping List",
    FEATURE_SHOPPING_LIST_DESCRIPTION = "Plans item and recipe material needs with saved inventory totals.",
    FEATURE_SHOPPING_LIST_NOTE = "Open with /vl shop, drag items onto the square, paste item links, or use the profession and auction house buttons.",
    FEATURE_SHOPPING_LIST_PREVIEW_LABEL = "Material Plan",
    FEATURE_SHOPPING_LIST_PREVIEW_NOTE = "Target items on top, reagents below with needed, owned, and missing counts.",
    FEATURE_SHOPPING_LIST_TOGGLE_TOOLTIP = "Enables the Vaultloom shopping list and recipe material planner.",
    FEATURE_SHOPPING_LIST_MINI_TOGGLE_LABEL = "Mini Button",
    FEATURE_SHOPPING_LIST_MINI_TOGGLE_ON = "Button On",
    FEATURE_SHOPPING_LIST_MINI_TOGGLE_OFF = "Button Off",
    FEATURE_SHOPPING_LIST_MINI_TOGGLE_TOOLTIP = "Shows a movable mini button that opens the shopping list.",
    FEATURE_SHOPPING_LIST_RECIPE_TOGGLE_LABEL = "Recipe Button",
    FEATURE_SHOPPING_LIST_RECIPE_TOGGLE_ON = "Recipe On",
    FEATURE_SHOPPING_LIST_RECIPE_TOGGLE_OFF = "Recipe Off",
    FEATURE_SHOPPING_LIST_RECIPE_TOGGLE_TOOLTIP = "Shows a button in the profession window for the selected recipe.",
    FEATURE_SHOPPING_LIST_WINDOW_TITLE = "Vaultloom Shopping List",
    FEATURE_SHOPPING_LIST_WINDOW_SUBTITLE = "Add items and recipes to your shopping list.",
    FEATURE_SHOPPING_LIST_REFRESH = "Refresh",
    FEATURE_SHOPPING_LIST_CLEAR = "Clear",
    FEATURE_SHOPPING_LIST_CLEAR_TOOLTIP = "Shift-click to clear the list.",
    FEATURE_SHOPPING_LIST_CLEAR_HINT = "Vaultloom: Shift-click to clear the shopping list.",
    FEATURE_SHOPPING_LIST_INPUT_PLACEHOLDER = "Paste item link or item ID",
    FEATURE_SHOPPING_LIST_DROP_TARGET = "Drop Item",
    FEATURE_SHOPPING_LIST_DROP_TOOLTIP = "Drag an item here to add it to the shopping list.",
    FEATURE_SHOPPING_LIST_DROP_EMPTY = "Vaultloom: drag an item onto the square.",
    FEATURE_SHOPPING_LIST_ADD = "Add",
    FEATURE_SHOPPING_LIST_ADD_RECIPE = "Recipe",
    FEATURE_SHOPPING_LIST_RECIPE_BUTTON = "Shopping List",
    FEATURE_SHOPPING_LIST_RECIPE_BUTTON_TOOLTIP = "Adds the currently selected profession recipe.",
    FEATURE_SHOPPING_LIST_AUCTION_BUTTON = "Add to List",
    FEATURE_SHOPPING_LIST_AUCTION_BUTTON_TOOLTIP = "Adds the item currently shown in the auction house.",
    FEATURE_SHOPPING_LIST_MINI_BUTTON_TITLE = "Shopping List",
    FEATURE_SHOPPING_LIST_MINI_BUTTON_CLICK = "Left click: open or close",
    FEATURE_SHOPPING_LIST_MINI_BUTTON_DRAG = "Left drag: move",
    FEATURE_SHOPPING_LIST_MINI_BUTTON_WHEEL = "Shift + mouse wheel: size",
    FEATURE_SHOPPING_LIST_EMPTY = "Your shopping list is empty.",
    FEATURE_SHOPPING_LIST_KIND_RECIPE = "Recipe",
    FEATURE_SHOPPING_LIST_KIND_ITEM = "Item",
    FEATURE_SHOPPING_LIST_ITEM_SUMMARY_FORMAT = "Need %d · Have %d · Missing %d",
    FEATURE_SHOPPING_LIST_RECIPE_SUMMARY_FORMAT = "%d reagents missing",
    FEATURE_SHOPPING_LIST_REAGENT_FORMAT = "Need %d · Have %d · Missing %d",
    FEATURE_SHOPPING_LIST_DECREASE = "Less",
    FEATURE_SHOPPING_LIST_DECREASE_TOOLTIP = "Reduce target quantity.",
    FEATURE_SHOPPING_LIST_INCREASE = "More",
    FEATURE_SHOPPING_LIST_INCREASE_TOOLTIP = "Increase target quantity.",
    FEATURE_SHOPPING_LIST_REMOVE = "Remove",
    FEATURE_SHOPPING_LIST_REMOVE_TOOLTIP = "Remove this entry.",
    FEATURE_SHOPPING_LIST_ADDED_FORMAT = "Vaultloom: added %s.",
    FEATURE_SHOPPING_LIST_RECIPE_ADDED_FORMAT = "Vaultloom: added recipe %s.",
    FEATURE_SHOPPING_LIST_ERROR_FEATURE_DISABLED = "Vaultloom: enable Shopping List in Features first.",
    FEATURE_SHOPPING_LIST_ERROR_NO_ITEM = "Vaultloom: no item link or item ID found.",
    FEATURE_SHOPPING_LIST_ERROR_NO_AUCTION_ITEM = "Vaultloom: no auction house item found.",
    FEATURE_SHOPPING_LIST_ERROR_NO_RECIPE = "Vaultloom: no selected profession recipe found.",
    FEATURE_SHOPPING_LIST_ERROR_RECIPE_REAGENTS = "Vaultloom: no reagents found for this recipe.",
    FEATURE_BAG_ITEM_LEVEL_TITLE = "Bag Item Level",
    FEATURE_BAG_ITEM_LEVEL_DESCRIPTION = "Shows item level on equippable gear in bags and bank.",
    FEATURE_BAG_ITEM_LEVEL_NOTE = "Visible on bag and bank item buttons. The White / Colored button changes the number color.",
    FEATURE_BAG_ITEM_LEVEL_PREVIEW_LABEL = "Bag & Bank Overlay",
    FEATURE_BAG_ITEM_LEVEL_PREVIEW_NOTE = "Small item level numbers on visible gear icons in your bags and bank.",
    FEATURE_BAG_ITEM_LEVEL_TOGGLE_TOOLTIP = "Turns the item level numbers on bag and bank gear on or off.",
    FEATURE_BAG_ITEM_LEVEL_STYLE_LABEL = "Text Style",
    FEATURE_BAG_ITEM_LEVEL_STYLE_WHITE = "White",
    FEATURE_BAG_ITEM_LEVEL_STYLE_COLORED = "Colored",
    FEATURE_BAG_ITEM_LEVEL_STYLE_TOOLTIP = "Changes the color of the bag and bank item level numbers.",
    FEATURE_ONE_CLICK_PROCESSING_TITLE = "One-Click Processing",
    FEATURE_ONE_CLICK_PROCESSING_DESCRIPTION = "Adds a modifier-click helper for Milling, Prospecting, Disenchanting, and Lockpicking.",
    FEATURE_ONE_CLICK_PROCESSING_NOTE = "Hold the selected modifier over a valid bag item, then left click the Vaultloom glow.",
    FEATURE_ONE_CLICK_PROCESSING_PREVIEW_LABEL = "Bag Action Glow",
    FEATURE_ONE_CLICK_PROCESSING_PREVIEW_NOTE = "Highlights processable bag items with a small colored action badge.",
    FEATURE_ONE_CLICK_PROCESSING_MODIFIER_LABEL = "Modifier",
    FEATURE_ONE_CLICK_PROCESSING_MODIFIER_ALT = "Alt",
    FEATURE_ONE_CLICK_PROCESSING_MODIFIER_ALT_SHIFT = "Alt + Shift",
    FEATURE_ONE_CLICK_PROCESSING_MODIFIER_ALT_CTRL = "Alt + Ctrl",
    FEATURE_ONE_CLICK_PROCESSING_TOOLTIP_USE = "%s + left click: %s",
    FEATURE_AUTO_ACCEPT_QUESTS_TITLE = "Auto-Accept Quests",
    FEATURE_AUTO_ACCEPT_QUESTS_DESCRIPTION = "Automatically accepts available quests from NPCs and quest detail windows.",
    FEATURE_AUTO_ACCEPT_QUESTS_NOTE = "Accepts quests automatically. Optional turn-in only completes clearly safe quests and skips reward choices, costs, repeatables, and ambiguous NPC turn-ins. Hold Alt to pause temporarily.",
    FEATURE_AUTO_ACCEPT_QUESTS_PREVIEW_LABEL = "Quest NPC",
    FEATURE_AUTO_ACCEPT_QUESTS_PREVIEW_NOTE = "Opens available NPC quests and accepts the quest detail window automatically.",
    FEATURE_AUTO_ACCEPT_QUESTS_TRIVIAL_LABEL = "Low Level",
    FEATURE_AUTO_ACCEPT_QUESTS_TRIVIAL_INCLUDE = "All",
    FEATURE_AUTO_ACCEPT_QUESTS_TRIVIAL_SKIP = "Skip Gray",
    FEATURE_AUTO_ACCEPT_QUESTS_TURNIN_LABEL = "Turn-In",
    FEATURE_AUTO_ACCEPT_QUESTS_TURNIN_OFF = "Accept Only",
    FEATURE_AUTO_ACCEPT_QUESTS_TURNIN_ON = "Turn-In On",
    FEATURE_GEAR_SOCKET_ENCHANT_TITLE = "Gear Sockets & Enchants",
    FEATURE_GEAR_SOCKET_ENCHANT_DESCRIPTION = "Shows enchant status and socket icons beside your gear slots.",
    FEATURE_GEAR_SOCKET_ENCHANT_NOTE = "Only in the character window.",
    FEATURE_GEAR_SOCKET_ENCHANT_PREVIEW_LABEL = "Gear Side Markers",
    FEATURE_GEAR_SOCKET_ENCHANT_PREVIEW_NOTE = "Top: enchant check or x. Under it: socket icons and empty sockets.",
    FEATURE_GEAR_SOCKET_ENCHANT_TOGGLE_TOOLTIP = "Turns the enchant and socket markers on your gear slots on or off.",
    FEATURE_GEAR_SOCKET_ENCHANT_EMPTY_SOCKET = "Empty socket",
    FEATURE_GEAR_SOCKET_ENCHANT_EMPTY_SOCKET_NOTE = "No gem inserted.",
    FEATURE_GEAR_SOCKET_ENCHANT_MISSING = "Missing enchant",
    FEATURE_GEAR_SOCKET_ENCHANT_MISSING_NOTE = "This item can be enchanted.",
    FEATURE_VAULTLOOM_ARMORY_TITLE = "Vaultloom Armory",
    FEATURE_VAULTLOOM_ARMORY_DESCRIPTION = "Adds a Vaultloom button to the Blizzard character frame and opens an extended character sheet with gear cards, item level, sockets, enchants, and a compact stat overview.",
    FEATURE_VAULTLOOM_ARMORY_NOTE = "Opens on demand and refreshes from equipment/stat events only.",
    FEATURE_VAULTLOOM_ARMORY_PREVIEW_LABEL = "Extended Character Sheet",
    FEATURE_VAULTLOOM_ARMORY_PREVIEW_NOTE = "Keeps the 3D model central, rebuilds gear and stat panels in Vaultloom style, and avoids permanent scanning.",
    FEATURE_VAULTLOOM_ARMORY_TOGGLE_TOOLTIP = "Adds a Vaultloom button to the Blizzard character frame.",
    FEATURE_VAULTLOOM_ARMORY_BUTTON = "Vaultloom",
    FEATURE_VAULTLOOM_ARMORY_BUTTON_TOOLTIP = "Open the extended Vaultloom character sheet.",
    FEATURE_VAULTLOOM_ARMORY_WINDOW_TITLE = "Vaultloom Armory",
    FEATURE_VAULTLOOM_ARMORY_WINDOW_SUBTITLE = "Extended character sheet, gear checks, and combat stats.",
    FEATURE_VAULTLOOM_ARMORY_REFRESH = "Refresh",
    FEATURE_VAULTLOOM_ARMORY_GEAR_LEFT = "Gear",
    FEATURE_VAULTLOOM_ARMORY_GEAR_RIGHT = "Gear",
    FEATURE_VAULTLOOM_ARMORY_MODEL_TITLE = "Character",
    FEATURE_VAULTLOOM_ARMORY_STATS_TITLE = "Stats",
    FEATURE_VAULTLOOM_ARMORY_EMPTY_SLOT = "Empty",
    FEATURE_VAULTLOOM_ARMORY_NO_ITEM = "No item equipped",
    FEATURE_VAULTLOOM_ARMORY_EMPTY_SOCKET = "Empty socket",
    FEATURE_VAULTLOOM_ARMORY_ENCHANT_OK = "Enchant OK",
    FEATURE_VAULTLOOM_ARMORY_ENCHANT_MISSING = "Missing enchant",
    FEATURE_VAULTLOOM_ARMORY_ILVL_FORMAT = "iLvl %d",
    FEATURE_VAULTLOOM_ARMORY_SOCKET_FORMAT = "Sockets %d/%d",
    FEATURE_VAULTLOOM_ARMORY_READY = "Ready",
    FEATURE_VAULTLOOM_ARMORY_STAT_EQUIPPED = "Equipped",
    FEATURE_VAULTLOOM_ARMORY_STAT_AVG_ILVL = "Average ilvl",
    FEATURE_VAULTLOOM_ARMORY_STAT_MISSING_ENCHANTS = "Missing enchants",
    FEATURE_VAULTLOOM_ARMORY_STAT_EMPTY_SOCKETS = "Empty sockets",
    FEATURE_VAULTLOOM_ARMORY_STAT_STRENGTH = "Strength",
    FEATURE_VAULTLOOM_ARMORY_STAT_AGILITY = "Agility",
    FEATURE_VAULTLOOM_ARMORY_STAT_INTELLECT = "Intellect",
    FEATURE_VAULTLOOM_ARMORY_STAT_STAMINA = "Stamina",
    FEATURE_VAULTLOOM_ARMORY_STAT_REFRESH = "Refresh",
    FEATURE_VAULTLOOM_ARMORY_MODEL_UNAVAILABLE = "3D model unavailable",
    FEATURE_VAULTLOOM_ARMORY_CHECK_PENDING = "Gear check pending",
    FEATURE_VAULTLOOM_ARMORY_CHECK_FORMAT = "Gear check: %d/%d equipped · Missing enchants: %d · Empty sockets: %d · Upgradeable: %d · Empty slots: %d",
    FEATURE_VAULTLOOM_ARMORY_FILTER_ALL = "All",
    FEATURE_VAULTLOOM_ARMORY_FILTER_ISSUES = "Optimize",
    FEATURE_VAULTLOOM_ARMORY_FILTER_EMPTY = "No gear issues",
    FEATURE_VAULTLOOM_ARMORY_VIEW_LABEL = "View:",
    FEATURE_BLIZZARD_WINDOW_MOVER_TITLE = "Blizzard Window Mover",
    FEATURE_BLIZZARD_WINDOW_MOVER_DESCRIPTION = "Drag supported Blizzard windows with left mouse and scale them with Ctrl + mouse wheel.",
    FEATURE_BLIZZARD_WINDOW_MOVER_NOTE = "Uses a safe Blizzard window list plus UI panel registration, no background scanning, and ignores protected frames during combat.",
    FEATURE_BLIZZARD_WINDOW_MOVER_PREVIEW_LABEL = "Window Control",
    FEATURE_BLIZZARD_WINDOW_MOVER_PREVIEW_NOTE = "Drag to move. Ctrl + mouse wheel to scale. Shift/Ctrl + right click resets position or scale.",
    FEATURE_BLIZZARD_WINDOW_MOVER_TOGGLE_TOOLTIP = "Allows supported Blizzard windows to be moved and scaled.",
    FEATURE_BLIZZARD_WINDOW_MOVER_SAVE_LABEL = "Save",
    FEATURE_BLIZZARD_WINDOW_MOVER_SAVE_SESSION = "Session",
    FEATURE_BLIZZARD_WINDOW_MOVER_SAVE_PERMANENT = "Permanent",
    FEATURE_BLIZZARD_WINDOW_MOVER_SAVE_TOOLTIP = "Choose whether moved windows reset on reload or stay saved.",
    FEATURE_BLIZZARD_WINDOW_MOVER_SCALE_LABEL = "Scale",
    FEATURE_BLIZZARD_WINDOW_MOVER_SCALE_ON = "Scale On",
    FEATURE_BLIZZARD_WINDOW_MOVER_SCALE_OFF = "Scale Off",
    FEATURE_BLIZZARD_WINDOW_MOVER_SCALE_TOOLTIP = "Turns Ctrl + mouse wheel scaling for supported windows on or off.",
    FEATURE_BLIZZARD_WINDOW_MOVER_RESET_POSITION = "Vaultloom: window position reset.",
    FEATURE_BLIZZARD_WINDOW_MOVER_RESET_SCALE = "Vaultloom: window scale reset.",
    FEATURE_BLIZZARD_WINDOW_MOVER_COMPAT = "Vaultloom: BlizzMove is loaded, so Vaultloom Window Mover stays paused to avoid double-moving frames.",
    FEATURE_STAT_FOCUS_TITLE = "Stat Focus",
    FEATURE_STAT_FOCUS_DESCRIPTION = "Shows your current class and specialization stat priority in item tooltips.\nColors: orange = best/equal best, purple = second, blue = third, green = fourth.",
    FEATURE_STAT_FOCUS_NOTE = "Automatic presets follow your current class and specialization.",
    FEATURE_STAT_FOCUS_PREVIEW_LABEL = "Gear Tooltip",
    FEATURE_STAT_FOCUS_PREVIEW_NOTE = "Choose between a summary block, colored stat lines, both, or a compact tooltip line.",
    FEATURE_STAT_FOCUS_TOGGLE_TOOLTIP = "Turns Stat Focus tooltip hints on or off.",
    FEATURE_STAT_FOCUS_STYLE_LABEL = "Style",
    FEATURE_STAT_FOCUS_STYLE_BLOCK = "Block",
    FEATURE_STAT_FOCUS_STYLE_DOTS = "Dots",
    FEATURE_STAT_FOCUS_STYLE_LINES = "Lines",
    FEATURE_STAT_FOCUS_STYLE_FULL = "Both",
    FEATURE_STAT_FOCUS_STYLE_COMPACT = "Compact",
    FEATURE_STAT_FOCUS_STYLE_TOOLTIP = "Changes how Stat Focus appears in item tooltips.",
    FEATURE_STAT_FOCUS_MODE_LABEL = "Order",
    FEATURE_STAT_FOCUS_MODE_PRESET = "Preset",
    FEATURE_STAT_FOCUS_MODE_CUSTOM = "Custom",
    FEATURE_STAT_FOCUS_MODE_TOOLTIP = "Switches the current character and specialization between preset and custom order.",
    FEATURE_STAT_FOCUS_TOOLTIP_HEADER = "Stat Focus",
    FEATURE_STAT_FOCUS_NO_SPEC = "No preset for the current specialization.",
    FEATURE_STAT_FOCUS_SLASH_HELP = "Set custom order: /vl stats haste mastery crit vers. Use /vl stats preset to return to presets.",
    FEATURE_STAT_FOCUS_PRESET_ENABLED = "Stat Focus uses the automatic preset for this character and specialization.",
    FEATURE_STAT_FOCUS_CUSTOM_ENABLED = "Stat Focus uses your custom order for this character and specialization.",
    FEATURE_STAT_FOCUS_CUSTOM_SAVED = "Custom Stat Focus order saved for this character and specialization.",
    FEATURE_STAT_FOCUS_CUSTOM_CLEARED = "Custom Stat Focus order cleared for this character and specialization.",
    FEATURE_STAT_FOCUS_CUSTOM_FAILED = "Could not save a custom Stat Focus order for the current specialization.",
    FEATURES_TOOLTIP_CURRENT = "Current: %s",
    MYTHIC_PLUS_TITLE = "Mythic+ Season 1",
    MYTHIC_PLUS_CONTENT_SUBTITLE = "Current keystone, affixes, best dungeon runs, recent runs, and reward goals.",
    MYTHIC_PLUS_LIVE_ONLY = "Mythic+ data is only available live for the currently logged in character. Log onto this character to inspect its keys, affixes, and season progress.",
    MYTHIC_PLUS_NO_SNAPSHOT = "No saved Mythic+ snapshot yet for this character. Log onto the character once to capture it.",
    MYTHIC_PLUS_UNAVAILABLE = "Mythic+ data is not available yet. Open the Mythic+ interface or wait for Blizzard's seasonal data to load.",
    MYTHIC_PLUS_SUMMARY_SCORE = "Season Score",
    MYTHIC_PLUS_SUMMARY_KEY = "Current Key",
    MYTHIC_PLUS_SUMMARY_VAULT = "Great Vault",
    MYTHIC_PLUS_SUMMARY_PORTALS = "Portals",
    MYTHIC_PLUS_SECTION_DUNGEONS = "Season Dungeons",
    MYTHIC_PLUS_SECTION_DUNGEONS_SUBTITLE = "Best season and weekly runs for the active pool.",
    MYTHIC_PLUS_SEASON_DUNGEONS = "Season Dungeons",
    MYTHIC_PLUS_WARBAND_KEYS = "Warband Keys",
    MYTHIC_PLUS_WARBAND_KEYS_TITLE = "Warband Keys",
    MYTHIC_PLUS_WARBAND_KEYS_SUBTITLE = "Saved keystones for your visible characters.",
    MYTHIC_PLUS_WARBAND_KEYS_TOOLTIP = "Shows saved keystones for your Warband. Log into each character once to capture its key.",
    MYTHIC_PLUS_WARBAND_KEYS_EMPTY = "No saved keys yet. Log into each character once to capture its current keystone.",
    MYTHIC_PLUS_WARBAND_KEYS_NO_SNAPSHOT = "No saved snapshot",
    MYTHIC_PLUS_WARBAND_KEYS_CAPTURED = "Captured %s",
    MYTHIC_PLUS_SECTION_AFFIXES = "Current Affixes",
    MYTHIC_PLUS_SECTION_AFFIXES_SUBTITLE = "This week's modifiers from the live Mythic+ API.",
    MYTHIC_PLUS_SECTION_REWARDS = "Goals",
    MYTHIC_PLUS_SECTION_REWARDS_SUBTITLE = "Season milestones and rewards.",
    MYTHIC_PLUS_SECTION_RECENT = "Recent Runs",
    MYTHIC_PLUS_SECTION_RECENT_SUBTITLE = "Latest recorded runs from this season.",
    MYTHIC_PLUS_SIDEBAR_SUBTITLE = "Your current keystone and this week's affixes at a glance.",
    MYTHIC_PLUS_CENTER_SUBTITLE = "Season 1 dungeon pool with your best season and weekly runs.",
    MYTHIC_PLUS_UTILITY_TITLE = "Runs & goals",
    MYTHIC_PLUS_UTILITY_SUBTITLE = "Latest pushes and seasonal milestones for the selected character.",
    MYTHIC_PLUS_KEY_NONE = "No keystone",
    MYTHIC_PLUS_VAULT_NONE = "No run yet",
    MYTHIC_PLUS_PORTALS_META = "Timed +10 or higher",
    MYTHIC_PLUS_TIMED_META = "Timed dungeons",
    MYTHIC_PLUS_AFFIX_ACTIVE = "Active",
    MYTHIC_PLUS_DUNGEON_BEST_NONE = "No season best yet",
    MYTHIC_PLUS_DUNGEON_WEEKLY_NONE = "No weekly run yet",
    MYTHIC_PLUS_DUNGEON_SPLIT_NONE = "No Fortified or Tyrannical score yet",
    MYTHIC_PLUS_RECENT_EMPTY = "No recent Mythic+ runs recorded for this season yet.",
    MYTHIC_PLUS_DUNGEONS_EMPTY = "No Season 1 dungeons found yet.",
    MYTHIC_PLUS_TIMED = "Timed",
    MYTHIC_PLUS_OVERTIME = "Over time",
    MYTHIC_PLUS_THIS_WEEK = "This week",
    MYTHIC_PLUS_BEST = "Best",
    MYTHIC_PLUS_REWARD_EXPLORER = "Explorer",
    MYTHIC_PLUS_REWARD_CONQUEROR = "Conqueror",
    MYTHIC_PLUS_REWARD_MASTER = "Master",
    MYTHIC_PLUS_REWARD_HERO = "Hero",
    MYTHIC_PLUS_REWARD_LEGEND = "Legend",
    MYTHIC_PLUS_REWARD_UMBRAL_HERO = "Umbral Hero",
    LABEL_PROGRESS = "Progress",
    LABEL_RESET = "Reset",
    DAILY_RESET = "Daily reset",
    MINIMAP_TOOLTIP_OPEN = "Left click: open or close UI",
    MINIMAP_TOOLTIP_DRAG = "Right drag: move button",
    MINIMAP_TOOLTIP_OPEN_SHORT = "Click: open",
    BROKER_TOOLTIP_MINIMAP_NOTE = "Tip: hide the minimap button in Vaultloom options if you only want the broker launcher.",
    PVE_PREY_TITLE = "Prey",
    PVE_PREY_SUBTITLE = "Defeated prey targets by difficulty, plus the linked weekly quest.",
    PVE_PREY_SUBTITLE_ACTIVE = "Defeated prey targets by difficulty. Active prey: %s.",
    PVE_PREY_WEEKLY_ACCEPT_HINT = "This quest can be accepted from Astalor in Silvermoon.",
    PVE_PREY_WEEKLY_ACTIVE_HINT = "This quest is active. Check the quest log for the current objective.",
    PVE_PREY_WEEKLY_TURNIN_HINT = "Turn this quest in to Astalor in Silvermoon.",
    PVE_PREY_WEEKLY_DONE_HINT = "Already completed this week.",
    PVE_DAILY_SUBTITLE = "Daily objectives for the selected character.",
    PVE_DAILY_CONTENT_SUBTITLE = "Daily activities and reset status.",
    PVE_DAILY_ROW_BOUNTIFUL = "Bountiful Delves",
    PVE_DAILY_BOUNTIFUL_HINT = "Tracks completed bountiful delves for today.",
    PVE_DAILY_BOUNTIFUL_PROGRESS = "Completed today: %d/%d",
    PVE_DAILY_BOUNTIFUL_ACTIVE = "Currently active: %d",
    PVE_DELVES_SUBTITLE = "Delve systems and weekly caps for the selected character.",
    PVE_DELVES_ROW_TROVEHUNTER = "Treasure Seeker's Bounty",
    PVE_DELVES_ROW_BONUS_RENOWN = "Bonus Renown",
    PVE_DELVES_ROW_GILDED_STASH = "Gilded Stash",
    PVE_DELVES_ROW_WEEKLY_DROP = "Weekly Drop",
    PVE_DELVES_READY = "Ready",
    PVE_DELVES_NOT_EARNED = "Not earned",
    PVE_DELVES_INVENTORY_COUNT = "Currently in bags: %d",
    PVE_DELVES_TROVEHUNTER_DONE_HINT = "This week's treasure map has already been used.",
    PVE_DELVES_TROVEHUNTER_OPEN_HINT = "You still have this week's treasure map in your bags.",
    PVE_DELVES_TROVEHUNTER_MISSING_HINT = "You have not earned this week's treasure map yet.",
    PVE_DELVES_TROVEHUNTER_LOCKED_HINT = "Unlocks at Renown %d with the Delvers.",
    PVE_DELVES_BONUS_RENOWN_HINT = "Earn these four one-time weekly bonus renown rewards from bountiful delve chests.",
    PVE_DELVES_GILDED_STASH_HINT = "Tracks how many gilded delve rewards from tier 11 are still available this week.",
    PVE_DELVES_WEEKLY_DROP_HINT = "Drops from the final boss in a delve and can be turned in once per week for your warband.",
    PVE_DELVES_GILDED_STASH_STALE_HINT = "The game may still be showing older widget data until it refreshes.",
    PVE_DELVES_GILDED_STASH_NO_DATA = "No live gilded stash data is currently available.",
    DAILY_WANTED_HARANDAR = "Wanted - Harandar",
    DAILY_WANTED_HARANDAR_ACCEPT_HINT = "This quest can be picked up from %s in %s.",
    DAILY_WANTED_HARANDAR_AVAILABLE_HINT = "Currently available: %s",
    DAILY_WANTED_HARANDAR_LIMITED_HINT = "This quest is not available every day.",
    DAILY_WANTED_HARANDAR_PROGRESS_HINT = "This quest is active. Open your quest log to see the current objective.",
    DAILY_WANTED_HARANDAR_PROGRESS_COUNT = "Completed today: %d/%d",
    DAILY_WANTED_HARANDAR_ACCEPTED_HINT = "Accepted: %s",
    DAILY_WANTED_HARANDAR_TURNIN_HINT = "This quest is done and can now be turned in.",
    DAILY_WANTED_HARANDAR_DONE_HINT = "Completed for today.",
    DAILY_WANTED_HARANDAR_UNAVAILABLE_HINT = "This daily is not available today.",
    DAILY_DECOR_DUEL = "Decor Duel",
    DAILY_DECOR_DUEL_ACCEPT_HINT = "Pick up this daily quest if you have not completed it today.",
    DAILY_DECOR_DUEL_AVAILABLE_HINT = "This daily is currently available.",
    DAILY_DECOR_DUEL_PROGRESS_HINT = "This quest is active. Open your quest log to see the current objective.",
    DAILY_DECOR_DUEL_TURNIN_HINT = "This quest is done and can now be turned in.",
    DAILY_DECOR_DUEL_DONE_HINT = "Completed for today.",
    DAILY_DECOR_DUEL_UNAVAILABLE_HINT = "This daily is not available today.",
    DAILY_STATUS_ACCEPT = "Accept",
    DAILY_STATUS_ACCEPTED = "Accepted",
    DAILY_STATUS_DONE = "Done",
    DAILY_STATUS_UNAVAILABLE = "Unavailable",
    PVE_EVENTS_SUBTITLE = "Midnight events for the selected character.",
    PVE_EVENTS_CONTENT_SUBTITLE = "Events and weekly quests.",
    PVE_WEEKLY_SPARK_LABEL = "Unity Against the Void (Lady Liadrin)",
    PVE_WEEKLY_SPARK_ACCEPT_HINT = "This quest can be accepted from Lady Liadrin in Silvermoon.",
    PVE_WEEKLY_SPARK_ACTIVE_HINT = "This quest is active. Check the quest log for the current objective.",
    PVE_WEEKLY_SPARK_TURNIN_HINT = "This quest is done and can now be turned in.",
    PVE_WEEKLY_SPARK_DONE_HINT = "Already completed this week.",
    PVE_WEEKLY_ROW_OMNIUM_FOLIO = "Omnium Folio",
    PVE_WEEKLY_OMNIUM_FOLIO_ACCEPT_HINT = "Complete the Sunstrider Omnium intro questline, then accept the current Seeking Knowledge weekly.",
    PVE_WEEKLY_OMNIUM_FOLIO_ACTIVE_HINT = "This Seeking Knowledge quest is active. Check the quest log for the current objective.",
    PVE_WEEKLY_OMNIUM_FOLIO_DONE_HINT = "Already completed this week.",
    MIDNIGHT_VARIANT_ARCANTINA = "Arcantina",
    MIDNIGHT_VARIANT_STORMARION = "Stormarion Assault",
    MIDNIGHT_VARIANT_PREY = "Prey",
    MIDNIGHT_VARIANT_BATTLEGROUNDS = "Battlegrounds",
    PVE_EVENTS_ROW_COURT_FAVOR = "Favor of the Court",
    PVE_EVENTS_ROW_RUNESTONES = "Fortify the Runestones",
    PVE_EVENTS_ROW_SALTHERILS_FAVOR = "Saltheril's Favor",
    PVE_EVENTS_ROW_ABUNDANT_OFFERINGS = "Abundant Offerings",
    PVE_EVENTS_ROW_LOST_LEGENDS = "Lost Legends",
    PVE_EVENTS_ROW_STORMARION_ASSAULT = "Stormarion Assault",
    PVE_EVENTS_ROW_VOID_ASSAULTS = "Void Assaults",
    PVE_EVENTS_COURT_ACCEPT_HINT = "This quest can be accepted from Lord Saltheril in the Court of Silvermoon.",
    PVE_EVENTS_RUNESTONES_ACCEPT_HINT = "This quest can be accepted in the Court of Silvermoon.",
    PVE_EVENTS_ABUNDANT_OFFERINGS_ACCEPT_HINT = "This weekly becomes available during the active Abundance event.",
    PVE_EVENTS_LOST_LEGENDS_ACCEPT_HINT = "This weekly becomes available in Harandar during the active Midnight event.",
    PVE_EVENTS_LOST_LEGENDS_CHOOSE = "Choose",
    PVE_EVENTS_LOST_LEGENDS_RELIC_HINT = "Turn this quest in and choose a relic to start this week's Lost Legends quest.",
    PVE_EVENTS_STORMARION_ASSAULT_ACCEPT_HINT = "This weekly becomes available in the Singularity during the active Midnight event.",
    PVE_EVENTS_VOID_ASSAULTS_ACCEPT_HINT = "This weekly becomes available during active Void Assaults.",
    PVE_EVENTS_ACTIVE_HINT = "This quest is active. Check the quest log for the current objective.",
    PVE_EVENTS_DONE_HINT = "Already completed this week.",
    PVE_EVENTS_AVAILABLE_HINT = "Currently active: %s",
    PVE_EVENTS_WEEKLY_ACTIVE_HINT = "This Midnight event is active this week.",
    PVE_EVENTS_SALTHERILS_FAVOR_HINT = "Tracks how many Saltheril's Favor items are currently in your bags. Use them to unlock additional Court of Silvermoon tasks. They expire at the weekly reset.",
    PVE_EVENTS_SALTHERILS_FAVOR_COUNT = "Currently owned: %d",
    PVE_WEEKLY_ROW_HOUSING = "Housing Weekly",
    PVE_WEEKLY_HOUSING_ACCEPT_HINT = "This quest can be accepted from Vaeli in Silvermoon.",
    PVE_WEEKLY_HOUSING_ACTIVE_HINT = "This quest is active. Check the quest log for the current objective.",
    PVE_WEEKLY_HOUSING_DONE_HINT = "Already completed this week.",
    PVE_WEEKLY_ROW_DUNGEON = "Weekly Dungeon",
    PVE_WEEKLY_DUNGEON_ACCEPT_HINT = "This quest can be accepted from Halduron in Silvermoon.",
    PVE_WEEKLY_DUNGEON_ACTIVE_HINT = "This quest is active. Check the quest log for the current objective.",
    PVE_WEEKLY_DUNGEON_DONE_HINT = "Already completed this week.",
    PVE_WEEKLY_ROW_AETHAS = "Rotating (Archmage Aethas)",
    PVE_WEEKLY_AETHAS_ACCEPT_HINT = "This quest can be accepted from Archmage Aethas in Silvermoon.",
    PVE_WEEKLY_AETHAS_ACTIVE_HINT = "This quest is active. Check the quest log for the current objective.",
    PVE_WEEKLY_AETHAS_DONE_HINT = "Already completed this week.",
    PVE_WEEKLY_TITLE = "Weekly PvE Goals",
    PVE_WEEKLY_SUBTITLE = "Core weekly quests and event objectives for the selected character.",
    PVE_WEEKLY_PROGRESS = "Progress",
    PVE_WEEKLY_OPEN = "Open",
    PVP_WEEKLY_TITLE = "Weekly PvP Goals",
    PVP_WEEKLY_SUBTITLE = "Weekly PvP quests from Zerella in Silvermoon for the selected character.",
    PVP_WEEKLY_PROGRESS = "Progress",
    PVP_WEEKLY_GIVER_SHORT = "Zerella / Silvermoon",
    PVP_WEEKLY_ROTATING = "Rotating Weekly",
    PVP_WEEKLY_WARMODE = "War Mode",
    PVP_WEEKLY_BATTLEGROUND = "Battleground / Arena",
    PVP_WEEKLY_BRAWL = "PvP Brawl",
    PVP_WEEKLY_ROTATING_SOLO = "Veiled Solo",
    PVP_WEEKLY_ROTATING_WAR = "Veiled War",
    PVP_WEEKLY_ROTATING_TEAMWORK = "Veiled Cooperation",
    PVP_WEEKLY_ROTATING_ARENAS = "Veiled Arenas",
    PVP_WEEKLY_BATTLEGROUND_QUEST = "Veiled Battle",
    PVP_WEEKLY_BATTLEGROUND_SKIRMISH_QUEST = "Veiled Skirmish",
    PVP_WEEKLY_BRAWL_QUEST = "Something Different",
    PVE_WEEKLY_AETHAS_ARENA_CALLS = "The Arena Calls",
    PVP_WEEKLY_GIVER_TOOLTIP = "This quest can be accepted from Zerella in Silvermoon.",
    PVP_WEEKLY_ACTIVE_TOOLTIP = "This quest is active. Check the quest log for the current objective.",
    PVP_WEEKLY_TURNIN_TOOLTIP = "This quest is done and can now be turned in.",
    PVP_WEEKLY_DONE_TOOLTIP = "Already completed this week.",
    PVE_WORLD_SUBTITLE = "World weeklies including boss and currency caps.",
    PVE_WORLD_CONTENT_SUBTITLE = "World progress and weekly caps.",
    PVE_WORLD_ROW_WORLD_BOSS = "World Boss",
    PVE_WORLD_ROW_SPECIAL_ASSIGNMENTS = "Special Assignments",
    PVE_WORLD_ROW_KEY_SHARDS = "Coffer Key Shards",
    PVE_WORLD_ROW_DUNDUN_SHARDS = "Shard of Dundun",
    PVE_WORLD_BOSS_HINT = "Granted automatically when you engage the boss. Fly there and kill it.",
    PVE_WORLD_BOSS_DONE_HINT = "Already completed this week.",
    PVE_WORLD_SPECIAL_ASSIGNMENTS_HINT = "Complete both Special Assignments available this week.",
    PVE_WORLD_SPECIAL_ASSIGNMENTS_DONE_HINT = "Both Special Assignments are completed for this week.",
    PVE_WORLD_SPECIAL_ASSIGNMENTS_AVAILABLE = "Currently available: %s",
    PVE_WORLD_KEY_SHARDS_HINT = "Tracks the weekly cap for Coffer Key Shards.",
    PVE_WORLD_DUNDUN_HINT = "Tracks the weekly cap for Shards of Dundun.",
    PVE_WORLD_CURRENCY_OWNED = "Currently owned: %d",
    PVE_WEEKLY_PREY_LABEL = "Prey",
    PVE_PREY_WEEKLY_NAME = "A Nightmarish Task",
    PVE_PREY_PREFERRED_NAME = "Preferred Prey",
    WEEKLY_PREY_TOTAL = "Defeated Prey Targets",
    WEEKLY_PREY_NORMAL = "Normal",
    WEEKLY_PREY_HARD = "Hard",
    WEEKLY_PREY_NIGHTMARE = "Nightmare",
    STATUS_DONE = "Done",
    STATUS_OPEN = "Accepted",
    STATUS_MISSING = "Accept",
    STATUS_LOCKED = "Locked",
    STATUS_TURNIN = "Turn in",
    TIME_NEVER = "never",
    TIME_JUST_NOW = "just now",
    TIME_AGO = "%s ago",
    TIME_DAY_HOUR = "%d d %d h",
    TIME_HOUR_MIN = "%d h %d m",
    TIME_MIN = "%d m",
}

enUS.RAIDS = "Raids"
enUS.DUNGEONS = "Dungeons"
enUS.ALL = "All"
enUS.CHARACTER = "Character"
enUS.RAID_JOURNAL_LOOT = "Loot"
enUS.RAID_JOURNAL_DETAILS = "Details"
enUS.RAID_JOURNAL_DETAILS_SUBTITLE = "Encounter notes and weekly context."
enUS.RAID_JOURNAL_STATUS_LABEL = "Overview"
enUS.RAID_JOURNAL_PROGRESS = "Progress"
enUS.RAID_JOURNAL_PRIMARY_LABEL = "Raid"
enUS.RAID_JOURNAL_BOSSES = "Bosses"
enUS.RAID_JOURNAL_BOSSLIST_SUBTITLE = "Choose a boss."
enUS.RAID_JOURNAL_MIDNIGHT_SUBTITLE = "Choose a Midnight raid."
enUS.MAIN_TAB_RAIDS_MIDNIGHT = "Midnight"
enUS.MAIN_TAB_DUNGEONS_MIDNIGHT = "Midnight"
enUS.MAIN_TAB_DUNGEONS_SEASON1 = "Season 1"
enUS.DUNGEON_JOURNAL_PRIMARY_LABEL = "Dungeon"
enUS.DUNGEON_JOURNAL_MIDNIGHT_SUBTITLE = "Choose a Midnight dungeon."
enUS.DUNGEON_JOURNAL_FALLBACK_DESCRIPTION = "Midnight dungeon entries will appear here once Encounter Journal data is available."
enUS.DUNGEON_JOURNAL_SEASON1_SUBTITLE = "Choose a Season 1 dungeon."
enUS.DUNGEON_JOURNAL_SEASON1_FALLBACK_DESCRIPTION = "Season 1 dungeons will appear here once Mythic+ and Encounter Journal data are available."
enUS.DUNGEON_DIFFICULTY_MYTHIC0 = "Mythic 0"
enUS.DUNGEON_JOURNAL_REPEATABLE = "Repeatable"
enUS.DUNGEON_JOURNAL_REPEATABLE_SUBTITLE = "This difficulty is repeatable and has no lockout counter."
enUS.DUNGEON_JOURNAL_BOSS_PROGRESS = "Today's progress: %s"
enUS.DUNGEON_JOURNAL_STATUS_KILLED = "Completed today"
enUS.DUNGEON_JOURNAL_STATUS_OPEN = "Open today"
enUS.RAID_JOURNAL_SOURCE_EJ = "Encounter Journal"
enUS.RAID_DIFFICULTY_LFR = "LFR"
enUS.RAID_DIFFICULTY_NORMAL = "Normal"
enUS.RAID_DIFFICULTY_HEROIC = "Heroic"
enUS.RAID_DIFFICULTY_MYTHIC = "Mythic"
enUS.RAID_JOURNAL_ALL_CLASSES = "All classes"
enUS.RAID_JOURNAL_CLASS_FILTER_PLAYER = "Class: %s"
enUS.RAID_JOURNAL_CLASS_FILTER_ALL = "Class: All classes"
enUS.RAID_JOURNAL_CLASS_FILTER_MENU_TITLE = "Class filter"
enUS.RAID_JOURNAL_CLASS_FILTER_MENU_PLAYER = "Current class: %s"
enUS.RAID_JOURNAL_CLASS_FILTER_MENU_ALL = "All classes"
enUS.RAID_JOURNAL_DIFFICULTY_MENU_TITLE = "Difficulty"
enUS.RAID_JOURNAL_LOOT_INFO_PLAYER = "Showing loot for the selected difficulty and the current class filter."
enUS.RAID_JOURNAL_LOOT_INFO_ALL = "Showing loot for the selected difficulty across all classes."
enUS.RAID_JOURNAL_DIFFICULTY_FILTER = "Difficulty: %s"
enUS.RAID_JOURNAL_CLASS_FILTER = "Class: %s"
enUS.RAID_JOURNAL_LOOT_PANEL_SUBTITLE = "%s loot for %s"
enUS.RAID_JOURNAL_LOOT_CONTEXT = "%d items for %s"
enUS.RAID_JOURNAL_LOOT_PENDING = "Loot hookup pending"
enUS.RAID_JOURNAL_LOOT_PENDING_SLOT = "Next step"
enUS.RAID_JOURNAL_LOOT_PENDING_RESTRICTION = "All classes"
enUS.RAID_JOURNAL_BOSS_PROGRESS = "Weekly progress: %s"
enUS.RAID_JOURNAL_STATUS_KILLED = "Killed this week"
enUS.RAID_JOURNAL_STATUS_OPEN = "Still open this week"
enUS.RAID_JOURNAL_STATUS_ALT_PENDING = "Alt snapshots will come in a later pass"
enUS.RAID_JOURNAL_STATUS_PENDING = "Live sync pending"
enUS.RAID_JOURNAL_STATUS_FORMAT = "%s  |  %s"
enUS.RAID_JOURNAL_HEADER_SUBTITLE = "%s  |  %s"
enUS.RAID_JOURNAL_HEADER_CONTEXT = "%s-%s  |  %s  |  %s"
enUS.RAID_JOURNAL_TOOLTIP_NO_ITEM = "No item tooltip available yet."
enUS.RAID_LOOT_TRACKER_NONE = "Not tracked"
enUS.RAID_LOOT_TRACKER_WISH = "Wishlisted"
enUS.RAID_LOOT_TRACKER_OBTAINED = "Obtained"
enUS.RAID_LOOT_TRACKER_CLICK = "Left click: cycle status"
enUS.RAID_LOOT_TRACKER_CONTEXT = "For %s on %s"
enUS.RAID_LOOT_TRACKER_WISH_COUNT = "Wishlisted: %d"
enUS.RAID_LOOT_TRACKER_OBTAINED_COUNT = "Obtained: %d"
enUS.RAID_LOOT_TRACKER_BADGE = "Tracked loot"
enUS.WISHLIST_BUTTON = "Wishlist"
enUS.WISHLIST_TITLE = "Wishlist"
enUS.WISHLIST_SUBTITLE = "All wishlisted loot for the selected character across raids and dungeons."
enUS.WISHLIST_BUTTON_SUMMARY = "%d wishlisted  |  %d obtained"
enUS.WISHLIST_BUTTON_OPEN = "Left click: open wishlist"
enUS.WISHLIST_BUTTON_CLOSE = "Left click: close wishlist"
enUS.WISHLIST_SUMMARY_CHARACTER = "%d wishlisted items for %s-%s"
enUS.WISHLIST_SUMMARY_BREAKDOWN = "Raids %d  |  Dungeons %d"
enUS.WISHLIST_EMPTY = "No wishlisted items yet. Use the tracker icon on loot rows to add items here."
enUS.WISHLIST_EMPTY_FILTER = "No wishlisted items found for this filter."
enUS.WISHLIST_FILTER_ALL = "All"
enUS.WISHLIST_FILTER_RAIDS = "Raids"
enUS.WISHLIST_FILTER_DUNGEONS = "Dungeons"
enUS.WISHLIST_SOURCE_RAID = "Raid"
enUS.WISHLIST_SOURCE_DUNGEON = "Dungeon"
enUS.WISHLIST_SOURCE_UNKNOWN = "Source pending"
enUS.WISHLIST_MORE_SOURCES = "+%d more"
enUS.WISHLIST_TOOLTIP_SOURCES = "Sources"
enUS.RAID_LOOT_META_JEWELRY = "Jewelry"
enUS.RAID_LOOT_META_DECORATION = "Decoration"
enUS.MAIN_TAB_HOUSING = "Housing"
enUS.SUBTAB_HOUSING_ENDEAVORS = "Endeavors"
enUS.HOUSING_TITLE = "Housing"
enUS.HOUSING_CONTENT_SUBTITLE = "House status, neighborhood endeavor progress, tracked tasks, and recent activity."
enUS.HOUSING_LOADING = "Housing data is loading. Give the game a moment to deliver house and neighborhood information."
enUS.HOUSING_LIVE_ONLY = "Housing data is only available live for the currently logged in character. Log onto that character to see houses, endeavors, and coupons."
enUS.HOUSING_UNAVAILABLE = "Housing data is not available yet. Open the Housing dashboard once or wait for Blizzard's neighborhood data to load."
enUS.HOUSING_SECTION_HOME = "Home"
enUS.HOUSING_SECTION_HOME_SUBTITLE = "Active house, neighborhood, and house progress."
enUS.HOUSING_SECTION_WEEKLY = "Weekly"
enUS.HOUSING_SECTION_TRACKED = "Tracked Tasks"
enUS.HOUSING_SECTION_TRACKED_SUBTITLE = "Tasks currently pinned. Left-click a task to remove it."
enUS.HOUSING_SECTION_TASKS = "Neighborhood Tasks"
enUS.HOUSING_SECTION_TASKS_SUBTITLE = "Current endeavor tasks with contribution, coupon rewards, and progress. Left-click to pin or unpin them."
enUS.HOUSING_SECTION_MILESTONES = "Milestones"
enUS.HOUSING_SECTION_MILESTONES_SUBTITLE = "Progress thresholds for the current neighborhood endeavor."
enUS.HOUSING_SECTION_ACTIVITY = "Recent Activity"
enUS.HOUSING_SECTION_ACTIVITY_SUBTITLE = "Latest recorded neighborhood contributions from the activity feed."
enUS.HOUSING_SUMMARY_HOME_LEVEL = "House Level"
enUS.HOUSING_SUMMARY_CONTRIBUTION = "Your Contribution"
enUS.HOUSING_SUMMARY_TASKS = "Tasks"
enUS.HOUSING_PROGRESS_LABEL = "Endeavor Progress"
enUS.HOUSING_PROGRESS_NEXT = "%d to next milestone"
enUS.HOUSING_PROGRESS_REACHED = "All milestones reached"
enUS.HOUSING_PROGRESS_DAYS = "%s remaining"
enUS.HOUSING_HOME_NONE = "No house data yet"
enUS.HOUSING_HOME_META = "%d houses  |  %s"
enUS.HOUSING_HOME_ACTIVE = "Active neighborhood"
enUS.HOUSING_HOME_VIEWING = "Viewing neighborhood"
enUS.HOUSING_HOME_LEVEL = "Level"
enUS.HOUSING_HOME_FAVOR = "House Progress"
enUS.HOUSING_HOME_COUPONS = "Coupons"
enUS.HOUSING_HOME_MAX = "Max level reached"
enUS.HOUSING_TASK_PROGRESS_DONE = "Done"
enUS.HOUSING_TASK_PROGRESS_OPEN = "Open"
enUS.HOUSING_TASK_REPEATABLE = "Repeatable"
enUS.HOUSING_TASK_TRACKED = "Tracked"
enUS.HOUSING_TASK_COUPONS = "+%d coupons"
enUS.HOUSING_TASK_XP = "+%d contribution"
enUS.HOUSING_TASK_TIMES = "%dx completed"
enUS.HOUSING_TASK_TRACK_HINT = "Left-click to pin this task."
enUS.HOUSING_TASK_UNTRACK_HINT = "Left-click to remove this task."
enUS.HOUSING_TASKS_EMPTY = "No neighborhood tasks found yet. Open the Housing dashboard once so Blizzard can populate the endeavor data."
enUS.HOUSING_TRACKED_EMPTY = "No tracked housing tasks yet."
enUS.HOUSING_UTILITY_TITLE = "Milestones & activity"
enUS.HOUSING_UTILITY_SUBTITLE = "Progress thresholds and the latest neighborhood contributions."
enUS.HOUSING_MILESTONES_EMPTY = "No milestones available yet."
enUS.HOUSING_MILESTONE_LABEL = "Milestone %d"
enUS.HOUSING_MILESTONE_REACHED = "Reached"
enUS.HOUSING_MILESTONE_LEFT = "%d left"
enUS.HOUSING_ACTIVITY_EMPTY = "No recent housing activity recorded yet."
enUS.HOUSING_ACTIVITY_BY = "%s: %s"
enUS.HOUSING_ACTIVITY_AMOUNT = "+%s contribution"
enUS.HOUSING_NOTE_NON_ACTIVE = "The client is currently viewing a different neighborhood than your active one."
enUS.HOUSING_NO_SNAPSHOT = "No saved Housing snapshot yet for this character. Log onto the character once to capture it."
enUS.SUBTAB_SYSTEMS_PROFESSION_COOLDOWNS = "Cooldowns"
enUS.PROFESSION_COOLDOWNS_SUBTITLE = "Crafting cooldowns and concentration from the last profession scan."
enUS.PROFESSION_COOLDOWNS_PROGRESS = "Cooldowns"
enUS.PROFESSION_COOLDOWNS_CONCENTRATION = "Concentration"
enUS.PROFESSION_COOLDOWNS_COOLDOWNS = "Recipe cooldowns"
enUS.PROFESSION_COOLDOWNS_NO_SCAN = "Open a profession to scan cooldowns and concentration."
enUS.PROFESSION_COOLDOWNS_NO_COOLDOWNS = "No known recipe cooldowns"
enUS.PROFESSION_COOLDOWNS_READY = "Ready"
enUS.PROFESSION_COOLDOWNS_READY_IN = "Ready in"
enUS.PROFESSION_COOLDOWNS_CHARGES = "charges"
enUS.PROFESSION_COOLDOWNS_UNKNOWN_CONCENTRATION = "No concentration data"
enUS.PROFESSION_COOLDOWNS_OPEN_HINT = "Open a profession window on this character to update cooldowns and concentration."
enUS.PROFESSION_COOLDOWNS_ALT_HINT = "Alt values are estimated from that character's last profession scan."
enUS.PROFESSION_COOLDOWNS_CONCENTRATION_TOOLTIP = "Last scan: %d/%d. Estimated now: %d/%d."
enUS.PROFESSION_COOLDOWNS_MORE_ROWS = "%d more cooldown rows are stored for this character."
enUS.SUBTAB_PVE_RARES = "Rare mobs"
enUS.PVE_RARES_TITLE = "Rare mobs"
enUS.PVE_RARES_SUBTITLE = "Daily Midnight rare kills and mount collection by zone."
enUS.PVE_RARES_CONTENT_SUBTITLE = "Midnight rare mobs, daily kill status, mount collection, and Blizzard waypoints."
enUS.PVE_RARES_MOUNTS = "Mounts"
enUS.PVE_RARES_ZONES = "Zones"
enUS.PVE_RARES_DONE = "Done"
enUS.PVE_RARES_OPEN = "Open"
enUS.PVE_RARES_MOUNT_COLLECTED = "Collected"
enUS.PVE_RARES_MOUNT_MISSING = "Missing"
enUS.PVE_RARES_COORDS_FORMAT = "Coordinates: %.1f, %.1f"
enUS.PVE_RARES_WAYPOINT_HINT = "Left-click to set a Blizzard waypoint."
enUS.PVE_RARES_WAYPOINT_SET = "Waypoint set: %s"
enUS.PVE_RARES_WAYPOINT_UNAVAILABLE = "Blizzard waypoint API is not available."
enUS.PVE_RARES_ZONE_PROGRESS_FORMAT = "Today: %d/%d rare mobs"
enUS.PVE_RARES_REFRESH = "Refresh"
enUS.PVE_RARES_NO_DATA = "No rare data available yet."
enUS.RENOWN_ACTIVITY_RARE_KILL = "Rare defeated: %s"
enUS.FEATURE_QUIET_LOOT_TITLE = "Quiet Loot"
enUS.FEATURE_QUIET_LOOT_DESCRIPTION = "Replaces the bulky loot window and loot popups with compact icon-and-text rows."
enUS.FEATURE_QUIET_LOOT_NOTE = "When Loot Window is on, Vaultloom auto-loots immediately and shows compact item rows instead of the Blizzard loot window."
enUS.FEATURE_QUIET_LOOT_PREVIEW_LABEL = "Loot UI"
enUS.FEATURE_QUIET_LOOT_PREVIEW_NOTE = "Small item icons, stack counts, and item text without the Blizzard reward stack."
enUS.FEATURE_QUIET_LOOT_TOGGLE_TOOLTIP = "Replaces bulky loot windows and popups with compact icon-and-text rows."
enUS.FEATURE_QUIET_LOOT_TOASTS_LABEL = "Loot UI"
enUS.FEATURE_QUIET_LOOT_TOASTS_SIMPLE = "Simple Loot"
enUS.FEATURE_QUIET_LOOT_TOASTS_HIDE = "Hide Popups"
enUS.FEATURE_QUIET_LOOT_TOASTS_SHOW = "Blizzard Loot"
enUS.FEATURE_QUIET_LOOT_TOASTS_TOOLTIP = "Choose compact loot UI, hidden automatic popups, or Blizzard default loot UI."
enUS.FEATURE_QUIET_LOOT_WINDOW_TITLE = "Loot"
enUS.FEATURE_QUIET_LOOT_TAKE_ALL = "Take All"
enUS.FEATURE_QUIET_LOOT_MENU_TITLE = "Quiet Loot"
enUS.FEATURE_QUIET_LOOT_MENU_BUTTON = "Menu"
enUS.FEATURE_QUIET_LOOT_MENU_TOOLTIP = "Opens test mode, position reset, and clean style settings."
enUS.FEATURE_QUIET_LOOT_MENU_TEST = "Toggle Test Mode"
enUS.FEATURE_QUIET_LOOT_MENU_LOOT_WINDOW_FORMAT = "Loot Window: %s"
enUS.FEATURE_QUIET_LOOT_MENU_REWARD_FORMAT = "Boss/Chests: %s"
enUS.FEATURE_QUIET_LOOT_MENU_STYLE_FORMAT = "Style: %s"
enUS.FEATURE_QUIET_LOOT_MENU_DIRECTION_FORMAT = "Direction: %s"
enUS.FEATURE_QUIET_LOOT_MENU_LOOT_SIZE_FORMAT = "Loot Size: %d%%"
enUS.FEATURE_QUIET_LOOT_MENU_TOAST_SIZE_FORMAT = "Popup Size: %d%%"
enUS.FEATURE_QUIET_LOOT_MENU_RESET_LOOT = "Reset Loot Window"
enUS.FEATURE_QUIET_LOOT_MENU_RESET_TOASTS = "Reset Toast Position"
enUS.FEATURE_QUIET_LOOT_MENU_HIDE_TEST = "Hide Test"
enUS.FEATURE_QUIET_LOOT_TEST_HINT = "Quiet Loot test mode: drag the loot window or toast rows to save their positions. Right-click opens this menu."
enUS.FEATURE_QUIET_LOOT_ANCHOR_LABEL = "Anchor"
enUS.FEATURE_QUIET_LOOT_SETTING_ON = "On"
enUS.FEATURE_QUIET_LOOT_SETTING_OFF = "Off"
enUS.FEATURE_QUIET_LOOT_STYLE_NORMAL = "Normal"
enUS.FEATURE_QUIET_LOOT_STYLE_CLEAN = "Clean"
enUS.FEATURE_QUIET_LOOT_DIRECTION_DOWN = "Down"
enUS.FEATURE_QUIET_LOOT_DIRECTION_UP = "Up"
enUS.FEATURE_QUIET_LOOT_BOSS_LABEL = "Boss Banner"
enUS.FEATURE_QUIET_LOOT_BOSS_SIMPLE = "Simple Boss"
enUS.FEATURE_QUIET_LOOT_BOSS_HIDE = "Hide Banner"
enUS.FEATURE_QUIET_LOOT_BOSS_SHOW = "Show Banner"
enUS.FEATURE_QUIET_LOOT_BOSS_TOOLTIP = "Choose whether boss banners become a small line, disappear, or stay Blizzard default."
enUS.FEATURE_QUIET_LOOT_BOSS_DEFEATED = "Boss defeated"
enUS.FEATURE_MERCHANT_FILTERS_TITLE = "Merchant Filters"
enUS.FEATURE_MERCHANT_FILTERS_DESCRIPTION = "Replaces the merchant window with a clean Vaultloom vendor window and filters."
enUS.FEATURE_MERCHANT_FILTERS_NOTE = "Starts unfiltered. Filters can be saved per merchant or globally."
enUS.FEATURE_MERCHANT_FILTERS_PREVIEW_LABEL = "Merchant Window"
enUS.FEATURE_MERCHANT_FILTERS_PREVIEW_NOTE = "Buying, buyback, repair, gold, currencies, and filters in the Vaultloom style."
enUS.FEATURE_MERCHANT_FILTERS_BUTTON = "Filter"
enUS.FEATURE_MERCHANT_FILTERS_BUTTON_ACTIVE = "Filter *"
enUS.FEATURE_MERCHANT_FILTERS_BUTTON_TOOLTIP = "Scan this merchant and toggle useful hide filters."
enUS.FEATURE_MERCHANT_FILTERS_RESCAN = "Scan"
enUS.FEATURE_MERCHANT_FILTERS_DEFAULTS = "Reset"
enUS.FEATURE_MERCHANT_FILTERS_CLEAR = "Filters off"
enUS.FEATURE_MERCHANT_FILTERS_BACK = "Back"
enUS.FEATURE_MERCHANT_FILTERS_RESULTS_TITLE = "Vaultloom Filter"
enUS.FEATURE_MERCHANT_FILTERS_SUMMARY_FORMAT = "%d shown / %d scanned"
enUS.FEATURE_MERCHANT_FILTERS_EMPTY = "No merchant items match these filters."
enUS.FEATURE_MERCHANT_FILTERS_BUY = "Buy"
enUS.FEATURE_MERCHANT_FILTERS_FREE = "Free"
enUS.FEATURE_MERCHANT_FILTERS_COST = "Cost"
enUS.FEATURE_MERCHANT_FILTERS_OWNED = "Owned"
enUS.FEATURE_MERCHANT_FILTERS_NO_REPAIR_COST = "No repair cost."
enUS.FEATURE_MERCHANT_FILTERS_HIDE_KNOWN = "Hide already known"
enUS.FEATURE_MERCHANT_FILTERS_HIDE_UNUSABLE_RECIPES = "Hide recipes for other professions"
enUS.FEATURE_MERCHANT_FILTERS_HIDE_UNAFFORDABLE = "Hide unaffordable"
enUS.FEATURE_MERCHANT_FILTERS_ONLY_RECIPES = "Only recipes"
enUS.FEATURE_MERCHANT_FILTERS_ONLY_KNOWN_PROFESSIONS = "Only my professions"
enUS.FEATURE_MERCHANT_FILTERS_HIDE_DECOR = "Hide decor"
enUS.FEATURE_MERCHANT_FILTERS_HIDE_MOUNTS = "Hide mounts"
enUS.FEATURE_MERCHANT_FILTERS_HIDE_PETS = "Hide pets"
enUS.FEATURE_MERCHANT_FILTERS_HIDE_TOYS = "Hide toys"
enUS.FEATURE_MERCHANT_FILTERS_HIDE_COSMETICS = "Hide cosmetics"
enUS.FEATURE_MERCHANT_FILTERS_TAG_RECIPE = "Recipe"
enUS.FEATURE_MERCHANT_FILTERS_TAG_DECOR = "Decor"
enUS.FEATURE_MERCHANT_FILTERS_TAG_MOUNT = "Mount"
enUS.FEATURE_MERCHANT_FILTERS_TAG_PET = "Pet"
enUS.FEATURE_MERCHANT_FILTERS_TAG_TOY = "Toy"
enUS.FEATURE_MERCHANT_FILTERS_TAG_COSMETIC = "Cosmetic"
enUS.FEATURE_MERCHANT_FILTERS_TAG_KNOWN = "Known"
enUS.FEATURE_MERCHANT_FILTERS_TAG_NO_MONEY = "Not affordable"
enUS.FEATURE_MERCHANT_FILTERS_TAG_OTHER_PROFESSION = "Other profession"
enUS.FEATURE_MERCHANT_FILTERS_COMPAT = "Vaultloom: VendorFilter is loaded. Disable it before using Vaultloom Merchant Filters."
enUS.FEATURE_MERCHANT_FILTERS_SAVE_OFF = "Remember: Off"
enUS.FEATURE_MERCHANT_FILTERS_SAVE_MERCHANT = "Remember: Merchant"
enUS.FEATURE_MERCHANT_FILTERS_SAVE_GLOBAL = "Remember: Global"
enUS.FEATURE_MERCHANT_FILTERS_EMPTY_BUYBACK = "No buyback items."
enUS.FEATURE_MERCHANT_FILTERS_SELL_JUNK = "Sell junk"
enUS.FEATURE_MERCHANT_FILTERS_SELL_JUNK_COUNT_FORMAT = "Junk (%d)"
enUS.FEATURE_MERCHANT_FILTERS_SELLING_JUNK = "Selling..."
enUS.FEATURE_MERCHANT_FILTERS_SOLD_JUNK_FORMAT = "Sold %d junk items for %s."
enUS.FEATURE_MERCHANT_FILTERS_CLASS_ALL = "Class: All"
enUS.FEATURE_MERCHANT_FILTERS_CLASS_PLAYER_FORMAT = "Class: %s"
enUS.FEATURE_MERCHANT_FILTERS_TAG_OTHER_CLASS = "Other class"
enUS.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_ALL = "Hide gear"
enUS.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_HEAD = "Hide head / helm"
enUS.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_NECK = "Hide neck"
enUS.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_SHOULDER = "Hide shoulder"
enUS.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_BACK = "Hide back"
enUS.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_CHEST = "Hide chest"
enUS.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_WRIST = "Hide wrists"
enUS.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_HANDS = "Hide hands"
enUS.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_WAIST = "Hide waist"
enUS.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_LEGS = "Hide legs"
enUS.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_FEET = "Hide feet"
enUS.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_FINGER = "Hide rings"
enUS.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_TRINKET = "Hide trinkets"
enUS.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_WEAPON = "Hide weapons"
enUS.FEATURE_MERCHANT_FILTERS_HIDE_GEAR_OFFHAND = "Hide off-hands"
enUS.FEATURE_MERCHANT_FILTERS_MODE_LABEL = "Mode"
enUS.FEATURE_MERCHANT_FILTERS_MODE_REPLACE = "Replace"
enUS.FEATURE_MERCHANT_FILTERS_MODE_BUTTON = "Button"
enUS.FEATURE_MERCHANT_FILTERS_MODE_FILTER_ONLY = "Filter only"

enUS.FEATURE_ITEM_ID_TOOLTIP_TITLE = "Show Item ID"
enUS.FEATURE_ITEM_ID_TOOLTIP_DESCRIPTION = "Shows the item ID in the top-right corner of item tooltips."
enUS.FEATURE_ITEM_ID_TOOLTIP_NOTE = "Useful for searching, debugging, and sharing items."
enUS.FEATURE_ITEM_ID_TOOLTIP_PREVIEW_LABEL = "Item Tooltip"
enUS.FEATURE_ITEM_ID_TOOLTIP_PREVIEW_NOTE = "The ID appears directly next to the item name."
enUS.FEATURE_VAULTLOOM_ARMORY_SLOT_HEAD = "Head"
enUS.FEATURE_VAULTLOOM_ARMORY_SLOT_NECK = "Neck"
enUS.FEATURE_VAULTLOOM_ARMORY_SLOT_SHOULDER = "Shoulders"
enUS.FEATURE_VAULTLOOM_ARMORY_SLOT_BACK = "Back"
enUS.FEATURE_VAULTLOOM_ARMORY_SLOT_CHEST = "Chest"
enUS.FEATURE_VAULTLOOM_ARMORY_SLOT_WRIST = "Wrists"
enUS.FEATURE_VAULTLOOM_ARMORY_SLOT_HANDS = "Hands"
enUS.FEATURE_VAULTLOOM_ARMORY_SLOT_WAIST = "Waist"
enUS.FEATURE_VAULTLOOM_ARMORY_SLOT_LEGS = "Legs"
enUS.FEATURE_VAULTLOOM_ARMORY_SLOT_FEET = "Feet"
enUS.FEATURE_VAULTLOOM_ARMORY_SLOT_FINGER_1 = "Ring 1"
enUS.FEATURE_VAULTLOOM_ARMORY_SLOT_FINGER_2 = "Ring 2"
enUS.FEATURE_VAULTLOOM_ARMORY_SLOT_TRINKET_1 = "Trinket 1"
enUS.FEATURE_VAULTLOOM_ARMORY_SLOT_TRINKET_2 = "Trinket 2"
enUS.FEATURE_VAULTLOOM_ARMORY_SLOT_MAIN_HAND = "Main Hand"
enUS.FEATURE_VAULTLOOM_ARMORY_SLOT_OFF_HAND = "Off Hand"
enUS.FEATURE_VAULTLOOM_ARMORY_STAT_CRIT = "Crit"
enUS.FEATURE_VAULTLOOM_ARMORY_STAT_HASTE = "Haste"
enUS.FEATURE_VAULTLOOM_ARMORY_STAT_MASTERY = "Mastery"
enUS.FEATURE_VAULTLOOM_ARMORY_STAT_VERSATILITY = "Versatility"
enUS.FEATURE_VAULTLOOM_ARMORY_STAT_LEECH = "Leech"
enUS.FEATURE_VAULTLOOM_ARMORY_STAT_AVOIDANCE = "Avoidance"
enUS.FEATURE_VAULTLOOM_ARMORY_STAT_SPEED = "Speed"
enUS.PVE_DELVES_GILDED_STASH_MAX = 4
enUS.PVE_RARES_WAYPOINT = "Rare"
enUS.RAID_JOURNAL_FALLBACK_SUBTITLE = "Raid journal scaffold"
enUS.RAID_JOURNAL_FALLBACK_DESCRIPTION = "Journal data is not available yet."
enUS.RAID_JOURNAL_SYNC_TITLE = "Journal Sync"
enUS.RAID_JOURNAL_SYNC_DESCRIPTION = "Live boss names, weekly kill tracking, and loot sync can be connected here."
enUS.RAID_JOURNAL_FILTERS = "Filters"
enUS.RENOWN_FRAME_TOGGLE = "Frame"
enUS.RENOWN_TOAST_ACTIVITY = "Activity complete"
enUS.SETTINGS_SUBTITLE = "Window, minimap, and update notes."
enUS.SETTINGS_DISPLAY_TITLE = "Display"
enUS.SETTINGS_CHANGELOG_TITLE = "Changelog"
enUS.SETTINGS_MINIMAP_BUTTON = "Button visibility"

enUS.FEATURE_GATHERING_NODES_TITLE = "Gathering Nodes"
enUS.FEATURE_GATHERING_NODES_DESCRIPTION = "Builds your own mining, herbalism, leather, wood, fish, and cooking ingredient database while you gather."
enUS.FEATURE_GATHERING_NODES_NOTE = "Saves a node when your character gathers from it, then shows small markers on the world map and minimap. The mini button only shows or hides pins; collection continues while the feature is enabled."
enUS.FEATURE_GATHERING_NODES_PREVIEW_LABEL = "Map Pins"
enUS.FEATURE_GATHERING_NODES_PREVIEW_NOTE = "World map uses Blizzard item icons with a small clean frame; minimap uses hollow tracking circles."
enUS.FEATURE_GATHERING_NODES_TOGGLE_TOOLTIP = "Turns your saved gathering node pins and mini button on or off."
enUS.FEATURE_GATHERING_NODES_KIND_MINING = "Mining"
enUS.FEATURE_GATHERING_NODES_KIND_HERBALISM = "Herbalism"
enUS.FEATURE_GATHERING_NODES_KIND_COOKING = "Cooking ingredients"
enUS.FEATURE_GATHERING_NODES_KIND_LEATHER = "Leather & hides"
enUS.FEATURE_GATHERING_NODES_KIND_WOOD = "Wood"
enUS.FEATURE_GATHERING_NODES_KIND_FISH = "Fish"
enUS.FEATURE_GATHERING_NODES_BUTTON_TITLE = "Gathering Nodes"
enUS.FEATURE_GATHERING_NODES_BUTTON_ON = "Pins on"
enUS.FEATURE_GATHERING_NODES_BUTTON_OFF = "Pins off"
enUS.FEATURE_GATHERING_NODES_BUTTON_COUNT_FORMAT = "%d saved nodes"
enUS.FEATURE_GATHERING_NODES_BUTTON_CLICK = "Left click: show or hide map pins"
enUS.FEATURE_GATHERING_NODES_BUTTON_FILTERS = "Right click: filters"
enUS.FEATURE_GATHERING_NODES_BUTTON_DRAG = "Left drag: move"
enUS.FEATURE_GATHERING_NODES_BUTTON_WHEEL = "Shift + mouse wheel: size"
enUS.FEATURE_GATHERING_NODES_OPTIONS_TITLE = "Gathering Filters"
enUS.FEATURE_GATHERING_NODES_OPTIONS_EMPTY = "No saved gathering nodes yet."
enUS.FEATURE_GATHERING_NODES_OPTIONS_COUNT_FORMAT = "%d nodes"
enUS.FEATURE_GATHERING_NODES_OPTIONS_CATEGORY_OTHER = "Other"
enUS.FEATURE_GATHERING_NODES_DELETED_FORMAT = "Deleted node: %s"
enUS.FEATURE_GATHERING_NODES_NODE_COUNT_FORMAT = "Gathered %d times"
enUS.FEATURE_GATHERING_NODES_NODE_LAST_SEEN_FORMAT = "Last seen: %s"
enUS.FEATURE_GATHERING_NODES_NODE_WAYPOINT_HINT = "Left-click to set a Blizzard waypoint."
enUS.FEATURE_GATHERING_NODES_MINIMAP_HINT = "Red circles mark saved spots; live Blizzard tracking can show through the center."
enUS.FEATURE_GATHERING_NODES_WAYPOINT_SET_FORMAT = "Waypoint set: %s"
enUS.FEATURE_GATHERING_NODES_WAYPOINT_UNAVAILABLE = "Blizzard waypoint API is not available."

enUS.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_TITLE = "Midnight Treasures"
enUS.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_DESCRIPTION = "Shows uncollected one-time Midnight treasures on the Blizzard world map."
enUS.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_NOTE = "Uses small round chest pins and hides them after the treasure credit is earned."
enUS.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_PREVIEW_LABEL = "Treasure Map"
enUS.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_PREVIEW_NOTE = "One-time treasures, ritual locations, profession treasures, and Delve sturdy chests."
enUS.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_TOGGLE_TOOLTIP = "Shows or hides uncollected Midnight treasures on the Blizzard world map."
enUS.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_FALLBACK_NAME = "Treasure"
enUS.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_KIND_TREASURE = "Treasure"
enUS.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_KIND_PROFESSION = "Profession treasure"
enUS.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_KIND_DELVE = "Delve treasure"
enUS.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_KIND_RITUAL = "Ritual treasure"
enUS.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_PROGRESS_TREASURES = "Treasures"
enUS.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_PROGRESS_PROFESSION_KNOWLEDGE = "Profession knowledge"
enUS.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_PROGRESS_DELVES = "Delves"
enUS.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_PROGRESS_RITUALS = "Rituals"
enUS.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_PROGRESS_SEPARATOR = " | "
enUS.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_PROGRESS_EMPTY = "No treasure progress available."
enUS.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_TOOLTIP_HINT = "Left-click to set a Blizzard waypoint."
enUS.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_HIDE_DONE_HINT = "Pins disappear after the treasure is collected."
enUS.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_WAYPOINT_SET_FORMAT = "Waypoint set: %s"
enUS.FEATURE_MIDNIGHT_TREASURE_MAP_PINS_WAYPOINT_UNAVAILABLE = "Blizzard waypoint API is not available."

enUS.WORLD_MAP_PIN_BUTTON_TITLE = "Vaultloom Map Pins"
enUS.WORLD_MAP_PIN_BUTTON_TOOLTIP = "Toggle Vaultloom world map pin features."
enUS.WORLD_MAP_PIN_BUTTON_MENU_TITLE = "Vaultloom Map Pins"
enUS.WORLD_MAP_PIN_BUTTON_EMPTY = "No map pin features available."

enUS.MAIN_TAB_COMPENDIUM = "Compendium (Beta)"
enUS.COMPENDIUM_TAB_TITLE = "Compendium"
enUS.COMPENDIUM_TAB_SUBTITLE = "Midnight mounts, pets, toys, decorations, and recipes in one searchable collection."
enUS.COMPENDIUM_CATEGORY_ALL = "All"
enUS.COMPENDIUM_CATEGORY_MOUNTS = "Mounts"
enUS.COMPENDIUM_CATEGORY_PETS = "Pets"
enUS.COMPENDIUM_CATEGORY_TOYS = "Toys"
enUS.COMPENDIUM_CATEGORY_DECORATIONS = "Decorations"
enUS.COMPENDIUM_CATEGORY_RECIPES = "Recipes"
enUS.COMPENDIUM_CATEGORY_PROMOTIONS = "Promotions"
enUS.COMPENDIUM_CATEGORY_RARES = "Rares"
enUS.COMPENDIUM_PROGRESS_FORMAT = "%d/%d"
enUS.COMPENDIUM_STAT_TOTAL = "Total: %d"
enUS.COMPENDIUM_STAT_MISSING = "Missing: %d"
enUS.COMPENDIUM_STAT_OWNED = "Owned: %d"
enUS.COMPENDIUM_STAT_WAYPOINTS = "Waypoints: %d"
enUS.COMPENDIUM_FILTER_CATEGORIES = "Categories"
enUS.COMPENDIUM_SIDEBAR_HINT = "Tip: click the waypoint icon on an entry to place a Blizzard waypoint."
enUS.COMPENDIUM_DECORATION_CATALOG_HINT = "Decoration counts come from Blizzard's Housing catalog. If they stay unknown after login, open the Housing dashboard once, then click Refresh. Vaultloom saves known counts per character."
enUS.COMPENDIUM_SEARCH_PLACEHOLDER = "Search collection..."
enUS.COMPENDIUM_FILTER_STATUS_MISSING = "Missing"
enUS.COMPENDIUM_FILTER_STATUS_ALL = "All"
enUS.COMPENDIUM_FILTER_STATUS_COLLECTED = "Owned"
enUS.COMPENDIUM_FILTER_STATUS_UNKNOWN = "Unknown"
enUS.COMPENDIUM_FILTER_SOURCE_ALL = "All sources"
enUS.COMPENDIUM_FILTER_SOURCE_FORMAT = "Source: %s"
enUS.COMPENDIUM_FILTER_SOURCE_TITLE = "Source filter"
enUS.COMPENDIUM_FILTER_SOURCE_HINT = "Left-click cycles forward, right-click cycles backward."
enUS.COMPENDIUM_FILTER_PROFESSION_ALL = "All professions"
enUS.COMPENDIUM_FILTER_PROFESSION_FORMAT = "Profession: %s"
enUS.COMPENDIUM_REFRESH = "Refresh"
enUS.COMPENDIUM_HEADER_NAME = "Entry"
enUS.COMPENDIUM_HEADER_SOURCE = "Source"
enUS.COMPENDIUM_HEADER_STATUS = "Status"
enUS.COMPENDIUM_EMPTY = "No entries match the current filters."
enUS.COMPENDIUM_STATUS_COLLECTED = "Collected"
enUS.COMPENDIUM_STATUS_MISSING = "Missing"
enUS.COMPENDIUM_STATUS_UNKNOWN = "Unknown"
enUS.COMPENDIUM_STATUS_LEARNED = "Learned"
enUS.COMPENDIUM_STATUS_DEFEATED = "Defeated"
enUS.COMPENDIUM_WAYPOINT = "Waypoint"
enUS.COMPENDIUM_WAYPOINT_SET_FORMAT = "Waypoint set: %s"
enUS.COMPENDIUM_WAYPOINT_UNAVAILABLE = "Blizzard waypoint API is not available."
enUS.COMPENDIUM_COST_GOLD_FORMAT = "%d gold"
enUS.COMPENDIUM_RENOWN_LEVEL_FORMAT = "%s renown %d"
enUS.COMPENDIUM_ACHIEVEMENT_ID_FORMAT = "Achievement %d"
enUS.COMPENDIUM_SOURCE_DROP_FROM_FORMAT = "Drop from: %s"
enUS.COMPENDIUM_DETAIL_CURRENTLY_UNAVAILABLE = "Currently unavailable"
enUS.COMPENDIUM_DETAIL_PREPATCH_CURRENTLY_UNAVAILABLE = "Pre-patch event - currently unavailable"
enUS.COMPENDIUM_DETAIL_MIDNIGHT_SEASON_1_PVP_REWARD = "Midnight: Season 1 - reward from rated Arena and rated Battlegrounds"
enUS.COMPENDIUM_DETAIL_VOIDSTORM_FISHING = "Voidstorm Fishing"
enUS.COMPENDIUM_DETAIL_RITUAL_TREASURE_RARE_SPOILS = "Ritual Sites: treasure and rare spoils"
enUS.COMPENDIUM_DETAIL_RITUAL_DAGGERSPINE_POINT = "Ritual Site: Daggerspine Point"
enUS.COMPENDIUM_DETAIL_RITUAL_BROKEN_THRONE = "Ritual Site: Broken Throne"
enUS.COMPENDIUM_DETAIL_DECOR_DUEL = "Decor Duel"
enUS.COMPENDIUM_DETAIL_KEYSTONE_MYTH_UNLOCK = "Unlock: Keystone Myth achievement"
enUS.COMPENDIUM_DETAIL_DELVER_JOURNEY_RANK_5 = "Delver's Journey rank 5"
enUS.COMPENDIUM_DETAIL_PREY_NIGHTMARE_MODE_III = "Achievement: Prey: Nightmare Mode III"
enUS.COMPENDIUM_DETAIL_ABUNDANCE_WORLD_EVENT = "Abundance World Event"
enUS.COMPENDIUM_DETAIL_VOID_RESPONSE_TEAM = "Achievement: Void Response Team"
enUS.COMPENDIUM_DETAIL_MIDNIGHT_HEROIC_EDITION = "Midnight Heroic Edition"
enUS.COMPENDIUM_DETAIL_MIDNIGHT_EPIC_EDITION = "Midnight Epic Edition"
enUS.COMPENDIUM_QUEST_RELICS_IN_LOYAL_HANDS = "Relics in Loyal Hands"
enUS.COMPENDIUM_COST_TWILIGHT_BLADE_INSIGNIA_100 = "100 Twilight Blade Insignia"
enUS.COMPENDIUM_DROP_ZONE_RARES = "zone rares"
enUS.COMPENDIUM_VENDOR_NALEIDEA_RIVERGLEAM = "Naleidea Rivergleam"
enUS.COMPENDIUM_VENDOR_TELEMANT_ASTRANDIS = "Telemancer Astrandis"
enUS.COMPENDIUM_VENDOR_TELEMANCER_ASTRANDIS = "Telemancer Astrandis"
enUS.COMPENDIUM_VENDOR_MATERIALIST_OPHINELL = "Materialist Ophinell"
enUS.COMPENDIUM_VENDOR_CHEL_THE_CHIP = "Chel the Chip"
enUS.COMPENDIUM_TOOLTIP_CATEGORY = "Category"
enUS.COMPENDIUM_TOOLTIP_STATUS = "Status"
enUS.COMPENDIUM_TOOLTIP_SOURCE = "Source"
enUS.COMPENDIUM_TOOLTIP_HINT = "Hint"
enUS.COMPENDIUM_TOOLTIP_ZONE = "Zone"
enUS.COMPENDIUM_TOOLTIP_PROFESSION = "Profession"
enUS.COMPENDIUM_TOOLTIP_GROUP = "Group"
enUS.COMPENDIUM_TOOLTIP_COST = "Cost"
enUS.COMPENDIUM_TOOLTIP_RENOWN = "Renown"
enUS.COMPENDIUM_TOOLTIP_DROP = "Drop"
enUS.COMPENDIUM_TOOLTIP_DROP_FROM = "Drop from"
enUS.COMPENDIUM_TOOLTIP_VENDOR = "Vendor"
enUS.COMPENDIUM_TOOLTIP_ACHIEVEMENT = "Achievement"
enUS.COMPENDIUM_TOOLTIP_WAYPOINT = "Waypoint"
enUS.COMPENDIUM_TOOLTIP_SET_WAYPOINT = "Set waypoint"
enUS.COMPENDIUM_TOOLTIP_CLICK_WAYPOINT = "Click the waypoint icon to set a Blizzard waypoint."
enUS.COMPENDIUM_TOOLTIP_NO_WAYPOINT = "No waypoint stored for this entry."
enUS.COMPENDIUM_SOURCE_ACHIEVEMENT = "Achievement"
enUS.COMPENDIUM_SOURCE_CRAFTED = "Crafted"
enUS.COMPENDIUM_SOURCE_DELVE = "Delve"
enUS.COMPENDIUM_SOURCE_DISCOVERY = "Discovery"
enUS.COMPENDIUM_SOURCE_DROP = "Drop"
enUS.COMPENDIUM_SOURCE_DUNGEON = "Dungeon"
enUS.COMPENDIUM_SOURCE_EVENT = "Event"
enUS.COMPENDIUM_SOURCE_EVERSONG = "Eversong Woods"
enUS.COMPENDIUM_SOURCE_HARANDAR = "Harandar"
enUS.COMPENDIUM_SOURCE_PREPATCH = "Pre-patch"
enUS.COMPENDIUM_SOURCE_PREY = "Prey"
enUS.COMPENDIUM_SOURCE_PROFESSION = "Profession"
enUS.COMPENDIUM_SOURCE_PROMOTION = "Promotion"
enUS.COMPENDIUM_SOURCE_PVP = "PvP"
enUS.COMPENDIUM_SOURCE_QUEST = "Quest"
enUS.COMPENDIUM_SOURCE_RAID = "Raid"
enUS.COMPENDIUM_SOURCE_RARE = "Rare"
enUS.COMPENDIUM_SOURCE_RENOWN = "Renown"
enUS.COMPENDIUM_SOURCE_REPUTATION = "Reputation"
enUS.COMPENDIUM_SOURCE_SPECIALIZATION = "Specialization"
enUS.COMPENDIUM_SOURCE_TRAINER = "Trainer"
enUS.COMPENDIUM_SOURCE_TRADING_POST = "Trading Post"
enUS.COMPENDIUM_SOURCE_TREASURE = "Treasure"
enUS.COMPENDIUM_SOURCE_VENDOR = "Vendor"
enUS.COMPENDIUM_SOURCE_VOIDSTORM = "Voidstorm"
enUS.COMPENDIUM_SOURCE_WILD = "Wild"
enUS.COMPENDIUM_SOURCE_WORLD_EVENT = "World Event"
enUS.COMPENDIUM_SOURCE_ZULAMAN = "Zul'Aman"
enUS.COMPENDIUM_PROFESSION_ALCHEMY = "Alchemy"
enUS.COMPENDIUM_PROFESSION_BLACKSMITHING = "Blacksmithing"
enUS.COMPENDIUM_PROFESSION_COOKING = "Cooking"
enUS.COMPENDIUM_PROFESSION_ENCHANTING = "Enchanting"
enUS.COMPENDIUM_PROFESSION_ENGINEERING = "Engineering"
enUS.COMPENDIUM_PROFESSION_INSCRIPTION = "Inscription"
enUS.COMPENDIUM_PROFESSION_JEWELCRAFTING = "Jewelcrafting"
enUS.COMPENDIUM_PROFESSION_LEATHERWORKING = "Leatherworking"
enUS.COMPENDIUM_PROFESSION_TAILORING = "Tailoring"

ns.Locale:Register("enUS", enUS)
