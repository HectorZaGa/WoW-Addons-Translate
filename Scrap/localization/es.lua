local L = LibStub('AceLocale-3.0'):NewLocale('Scrap', 'esES') or LibStub('AceLocale-3.0'):NewLocale('Scrap', 'esMX')
if not L then return end

-- general
L.Add = 'Añadir a la lista de basura'
L.DestroyCheapest = 'Destruir basura más barata'
L.DestroyJunk = 'Destruir basura'
L.Forget = 'Olvidar'
L.Junk = 'Basura'
L.JunkList = 'Lista de basura'
L.NotJunk = 'Útil'
L.SellJunk = 'Vender basura'
L.Remove = 'Retirar de la lista de basura'
L.ToggleMousehover = 'Alternar artículo bajo el cursor'

-- chat
L.Added = 'Añadido a la lista de basura: %s'
L.Destroyed = 'Has destruido: %s x %s'
L.Forgotten = 'Definición se es basura olvidada: %s'
L.GuildRepaired = 'Tu hermandad reparó tu armadura por un valor de: %s'
L.SoldJunk = 'Has vendido basura por un valor de: %s'
L.Repaired = 'Has reparado tu armadura por un valor de: %s'
L.Removed = 'Has retirado de la lista de basura: %s'

-- dialogs
L.ConfirmDelete = '¿Estás seguro de que quieres destruir todos tus objetos basura? ¡No puedes deshacer esta acción!.'

-- options
L.GeneralDescription = 'Estas opciones te permiten configurar Scrap aún más. ¡La basura no dominará tus bolsas!'
L.ListDescription = 'Estas opciones te permiten configurar tu lista de basura y detección de basura automática más a fondo.'

L.AutoSell = 'Vender automáticamente'
L.AutoSellTip = 'Si está activado, Scrap venderá automáticamente tu basura cuando visites a un mercader.'
L.AutoRepair = 'Reparar automáticamente'
L.AutoRepairTip = 'Si está activado, Scrap reparará automáticamente tu armadura cuando visites a un mercader.'
L.DestroyWorthless = 'Destruir objetos sin valor'
L.DestroyWorthlessTip = 'Si está activado, Scrap destruirá los objetos basura sin valor de venta.'
L.GuildRepair = 'Usar fondos de la hermandad'
L.GuildRepairTip = 'Si está activado, Scrap utilizará los fondos de la hermandad disponibles para reparaciones antes que tu propio oro.'
L.SafeMode = 'Modo seguro'
L.SafeModeTip = 'Si está activado, Scrap no venderá más de 12 objetos a la vez, por lo que siempre podrás recuperarlos.'

L.Glow = 'Bordes brillantes'
L.GlowTip = 'Si está activado, aparecerán bordes brillantes en tus objetos basura.'
L.Icons = 'Icono de moneda'
L.IconsTip = 'Si está activado, aparecerá un pequeño icono de moneda de oro en tus objetos basura.'
L.SellPrices = 'Precio de venta en los tooltips'
L.SellPricesTip = 'Si está activado, el precio de venta de los objetos se mostrará en los tooltips incluso cuando no estés en un mercader.'

L.CharSpecific = 'Lista de basura específica del personaje'
L.Learning = 'Aprendizaje de uso'
L.LearningTip = 'Si está activado, Scrap sabrá qué objetos le vendes habitualmente al mercader y automáticamente los considerará basura.'
L.LowConsumable = 'Consumibles de bajo nivel'
L.LowConsumableTip = 'Si está activado, Scrap venderá los consumibles que son demasiado bajos para tu nivel.'
L.LowEquip = 'Equipo de bajo nivel'
L.LowEquipTip = 'Si está activado, Scrap venderá el equipo ligado al alma que tiene un nivel mucho menor que el que estás usando .'
L.Unusable = 'Equipo inutilizable'
L.UnusableTip = 'Si está activado, Scrap venderá el equipo ligado al alma, que nunca podría ser usado por tu personaje.'
L.iLevelTreshold = 'Umbral de nivel de objeto'
L.EquipLevelTip = 'Controla el nivel de objeto por debajo del cual los objetos son basura, según un porcentaje de tu nivel de objeto equipado actual.|n|nPor ejemplo: al 100%, cualquier objeto por debajo de tu nivel de objeto equipado es basura; al 50%, solo los objetos por debajo de la mitad de ese nivel lo son.'
L.ConsumableLevelTip = 'Controla el nivel de objeto por debajo del cual los consumibles son basura, calculado como un porcentaje de tu nivel de personaje.'

-- help
L.PatronsDescription = 'Scrap se distribuye de forma gratuita y se mantiene gracias a donaciones. Un enorme agradecimiento a todos los seguidores en Patreon y PayPal que mantienen vivo el desarrollo. También puedes convertirte en patrocinador en |cFFF96854patreon.com/jaliborc|r.'
L.HelpDescription = 'Aquí proporcionamos respuestas a las preguntas más frecuentes. También recomendamos seguir el tutorial dentro del juego. Si ninguno de los dos resuelve tu problema, considera pedir ayuda en la comunidad de usuarios de Scrap en Discord.'

L.FAQ = {
    '¿Cómo añadir o retirar un objeto de la lista de basura?',
    'Hay varias formas:|n1) La más simple es arrastrar el objeto al botón Scrap mientras estás en un mercader (junto a los botones de reparación de armadura).|n2) Puedes configurar una tecla en Juego -> Atajo -> Scrap -> "Alternar artículo bajo el cursor". Luego puedes pasar el ratón por encima de los objetos del inventario y pulsar tu tecla para marcarlos como basura.|n3) Puedes gestionar los objetos que has añadido o retirado de la lista en la pestaña Scrap en la parte inferior del panel del mercader (junto a la pestaña Recompra).',
    '¡El icono de Scrap no aparece sobre los objetos en Bagnon!',
    'Esa funcionalidad no forma parte del núcleo de Scrap; es de un complemento aparte. Prueba a instalar o actualizar |cffffd200Bagnon Scrap Support|r.'
}

L.Tutorial_Welcome = 'Bienvenido a |cffffd200Scrap|r, la solución inteligente de venta de basura de |cffffd200Jaliborc|r. Este breve tutorial te ayudará a comenzar a vender tus objetos basura.|n|nLo que te ahorrará tiempo y tus bolsillos sin duda lo agradecerán. ¿Empezamos?'
L.Tutorial_Button = 'Scrap venderá automáticamente toda tu basura cada vez que visites a un mercader. Pero puedes venderla manualmente, es muy simple: |cffffd200Click|r en el botón Scrap.|n|n|cffffd200Click derecho|r en el botón para ver opciones adicionales.'
L.Tutorial_Drag = '¿Qué pasa si quieres decirle a Scrap cuales objetos vender o no? es muy simple: |cffffd200Arrastra|r los objetos de tus bolsas al botón Scrap.|n|nAlternativamente, puedes establecer un |cffffd200Atajo|r en las opciones de |cffffd200Menú de juego|r. Presiónalo mientras colocas el objeto.'
L.Tutorial_Visualizer = 'Para ver qué objetos has especificado como basura o no, abre el visualizador en la pestaña |cffffd200Scrap|r.|n|nTen en cuenta que solo mostrará los objetos que tienes |cffffd200especificados|r, no todos los objetos del juego.'
L.Tutorial_Bye = 'Buena suerte en tus viajes, y que los |cffb400ffÉpicos|r te acompañen. ¡La basura no pasará!'
