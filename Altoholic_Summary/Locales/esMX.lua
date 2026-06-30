local L = AddonFactory:SetLocale("Altoholic", "esMX")
if not L then return end

L["Calendar"] = "Calendario"
L["Tooltip"] = "Ventana emergente"
L["Getting support"] = "Obtener soporte"
L["Memory used"] = "Memoria utilizada"
L["Reset all data"] = "Restablecer todos los datos"
L["WIPE_DATABASE"] = "¿Eliminar la base de datos?"
L["WIPE_WARNING"] = "¡Advertencia: toda la información se perderá!"
L["DATABASE_WIPED"] = "¡La información guardada en DataStore ha sido completamente eliminada!"

L["Account"] = "Cuenta"
L["Default"] = "Predeterminado"
L["Characters"] = "Personajes"
L["Realms"] = "Reinos"
L["%s%d%s characters found : did you set your filters properly ?"] = "%s%d%s personajes encontrados: ¿Has configurado bien tus filtros?"

-- ** Menu **
L["Character Information"] = "Información del personaje"
L["Account Summary"] = "Resumen de la Cuenta"
L["Experience"] = "Experiencia"
L["Levels"] = "Niveles"
L["Location"] = "Ubicación"
L["Bag Usage"] = "Bolsas"
L["Activity"] = "Actividad"
L["Equipment"] = "Equipo"
L["Currencies"] = "Monedas"
L["PATCH_X.0"] = "Parche de expansión"
L["PATCH_9.1"] = "Chains of Domination"
L["PATCH_9.2"] = "Eternity's End"
L["PATCH_10.1"] = "Embers of Neltharion"
L["PATCH_10.2"] = "Guardians of the Dream"
L["PATCH_11.1"] = "Undermine(d)"

-- ** Filter Icons **
L["FILTER_REALMS"] = "Filtro de reinos"
L["FILTER_FACTIONS"] = "Filtro de facción"
L["FILTER_LEVELS"] = "Filtro de nivel"
L["FILTER_PROFESSIONS"] = "Filtro de profesión"
L["FILTER_CLASSES"] = "Filtro de clase"
L["FILTER_RACES"] = "Filtro de raza"
L["FILTER_MISC"] = "Filtros varios"
L["FILTER_BANKTYPE"] = "Filtros de personajes banqueros"
L["This realm"] = "Este reino"
L["All realms"] = "Todos los reinos"
L["This account"] = "Esta cuenta"
L["All accounts"] = "Todas las cuentas"
L["This faction"] = "Esta facción"
L["Both factions"] = "Ambas facciones"
L["Any"] = "Todos"
L["Allied Races"] = "Razas aliadas"
L["ACCOUNT_SHARING_BUTTON_TITLE"] = "Solicitud de compartición de cuenta"
L["ACCOUNT_SHARING_BUTTON_INFO"] = "Haz clic en este botón para preguntarle a un jugador\nsi quiere compartir toda su base de datos de Altoholic\npara añadirla a la tuya"

L["FILTER_ALT_GROUPS"] = "Grupos de alters"
L["FILTER_GROUP_CREATE"] = "Crear nuevo grupo"
L["FILTER_GROUP_DELETE"] = "Eliminar grupo de alters"
L["FILTER_GROUP_RENAME"] = "Renombrar grupo de alters"
L["ENTER_GROUP_NAME"] = "Introduce un nombre para el nuevo grupo"
L["CHANGE_GROUP_NAME"] = "Selecciona un nuevo nombre para %s%s|r"
L["ENTER_GROUP_NAME_WARNING"] = "Se recomienda evitar caracteres especiales"
L["DELETE_GROUP_NAME"] = "¿Eliminar este grupo de alters?"
L["ALT_GROUP_CREATED"] = "Grupo %s fue creado con éxito."
L["ALT_GROUP_ALREADY_EXISTS"] = "El grupo de alters %s ya existe."
L["ALT_GROUP_RENAMED"] = "%s renombrado con éxito a %s"
L["ALT_GROUP_NOT_RENAMED"] = "%s no pudo ser renombrado a %s"
L["ALT_GROUP_DELETED"] = "Grupo de alters %s fue eliminado con éxito."
L["ALT_GROUP_NOT_FOUND"] = "Grupo de alters %s no encontrado."

L["COLORED_SKILL_LEVELS"] = "Usar color para los niveles de habilidad"
L["FILTER_MISC_HAVE_MAILS"] = "Con correos"
L["FILTER_MISC_HAVE_MAILS_EXPIRE_SOON"] = "Con correos a punto de expirar"
L["FILTER_MISC_HAVE_AUCTIONS_EXPIRE_SOON"] = "Casa de subastas no revisada recientemente"
L["FILTER_MISC_GUILD_EXALTED"] = "Exaltado con la hermandad"
L["FILTER_MISC_GUILD_NOT_EXALTED"] = "No exaltado con la hermandad"
L["FILTER_MISC_UPGRADE_RIDING_SKILL"] = "Podría mejorar su habilidad de equitación"


-- *** Character Information / Account Summary ***
-- Column Name
L["Totals"] = "Totales"
L["Right-Click for options"] = "Clic derecho para opciones"
L["Character %s successfully deleted"] = "Personaje %s eliminado correctamente"
L["Realm %s successfully deleted"] = "Reino %s borrado correctamente"
L["Cannot delete current character"] = "No se puede borrar el personaje actual"
L["Cannot delete current realm"] = "No se puede borrar el reino actual"
L["Delete this Alt"] = "Borrar este alter"
L["Delete this Realm"] = "Borrar este reino"
L["Update from %s%s"] = "Actualizar desde %s%s"

L["View"] = "Ver"
L["Mark as bank"] = "Marcar como banco"
L["Mark as profession bank"] = "Marcar como banco de profesión"
L["Mark as expansion bank"] = "Marcar como banco de expansión"
L["Add to group"] = "Agregar al grupo"
L["Remove from group"] = "Eliminar del grupo"



-- Column Level
L["COLUMN_LEVEL_TITLE"] = "Nivel del personaje"
L["COLUMN_LEVEL_TITLE_SHORT"] = "Nivel"
L["COLUMN_LEVEL_SUBTITLE"] = "Haz clic en el nivel para alternar decimales"

-- Column Rest XP
L["COLUMN_RESTXP_TITLE"] = "Experiencia en reposo"
L["COLUMN_RESTXP_TITLE_SHORT"] = "XP en reposo"
L["COLUMN_RESTXP_SUBTITLE"] = "Haz clic para alternar entre modo 100%/150%"
L["COLUMN_RESTXP_DETAIL_1"] = "Se necesitan 8 horas para ganar 1 burbuja de XP (5%)."
L["COLUMN_RESTXP_DETAIL_2"] = "La XP en reposo máxima es de 30 burbujas de XP, o 1.5 niveles."
L["COLUMN_RESTXP_DETAIL_3"] = "Se consigue en 10 días."
L["COLUMN_RESTXP_DETAIL_4"] = "%d%% modo completamente descansado se muestra como: '%d%%'"
L["Fully rested"] = "Completamente descansado"
L["Fully rested in"] = "Completamente descansado en"
L["CHARACTER_NOT_IN_RESTING_AREA"] = "¡Este personaje no está en un área de descanso!"

-- Column Money
L["COLUMN_MONEY_TITLE"] = "Oro"
L["COLUMN_MONEY_TITLE_SHORT"] = "Oro"
L["COLUMN_MONEY_SUBTITLE_1"] = "Tus monedas"
L["COLUMN_MONEY_SUBTITLE_2"] = "Más dinero, más problemas"
L["COLUMN_MONEY_SUBTITLE_3"] = "La codicia es buena"
L["COLUMN_MONEY_SUBTITLE_4"] = "No se puede comprar la felicidad... ¡pero se pueden comprar montones de monturas!"
L["COLUMN_MONEY_SUBTITLE_5"] = "No crece en los árboles del mundo."

-- Column Played
L["COLUMN_PLAYED_TITLE"] = "Tiempo total jugado"
L["COLUMN_PLAYED_TITLE_SHORT"] = "Tiempo jugado"
L["COLUMN_PLAYED_SUBTITLE"] = "Haz clic para mostrar/ocultar el tiempo de juego real"

-- Column iLevel
L["COLUMN_ILEVEL_TITLE"] = "Nivel de objeto"
L["COLUMN_ILEVEL_TITLE_SHORT"] = "iLvl"
L["COLUMN_ILEVEL_SUBTITLE"] = "Haz clic en el nivel para alternar decimales"

-- Column Last Online
L["COLUMN_LASTONLINE_TITLE"] = "Última conexión"
L["COLUMN_LASTONLINE_TITLE_SHORT"] = "Sesión"
L["COLUMN_LASTONLINE_SUBTITLE"] = "Última vez que el personaje se conectó"

-- *** Character Information / Experience ***
L["COLUMN_MAXRESTXP_TITLE"] = "XP Máxima en Reposo"
L["COLUMN_MAXRESTXP_TITLE_SHORT"] = "XP Máx."
L["COLUMN_MAXRESTXP_SUBTITLE"] = "Experiencia en reposo máxima que se puede acumular"
L["COLUMN_SAVEDRESTXP_TITLE"] = "XP en Reposo Guardada"
L["COLUMN_SAVEDRESTXP_TITLE_SHORT"] = "XP Guardada"
L["COLUMN_SAVEDRESTXP_SUBTITLE"] = "Cantidad de experiencia en reposo no utilizada al cerrar sesión"
L["COLUMN_EARNEDRESTXP_TITLE"] = "XP ganada mientras descansabas"
L["COLUMN_EARNEDRESTXP_TITLE_SHORT"] = "XP Ganada"
L["COLUMN_EARNEDRESTXP_SUBTITLE"] = "Cantidad de experiencia en reposo ganada mientras descansabas"

-- *** Información del personaje / Equipo ***
L["COLUMN_EQUIP_HIGHEST_TITLE"] = "Mejor pieza de equipo";
L["COLUMN_EQUIP_HIGHEST_TITLE_SHORT"] = "Mejor";
L["COLUMN_EQUIP_HIGHEST_SUBTITLE"] = "Nivel de objeto de tu mejor pieza de equipo";
L["COLUMN_EQUIP_LOWEST_TITLE"] = "Peor pieza de equipo";
L["COLUMN_EQUIP_LOWEST_TITLE_SHORT"] = "Peor";
L["COLUMN_EQUIP_LOWEST_SUBTITLE"] = "Nivel de objeto de tu peor pieza de equipo";
L["COLUMN_EQUIP_NUM_GREENS_TITLE"] = "Equipo poco común";
L["COLUMN_EQUIP_NUM_GREENS_SUBTITLE"] = "Cantidad de objetos poco comunes equipados";
L["COLUMN_EQUIP_NUM_BLUES_TITLE"] = "Equipo raro";
L["COLUMN_EQUIP_NUM_BLUES_SUBTITLE"] = "Cantidad de objetos raros equipados";
L["COLUMN_EQUIP_NUM_EPICS_TITLE"] = "Equipo épico";
L["COLUMN_EQUIP_NUM_EPICS_SUBTITLE"] = "Cantidad de objetos épicos equipados";
L["COLUMN_EQUIP_NUM_HEIRLOOMS_TITLE"] = "Equipo de reliquia";
L["COLUMN_EQUIP_NUM_HEIRLOOMS_SUBTITLE"] = "Cantidad de objetos de reliquia equipados";



-- *** Character Information / Guild ***
L["COLUMN_GUILD_TITLE"] = "Nombre de la hermandad"
L["COLUMN_GUILDRANK_TITLE"] = "Rango de hermandad"
L["COLUMN_GUILDRANK_TITLE_SHORT"] = "Rango"
L["COLUMN_GUILDRANK_SUBTITLE"] = "Rango del personaje en la hermandad"
L["COLUMN_GUILDREP_TITLE"] = "Reputación de hermandad"
L["COLUMN_GUILDREP_SUBTITLE"] = "Reputación del personaje con la hermandad"

-- *** Character Information / Location ***
L["COLUMN_HEARTHSTONE_TITLE"] = "Piedra de hogar"
L["COLUMN_HEARTHSTONE_SUBTITLE"] = "Ese lugar especial al que llamas hogar"
L["COLUMN_SUBZONE_TITLE"] = "Subzona"

-- *** Character Information / Miscellaneous ***
L["COLUMN_CLASS_SUBTITLE"] = "Clase del personaje y especialización activa"
L["COLUMN_BANK_TYPE_MARKS"] = "Marcas tipo banco"
L["COLUMN_BANK_TYPE_MARKS_SUBTITLE"] = "Lista de marcas establecidas para los personajes banqueros"

-- *** Bag Usage ***
L["COLUMN_BAGS_TITLE"] = "Bolsas del personaje"
L["COLUMN_BAGS_TITLE_SHORT"] = "Bolsas"
L["COLUMN_BAGS_SUBTITLE_1"] = "Las ranuras de tu inventario principal"
L["COLUMN_BAGS_SUBTITLE_2"] = "Más grande siempre es mejor"
L["COLUMN_FREEBAGSLOTS_TITLE"] = "Ranuras para bolsas libres"
L["COLUMN_FREEBAGSLOTS_TITLE_SHORT"] = "Libre"
L["COLUMN_FREEBAGSLOTS_SUBTITLE"] = "Ranuras libres vs totales"
L["COLUMN_BANK_TITLE"] = "Banco del personaje"
L["COLUMN_BANK_TITLE_SHORT"] = "Banco"
L["COLUMN_BANK_SUBTITLE_1"] = "Tus ranuras de inventario del banco"
L["COLUMN_BANK_SUBTITLE_2"] = "Donde los materiales viejos van a descansar"
L["COLUMN_FREEBANKLOTS_TITLE"] = "Ranuras del banco libres"
L["COLUMN_FREEBANKLOTS_TITLE_SHORT"] = "Libre"
L["COLUMN_FREEBANKLOTS_SUBTITLE"] = "Ranuras libres vs totales"
L["NUM_SLOTS_AND_FREE"] = "%s%d%s ranuras, %s%d%s libre"

L["Bags"] = "Bolsas"
L["Bank"] = "Banco"
L["Bank bag"] = "Bolsa en banco"
L["Bank not visited yet"] = "Banco no visitado aún"
L["Not purchased yet"] = "Aún no adquirido"
L["slots"] = "ranuras"

-- *** Skills ***
L["COLUMN_PROFESSION_1_TITLE"] = "Primera profesión."
L["COLUMN_PROFESSION_1_TITLE_SHORT"] = "Prof. 1"
L["COLUMN_PROFESSION_2_TITLE"] = "Segunda profesión."
L["COLUMN_PROFESSION_2_TITLE_SHORT"] = "Prof. 2"
L["COLUMN_RIDING_UPGRADEABLE_MALE"] = "Este personaje podría mejorar su habilidad de equitación"
L["COLUMN_RIDING_UPGRADEABLE_FEMALE"] = "Este personaje podría mejorar su habilidad de equitación"
L["COLUMN_SKILLS_NODATA"] = "Abre la profesión de este personaje para cargar las recetas"
L["COLUMN_SKILLS_NOT_LEARNED"] = "Profesión aún no aprendida"

L["COLOR_GREEN"] = "Verde"
L["COLOR_GREY"] = "Gris"
L["COLOR_ORANGE"] = "Naranja"
L["COLOR_RED"] = "Rojo"
L["COLOR_YELLOW"] = "Amarillo"

L["up to"] = "hasta"
L["at"] = "a"
L["and above"] = "y por encima"
L["No data"] = "Sin datos"
L["Suggestion"] = "Sugerencia"
L["All cooldowns are up"] = "No hay habilidades recargándose"
L["Riding"] = "Equitación"

-- *** Activity ***
L["COLUMN_MAILS_TITLE"] = "Contenido del buzón"
L["COLUMN_MAILS_TITLE_SHORT"] = "Correos"
L["COLUMN_MAILS_SUBTITLE"] = "Número de objetos en el buzón"
L["COLUMN_MAILS_DETAIL_1"] = "Más allá de un cierto límite, los correos se almacenan en cola del servidor."
L["COLUMN_MAILS_DETAIL_2"] = "Estos correos no están contabilizados aquí."
L["COLUMN_MAILBOX_VISITED_TITLE"] = "Última revisión del buzón"
L["COLUMN_MAILBOX_VISITED_TITLE_SHORT"] = "Visita"
L["COLUMN_MAILBOX_VISITED_SUBTITLE"] = "Última vez que se revisó el contenido del buzón"

L["COLUMN_MAILS_NUM_RETURNS_TITLE"] = "Cantidad de devoluciones";
L["COLUMN_MAILS_NUM_RETURNS_TITLE_SHORT"] = "Devoluciones";
L["COLUMN_MAILS_NUM_RETURNS_SUBTITLE"] = "Cantidad de correos que serán devueltos al remitente al expirar";
L["COLUMN_MAILS_CLOSEST_RETURN_TITLE"] = "Devolución más próxima";
L["COLUMN_MAILS_CLOSEST_RETURN_TITLE_SHORT"] = "Devolución próxima";
L["COLUMN_MAILS_CLOSEST_RETURN_SUBTITLE"] = "Duración mínima antes de que el correo de un personaje sea devuelto al remitente";
L["COLUMN_MAILS_NUM_DELETIONS_TITLE"] = "Cantidad de eliminaciones";
L["COLUMN_MAILS_NUM_DELETIONS_TITLE_SHORT"] = "Eliminaciones";
L["COLUMN_MAILS_NUM_DELETIONS_SUBTITLE"] = "Cantidad de correos que serán eliminados al expirar";
L["COLUMN_MAILS_CLOSEST_DELETION_TITLE"] = "Eliminación más próxima";
L["COLUMN_MAILS_CLOSEST_DELETION_TITLE_SHORT"] = "Eliminación próxima";
L["COLUMN_MAILS_CLOSEST_DELETION_SUBTITLE"] = "Duración mínima antes de que el correo de un personaje sea eliminado";

L["COLUMN_AUCTIONS_TITLE"] = "Subastas en la casa de subastas"
L["COLUMN_AUCTIONS_TITLE_SHORT"] = "Subastas"
L["COLUMN_AUCTIONS_SUBTITLE"] = "Número de subastas activas en la casa de subastas"
L["COLUMN_AUCTIONS_LOW_BUYOUT_TITLE"] = "Precio de compra más bajo";
L["COLUMN_AUCTIONS_LOW_BUYOUT_TITLE_SHORT"] = "Compra más baja";
L["COLUMN_AUCTIONS_LOW_BUYOUT_SUBTITLE"] = "Precio de compra más bajo establecido para todas las subastas activas";
L["COLUMN_AUCTIONS_HIGH_BUYOUT_TITLE"] = "Precio de compra más alto";
L["COLUMN_AUCTIONS_HIGH_BUYOUT_TITLE_SHORT"] = "Compra más alta";
L["COLUMN_AUCTIONS_HIGH_BUYOUT_SUBTITLE"] = "Precio de compra más alto establecido para todas las subastas activas";
L["COLUMN_AUCTIONS_CLOSEST_EXPIRY_TITLE"] = "Expiración más próxima";
L["COLUMN_AUCTIONS_CLOSEST_EXPIRY_TITLE_SHORT"] = "Expiración próxima";
L["COLUMN_AUCTIONS_CLOSEST_EXPIRY_SUBTITLE"] = "Tiempo antes de que expire la primera subasta";

L["COLUMN_BIDS_TITLE"] = "Pujas en la casa de subastas"
L["COLUMN_BIDS_TITLE_SHORT"] = "Pujas"
L["COLUMN_BIDS_SUBTITLE"] = "Número de pujas realizadas en la casa de subastas"
L["COLUMN_AUCTIONHOUSE_VISITED_TITLE"] = "Última visita a la casa de subastas"
L["COLUMN_AUCTIONHOUSE_VISITED_TITLE_SHORT"] = "Visita"
L["COLUMN_AUCTIONHOUSE_VISITED_SUBTITLE"] = "Última vez que se visitó la casa de subastas"
L["COLUMN_GARRISON_MISSIONS_TITLE"] = "Misiones de la fortaleza"
L["COLUMN_GARRISON_MISSIONS_TITLE_SHORT"] = "Misiones"
L["COLUMN_GARRISON_MISSIONS_SUBTITLE"] = "Última vez que se revisó el estado de la misión"
L["COLUMN_GARRISON_MISSIONS_DETAIL_1"] = "Al menos una misión está completa"
L["COLUMN_GARRISON_MISSIONS_DETAIL_2"] = "Todas las misiones están completas"
L["COLUMN_GARRISON_MISSIONS_DETAIL_3"] = "No hay misiones en curso"

L["Visited"] = "Visitado"


-- *** Currencies ***
L["Last collected"] = "Última recogida"
L["Garrison resources"] = "Recursos de la fortaleza"
L["Uncollected resources"] = "Recursos sin recoger"
L["Max. uncollected resources in"] = "Máx. recursos no recogidos en"


-- *** Expansion Features / Garrison Followers ***
L["COLUMN_FOLLOWERS_LV40_TITLE"] = "Seguidores de nivel 40"
L["COLUMN_FOLLOWERS_LV40_TITLE_SHORT"] = "Lv 40"
L["COLUMN_FOLLOWERS_LV40_SUBTITLE"] = "Nivel 40 vs Total de seguidores"
L["COLUMN_FOLLOWERS_RARITY_TITLE"] = "Nivel de rareza de los seguidores"
L["COLUMN_FOLLOWERS_RARITY_TITLE_SHORT"] = "Rareza"
L["COLUMN_FOLLOWERS_RARITY_SUBTITLE"] = "Rareza rara vs épica" 
L["COLUMN_FOLLOWERS_ILEVEL_TITLE"] = "Seguidores con %s iLevel"
L["COLUMN_FOLLOWERS_ILEVEL_SUBTITLE"] = "iLevel %s" 
L["COLUMN_FOLLOWERS_AIL_TITLE"] = "AiL de los seguidores"
L["COLUMN_FOLLOWERS_AIL_TITLE_SHORT"] = "iLvl"
L["COLUMN_FOLLOWERS_AIL_SUBTITLE"] = "Nivel promedio de objeto de todos los seguidores activos" 

-- *** Expansion Features / Artifacts ***

-- *** Expansion Features / Covenant ***
L["COLUMN_COVENANT_SUBTITLE"] = "Haz clic para ver tus enlaces de alma"
L["COLUMN_COVENANT_TITLE"] = "Curia elegida"
L["COLUMN_COVENANT_TITLE_SHORT"] = "Curia"
L["COLUMN_SOULBIND_SUBTITLE"] = "Haz clic para ver tus enlaces de alma"
L["COLUMN_SOULBIND_TITLE"] = "Enlace de alma activo"
L["COLUMN_SOULBIND_TITLE_SHORT"] = "Enlace de alma"
L["COLUMN_RENOWN_SUBTITLE"] = "Haz clic para ver tu nivel de renombre y recompensas"
L["COLUMN_RENOWN_TITLE"] = "Nivel de renombre"
L["COLUMN_CAMPAIGNPROGRESS_TITLE_SHORT"] = "Historia"
L["COLUMN_CAMPAIGNPROGRESS_TITLE"] = "Progreso de la campaña"
L["COLUMN_CAMPAIGNPROGRESS_SUBTITLE"] = "Número de capítulos completados en la campaña de la curia"

-- *** Expansion Features / Reservoir ***
L["COLUMN_TRANSPORT_NETWORK_TITLE"] = "Red de transporte"
L["COLUMN_ANIMA_TITLE"] = "Conductor de ánima"
L["COLUMN_COMMAND_TABLE_TITLE"] = "Mesa de seguidores"
L["COLUMN_SANCTUM_UNIQUE_TITLE"] = "Actividad única"
L["COLUMN_CYPHER_NODATA"] = "Visita la consola de investigación de este personaje en el Hoyo de los Exiliados en Zereth Mortis"
L["COLUMN_SANCTUM_NODATA"] = "Visita el reservorio del santuario de este personaje en su covenant para completar este valor"
L["COLUMN_SOULBIND_NODATA"] = "Visita la forja de vínculos de este personaje en su covenant para completar este valor"

L["Overall"] = "Overall"
L["Torghast"] = "Torghast"
L["Single target build"] = "Conjunto de un solo objetivo"
L["AOE build"] = "Conjunto AOE"
L["Recommended Covenant"] = "Curia recomendada"
L["Equally viable"] = "Igualmente viable"


-- *** Mythic Keystone ***
L["Mythic+ Keystone"] = "Piedra angular Mítica+"
L["COLUMN_KEYNAME_TITLE"] = "Piedra angular Mítica+ actual"
L["COLUMN_KEYNAME_TITLE_SHORT"] = "Piedra angular"
L["COLUMN_KEYNAME_SUBTITLE"] = "Tu próxima aventura"
L["COLUMN_KEYLEVEL_TITLE"] = "Nivel de piedra angular Mítica+ actual"
L["COLUMN_KEYLEVEL_SUBTITLE"] = "¡Definitivamente no estás preparado!"
L["COLUMN_WEEKLYBEST_KEYNAME_TITLE"] = "Mejor piedra angular Mítica+ semanal"
L["COLUMN_WEEKLYBEST_KEYNAME_SUBTITLE"] = "Pasa el ratón por encima para ver lo mejor de la semana para todos los mapas"
L["COLUMN_WEEKLYBEST_KEYLEVEL_TITLE"] = "Mejor nivel de piedra angular Mítica+ semanal"
L["COLUMN_WEEKLYBEST_KEYLEVEL_SUBTITLE"] = "Qué tan profundo has ido"
L["COLUMN_WEEKLYBEST_KEYTIME_TITLE"] = "Mejor tiempo de piedra angular Mítica+ semanal"
L["COLUMN_WEEKLYBEST_KEYTIME_SUBTITLE"] = "Pasa el ratón por encima para ver la mejor temporada de todos los mapas"
L["COLUMN_WEEKLYBEST_DUNGEON_SUBTITLE"] = "Llave más alta completada esta semana para este calabozo"