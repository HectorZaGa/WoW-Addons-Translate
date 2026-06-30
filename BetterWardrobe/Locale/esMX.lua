local addonName, addon = ...
local L = _G.LibStub("AceLocale-3.0"):NewLocale("BetterWardrobe", "esMX", false, true)

if not L then return end

local DEFAULT = 1
local APPEARANCE = 2
local ALPHABETIC = 3
local ITEM_SOURCE = 6
local EXPANSION = 5
local ARTIFACT = 7
local ILEVEL = 8
local ITEMID = 9


local COLOR = 4
local TAB_ITEMS = 1
local TAB_SETS = 2
local TAB_EXTRASETS = 3

L[DEFAULT] = _G["DEFAULT"]
L[APPEARANCE] = APPEARANCE_LABEL
L[ALPHABETIC] = COMPACT_UNIT_FRAME_PROFILE_SORTBY_ALPHABETICAL
L[ITEM_SOURCE] = SOURCE:gsub("[:：]", "")
L[COLOR] = _G["COLOR"]
L[EXPANSION] = "Expansión"
L[ARTIFACT] = ITEM_QUALITY6_DESC

L[ILEVEL] = "Nivel de objeto"
L[ITEMID] = "ID de objeto"

L.OM_GOLD = "|c00FFD200"
L.ENDCOLOR = "|r"

--_G["BINDING_NAME_" .. name
_G["BINDING_HEADER_BETTERWARDROBE"] = addonName
_G["BINDING_NAME_BETTERWARDROBE_BINDING_PLAYERMODEL"] = "Usar modelo del jugador"
_G["BINDING_NAME_BETTERWARDROBE_BINDING_TARGETMODEL"] = "Usar modelo del objetivo"
_G["BINDING_NAME_BETTERWARDROBE_BINDING_TARGETGEAR"] = "Usar equipo del objetivo"
_G["BINDING_NAME_BETTERWARDROBE_BINDING_TOGGLE_DRESSINGROOM"] = "Alternar probador"

L["CLOTH"] = "Tela"
L["LEATHER"] = "Cuero"
L["MAIL"] = "Malla"
L["PLATE"] = "Placas"

L["No Recolors Found"] = "No se encontraron recolores"

--------------------------------------------------------------------------
------------------------------ MENÚ DE OPCIONES --------------------------
--------------------------------------------------------------------------

--############################-- PESTAÑAS --#############################--

L["Options"] = "Opciones"
L["Settings"] = "Configuraciones"
L["Options Profiles"] = "Perfiles de opciones"

L["List Profiles"] = "Listar perfiles"
L["Favorite Items & Sets"] = "Objetos y conjuntos favoritos"
L["Collection List"] = "Lista de colección"
L["Hidden Items & Sets"] = "Objetos y conjuntos ocultos"

L["Item Substitution"] = "Sustitución de objetos"
L["Items"] = "Objetos"
L["Profiles"] = "Perfiles"

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ GENERAL ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--

L["General Options"] = "Opciones generales"
L["Ignore Class Restriction Filter"] = "Ignorar filtro de restricción de clase"
L["Only for Raid Lookalike/Recolor Sets"] = "Solo para conjuntos de banda similares/recolor"
L["Print Set Collection alerts to chat:"] = "Imprimir alertas de colección de conjuntos en el chat:"
L["Sets"] = "Conjuntos"
L["Extra Sets"] = "Conjuntos extra"
L["MogIt Saved Set"] = "Conjunto guardado de MogIt"
L["TransmogOutfits Saved Set"] = "Conjunto guardado de TransmogOutfits"
L["Collection List"] = "Lista de colección"
L["TSM Source to Use"] = "Fuente de TSM a usar"
L["Profiles for sharing the various lists across characters"] = "Perfiles para compartir las diversas listas entre personajes"

--~~~~~~~~~~~~~~~~~~~~~~~ VENTANA DEL VENDEDOR DE TRANSMOG ~~~~~~~~~~~~~~~~~~~~~~~--

L["Transmog Vendor Window"] = "Ventana del vendedor de transfiguración"
L["Larger Transmog Area"] = "Área de transfiguración más grande"
L["Extra Large Transmog Area"] = "Área de transfiguración extra grande"
L["Max Width"] = "Ancho máximo"

L["LargeTransmogArea_Tooltip"] = "Aumenta el área de la ventana del vendedor de transfiguración"
L["ExtraLargeTransmogArea_Tooltip"] = "Aumenta el área de la ventana del vendedor de transfiguración para llenar el ancho de la pantalla"
L["LargeTransmogArea_Tooltip"] = "Aumenta el área de la ventana del vendedor de transfiguración"
L["ExtraLargeTransmogAreaMax_Tooltip"] = "Aumenta el área de la ventana del vendedor de transfiguración para llenar el ancho de la pantalla"
L["Show Incomplete Sets"] = "Mostrar conjuntos incompletos"
L["Show Items set to Hidden"] = "Mostrar objetos configurados como ocultos"
L["Show Hidden Items"] = "Mostrar objetos ocultos"
L["Hide Missing Set Pieces at Transmog Vendor"] = "Ocultar piezas faltantes del conjunto en el vendedor de transfiguración"
L["Use Hidden Transmog for Missing Set Pieces"] = "Usar transfiguración oculta para piezas faltantes del conjunto"
L["Required pieces"] = "Piezas requeridas"
L["Show Set Names"] = "Mostrar nombres de conjuntos"
L["Show Collected Count"] = "Mostrar cantidad recolectada"

L["Select Slot to Hide"] = "Seleccionar ranura para ocultar"
L["Requires 'Show Incomplete Sets' Enabled"] = "Requiere 'Mostrar conjuntos incompletos' habilitado"

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ TOOLTIP ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--

L["Tooltip Options"] = "Opciones de tooltip"
L["Show Set Info in Tooltips"] = "Mostrar información del conjunto en tooltips"
L["Show Set Collection Details"] = "Mostrar detalles de colección del conjunto"
L["Only List Missing Pieces"] = "Solo listar piezas faltantes"
L["Show Item ID"] = "Mostrar ID de objeto"
L["Show if appearance is known"] = "Mostrar si la apariencia es conocida"
L["Show if additional sources are available"] = "Mostrar si hay fuentes adicionales disponibles"
L["Show Token Information"] = "Mostrar información del token"

L["Class can't use item for transmog"] = "La clase no puede usar el objeto para transfiguración"
L["Show unable to uses as transmog warning"] = "Mostrar advertencia de no poder usar como transfiguración"
L["Item No Longer Obtainable."] = "Objeto ya no disponible."

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ VISTA PREVIA DE OBJETOS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--

L["Item Preview Options"] = "Opciones de vista previa de objetos"
L["Appearance Preview"] = "Vista previa de apariencia"
L["Only show if modifier is pressed"] = "Mostrar solo si se presiona el modificador"
L["None"] = "Ninguno"
L["Only transmogrification items"] = "Solo objetos de transfiguración"
L["Try to preview armor tokens"] = "Intentar previsualizar tokens de armadura"
L["Prevent Comparison Overlap"] = "Prevenir superposición de comparación"
L["TooltipPreview_Overlap_Tooltip"] = "Si el tooltip de comparación se muestra donde la vista previa quiere estar, mostrar al lado"
L["Zoom:"] = "Zoom:"
L["On Weapons"] = "En armas"
L["On Clothes"] = "En ropa"
L["Dress Preview Model"] = "Vestir modelo de vista previa"
L["TooltipPreview_Dress_Tooltip"] = "Mostrar el modelo vistiendo tu atuendo actual, aparte del objeto previsualizado"
L["Use Dressing Dummy Model"] = "Usar modelo de maniquí de vestidor"
L["TooltipPreview_DressingDummy"] = "Ocultar los detalles de tu modelo de jugador mientras estás con zoom (como lo hace el vestidor de transfiguración)"
L["Auto Rotate"] = "Rotar automáticamente"
L["TooltipPreviewRotate_Tooltip"] = "Girar constantemente el modelo mientras está mostrado"
L["Rotate with mouse wheel"] = "Girar con la rueda del ratón"
L["TooltipPreview_MouseRotate_Tooltip"] = "Usar la rueda del ratón para girar el modelo en el tooltip"
L["Anchor point"] = "Punto de anclaje"
L["Top/bottom"] = "Arriba/abajo"
L["Left/right"] = "Izquierda/derecha"
L["TooltipPreview_Anchor_Tooltip"] = "Lado del tooltip para adjuntar, dependiendo de dónde se muestre en la pantalla"
L["Height"] = "Altura"
L["Width"] = "Ancho"
L["Reset"] = "Restablecer"
L["Use custom model"] = "Usar modelo personalizado"
L["CUSTOM_MODEL_WARNING"] = "*Los modelos personalizados están configurados al modelo de vestidor de transfiguración, y podrían no mostrarse correctamente"
L["Model race"] = "Raza del modelo"
L["Model gender"] = "Género del modelo"

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ VESTIDOR ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--

L["Dressing Room Options"] = "Opciones del vestidor"
L["Enable"] = "Habilitar"
L["Show Item Buttons"] = "Mostrar botones de objetos"
L["Show Narcissus Buttons"] = "Mostrar botones de Narcissus"
L["Show DressingRoom Controls"] = "Mostrar controles del vestidor"
L["Dim Backround Image"] = "Atenuar imagen de fondo"
L["Hide Backround Image"] = "Ocultar imagen de fondo"
L["Start Undressed"] = "Comenzar sin ropa"
L["Hide Weapons"] = "Ocultar armas"
L["Hide Shirt"] = "Ocultar camisa"
L["Hide Tabard"] = "Ocultar tabardo"
L["Resize Window"] = "Redimensionar ventana"

--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ SUSTITUCIÓN DE OBJETOS ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~--

L["Items"] = "Objetos"
L["Base Item ID"] = "Item ID base"
L["Not a valid itemID"] = "No es un Item ID válido"
L["Replacement Item ID"] = "Item ID de reemplazo"
L["Remove"] = "Eliminar"
L["Add"] = "Agregar"
L["Item Locations Don't Match"] = "Las ubicaciones de los objetos no coinciden"
L["Saved Item Substitutes"] = "Sustitutos de objetos guardados"

L["item: %d - %s \n==>\nitem: %d - %s"] = "objeto: %d - %s \n==>\nobjeto: %d - %s"

--------------------------------------------------------------------------
-------------------------- APARIENCIAS DE ARTEFACTOS --------------------------
--------------------------------------------------------------------------

L["Base Appearance"] = "Apariencia base"
L["Class Hall Appearance"] = "Apariencia de la sede de clase"
L["Mythic Dungeon Quests Appearance"] = "Apariencia de misiones de calabozos míticos"
L["PvP Appearance"] = "Apariencia de JcJ"
L["Hidden Appearance"] = "Apariencia oculta"
L["Mage Tower Appearance"] = "Apariencia de la torre de magos"
L["Learned from Item"] = "Aprendido del objeto"

--------------------------------------------------------------------------
----------------------------- MENÚS DESPLEGABLES -----------------------------
--------------------------------------------------------------------------

L["Visual View"] = "Vista visual"

L["Default"] = "Predeterminado"
L["Expansion"] = "Expansión"
L["Missing:"] = "Faltante:"
L["Armor Type"] = "Tipo de armadura"

L["Class Sets Only"] = "Solo conjuntos de clase"
L["Hide Unavailable Sets"] = "Ocultar conjuntos no disponibles"
L["MISC"] = "Varios"
L["Classic Set"] = "Conjunto clásico"
L["Quest Set"] = "Conjunto de misiones"
L["Dungeon Set"] = "Conjunto de calabozos"
L["Raid Recolor"] = "Recolor de banda"
L["Raid Lookalike"] = "Parecido de banda"
L["Recolor"] = "Recolor"
L["Raid Set"] = "Conjunto de banda"
L["PvP"] = "JcJ"
L["Garrison"] = "Fortaleza"
L["Island Expedition"] = "Expedición insular"
L["Warfronts"] = "Frentes de guerra"
L["Covenants"] = "Pactos"
L["Holiday"] = "Festividad"

L["Use Hidden Item for Unavilable Items"] = "Usar objeto oculto para objetos no disponibles"
L["View Recolors"] = "Ver recolores"
L["View Sources"] = "Ver fuentes"

--------------------------------------------------------------------------
---------------------------- LISTA DE COLECCIÓN -----------------------------
--------------------------------------------------------------------------

L["Appearance added."] = "Apariencia agregada."
L["Appearance removed."] = "Apariencia eliminada."

L["%s: Uncollected items added"] = "%s: Objetos no recolectados agregados"
L["No new appearces needed."] = "No se necesitan nuevas apariencias."

L["COLLECTION_LIST_HELP"] = "Agrega objetos a la lista haciendo clic derecho en un objeto o conjunto,\n luego selecciona 'Agregar a la lista de colección'"

L["View All"] = "Ver todo"
L["Add List"] = "Agregar lista"
L["Rename"] = "Renombrar"
L["Delete"] = "Eliminar"
L["Create Copy"] = "Crear copia"
L["Add by Item ID"] = "Agregar por Item ID"

L["Export TSM Groups"] = "Exportar grupos de TSM"
L["%sgroup:Appearance Group %s,"] = "%sgrupo:Grupo de apariencia %s,"
L["Collected"] = "Recolectado"
L["Not Collected"] = "No recolectado"

L["Type the item ID in the text box below"] = "Escribe el ID del objeto en el cuadro de texto a continuación"

L["List Name"] = "Nombre de la lista"

L["Click: Show Collection List"] = "Clic: Mostrar lista de colección"
L["Shift Click: Show Detail List"] = "Shift Clic: Mostrar lista detallada"

--------------------------------------------------------------------------
----------------------------- VESTIDOR ------------------------------
--------------------------------------------------------------------------

L["Display Options"] = "Opciones de visualización"
L["Character Options"] = "Opciones de personaje"

L["Import/Export Options"] = "Opciones de importación/exportación"
L["Load Set: %s"] = "Cargar conjunto: %s"
L["None Selected"] = "Ninguno seleccionado"

L["Import Item"] = "Importar objeto"
L["Import Set"] =  "Importar conjunto"
L["Export Set"] = "Exportar conjunto"
L["Create Dressing Room Command Link"] = "Crear enlace de comando de vestidor"

L["Target Options"] = "Opciones de objetivo"
L["Use Player Model"] = "Usar modelo de jugador"
L["Use Target Model"] = "Usar modelo de objetivo"
L["Use Target Gear"] = "Usar equipo de objetivo"
L["Undress"] = "Desvestir"
L["Hide Armor Slots"] = "Ocultar ranuras de armadura"

--------------------------------------------------------------------------
----------------------------- IMPORTAR EXPORTAR ------------------------------
--------------------------------------------------------------------------

L["Copy and paste a Wowhead Compare URL into the text box below to import"] = "Copia y pega una URL de comparación de Wowhead en el cuadro de texto a continuación para importar"
L["Import"] = "Importar"
L["Type the item ID or url in the text box below"] = "Escribe el ID del objeto o la URL en el cuadro de texto a continuación"
L["Export"] = "Exportar"

--------------------------------------------------------------------------
------------------------------- ALEATORIZADOR -------------------------------
--------------------------------------------------------------------------

L["Click: Randomize Items"] = "Clic: Aleatorizar objetos"
L["Shift Click: Randomize Outfit"] = "Shift Clic: Aleatorizar atuendo"

--------------------------------------------------------------------------
-------------------------------- TOOLTIP --------------------------------
--------------------------------------------------------------------------

L["HEADERTEXT"] = '|cffffd100--------================--------'
L["Item ID"] = "Item ID"

L["-Appearance in %d Collection List-"] = "-Apariencia en %d lista de colección-"
L["Part of Set:"] = "Parte del conjunto:"
L["Part of Extra Set:"] = "Parte del conjunto extra:"

L["-%s %s(%d/%d)"] = true
L["|TInterface\\RaidFrame\\ReadyCheck-Ready:0|t %s%s"] = true
L["|TInterface\\RaidFrame\\ReadyCheck-NotReady:0|t %s%s"] = true

--------------------------------------------------------------------------
----------------------------------- UI -----------------------------------
--------------------------------------------------------------------------

L["unhiding_item"] = "Desocultando"
L["unhiding_item_end"] = "de la pestaña de apariencias"
L["hiding_item"] = "Ocultando"
L["hiding_item_end"] = "de la pestaña de apariencias"

L["unhiding_set"] = "Desocultando"
L["unhiding_set_end"] = "" -- usado para alemán
L["hiding_set"] = "Ocultando"
L["hiding_set_end"] = "" -- usado para alemán

L["Queue Transmog"] = "Cola de transfiguración"

L["Add to Collection List"] = "Agregar a la lista de colección"
L["Remove from Collection List"] = "Eliminar de la lista de colección"

L["Toggle Hidden View"] = "Alternar vista oculta"

--------------------------------------------------------------------------
----------------------------- BETTERWARDROBE -----------------------------
--------------------------------------------------------------------------

L["Added missing appearances of: \124cffff7fff\124H%s:%s\124h[%s]\124h\124r"] = "Apariencias faltantes agregadas de: \124cffff7fff\124H%s:%s\124h[%s]\124h\124r"
L["Added appearance in Collection List"] = "Apariencia agregada en la lista de colección"

L["Set Substitution"] = "Sustitución de conjunto"
L["Substitute Item"] = "Sustituir objeto"

L["Item No Longer Available"] = "Objeto ya no disponible"

L["Select color"] = "Seleccionar color"
L["Reset"] = "Restablecer"

--------------------------------------------------------------------------
-------------------------------- BASE DE DATOS --------------------------------
--------------------------------------------------------------------------

L["Saved Set"] = "Conjunto guardado"
L["Extended Saved Set"] = "Conjunto guardado extendido"
L["COLLECTIONLIST_TEXT"] = "%s - %s"
L["SHOPPINGLIST_TEXT"] = "%s - %s: %s"


L["Class can't collect or use appearance."] = "La clase no puede recolectar o usar la apariencia."
L["Class can't use appearance. Useable appearance available."] = "La clase no puede usar la apariencia. Apariencia utilizable disponible."

L["Contained in"] = "Contenido en"
L["Created by"] = "Creado por"
L["No Data Available"] = "No hay datos disponibles"
--Autogenerated below this
L["NOTE_0"] = ""
--Pvp
L["NOTE_8"] = "Conjunto épico de JcJ de nivel 60"
L["NOTE_6"] = "Conjunto raro de JcJ de nivel 60"
L["NOTE_16"] = "Conjunto raro de JcJ de nivel 70"
L["NOTE_21"] = "Conjunto raro de JcJ de nivel 70 2"

L["NOTE_17"] = "Conjunto de la temporada 1 de arena"
L["NOTE_19"] = "Conjunto de la temporada 2 de arena"
L["NOTE_20"] = "Conjunto de la temporada 3 de arena"
L["NOTE_22"] = "Conjunto de la temporada 4 de arena"
L["NOTE_24"] = "Conjunto de la temporada 5 de arena"
L["NOTE_26"] = "Conjunto de la temporada 6 de arena"
L["NOTE_28"] = "Conjunto de la temporada 7 de arena"
L["NOTE_30"] = "Conjunto de la temporada 8 de arena"
L["NOTE_33"] = "Conjunto de la temporada 9 de arena"
L["NOTE_34"] = "Conjunto de la temporada 10 de arena"
L["NOTE_37"] = "Conjunto de la temporada 11 de arena"
L["NOTE_40"] = "Conjunto de la temporada 12 de arena"
L["NOTE_42"] = "Conjunto de la temporada 13 de arena"
L["NOTE_62"] = "Conjunto de la temporada 14 de arena"
L["NOTE_63"] = "Conjunto de la temporada 15 de arena"
L["NOTE_66"] = "Conjunto de la temporada 16 de arena"

L["NOTE_72"] = "Temporada 2 de Warlords"
L["NOTE_73"] = "Temporada 3 de Warlords"

L["NOTE_80"] = "Conjunto de honor de Legión"
L["NOTE_79"] = "Temporada 1 de Legión"
L["NOTE_83"] = "Temporada 3 de Legión"
L["NOTE_85"] = "Temporada 5 de Legión"

L["NOTE_89"] = "Temporada 1 de BFA"
L["NOTE_93"] = "Temporada 2 de BFA"
L["NOTE_95"] = "Temporada 3 de BFA"
L["NOTE_112"] = "Temporada 4 de BFA"

--Questing
L["NOTE_44"] = "Conjunto del mundo clásico"
L["NOTE_53"] = "Conjunto de misiones de Azeroth"
L["NOTE_54"] = "Conjunto de misiones de WotLK"
L["NOTE_55"] = "Conjunto de misiones de Cataclysm"
L["NOTE_56"] = "Conjunto de misiones de Mists"
L["NOTE_68"] = "Conjunto de misiones de Warlords"
L["NOTE_75"] = "Conjunto de misiones de Legión"
L["NOTE_81"] = "Conjunto de misiones de la Costa Quebrada"
L["NOTE_84"] = "Conjunto de misiones de Argus"
L["NOTE_92"] = "Conjunto de misiones de BFA"
L["NOTE_97"] = "Conjunto de misiones de Nazjatar"
L["NOTE_101"] = "Conjunto de misiones de Shadowlands"
--Dungeon Sets

L["NOTE_45"] = "Conjunto de calabozos clásicos"
L["NOTE_1"] = "Conjunto de calabozos 1"
L["NOTE_2"] = "Conjunto de calabozos 2"
L["NOTE_14"] = "Conjunto de calabozos 3"
L["NOTE_46"] = "Conjunto de calabozos de trolls"
L["NOTE_47"] = "Conjunto de calabozos 1 de WotLK"
L["NOTE_48"] = "Conjunto de calabozos 2 de WotLK"
L["NOTE_49"] = "Conjunto de calabozos de la Hora del Crepúsculo"
L["NOTE_50"] = "Conjunto de calabozos de Cataclysm"
L["NOTE_51"] = "Conjunto de calabozos de Mists"
L["NOTE_52"] = "Conjunto de calabozos de modo desafío"
L["NOTE_67"] = "Conjunto de calabozos de Warlords"
L["NOTE_76"] = "Conjunto de calabozos de Legión"
L["NOTE_77"] = "Conjunto de la sede de clase"
L["NOTE_87"] = "Conjunto de calabozos de BFA"
L["NOTE_102"] = "Conjunto de calabozos de Shadowlands"

--Raid


L["NOTE_3"] = "Conjunto de Núcleo de Magma"
L["NOTE_4"] = "Conjunto de Guarida Alanegra"
L["NOTE_5"] = "Conjunto de banda de Naxxramas (original)"
L["NOTE_9"] = "Conjunto de las Ruinas de Ahn'Qiraj"
L["NOTE_10"] = "Conjunto de banda del Templo de Ahn'Qiraj"
L["NOTE_11"] = "Conjunto de Zul'Gurub"
L["NOTE_12"] = "Conjunto de banda de Karazhan, Guarida de Gruul y Guarida de Magtheridon"
L["NOTE_13"] = "Conjunto de banda de la Caverna Santuario Serpiente y El Ojo (El Castillo de la Tempestad)"
L["NOTE_18"] = "Conjunto de banda de la Cima Hyjal, el Templo Oscuro y la Meseta de La Fuente del Sol"
L["NOTE_23"] = "Conjunto de banda de Naxxramas (Wrath)"
L["NOTE_61"] = "Conjunto de banda 1 de WotLK"
L["NOTE_25"] = "Conjunto de banda de Ulduar"
L["NOTE_27"] = "Conjunto de banda de Prueba del Cruzado"
L["NOTE_29"] = "Conjunto de banda de la Ciudadela de la Corona de Hielo"
L["NOTE_31"] = "Conjunto de banda de Bastión del Crepúsculo y Descenso de Alanegra"
L["NOTE_35"] = "Conjunto de banda de Tierras de Fuego"
L["NOTE_38"] = "Conjunto de banda de Alma de Dragón"
L["NOTE_39"] = "Conjunto de banda de la Terraza de la Primavera Eterna y el Corazón del Miedo"
L["NOTE_43"] = "Conjunto de banda de Trono del Trueno"
L["NOTE_57"] = "Conjunto de resistencia clásico"
L["NOTE_58"] = "Conjunto de banda de la Meseta de La Fuente del Sol"


L["NOTE_59"] = "Conjunto de banda de Cámaras Mogu'shan"
L["NOTE_64"] = "Conjunto de banda de Asedio de Orgrimmar"
L["NOTE_65"] = "Conjunto de banda de Fundición Roca Negra"
L["NOTE_70"] = "Conjunto de LFR de Warlords"
L["NOTE_71"] = "Conjunto de banda de Ciudadela del Fuego Infernal"
L["NOTE_78"] = "Conjunto de banda de Bastión Nocturno"
L["NOTE_82"] = "Conjunto de banda de la Tumba de Sargeras"
L["NOTE_86"] = "Conjunto de banda de Antorus, el Trono Ardiente"
L["NOTE_88"] = "Conjunto de banda de Uldir"
L["NOTE_94"] = "Conjunto de banda de Dazar'alor"
L["NOTE_96"] = "Conjunto de banda del Palacio Eterno"
L["NOTE_109"] = "Conjunto de banda de Castillo Nathria"

L["NOTE_90"] = "Armadura de herencia"
L["NOTE_113"] = "Armadura legendaria de Shadowlands"
--Event
L["NOTE_74"] = "Conjunto del evento de invasión demoníaca"
L["NOTE_91"] = "Conjunto del evento de expediciones insulares"
L["NOTE_60"] = "Conjunto del evento de invasión de la Plaga"
L["NOTE_69"] = "Conjunto de la ciudadela"

L["NOTE_100"] = "Conjunto del evento de invasión de Shadowlands"

--Shadowlands Covenant sets
L["NOTE_103"] = "Conjunto del pacto Kyrian"
L["NOTE_104"] = "Conjunto del pacto Venthyr"
L["NOTE_105"] = "Conjunto del pacto Necrolord"
L["NOTE_106"] = "Conjunto del pacto Night Fae"


L["NOTE_107"] = "Conjunto de Shadowlands creado"
L["NOTE_108"] = "Conjunto legendario de Shadowlands"

L["NOTE_110"] = "Conjunto de JcJ de Shadowlands"
L["NOTE_111"] = "Conjunto de Shadowlands creado"
L["NOTE_115"] = "Conjunto de llamadas de Shadowlands"
L["NOTE_116"] = "Conjunto de Korthia de Shadowlands"
L["NOTE_117"] = "Conjunto de Zereth Mortis de Shadowlands"

L["NOTE_118"] = "Puesto de intercambio"
L["NOTE_119"] = "Conjunto de objetos grises"
L["NOTE_120"] = "Conjunto de objetos blancos"
L["NOTE_121"] = "Festividad"
L["NOTE_122"] = "Conjunto de Sabellian"
L["NOTE_123"] = "Archivos de Azeroth"
L["NOTE_125"] = "Atuendo de Plunderlord"
L["NOTE_126"] = "Conjunto inicial de clase"
L["NOTE_127"] = "Conjunto de clase"
L["NOTE_128"] = "Conjunto del evento de lanzamiento de War Within"
L["NOTE_129"] = "Equipo subterráneo"
L["NOTE_130"] = "Equipo de Hallowfall"


L["Swap to Better Wardrobe View"] = "Cambiar a vista de Better Wardrobe"
L["Swap to Extended Transmog Sets View"] = "Cambiar a vista de conjuntos de transfiguración extendidos"
