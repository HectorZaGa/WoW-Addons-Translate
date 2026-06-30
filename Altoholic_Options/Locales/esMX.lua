local L = AddonFactory:SetLocale("Altoholic", "esMX")
if not L then return end

-- ** Menu **
L["Settings"] = "Ajustes"
L["Calendar"] = "Calendario"
L["Tooltip"] = "Ventana emergente"
L["Enabled"] = "Activado"
L["Disabled"] = "Desactivado"
L["Character"] = "Personaje"
L["Characters"] = "Personajes"
L["Alt groups"] = "Grupos de alters"
L["Bank characters"] = "Personajes de banco"
L["Account Sharing"] = "Compartición de cuenta"
L["How to"] = "Cómo"
L["Saved Variables"] = "Variables guardadas"
L["Getting support"] = "Obtener soporte"
L["About"] = "Acerca de"

L["CTRL_C_TO_COPY"] = "|cFF1CFAFECTRL+C|r para copiar esta dirección, |cFF1CFAFEESC|r para ocultar"
L["WOWI_ICON_ON_ENTER"] = "Haz clic para mostrar la página del complemento en WoW Interface"
L["CURSE_ICON_ON_ENTER"] = "Haz clic para mostrar la página del complemento en Curseforge"
L["DISCORD_ICON_ON_ENTER"] = "Haz clic para mostrar la dirección del servidor de Discord"
L["EMAIL_ICON_ON_ENTER"] = "Haz clic para mostrar la dirección de correo electrónico de Thaoky"
L["GITHUB_ICON_ON_ENTER"] = "Haz clic para mostrar la dirección de Github de Thaoky"
L["TAB_NOT_LOADED_YET"] = "Pestaña no cargada aún"


-- ** Settings / Altoholic / General **
L["General Options"] = "Opciones generales"
L["Minimap Icon Angle"] = "Ángulo del icono del minimapa"
L["Minimap Icon Radius"] = "Radio del icono del minimapa"
L["Transparency"] = "Transparencia"

L["BANK_AUTO_UPDATE_TEXT"] = "Autorizar automáticamente las actualizaciones el banco de la hermandad"
L["BANK_AUTO_UPDATE_TITLE"] = "Actualizaciones del banco de la hermandad"
L["BANK_AUTO_UPDATE_ENABLED"] = "Tus compañeros de hermandad que también están usando Altoholic podrán actualizar automáticamente su información del banco de la hermandad con la tuya, si es más reciente."
L["BANK_AUTO_UPDATE_DISABLED"] = "Se requerirá tu confirmación antes de enviar cualquier información."

L["CLAMP_TO_SCREEN_TEXT"] = "Fijar ventana a la pantalla"
L["CLAMP_TO_SCREEN_TITLE"] = "Fijar ventana a la pantalla"
L["CLAMP_TO_SCREEN_ENABLED"] = "La interfaz de Altoholic no se desbordará fuera de los límites de la pantalla"
L["CLAMP_TO_SCREEN_DISABLED"] = "La interfaz de Altoholic se podrá mover a cualquier lugar, con partes saliéndose de la pantalla"

L["SHOW_ICON_TEXT"] = "Mostrar icono del minimapa"
L["SHOW_ICON_TITLE"] = "Mostrar icono del minimapa"
L["SHOW_ICON_ENABLED"] = "El icono de Altoholic será visible alrededor del minimapa"
L["SHOW_ICON_DISABLED"] = "El icono de Altoholic estará oculto"

L["Move to change the angle of the minimap icon"] = "Mover para cambiar el ángulo del icono en el minimapa"
L["Move to change the radius of the minimap icon"] = "Mover para cambiar el radio del icono en el minimapa"
L["UI_SCALE_TOOLTIP"] = "Mover para cambiar la escala de la interfaz"
L["UI_TRANSPARENCY_TOOLTIP"] = "Mover para hacer la interfaz transparente"


-- ** Settings / Altoholic / Mail **
L["Mail Options"] = "Opciones de correo"

L["AUTO_COMPLETE_PRIORITY"] = "Prioridad de autocompletado"
L["AUTO_COMPLETE_BY_NAME"] = "Orden alfabético"
L["AUTO_COMPLETE_BY_MOST_PLAYED"] = "Más alto/jugado"
L["AUTO_COMPLETE_BY_LAST_PLAYED"] = "Jugado más recientemente"

L["GUILD_WARNING_TEXT"] = "Notificación de nuevo correo"
L["GUILD_WARNING_TITLE"] = "Notificación de correo de la hermandad"
L["GUILD_WARNING_ENABLED"] = "Recibirás una notificación cuando un compañero de hermandad envíe un correo a uno de tus alters.\n\nEl contenido del correo será visible directamente sin necesidad de reconectar ese alt."
L["GUILD_WARNING_DISABLED"] = "El correo aún se entregará directamente en el buzón de tu alter, pero no recibirás una notificación."

L["AUTO_COMPLETE_TEXT"] = "Autocompletar nombre del destinatario"
L["AUTO_COMPLETE_TITLE"] = "Autocompletar nombre del destinatario"
L["AUTO_COMPLETE_ENABLED"] = "Los nombres de tus alters se usarán como sugerencias al completar el nombre del destinatario en una bandeja de entrada."
L["AUTO_COMPLETE_DISABLED"] = "Los nombres de tus alters no se usarán como sugerencias."

L["TIME_TO_NEXT_WARNING_TEXT"] = "Tiempo hasta la próxima advertencia"
L["TIME_TO_NEXT_WARNING_TOOLTIP"] = "Tiempo mínimo antes de recibir la próxima advertencia de expiración de correo."


-- ** Settings / Altoholic / Tooltip **
L["Tooltip Options"] = "Opciones de ventana emergente"

L["TT_SHOW_ITEMSOURCE_TEXT"] = "Mostrar origen del objeto"
L["TT_SHOW_ITEMSOURCE_TITLE"] = "Origen del objeto"
L["TT_SHOW_ITEMSOURCE_ENABLED"] = [[Muestra información sobre el origen del objeto, como la profesión o el calabozo donde se obtiene.

Ej.:

 |cFFFFD700Info:|r |cFF00FF9AAlquimia, 65|r
 |cFFFFD700Goes in:|r |cFF00FF9ABolsa de gemas|r
 
o

 |cFFFFD700Raid:|r |cFF00FF9AMagma Core|r
 |cFFFFD700Boss:|r |cFF00FF9ARagnaros|r]]
L["TT_SHOW_ITEMSOURCE_DISABLED"] = "No se muestra ninguna información."

L["TT_SHOW_ITEMCOUNT_TEXT"] = "Mostrar cantidad de objetos por personaje"
L["TT_SHOW_ITEMCOUNT_TITLE"] = "Cantidad de objetos por personaje"
L["TT_SHOW_ITEMCOUNT_ENABLED"] = [[Muestra una línea de información por personaje que posee al menos una copia del objeto sobre el que se pasa el cursor.

Ej.:

    |cFF69CCF0Thaoky|r     |cFFFF7F003|r |cFFFFFFFF(Bolsas: |cFF00FF9A3|r)|r
    |cFFABD473Sira|r           |cFFFF7F006|r |cFFFFFFFF(Bolsas: |cFF00FF9A6|r)|r]]
L["TT_SHOW_ITEMCOUNT_DISABLED"] = "No se muestra ninguna información."

L["TT_SHOW_SIMPLECOUNT_TEXT"] = "Mostrar cantidad de objetos sin detalles"
L["TT_SHOW_SIMPLECOUNT_TITLE"] = "Cantidad de objetos sin detalles"
L["TT_SHOW_SIMPLECOUNT_ENABLED"] = [[Muestra solo la cantidad de objetos poseídos por un personaje, sin la ubicación.

Ej.:

    |cFF69CCF0Thaoky|r     |cFFFF7F003|r]]
L["TT_SHOW_SIMPLECOUNT_DISABLED"] = [[La información sobre la ubicación se mostrará normalmente.

Nota que esta opción está vinculada a
|cFFFF7F00Mostrar cantidad de objetos por personaje|r]]

L["TT_SHOW_TOTALCOUNT_TEXT"] = "Mostrar cantidad total de objetos"
L["TT_SHOW_TOTALCOUNT_TITLE"] = "Cantidad total de objetos"
L["TT_SHOW_TOTALCOUNT_ENABLED"] = [[Muestra la cantidad total de objetos poseídos por todos los personajes listados en la información sobre herramientas.

Nota que este total está influenciado por múltiples opciones de información sobre herramientas y varía dependiendo de qué personajes has elegido mostrar.

Ej.:

 |cFFFFD700Total poseído:|r |cFF00FF9A217|r]]
L["TT_SHOW_TOTALCOUNT_DISABLED"] = "La línea total no se muestra."

L["TT_SHOW_RECIPES_TEXT"] = "Mostrar recetas ya conocidas/aprendizables por"
L["TT_SHOW_RECIPES_TITLE"] = "Mostrar recetas ya conocidas/aprendizables por"
L["TT_SHOW_RECIPES_ENABLED"] = [[Muestra información sobre qué personajes ya conocen, podrían aprender o aprenderán más tarde una receta.

Ej.:

    |cFF00FF9AYa conocido por :|r |cFF69CCF0Thaoky|r
    |cFFFFFF00Podría ser aprendido por :|r |cFFABD473Sira|r]]
L["TT_SHOW_RECIPES_DISABLED"] = "No se muestra ninguna información."

L["TT_SHOW_GUILDBANKCOUNT_TEXT"] = "Mostrar cantidad en el banco de la hermandad"
L["TT_SHOW_GUILDBANKCOUNT_TITLE"] = "Cantidad en el banco de la hermandad"
L["TT_SHOW_GUILDBANKCOUNT_ENABLED"] = [[Muestra la cantidad total de objetos almacenados en los bancos de la hermandad.

Ej.:

    |cFF00FF00Odysseüs|r     |cFFFF7F0084|r |cFFFFFFFF(Banco de la hermandad: |cFF00FF9A84|r)|r]]
L["TT_SHOW_GUILDBANKCOUNT_DISABLED"] = "No se muestra ninguna información."

L["TT_INCLUDE_GUILDBANKCOUNT_TEXT"] = "Incluir cantidad del banco de la hermandad en el conteo total"
L["TT_INCLUDE_GUILDBANKCOUNT_TITLE"] = "Incluir cantidad del banco de la hermandad en el conteo total"
L["TT_INCLUDE_GUILDBANKCOUNT_ENABLED"] = "La cantidad de objetos almacenados en los bancos de la hermandad será contabilizada en el total."
L["TT_INCLUDE_GUILDBANKCOUNT_DISABLED"] = "La cantidad de objetos almacenados en los bancos de la hermandad será ignorada."

L["TT_DETAILED_BANKCOUNT_TEXT"] = "Conteo detallado del banco de la hermandad"
L["TT_DETAILED_BANKCOUNT_TITLE"] = "Conteo detallado del banco de la hermandad"
L["TT_DETAILED_BANKCOUNT_ENABLED"] = [[Muestra la cantidad de objetos almacenados en los bancos de la hermandad, por pestaña.

Ej.:

    |cFF00FF00Odysseüs|r     |cFFFF7F0084|r |cFFFFFFFF(Consumibles: |cFF00FF9A84|r)|r]]
L["TT_DETAILED_BANKCOUNT_DISABLED"] = [[Muestra 'Banco de la hermandad' en lugar del nombre de la pestaña.]]

L["TT_SHOW_GUILDBANKREALM_TEXT"] = "Mostrar reino del banco de la hermandad"
L["TT_SHOW_GUILDBANKREALM_TITLE"] = "Reino del banco de la hermandad"
L["TT_SHOW_GUILDBANKREALM_ENABLED"] = [[Muestra el reino en el que reside un banco de la hermandad.

Ej.:

    |cFF00FF00Odysseüs|r |cFFFFFF00(Marécages de Zangar)|r    |cFFFF7F0084|r |cFFFFFFFF(Banco de la hermandad: |cFF00FF9A84|r)|r]]
L["TT_SHOW_GUILDBANKREALM_DISABLED"] = "Muestra solo el nombre de la hermandad"

L["TT_SHOW_ACCOUNTBANKCOUNT_TEXT"] = "Mostrar conteo del banco de la cuenta"
L["TT_SHOW_ACCOUNTBANKCOUNT_TITLE"] = "Conteo del banco de la cuenta"
L["TT_SHOW_ACCOUNTBANKCOUNT_ENABLED"] = [[Muestra la cantidad total de artículos almacenados en el banco de la cuenta.

Ej.:

    |cFF00FF00Banco de la cuenta|r     |cFFFF7F0084|r |cFFFFFFFF(Banco de guerra 1: |cFF00FF9A84|r)|r]]
L["TT_SHOW_ACCOUNTBANKCOUNT_DISABLED"] = "No se muestra información."


L["TT_SHOW_ITEMID_TEXT"] = "Mostrar ID del objeto y nivel del objeto"
L["TT_SHOW_ITEMID_TITLE"] = "ID del objeto y nivel del objeto"
L["TT_SHOW_ITEMID_ENABLED"] = [[Muestra el ID del objeto y el nivel del objeto en la parte inferior de la información sobre herramientas.

Ej.:

    |cFFFFD700ID del objeto:|r |cFF00FF00140192|r             |cFFFFD700iLvl:|r |cFF00FF0035|r]]
L["TT_SHOW_ITEMID_DISABLED"] = "No se muestra ninguna información."

L["TT_SHOW_TOTALCOUNT_TEXT"] = "Mostrar cantidad total de objetos"
L["TT_SHOW_TOTALCOUNT_TITLE"] = "Cantidad total de objetos"
L["TT_SHOW_ITEMXPACK_ENABLED"] = [[Mostrar información extendida sobre el objeto, como la expansión a la que pertenece.

Ej.:

 |cFFFFD700Info:|r |cFF00FF9AAlquimia, 65|r
 |cFFFFD700Se usa en:|r |cFF00FF9A Bolsa de Gemas|r
 |cFFFFD700Expansión:|r |cFF00FF9ABurning Crusade|r |cFFFFFF00(2.0)|r]]
L["TT_SHOW_ITEMXPACK_DISABLED"] = [[No se muestra ninguna información.

Nota: esta opción está vinculada a 
|cFFFF7F00Mostrar fuente del objeto|r]]

L["TT_SHOW_COULDBESTORED_TEXT"] = "Mostrar ubicación alternativa de almacenamiento"
L["TT_SHOW_COULDBESTORED_TITLE"] = "Mostrar ubicación alternativa de almacenamiento"
L["TT_SHOW_COULDBESTORED_ENABLED"] = [[Mostrar en qué bancos alternativos podrían almacenarse materiales de expansiones anteriores.

Ej.:

 |cFFFFD700Podría almacenarse en:|r |cFF69CCF0Thaoky|r]]
L["TT_SHOW_COULDBESTORED_DISABLED"] = "No se muestra ninguna información."

L["TT_SHOW_NODES_TEXT"] = "Mostrar contadores en nodos de recolección"
L["TT_SHOW_NODES_TITLE"] = "Mostrar contadores en nodos de recolección"
L["TT_SHOW_NODES_ENABLED"] = "Cuando pases el ratón sobre un nodo de recolección (hierbas, minas), muestra la cantidad de objetos relacionados que posees."
L["TT_SHOW_NODES_DISABLED"] = "No se muestra ninguna información."

L["TT_SHOW_BOTHFACTIONS_TEXT"] = "Mostrar contadores para ambas facciones"
L["TT_SHOW_BOTHFACTIONS_TITLE"] = "Mostrar contadores para ambas facciones"
L["TT_SHOW_BOTHFACTIONS_ENABLED"] = "Mostrar la cantidad de objetos poseídos por personajes de la facción opuesta."
L["TT_SHOW_BOTHFACTIONS_DISABLED"] = "Solo se muestra información sobre la facción actual."

L["TT_SHOW_MERGEDREALMS_TEXT"] = "Mostrar contadores para reinos conectados"
L["TT_SHOW_MERGEDREALMS_TITLE"] = "Mostrar contadores para reinos conectados"
L["TT_SHOW_MERGEDREALMS_ENABLED"] = "Mostrar la cantidad de objetos poseídos por personajes en reinos conectados al reino actual."
L["TT_SHOW_MERGEDREALMS_DISABLED"] = "Solo se muestra información sobre el reino actual."

L["TT_SHOW_ALLREALMS_TEXT"] = "Mostrar contadores para todos los reinos"
L["TT_SHOW_ALLREALMS_TITLE"] = "Mostrar contadores para todos los reinos"
L["TT_SHOW_ALLREALMS_ENABLED"] = "La información de todos los reinos también se muestra para los objetos ligados a la cuenta."
L["TT_SHOW_ALLREALMS_DISABLED"] = [[Solo se muestra información sobre el reino actual.

Nota: esta opción reemplaza a |cFFFF7F00Mostrar contadores para reinos conectados|r para los objetos ligados a la cuenta.]]

L["TT_SHOW_ALLACCOUNTS_TEXT"] = "Mostrar contadores para todas las cuentas"
L["TT_SHOW_ALLACCOUNTS_TITLE"] = "Mostrar contadores para todas las cuentas"
L["TT_SHOW_ALLACCOUNTS_ENABLED"] = "También se muestra la información de todas las cuentas importadas."
L["TT_SHOW_ALLACCOUNTS_DISABLED"] = "Solo se muestra información sobre la cuenta actual."

L["TT_SHOW_HEARTHSTONE_TEXT"] = "Mostrar contadores para piedras de hogar"
L["TT_SHOW_HEARTHSTONE_TITLE"] = "Mostrar contadores para piedras de hogar"
L["TT_SHOW_HEARTHSTONE_ENABLED"] = "Mostrar contadores al pasar el ratón sobre una piedra de hogar, la brújula del almirante o el silbato del maestro de vuelo."
L["TT_SHOW_HEARTHSTONE_DISABLED"] = "Ocultar los contadores al pasar el ratón sobre uno de estos objetos."


-- ** Settings / Altoholic / Calendar **
L["Calendar Options"] = "Opciones de calendario"
L["Profession Cooldowns"] = "Tiempo de recarga de Profesiones"
L["Dungeon Resets"] = "Reinicios de calabozos"
L["Calendar Events"] = "Eventos del calendario"
L["Item Timers"] = "Temporizadores de Ítems"
L["Week starts on Monday"] = "La semana empieza el lunes"

L["CALENDAR_WEEKSTART_MONDAY_TEXT"] = "La semana comienza el lunes"
L["CALENDAR_WEEKSTART_MONDAY_TITLE"] = "La semana comienza el lunes"
L["CALENDAR_WEEKSTART_MONDAY_ENABLED"] = "POR HACER."
L["CALENDAR_WEEKSTART_MONDAY_DISABLED"] = "POR HACER."

L["CALENDAR_WARNINGS_DIALOG_TEXT"] = "Mostrar advertencias en un cuadro de diálogo"
L["CALENDAR_WARNINGS_DIALOG_TITLE"] = "Mostrar advertencias en un cuadro de diálogo"
L["CALENDAR_WARNINGS_DIALOG_ENABLED"] = "Las advertencias se mostrarán en un cuadro de diálogo, en lugar de en el marco de chat."
L["CALENDAR_WARNINGS_DIALOG_DISABLED"] = "Las advertencias solo se mostrarán en el marco de chat."

L["CALENDAR_WARNINGS_ENABLED_TEXT"] = "Habilitar Advertencias"
L["CALENDAR_WARNINGS_ENABLED_TITLE"] = "Habilitar Advertencias"
L["CALENDAR_WARNINGS_ENABLED_ENABLED"] = "Altoholic activará una advertencia cuando ocurra un evento específico."
L["CALENDAR_WARNINGS_ENABLED_DISABLED"] = "Altoholic no activará ninguna advertencia."



-- ** Settings / Altoholic / Miscellaneous **
L["Miscellaneous Options"] = "Opciones varias"
L["Use color-coding for recipes at the AH"] = "Usa códigos de colores para las recetas en la subasta"
L["Use color-coding for recipes at vendors"] = "Usa códigos de colores para las recetas en los vendedores"


-- ** Settings / DataStore / Auctions **
L["DataStore_Auctions' Options"] = "Opciones: DataStore_Auctions"

L["LAST_VISIT_SLIDER_LABEL"] = "Advertencia de Última Visita"
L["LAST_VISIT_SLIDER_TITLE"] = "Advertencia de Última Visita a la Casa de Subastas"
L["LAST_VISIT_SLIDER_TOOLTIP"] = "Advertir cuando la casa de subastas no haya sido visitada desde hace más días que este valor"

L["LAST_VISIT_CHECK_DISABLED"] = "No se comprobará el tiempo de la última visita a la casa de subastas."
L["LAST_VISIT_CHECK_ENABLED"] = "Se comprobará el tiempo de la última visita a la casa de subastas de cada personaje. Los complementos del cliente recibirán una notificación para cada personaje que no haya visitado la casa de subastas durante más tiempo del que se ha especificado."
L["LAST_VISIT_CHECK_LABEL"] = "Última Visita a la Casa de Subastas"
L["LAST_VISIT_CHECK_TITLE"] = "Comprobar Tiempo de Última Visita"

L["CLEAR_EXPIRED_ITEMS_DISABLED"] = "Objetos con tiempo terminado permanecen en la base de datos hasta que el jugador visite de nuevo la casa de subastas."
L["CLEAR_EXPIRED_ITEMS_ENABLED"] = "Objetos con tiempo terminado son borrados automáticamente de la base de datos."
L["CLEAR_EXPIRED_ITEMS_LABEL"] = "Borrar automáticamente subastas y pujas terminadas"
L["CLEAR_EXPIRED_ITEMS_TITLE"] = "Borrar objetos de la Casa de Subastas"

-- ** Settings / DataStore / Characters **
L["DataStore_Characters' Options"] = "Opciones: DataStore_Characters"
L["HIDE_PLAYTIME_DISABLED"] = "Se mostrará tu tiempo de juego real."
L["HIDE_PLAYTIME_ENABLED"] = "Se mostrará un tiempo de juego de cero días."
L["HIDE_PLAYTIME_TEXT"] = "Ocultar tiempo de juego real."
L["HIDE_PLAYTIME_TITLE"] = "Ocultar Tiempo de Juego Real"

L["REQUEST_PLAYTIME_DISABLED"] = "El tiempo de juego no será consultado al iniciar sesión. El último valor conocido será enviado a los complementos del cliente."
L["REQUEST_PLAYTIME_ENABLED"] = "El tiempo de juego será consultado cada vez que inicies sesión."
L["REQUEST_PLAYTIME_TEXT"] = "Solicitar tiempo de juego al iniciar sesión."
L["REQUEST_PLAYTIME_TITLE"] = "Solicitar Tiempo de Juego"


-- ** Settings / DataStore / Garrisons **
L["DataStore_Garrisons' Options"] = "Opciones: DataStore_Garrisons"
L["REPORT_LEVEL_LABEL"] = "Reportar en %s%s"
L["REPORT_LEVEL_TITLE"] = "Umbral de Reporte de Nivel"
L["REPORT_LEVEL_TOOLTIP"] = "Reportar cuando el nivel de recursos no recolectados sea mayor que este valor"

L["REPORT_UNCOLLECTED_LABEL"] = "Reportar recursos no recolectados"
L["REPORT_UNCOLLECTED_TITLE"] = "Reportar recursos no recolectados"
L["REPORT_UNCOLLECTED_ENABLED"] = "Al iniciar sesión, se reportarán en el marco de chat los personajes con más de 400 recursos no recolectados."
L["REPORT_UNCOLLECTED_DISABLED"] = "No se reportará nada."
L["UNCOLLECTED_RESOURCES_ALERT"] = "%s tiene %s recursos no recolectados"

-- ** Settings / DataStore / Inventory **
L["DataStore_Inventory's Options"] = "Opciones: DataStore_Inventory"
L["CLEAR_INVENTORY_TEXT"] = "Borrar automáticamente el equipamiento de los miembros de la hermandad"
L["CLEAR_INVENTORY_TITLE"] = "Borrado del equipamiento de los miembros de la hermandad"
L["CLEAR_INVENTORY_ENABLED"] = "Para ahorrar memoria, los inventarios de los miembros de la hermandad se borran cada vez que inicies sesión."
L["CLEAR_INVENTORY_DISABLED"] = "El equipo de tus compañeros de hermandad permanece en la base de datos, y es visible incluso si están desconectados."

L["BROADCAST_AIL_TEXT"] = "Transmitir mi nivel de objeto promedio a la hermandad al iniciar sesión"
L["BROADCAST_AIL_TITLE"] = "Transmitir nivel de objeto promedio"
L["BROADCAST_AIL_ENABLED"] = "El nivel de objeto promedio de tus personajes será enviado al canal de la hermandad al iniciar sesión."
L["BROADCAST_AIL_DISABLED"] = "No se enviará nada."

L["EQUIP_REQ_TEXT"] = "Recibir notificación cuando alguien inspeccione el equipo de uno de mis personajes."
L["EQUIP_REQ_TITLE"] = "Notificación de Solicitud de Equipamiento"
L["EQUIP_REQ_ENABLED"] = "Un mensaje en el chat te informará sobre qué miembro de la hermandad está inspeccionando a qué personaje."
L["EQUIP_REQ_DISABLED"] = "No se mostrará nada en absoluto."

-- ** Settings / DataStore / Mails **
L["DataStore_Mails' Options"] = "Opciones: DataStore_Mails"

L["SLIDER_EXPIRY_TITLE"] = "Umbral de Expiración de Correo"
L["SLIDER_EXPIRY_TOOLTIP"] = "Advertir cuando el correo expira en menos días que los indicados"

L["EXPIRY_CHECK_LABEL"] = "Advertencia de expiración del correo"
L["EXPIRY_CHECK_TITLE"] = "Revisar Tiempos de Borrado de Correo"
L["EXPIRY_CHECK_ENABLED"] = "Los tiempos de borrado de correo serán revisados 5 segundos después de iniciar sesión. Accesorios que use DataStore serán notificados si un correo a punto de borrarse es encontrado."
L["EXPIRY_CHECK_DISABLED"] = "No se realizará una revisión de tiempos de borrado."

L["REPORT_EXPIRED_MAILS_LABEL"] = "Advertencia de expiración de correo (ventana de chat)"
L["REPORT_EXPIRED_MAILS_TITLE"] = "Advertencia de expiración de correo (ventana de chat)"
L["REPORT_EXPIRED_MAILS_ENABLED"] = "Durante la verificación de expiración de correo, la lista de personajes con correos electrónicos expirados también se mostrará en la ventana de chat."
L["REPORT_EXPIRED_MAILS_DISABLED"] = "No se mostrará nada en la ventana de chat."

L["SCAN_MAIL_BODY_LABEL"] = "Analizar el contenido de los correos (marcarlos como leídos)"
L["SCAN_MAIL_BODY_TITLE"] = "Escaneo Completo del Correo"
L["SCAN_MAIL_BODY_ENABLED"] = "Los correos serán completamente escaneados al abrir el buzón. Todos los correos serán marcados como leídos."
L["SCAN_MAIL_BODY_DISABLED"] = "Sólo correos leídos serán escaneados. Los correos seguirán teniendo el estado de no leídos."

L["EXPIRY_ALL_ACCOUNTS_LABEL"] = "Revisar todos los tiempos de borrado de correo en todas las cuentas conocidas"
L["EXPIRY_ALL_ACCOUNTS_TITLE"] = "Revisión de Todas las Cuentas"
L["EXPIRY_ALL_ACCOUNTS_ENABLED"] = "La revisión de los tiempos de borrado de correo mirará todas las cuentas conocidas."
L["EXPIRY_ALL_ACCOUNTS_DISABLED"] = "Sólo la cuenta actual será tomada en consideración; cuentas importadas serán ignoradas."

L["EXPIRY_ALL_REALMS_LABEL"] = "Revisar todos los tiempos de borrado de correo en todas los reinos conocidos"
L["EXPIRY_ALL_REALMS_TITLE"] = "Revisión de Todos los Reinos"
L["EXPIRY_ALL_REALMS_ENABLED"] = "La revisión de los tiempos de borrado de correo mirará todas los reinos conocidos."
L["EXPIRY_ALL_REALMS_DISABLED"] = "Sólo el reino actual será tomado en consideración; otros reinos serán ignorados."

L["EXPIRED_EMAILS_WARNING"] = "%s (%s) tiene correos expirados (o a punto de expirar) "

-- ** Settings / DataStore / Quests **
L["DataStore_Quests' Options"] = "Opciones: DataStore_Quests"

L["TRACK_TURNINS_LABEL"] = "Rastrear Entregas de Misiones"
L["TRACK_TURNINS_TITLE"] = "Rastrear Entregas de Misiones"
L["TRACK_TURNINS_ENABLED"] = "Las misiones entregadas se guardan en el historial para asegurar que se mantenga constantemente actualizado."
L["TRACK_TURNINS_DISABLED"] = "El historial de misiones permanecerá en su estado actual, ya sea vacío o desactualizado."

L["AUTO_UPDATE_LABEL"] = "Actualización Automática del Historial"
L["AUTO_UPDATE_TITLE"] = "Actualización Automática del Historial de Misiones"
L["AUTO_UPDATE_ENABLED"] = "El historial de misiones de un personaje se actualizará cada vez que inicies sesión con ese personaje."
L["AUTO_UPDATE_DISABLED"] = "El historial de misiones permanecerá en su estado actual, ya sea vacío o desactualizado."

L["DAILY_QUESTS_RESET_LABEL"] = "Restablecer misiones diarias a"


-- ** Sharing / Authorizations **
L["Authorizations"] = "Autorizaciones"
L["Ask"] = "Preguntar"
L["Auto"] = "Automático"

L["ACCOUNT_SHARING_ACTIVE_LABEL"] = "Compartición de cuenta activada"
L["ACCOUNT_SHARING_ACTIVE_TITLE"] = "Compartición de cuenta activada"
L["ACCOUNT_SHARING_ACTIVE_ENABLED"] = [[Se permitirá a otros usuarios enviarte solicitudes de compartición de cuenta.

Aun así, se requerirá tu confirmación cada vez que alguien solicite tu información.]]
L["ACCOUNT_SHARING_ACTIVE_DISABLED"] = [[Todas las solicitudes serán rechazadas automáticamente.

|cFF1CFAFESugerencia de seguridad|r: Solo activa esto cuando realmente necesites transferir datos; desactívalo en caso contrario.]]

L["ACCOUNT_SHARING_AUTH_INFO"] = [[Esta lista te permite automatizar las respuestas a solicitudes de compartición de cuenta.
Puedes optar por |cFF00FF00aceptar|r o |cFFFF0000rechazar|r automáticamente las solicitudes, o ser |cFFFFFF00preguntado|r cuando llegue una solicitud.
Si la compartición de cuenta está totalmente desactivada, esta lista será ignorada y todas las solicitudes serán rechazadas.]]

L["ACCOUNT_SHARING_AUTH_ASK"] = "Pregúntame siempre que un jugador envíe una solicitud de compartición de cuenta"
L["ACCOUNT_SHARING_AUTH_AUTO"] = "Autoriza automáticamente las solicitudes de compartición de cuenta enviadas por este jugador"
L["ACCOUNT_SHARING_AUTH_NEVER"] = "Rechaza automáticamente las solicitudes de compartición de cuenta enviadas por este jugador"

-- ** Sharing / Content **
L["Shared Content"] = "Contenido compartido"


L["SHARED_CONTENT_INFO"] = [[Selecciona el contenido que será visible para los jugadores que te envíen solicitudes de compartición de cuenta.]]

-- ** Sharing / Share ! **
L["Share"] = "Compartir"
L["Account Name"] = "Nombre de cuenta"
L["Send account sharing request to:"] = "Enviar solicitud de compartición de cuenta a:"
L["Send Request"] = "Enviar solicitud"
L["Request Content"] = "Contenido de la solicitud"
L["Up-to-date"] = "Actualizado"

L["ACCOUNT_NAME_INFO"] = [[Ingresa un nombre de cuenta que se usará solo para |cFF00FF00mostrar|r propósitos.

Este nombre puede ser cualquier cosa que desees, no |cFFFF0000ES|r necesario que sea el nombre real de la cuenta. Este campo |cFFFF0000no|r puede dejarse vacío.]]


L["EMPTY_ACCOUNT_WARNING"] = "[Nombre de cuenta] Este campo |cFF00FF00no|r puede dejarse vacío."

-- ** Memory Used **
L["ADDON_MEMORY_USED"] = "Memoria usada para %s%d|r |4character:characters;:"

-- ** Help **
L["HELP_SHARING_HOWTO"] = [[
|cFF00FF00P:|cFFFFFFFF ¿Cómo comparto datos entre dos cuentas ?|r|r

Ambas cuentas deben estar conectadas al mismo tiempo para que esta función funcione. Si eres el propietario de ambas cuentas, debes ejecutar dos instancias paralelas del cliente de WoW.

|cFF00FF00P:|cFFFFFFFF ¿La transferencia de información es bidireccional ?|r|r

No. La transferencia usa los canales de comunicación del juego, por lo que el rendimiento está limitado. Si deseas tener los mismos datos en ambos lados, debes repetir el proceso dos veces.

|cFF00FF00P:|cFFFFFFFF ¿Hay algún ajuste previo para poder compartir datos ?|r|r

Sí. Por defecto, y por razones de seguridad, el compartir cuenta está deshabilitado, por lo que el primer paso es habilitarlo en ambos lados, esto se hace en |cFF1CFAFE2|r|cFFFFFFFF. Autorizaciones|r.

El siguiente paso es configurar las autorizaciones. La cuenta que recibe la información debe determinar quién puede enviarle solicitudes. Cualquier solicitante no incluido en la lista verá su solicitud rechazada.

El último paso es determinar qué información se comparte, esto se hace en |cFF1CFAFE3|r|cFFFFFFFF. Contenido compartido|r.

|cFF00FF00P:|cFFFFFFFF La transferencia parece lenta, incluso se detiene a veces, ¿cuál es el problema ?|r|r

Como se mencionó anteriormente, la transferencia usa los canales de comunicación del juego, por lo que toda la información se envía de la cuenta A a la cuenta B a través del servidor de Blizzard. Esto tomará tiempo, ten paciencia. Mientras no haya un error de Lua, todo estará bien, los datos se transferirán.

|cFF00FF00P:|cFFFFFFFF ¿Se puede mejorar el proceso ?|r|r

No. Los datos se comprimen antes de ser enviados para minimizar el tráfico en la red, pero cuanto más información compartas, más tiempo tomará. Si tienes dudas sobre el proceso, pruébalo con un solo personaje para validar que todo funciona, luego intenta nuevamente con más.
]]

L["HELP_ALTOHOLIC_GENERAL"] = [[
|cFF00FF00P:|cFFFFFFFF ¿Cómo funciona el complemento ?|r|r

Cuando uno de tus alts entra en el mundo, una cantidad máxima de información se llenará automáticamente en la base de datos del complemento.
Sin embargo, parte de esta información no puede leerse a menos que actives el evento que la hace disponible. Esta es una restricción impuesta por el juego, no una limitación del complemento.

|cFF00FF00P:|cFFFFFFFF ¿Qué tipo de información ?|r|r

El buzón, la casa de subastas y tanto tu banco como el banco de la hermandad están sujetos a esta restricción.
Tu personaje debe estar físicamente presente en esos lugares para que el complemento pueda leer esta información.

La información de profesiones también se ve afectada, tendrás que abrir el panel de cada profesión para beneficiarte completamente de las funcionalidades del complemento.

|cFF00FF00P:|cFFFFFFFF ¿Altoholic soporta opciones de línea de comandos ?|r|r

Sí, escribe |cFFFF7F00/alto|r o |cFFFF7F00/altoholic|r para obtener la lista de opciones de línea de comandos.

|cFF00FF00P:|cFFFFFFFF Mi ícono del minimapa ha desaparecido, ¿cómo lo recupero ?|r|r

Mantente en la pestaña de Opciones, haz clic en |cFFFF7F00Configuración => Altoholic => General|r, y marca la opción 'Mostrar ícono del minimapa'.

|cFF00FF00P:|cFFFFFFFF ¿Puedo asignar Altoholic a una tecla específica ?|r|r

Sí. Usa el menú de |cFFFF7F00Asignaciones de teclas|r del juego para seleccionar la tecla que prefieras. 

Personalmente, lo asigno a la tecla |cFF1CFAFEJ|r, porque el relieve facilita encontrarlo.
]]

L["HELP_ALTOHOLIC_CHARACTERS"] = [[
|cFF00FF00P:|cFFFFFFFF ¿Por qué solo puedo ver un alt ?|r|r

Si es la primera vez que usas el complemento, esto es normal. Los complementos solo pueden obtener información sobre el personaje con el que estás jugando actualmente. Esta es otra restricción del juego.

|cFF00FF00P:|cFFFFFFFF ¿Quieres decir que tengo que iniciar sesión en mis 37 alts uno por uno ???|r|r

Sí. No hay otra manera.

|cFF00FF00P:|cFFFFFFFF Eliminé un alt o lo moví a otro reino, ¿por qué el complemento no lo ve ?|r|r

El complemento solo está activo cuando el juego está en ejecución y tu personaje está en el mundo del juego. Todo lo que sucede fuera de eso está fuera del alcance de todos los complementos.
Si tienes un alt sobrante, simplemente puedes eliminarlo en el complemento.

|cFF00FF00P:|cFFFFFFFF ¿Cómo elimino un alt de la base de datos del complemento ?|r|r

Ve a la pestaña |cFFFF7F00Resumen|r, |cFF1CFAFEhaz clic derecho|r en el nombre del alt, y elige |cFFFF7F00Eliminar este Alt|r.

|cFF00FF00P:|cFFFFFFFF No puedo ver ningún alt, ¿qué está pasando ?|r|r

Hay dos posibles razones:

- Puedes tener una combinación de filtros en el |cFFFF7F00Resumen de la cuenta|r que impide que se muestre cualquier alt, así que revisa la configuración de tus filtros.

- Puede haber un error de Lua que no se muestra.

Asegúrate de habilitar los errores de Lua con este comando: |cFFFFFFFF/console scriptErrors|r |cFF00FF001|r

Si deseas desactivar los errores de Lua después: |cFFFFFFFF/console scriptErrors|r |cFF00FF000|r
]]

L["HELP_DATASTORE_GENERAL"] = [[
|cFF00FF00P:|cFFFFFFFF ¿Qué es DataStore ?|r|r

DataStore es el componente principal de una serie de complementos que sirven como repositorios de datos en el juego. Su propósito es ofrecer servicios de escaneo y almacenamiento a otros complementos.

|cFF00FF00P:|cFFFFFFFF ¿Por qué hacer esto? ¡Ahora tengo 17 carpetas solo para esto!|r|r

Hay varias ventajas, tanto para los jugadores como para los desarrolladores:

- Los datos se |cFFFF7F00escan|r una sola vez para todos los complementos del cliente (|cFF00FF00ganancia de rendimiento|r).

- Los datos se |cFFFF7F00almacenan|r una sola vez para todos los complementos del cliente (|cFF00FF00ganancia de memoria|r).

- Los autores de complementos pueden dedicar más tiempo a programar características de alto nivel.

- Cada módulo es un complemento independiente, por lo que tiene su propio archivo SavedVariables, lo que significa que puedes limpiar los datos de un módulo sin afectar a otros módulos.

|cFF00FF00P:|cFFFFFFFF ¿Qué hacen todos estos módulos? ¿Necesito habilitarlos todos?|r|r

|cFFFF7F00DataStore|r es el módulo principal, los complementos del cliente deberían tener una dependencia de él, por lo que debe permanecer habilitado todo el tiempo, ya que es la interfaz utilizada para acceder a los datos de los diversos módulos.
Los otros módulos son técnicamente opcionales y se pueden habilitar/deshabilitar según tus necesidades. Sin embargo, algunos de estos módulos, como |cFFFF7F00DataStore_Characters|r, juegan un papel importante en Altoholic y deben permanecer habilitados.

|cFF00FF00P:|cFFFFFFFF ¿Cómo debo actualizar DataStore y sus módulos ?|r|r

|cFF1CFAFEAltoholic|r siempre se empaqueta con las últimas versiones, la mayoría de los usuarios deberían actualizar usando este método. Consulta la página del complemento en el panel |cFFFF7F00Sobre|r.
]]

L["HELP_DATASTORE_SAVEDVARS"] = [[
|cFF00FF00P:|cFFFFFFFF ¿Cómo borro datos de DataStore ?|r|r

Los personajes y las hermandades se pueden borrar desde la interfaz de Altoholic.
Si deseas tener más control sobre la información que debe eliminarse, puedes |cFF1CFAFEeditar|r o |cFF1CFAFEeliminar|r los archivos de la carpeta |cFFFF7F00Saved Variables|r.

|cFF00FF00P:|cFFFFFFFF ¿Dónde están las Saved Variables ?|r|r

Las bases de datos se encuentran en |cFFFF7F00WTF \\ Account \\ |cFF1CFAFEyour_account|r \\ SavedVariables|r.

|cFF00FF00P:|cFFFFFFFF ¿Cuáles son los archivos relevantes ?|r|r

Los archivos son |cFFFF7F00DataStore.lua|r y todos los |cFFFF7F00DataStore_*.lua|r.

|cFF00FF00P:|cFFFFFFFF ¿Cuándo puedo |cFF1CFAFEmodificar|r o |cFF1CFAFEeliminar|r esos archivos ?|r|r

Es |cFFFF0000crítico|r que |cFFFF0000NO|r modifiques esos archivos mientras el juego esté en ejecución.
Algunos lo han intentado y han tenido problemas.

No intentes engañar al juego.
Detén el juego, realiza los cambios y vuelve a iniciarlo.

|cFF00FF00P:|cFFFFFFFF ¿Cómo puedo editar esos archivos ?|r|r

Usa un editor de texto adecuado, como |cFF1CFAFENotepad++|r.

El Bloc de notas clásico y Wordpad no son recomendables.
]]

L["HELP_GETTING_SUPPORT"] = [[
|cFF00FF00P:|cFFFFFFFF Encontré un error, ¿cómo/dónde lo reporto ?|r|r

Usa la sección de tickets de CurseForge, también leo comentarios y respondo tan a menudo como me sea materialmente posible, así que siéntete libre de reportar en uno de estos lugares.

|cFF00FF00P:|cFFFFFFFF ¿Qué debo hacer antes de reportar ?|r|r

Unas cuantas cosas:

|cFF1CFAFE1)|r Asegúrate de tener la última versión del complemento.

|cFF1CFAFE2)|r Si sospechas de un conflicto con otro complemento, intenta reproducir el problema con solo Altoholic habilitado. Como el complemento maneja muchas cosas, siempre es posible un conflicto.

|cFF1CFAFE3)|r Asegúrate de que tu problema no haya sido reportado ya por otra persona.

|cFF1CFAFE4)|r Nunca, jamás, reportes que 'no funciona', ¡esta es la frase más inútil del mundo!
Sé |cFFFF7F00específico|r sobre lo que no funciona.

|cFF1CFAFE5)|r |cFFFF0000NO|r copies toda la pila de llamadas en caso de un error de Lua. Las primeras 5-6 líneas son suficientes.

|cFF00FF00P:|cFFFFFFFF Estoy obteniendo múltiples errores, ¿debería reportarlos todos ?|r|r

No, simplemente reporta el primero en la lista, los otros son generalmente consecuencia del primero.

|cFF00FF00P:|cFFFFFFFF ¿Dónde puedo obtener soporte en vivo ?|r|r

Únete al servidor de |cFF1CFAFEDiscord|r. Estoy presente por la tarde (hora belga), y incluso cuando no estoy, tenemos una comunidad amigable lista para ayudar en caso de problemas.
]]

L["ABOUT_ALTOHOLIC"] = [[
|cFF00FF00P:|cFFFFFFFF ¿Cuándo se inició Altoholic ?|r|r

El desarrollo comenzó en |cFF1CFAFEDiciembre de 2007|r, y la primera versión pública fue |cFFFF7F002.4.001|r, lanzada el |cFF1CFAFEMarzo 29 de 2008|r.

|cFF00FF00P:|cFFFFFFFF ¿Cuántas personas trabajan en Altoholic ?|r|r

Una. Tengo un trabajo a tiempo completo y mi disponibilidad varía. Aunque recibo ayuda ocasional de la comunidad, quiero agradecer a todos los que han echado una mano a lo largo de los años.
El complemento no sería lo que es hoy sin vuestra ayuda y sugerencias.

|cFF00FF00P:|cFFFFFFFF ¿Cuántos idiomas soporta el complemento ?|r|r

Once: deDE, enUS, esES, esMX, frFR, itIT, koKR, ptBR, ruRU, zhCN, zhCW.

|cFF00FF00P:|cFFFFFFFF ¿Puedo ayudar con las localizaciones ?|r|r

¡Sí! Tu ayuda sería muy bienvenida, únete a nosotros en |cFF1CFAFEDiscord|r y proporciónanos los archivos de traducción.

|cFF1CFAFENota|r que las traducciones ahora están repartidas en los múltiples complementos de Altoholic (uno por pestaña).

|cFF00FF00P:|cFFFFFFFF ¿Dónde puedo obtener mis actualizaciones ?|r|r

Los únicos dos hogares oficiales son |cFFFF7F00Curse Forge|r y |cFFFF7F00WoW Interface|r.

Cualquier otra fuente significa que estás usando una versión no oficial y no apoyando el considerable esfuerzo que se ha invertido en el desarrollo de esto.

No se dará |cFFFF0000soporte|r absoluto para ninguna versión de este tipo.
]]

L["ABOUT_DATASTORE"] = [[
|cFF00FF00P:|cFFFFFFFF ¿Por qué se creó DataStore ?|r|r

DataStore fue lanzado en |cFF1CFAFEAgosto 2009|r, como parte de la versión |cFFFF7F003.2|r.

Después de aproximadamente 18 meses aprendiendo sobre el desarrollo de WoW, añadiendo características a Altoholic y gestionando una base de datos monolítica, sentí que era el momento de adoptar un enfoque más profesional y creé una capa adecuada para gestionar todos los datos.

|cFF00FF00P:|cFFFFFFFF ¿Por qué separar los datos de la interfaz ?|r|r

Porque es lo correcto, y porque en ese entonces, y aún hoy en día, tenía y sigo teniendo en mente múltiples complementos que utilizarán toda esta información.

Además, proporciona una interfaz limpia para gestionar personajes, hermandades, reinos y cuentas.

|cFF00FF00P:|cFFFFFFFF ¿Habrá más módulos en el futuro ?|r|r

Estoy satisfecho con los módulos actuales, pero no descarto añadir más si surge una necesidad real.

|cFF00FF00P:|cFFFFFFFF Soy desarrollador, ¡quiero saber más sobre DataStore !|r|r

El código está bien comentado, estructurado y es bastante autoexplicativo.

Si aún tienes preguntas, únete al servidor de |cFF1CFAFEDiscord|r y pregúntame.
]]

L["HELP_ALTOHOLIC_BANKCHARACTERS"] = [[
|cFF00FF00P:|cFFFFFFFF ¿Qué son los personajes banco ?|r|r

Si juegas con muchos personajes, es probable que estés utilizando algunos de ellos como bancos.
Altoholic ahora tiene una forma de hacer un seguimiento de eso en la pestaña |cFFFF7F00Resumen|r.

|cFF00FF00P:|cFFFFFFFF ¿Cómo marco a un personaje como banco ?|r|r

En cualquier panel de la pestaña |cFFFF7F00Resumen|r, |cFF1CFAFEhaz clic derecho|r en el nombre del alt, elige |cFFFF7F00Marcar como banco|r y selecciona el tipo de banco que debería ser este alt.

|cFF00FF00P:|cFFFFFFFF ¿Puedo marcar a un personaje banco con múltiples tipos ?|r|r

Sí.

|cFF00FF00P:|cFFFFFFFF ¿Dónde puedo tener una visión general de mis personajes banco ?|r|r

En la pestaña |cFFFF7F00Resumen|r, selecciona el panel |cFFFF7F00Varios|r.

|cFF00FF00P:|cFFFFFFFF ¿Cómo ayuda marcar un personaje en la gestión de mis alts ?|r|r

Si lo deseas, una de las opciones del tooltip te permitirá ver si puedes enviar un objeto a un personaje banco.
]]

L["HELP_ALTOHOLIC_ALTGROUPS"] = [[
|cFF00FF00P:|cFFFFFFFF ¿Qué son los grupos de alts ?|r|r

Los grupos de alts son una forma sencilla de gestionar tus alts agrupándolos según criterios no relacionados con el juego. Ej., he puesto mis 12 principales alts en un grupo, y mis 12 alts banco en el mismo reino en otro grupo.

|cFF00FF00P:|cFFFFFFFF ¿Hay un límite en la cantidad de alts en un grupo ?|r|r

No, no lo hay. También puedes añadir alts de otro reino, otra facción o incluso otra cuenta al mismo grupo.

|cFF00FF00P:|cFFFFFFFF ¿Hay un límite en la cantidad de grupos que puedo crear ?|r|r

No, puedes crear tantos grupos como desees, aunque crear demasiados probablemente socave el propósito de los grupos. Tú estás a cargo, puedes organizar los grupos como prefieras.

|cFF00FF00P:|cFFFFFFFF ¿Cómo añado un personaje a un grupo ?|r|r

En cualquier panel de la pestaña |cFFFF7F00Resumen|r, |cFF1CFAFEhaz clic derecho|r en el nombre del alt, elige |cFFFF7F00Añadir al grupo|r y selecciona el grupo al que debería añadirse este alt.

|cFF00FF00P:|cFFFFFFFF ¿Cómo elimino un personaje de un grupo ?|r|r

En cualquier panel de la pestaña |cFFFF7F00Resumen|r, |cFF1CFAFEhaz clic derecho|r en el nombre del alt, elige |cFFFF7F00Eliminar del grupo|r y selecciona el grupo del que debería eliminarse este alt.

|cFF00FF00P:|cFFFFFFFF ¿Puede un personaje ser parte de múltiples grupos ?|r|r

Sí.
]]

L["HELP_ALTOHOLIC_SEARCH"] = [[
|cFF00FF00P:|cFFFFFFFF ¿Cómo funciona el proceso de búsqueda ?|r|r

El proceso buscará todos los filtros activos e intentará encontrar los objetos y/o recetas de profesión conocidas que coincidan con esos filtros. La búsqueda solo ocurrirá en las ubicaciones establecidas bajo el ícono de |cFFFF7F00Ubicación de búsqueda|r.

|cFF00FF00P:|cFFFFFFFF ¿Los filtros se establecen solo con los íconos superiores ?|r|r

No, las categorías a la izquierda también actúan como filtros. Cuando haces clic en una categoría específica, inmediatamente activas una búsqueda de objetos que coincidan con esa categoría, luego puedes filtrar aún más añadiendo un valor en el cuadro de edición, o filtrar por rareza, ej.. Si solo ingresas texto y comienzas una búsqueda, obtendrás todos los resultados cuyo nombre contenga el valor que ingresaste.

|cFF00FF00P:|cFFFFFFFF Estoy confundido con los resultados que veo, ¿qué está pasando ?|r|r

Ten en cuenta que los resultados están afectados por los filtros que has establecido. Asegúrate de verificar el mensaje de estado para ver qué filtros se tuvieron en cuenta durante el proceso de búsqueda.
En caso de duda, presiona el botón |cFF1CFAFERestablecer|r para borrar todos los filtros y vuelve a intentarlo.

|cFF00FF00P:|cFFFFFFFF Algunos resultados están faltando, ¿por qué ?|r|r

Los resultados pueden verse afectados por los objetos conocidos por el cliente del juego, puede suceder que tengas que ejecutar la búsqueda una segunda vez para ver los resultados adecuados. La información del objeto requerida por el proceso de búsqueda no siempre está disponible, y para cuando regresa del servidor, la búsqueda ya ha terminado.

|cFF00FF00P:|cFFFFFFFF Ordenar por rareza o nivel de objeto no parece funcionar, ¿por qué ?|r|r

Ordenar por rareza funciona, pero en el caso de los objetos mejorables, pueden tener un nivel de rareza |cFF0070DDazul|r y en realidad ser |cFFA335EEépico|r porque posees la versión mejorada.
]]

