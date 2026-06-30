local L = LibStub("AceLocale-3.0"):NewLocale("DynamicCam", "esMX")
if not L then return end

-- Options
L["Reset"] = "Restablecer"
L["Reset to global default:"] = "Restablecer a la configuración predeterminada global:"
L["(To restore the settings of a specific profile, restore the profile in the \"Profiles\" tab.)"] = "(Para restaurar la configuración de un perfil específico, restaura el perfil en la pestaña \"Perfiles\".)"
L["Currently overridden by the active situation \""] = "Actualmente sobrescrito por la situación activa \""
L["Override Standard Settings"] = "Sobrescribir configuración estándar"
L["<overrideStandardToggle_desc>"] = "Al marcar esta casilla puedes definir configuraciones en esta categoría que sobrescriben la configuración estándar cuando esta situación está activa. Al desmarcar se borran las configuraciones de situación para esta categoría."
L["Custom:"] = "Personalizado:"
L["(modified)"] = "(modificado)"
L["Priority:"] = "Prioridad:"
L["Standard Settings"] = "Configuración estándar"
L["Situation Settings"] = "Configuración de situación"
L["<standardSettings_desc>"] = "Estas configuraciones estándar se aplican cuando no hay ninguna situación activa o cuando la situación activa no tiene configuraciones de situación que sobrescriban la configuración estándar."
L["<standardSettingsOverridden_desc>"] = "Las categorías marcadas en verde están actualmente sobrescritas por la situación activa. Por lo tanto, no verás ningún efecto al cambiar la configuración estándar de las categorías verdes mientras la situación que sobrescribe esté activa."
L["These Situation Settings can override the Standard Settings when the respective situation is active."] = "Estas configuraciones de situación pueden sobrescribir la configuración estándar cuando la situación respectiva está activa."
L["Mouse Zoom"] = "Zoom con el ratón"
L["Maximum Camera Distance"] = "Distancia máxima de la cámara"
L["How many yards the camera can zoom away from your character."] = "Cuántas yardas puede alejarse la cámara de tu personaje."
L["Camera Zoom Speed"] = "Velocidad de zoom de la cámara"
L["How fast the camera can zoom."] = "Qué tan rápido puede hacer zoom la cámara."
L["Zoom Increments"] = "Incrementos de zoom"
L["How many yards the camera should travel for each \"tick\" of the mouse wheel."] = "Cuántas yardas debe moverse la cámara por cada \"tick\" de la rueda del ratón."
L["Use Reactive Zoom"] = "Usar zoom reactivo"
L["Quick-Zoom Additional Increments"] = "Incrementos adicionales de zoom rápido"
L["How many yards per mouse wheel tick should be added when quick-zooming."] = "Cuántas yardas por tick de la rueda del ratón se deben añadir al usar zoom rápido."
L["Quick-Zoom Enter Threshold"] = "Umbral de entrada de zoom rápido"
L["How many yards the \"Reactive Zoom Target\" and the \"Actual Zoom Value\" have to be apart to enter quick-zooming."] = "Cuántas yardas deben estar separados el \"Objetivo de zoom reactivo\" y el \"Valor de zoom actual\" para activar el zoom rápido."
L["Maximum Zoom Time"] = "Tiempo máximo de zoom"
L["The maximum time the camera should take to make \"Actual Zoom Value\" equal to \"Reactive Zoom Target\"."] = "El tiempo máximo que la cámara debe tardar en igualar el \"Valor de zoom actual\" al \"Objetivo de zoom reactivo\"."
L["Help"] = "Ayuda"
L["Toggle Visual Aid"] = "Alternar ayuda visual"
L["<reactiveZoom_desc>"] = "Con el zoom reactivo de DynamicCam, la rueda del ratón controla el llamado \"Objetivo de zoom reactivo\". Cuando el \"Objetivo de zoom reactivo\" y el \"Valor de zoom actual\" son diferentes, DynamicCam ajusta el \"Valor de zoom actual\" hasta que coincida con el \"Objetivo de zoom reactivo\".\n\nLa velocidad de este cambio depende de la \"Velocidad de zoom de la cámara\" y el \"Tiempo máximo de zoom\". Si el \"Tiempo máximo de zoom\" es bajo, el cambio será rápido, sin importar la configuración de velocidad. Para lograr un cambio más lento, debes aumentar el \"Tiempo máximo de zoom\" y reducir la \"Velocidad de zoom de la cámara\".\n\nPara permitir un zoom más rápido con movimientos rápidos de la rueda, existe el \"Zoom rápido\": si el \"Objetivo de zoom reactivo\" está más lejos del \"Valor de zoom actual\" que el \"Umbral de entrada de zoom rápido\", se añaden los \"Incrementos adicionales de zoom rápido\" por cada tick.\n\nPuedes alternar la ayuda visual mientras ajustas tus configuraciones. También puedes mover este gráfico haciendo clic y arrastrando. Un clic derecho lo cierra."
L["Enhanced minimal zoom-in"] = "Zoom-in mínimo mejorado"
L["<enhancedMinZoom_desc>"] = "El zoom reactivo permite acercarse más allá del nivel 1. Puedes lograr esto alejando un tick desde la vista en primera persona.\n\nCon \"Zoom-in mínimo mejorado\" forzamos que la cámara también se detenga en este nivel mínimo al acercar, antes de entrar en primera persona.\n\n|cFFFF0000Activar \"Zoom-in mínimo mejorado\" puede reducir el rendimiento hasta un 15% en situaciones limitadas por CPU.|r"
L["/reload of the UI required!"] = "¡Se requiere /reload de la IU!"
L["Mouse Look"] = "Vista con el ratón"
L["Horizontal Speed"] = "Velocidad horizontal"
L["How much the camera yaws horizontally when in mouse look mode."] = "Cuánto gira horizontalmente la cámara en modo vista con el ratón."
L["Vertical Speed"] = "Velocidad vertical"
L["How much the camera pitches vertically when in mouse look mode."] = "Cuánto inclina verticalmente la cámara en modo vista con el ratón."
L["<mouseLook_desc>"] = "Cuánto se mueve la cámara cuando mueves el ratón en modo \"vista con el ratón\"; es decir, mientras mantienes presionado el botón izquierdo o derecho.\n\nEl deslizador de velocidad de WoW ajusta la velocidad horizontal y vertical al mismo tiempo: configurando automáticamente la velocidad horizontal al doble de la vertical. DynamicCam sobrescribe esto y te permite una configuración más personalizada."
L["Horizontal Offset"] = "Desplazamiento horizontal"
L["Camera Over Shoulder Offset"] = "Desplazamiento de cámara sobre el hombro"
L["Positions the camera left or right from your character."] = "Posiciona la cámara a la izquierda o derecha de tu personaje."
L["<cameraOverShoulder_desc>"] = "Para que esto surta efecto, DynamicCam desactiva temporalmente la configuración de mareo por movimiento de WoW. Si necesitas esa configuración, no uses el desplazamiento horizontal en estas situaciones.\n\nAl seleccionar tu propio personaje, WoW pone automáticamente el desplazamiento en cero. No podemos evitar esto. Tampoco podemos evitar saltos de desplazamiento al chocar la cámara con paredes. Una solución es usar poco o ningún desplazamiento en interiores.\n\nAdemás, WoW aplica el desplazamiento de forma diferente según el modelo o montura. Si prefieres un desplazamiento constante, Ludius está trabajando en otro addon (CameraOverShoulder Fix) para resolver esto."
L["Adjust shoulder offset according to zoom level"] = "Ajustar desplazamiento según el nivel de zoom"
L["Enable"] = "Activar"
L["Reset to global defaults:"] = "Restablecer a los valores predeterminados globales:"
L["and"] = "y"
L["(To restore the settings of a specific profile, restore the profile in the \"Profiles\" tab.)"] = "(Para restaurar la configuración de un perfil específico, restaura el perfil en la pestaña \"Perfiles\".)"
L["No offset when below this zoom level:"] = "Sin desplazamiento por debajo de este nivel de zoom:"
L["When the camera is closer than this zoom level, the offset has reached zero."] = "Cuando la cámara está más cerca que este nivel de zoom, el desplazamiento es cero."
L["Real offset when above this zoom level:"] = "Desplazamiento real por encima de este nivel de zoom:"
L["When the camera is further away than this zoom level, the offset has reached its set value."] = "Cuando la cámara está más lejos que este nivel de zoom, el desplazamiento alcanza su valor configurado."
L["<shoulderOffsetZoom_desc>"] = "Haz que el desplazamiento sobre el hombro se reduzca gradualmente a cero al acercar el zoom. Los dos deslizadores definen entre qué niveles de zoom ocurre esta transición. Esta configuración es global y no específica de situaciones."
L["Vertical Pitch"] = "Inclinación vertical"
L["Pitch (on ground)"] = "Inclinación (en tierra)"
L["Pitch (flying)"] = "Inclinación (volando)"
L["Down Scale"] = "Escala descendente"
L["Smart Pivot Cutoff Distance"] = "Distancia de corte de pivote inteligente"
L["<pitch_desc>"] = "Si la cámara está inclinada hacia arriba (menor valor de \"Inclinación\"), la configuración de \"Escala descendente\" determina cuánto afecta esto al mirar a tu personaje desde arriba. Poner \"Escala descendente\" en 0 anula el efecto de una inclinación hacia arriba al mirar desde arriba. Por el contrario, si no miras desde arriba o si la cámara está inclinada hacia abajo (mayor valor de \"Inclinación\"), la \"Escala descendente\" tiene poco o ningún efecto.\n\nPrimero encuentra tu configuración preferida de \"Inclinación\" al mirar a tu personaje desde atrás. Después, si elegiste una inclinación hacia arriba, ajusta la \"Escala descendente\" al mirar desde arriba.\n\n\nCuando la cámara choca con el suelo, normalmente realiza una inclinación hacia arriba en el punto de colisión. Alternativamente, la cámara puede acercarse a los pies de tu personaje mientras realiza esta inclinación. La configuración de \"Distancia de corte de pivote inteligente\" determina la distancia dentro de la cual la cámara debe estar para hacer esto último. Ponerlo en 0 nunca acerca la cámara (por defecto de WoW), mientras que ponerlo en el máximo de 39 siempre la acerca.\n\n"
L["Target Focus"] = "Enfoque de objetivo"
L["Enemy Target"] = "Objetivo enemigo"
L["Horizontal Strength"] = "Fuerza horizontal"
L["Vertical Strength"] = "Fuerza vertical"
L["Interaction Target (NPCs)"] = "Objetivo de interacción (PNJs)"
L["<targetFocus_desc>"] = "Si está activado, la cámara intenta automáticamente acercar el objetivo al centro de la pantalla. La fuerza determina la intensidad de este efecto.\n\nSi \"Enfoque de objetivo enemigo\" y \"Enfoque de objetivo de interacción\" están ambos activados, parece haber un extraño error con el segundo: Al interactuar con un PNJ por primera vez, la cámara se mueve suavemente al nuevo ángulo como se espera. Pero al salir de la interacción, vuelve inmediatamente al ángulo anterior. Si vuelves a iniciar la interacción, vuelve a cambiar de inmediato al nuevo ángulo. Esto se repite cada vez que hablas con un nuevo PNJ: solo la primera transición es suave, todas las siguientes son inmediatas.\nUna solución, si quieres usar ambos \"Enfoque de objetivo enemigo\" y \"Enfoque de objetivo de interacción\", es activar \"Enfoque de objetivo enemigo\" solo para situaciones de DynamicCam en las que lo necesites y en las que sea poco probable interactuar con PNJs (como en combate)."
L["Head Tracking"] = "Seguimiento de cabeza"
L["<headTrackingEnable_desc>"] = "(Esto también podría usarse como un valor continuo entre 0 y 1, pero simplemente se multiplica con FuerzaDePie y FuerzaEnMovimiento respectivamente. Así que realmente no hay necesidad de otro deslizador.)"
L["Strength (standing)"] = "Fuerza (de pie)"
L["Inertia (standing)"] = "Inercia (de pie)"
L["Strength (moving)"] = "Fuerza (en movimiento)"
L["Inertia (moving)"] = "Inercia (en movimiento)"
L["Inertia (first person)"] = "Inercia (primera persona)"
L["Range Scale"] = "Escala de rango"
L["Camera distance beyond which head tracking is reduced or disabled. (See explanation below.)"] = "Distancia de la cámara a partir de la cual el seguimiento de cabeza se reduce o desactiva. (Ver explicación abajo.)"
L["(slider value transformed)"] = "(valor del deslizador transformado)"
L["Dead Zone"] = "Zona muerta"
L["Radius of head movement not affecting the camera. (See explanation below.)"] = "Radio de movimiento de cabeza que no afecta la cámara. (Ver explicación abajo.)"
L["(slider value devided by 10)"] = "(valor del deslizador dividido por 10)"
L["Requires /reload to come into effect!"] = "¡Requiere /reload para que surta efecto!"
L["<headTracking_desc>"] = "Con el seguimiento de cabeza activado, la cámara sigue el movimiento de la cabeza de tu personaje. (Aunque esto puede mejorar la inmersión, también puede causar mareo si eres propenso a la cinetosis.)\n\nLa opción \"Fuerza\" determina la intensidad de este efecto. Ponerlo en 0 desactiva el seguimiento de cabeza. La opción \"Inercia\" determina qué tan rápido reacciona la cámara a los movimientos de cabeza. Ponerlo en 0 también desactiva el seguimiento de cabeza. Los tres casos \"de pie\", \"en movimiento\" y \"primera persona\" pueden configurarse individualmente. No hay opción de \"Fuerza\" para \"primera persona\", ya que asume los valores de \"Fuerza\" de \"de pie\" y \"en movimiento\" respectivamente. Si quieres activar o desactivar \"primera persona\" exclusivamente, usa los deslizadores de \"Inercia\" para desactivar los casos no deseados.\n\nCon la opción \"Escala de rango\" puedes definir la distancia de la cámara a partir de la cual el seguimiento de cabeza se reduce o desactiva. Por ejemplo, con el deslizador en 30 no habrá seguimiento de cabeza si la cámara está a más de 30 yardas de tu personaje. Sin embargo, hay una transición gradual desde seguimiento completo a ninguno, que comienza a un tercio del valor del deslizador. Por ejemplo, con el valor en 30 tienes seguimiento completo si la cámara está a menos de 10 yardas. Más allá de 10 yardas, el seguimiento disminuye gradualmente hasta desaparecer por completo más allá de 30 yardas. Por eso, el valor máximo del deslizador es 117, permitiendo seguimiento completo a la distancia máxima de cámara de 39 yardas. (Consejo: Usa la ayuda visual de \"Zoom con el ratón\" para comprobar la distancia actual de la cámara mientras configuras esto.)\n\nLa opción \"Zona muerta\" puede usarse para ignorar movimientos pequeños de cabeza. Ponerlo en 0 hace que la cámara siga cualquier mínimo movimiento, mientras que valores mayores hacen que solo siga movimientos más amplios. Ten en cuenta que cambiar esta opción solo surte efecto tras recargar la IU (escribe /reload en la consola)."
L["Situations"] = "Situaciones"
L["Select a situation to setup"] = "Selecciona una situación para configurar"
L["<selectedSituation_desc>"] = "\n|cffffcc00Códigos de color:|r\n|cFF808A87- Situación desactivada.|r\n- Situación activada.\n|cFF00FF00- Situación activada y actualmente activa.|r\n|cFF63B8FF- Situación activada con condición cumplida pero menor prioridad que la situación activa.|r\n|cFFFF6600- \"Controles de situación\" modificados de los valores predeterminados (se recomienda restablecer).|r\n|cFFEE0000- \"Controles de situación\" erróneos (se requiere corregir).|r"
L["If this box is checked, DynamicCam will enter the situation \""] = "Si esta casilla está marcada, DynamicCam entrará en la situación \""
L["\" whenever its condition is fulfilled and no other situation with higher priority is active."] = "\" siempre que se cumpla su condición y no haya otra situación de mayor prioridad activa."
L["Delete custom situation \""] = "Eliminar situación personalizada \""
L["\".\n(There will be no 'Are you sure?' prompt!)"] = "\".\n(¡No habrá mensaje de confirmación!)"
L["Create a new custom situation."] = "Crear una nueva situación personalizada."
L["Situation Actions"] = "Acciones de situación"
L["Setup stuff to happen while in a situation or when entering/exiting it."] = "Configura acciones para que ocurran durante una situación o al entrar/salir de ella."
L["Zoom/View"] = "Zoom/Vista"
L["Zoom to a certain zoom level or switch to a saved camera view when entering this situation."] = "Haz zoom a un nivel específico o cambia a una vista de cámara guardada al entrar en esta situación."
L["Reset to global defaults!\n(To restore the settings of a specific profile, restore the profile in the \"Profiles\" tab.)"] = "¡Restablecer a los valores predeterminados globales!\n(Para restaurar la configuración de un perfil específico, restaura el perfil en la pestaña \"Perfiles\".)"
L["Set Zoom or Set View"] = "Establecer zoom o vista"
L["Zoom Type"] = "Tipo de zoom"
L["<viewZoomType_desc>"] = "Establecer zoom: Haz zoom a un nivel dado con opciones avanzadas de tiempo de transición y condiciones de zoom.\n\nEstablecer vista: Cambia a una vista de cámara guardada que consiste en un nivel de zoom fijo y ángulo de cámara."
L["Set Zoom"] = "Establecer zoom"
L["Set View"] = "Establecer vista"
L["Set view to saved view:"] = "Cambiar a la vista guardada:"
L["Select the saved view to switch to when entering this situation."] = "Selecciona la vista guardada a la que cambiar al entrar en esta situación."
L["Instant"] = "Instantáneo"
L["Make view transitions instant."] = "Haz que las transiciones de vista sean instantáneas."
L["Restore view when exiting"] = "Restaurar vista al salir"
L["When exiting the situation restore the camera position to what it was at the time of entering the situation."] = "Al salir de la situación, restaura la posición de la cámara a la que tenía al entrar en la situación."
L["cameraSmoothNote"] = [[|cFFEE0000Atención:|r Estás usando los estilos de seguimiento de cámara de WoW que automáticamente ponen la cámara detrás del jugador. Esto no funciona mientras estés en una vista guardada personalizada. Es posible usar vistas guardadas personalizadas para situaciones en las que no se necesita seguimiento de cámara (por ejemplo, interacción con PNJ). Pero después de salir de la situación, debes volver a una vista predeterminada no personalizada para que el seguimiento de cámara vuelva a funcionar.]]
L["Restore to default view:"] = "Restaurar a la vista predeterminada:"
L["<viewRestoreToDefault_desc>"] = [[Selecciona la vista predeterminada a la que regresar al salir de esta situación.

Vista 1:   Zoom 0, Inclinación 0
Vista 2:   Zoom 5.5, Inclinación 10
Vista 3:   Zoom 5.5, Inclinación 20
Vista 4:   Zoom 13.8, Inclinación 30
Vista 5:   Zoom 13.8, Inclinación 10]]
L["WARNING"] = "ADVERTENCIA"
L["You are using the same view as saved view and as restore-to-default view. Using a view as restore-to-default view will reset it. Only do this if you really want to use it as a non-customized saved view."] = "Estás usando la misma vista como vista guardada y como vista para restaurar por defecto. Usar una vista como restaurar por defecto la reiniciará. Haz esto solo si realmente quieres usarla como una vista guardada sin personalizar."
L["is used as saved view in the situations:"] = "se usa como vista guardada en las situaciones:"
L["and as restore-to-default view in the situations:"] = "y como vista para restaurar por defecto en las situaciones:"
L["<view_desc>"] = [[WoW permite guardar hasta 5 vistas de cámara personalizadas. DynamicCam usa la Vista 1 para guardar la posición de la cámara al entrar en una situación, de modo que pueda restaurarse al salir de la situación si marcas la casilla "Restaurar" arriba. Esto es especialmente útil para situaciones cortas como la interacción con PNJ, permitiendo cambiar a una vista mientras hablas con el PNJ y luego volver a la vista anterior. Por eso la Vista 1 no puede seleccionarse en el menú desplegable de vistas guardadas de arriba.

Las Vistas 2, 3, 4 y 5 pueden usarse para guardar posiciones de cámara personalizadas. Para guardar una vista, simplemente coloca la cámara en el zoom y ángulo deseados. Luego escribe el siguiente comando en la consola (donde # es el número de vista 2, 3, 4 o 5):

  /saveView #

O de forma abreviada:

  /sv #

Ten en cuenta que las vistas guardadas son almacenadas por WoW. DynamicCam solo guarda qué números de vista usar. Por lo tanto, cuando importes un nuevo perfil de situación de DynamicCam con vistas, probablemente tendrás que configurar y guardar las vistas apropiadas después.


DynamicCam también proporciona un comando de consola para cambiar a una vista independientemente de entrar o salir de situaciones:

  /setView #

Para que la transición de vista sea instantánea, añade una "i" después del número de vista. Por ejemplo, para cambiar inmediatamente a la Vista 3 guardada, escribe:

  /setView 3 i

]]
L["Zoom Transition Time"] = "Tiempo de transición de zoom"
L["<transitionTime_desc>"] = "El tiempo en segundos que tarda en realizarse la transición al nuevo valor de zoom.\n\nSi se establece un valor menor al posible, la transición será tan rápida como lo permita la velocidad de zoom de la cámara (ajustable en la configuración de \"Zoom con el ratón\" de DynamicCam).\n\nSi una situación asigna la variable \"this.transitionTime\" en su script de entrada (ver \"Controles de situación\"), la configuración aquí se sobrescribe. Esto se hace, por ejemplo, en la situación \"Hogar/Teletransporte\" para permitir un tiempo de transición igual a la duración de la canalización del hechizo."
L["<zoomType_desc>"] = "\nEstablecer: Siempre establece el zoom en este valor.\n\nAlejar: Solo establece el zoom si la cámara está actualmente más cerca que este valor.\n\nAcercar: Solo establece el zoom si la cámara está actualmente más lejos que este valor.\n\nRango: Acerca el zoom si está más lejos que el máximo dado. Aleja el zoom si está más cerca que el mínimo dado. No hace nada si el zoom actual está dentro del rango [mín, máx]."
L["Set"] = "Establecer"
L["Out"] = "Alejar"
L["In"] = "Acercar"
L["Range"] = "Rango"
L["Don't slow"] = "No ralentizar"
L["Zoom transitions may be executed faster (but never slower) than the specified time above, if the \"Camera Zoom Speed\" (see \"Mouse Zoom\" settings) allows."] = "Las transiciones de zoom pueden ejecutarse más rápido (pero nunca más lento) que el tiempo especificado arriba, si la \"Velocidad de zoom de la cámara\" (ver configuración de \"Zoom con el ratón\") lo permite."
L["Zoom Value"] = "Valor de zoom"
L["Zoom to this zoom level."] = "Haz zoom a este nivel."
L["Zoom out to this zoom level, if the current zoom level is less than this."] = "Aleja el zoom a este nivel, si el nivel de zoom actual es menor que este."
L["Zoom in to this zoom level, if the current zoom level is greater than this."] = "Acerca el zoom a este nivel, si el nivel de zoom actual es mayor que este."
L["Zoom Min"] = "Zoom mínimo"
L["Zoom out to this zoom level, if the current zoom level is less than this."] = "Aleja el zoom a este nivel, si el nivel de zoom actual es menor que este."
L["Zoom Max"] = "Zoom máximo"
L["Zoom in to this zoom level, if the current zoom level is greater than this."] = "Acerca el zoom a este nivel, si el nivel de zoom actual es mayor que este."
L["Restore Zoom"] = "Restaurar zoom"
L["<zoomRestoreSetting_desc>"] = "Cuando sales de una situación (o sales del estado predeterminado sin situación activa), el nivel de zoom actual se guarda temporalmente, para que pueda restaurarse la próxima vez que entres en esta situación. Aquí puedes seleccionar cómo se maneja esto.\n\nEsta configuración es global para todas las situaciones."
L["Restore Zoom Mode"] = "Modo de restauración de zoom"
L["<zoomRestoreSettingSelect_desc>"] = "\nNunca: Al entrar en una situación, se aplica la configuración de zoom real (si existe) de la situación que se activa. No se tiene en cuenta ningún zoom guardado.\n\nSiempre: Al entrar en una situación, se usa el último zoom guardado de esa situación. Su configuración real solo se tiene en cuenta la primera vez que entras después de iniciar sesión.\n\nAdaptativo: El zoom guardado solo se usa bajo ciertas circunstancias. Por ejemplo, solo al regresar a la misma situación de la que vienes o cuando el zoom guardado cumple los criterios de las configuraciones \"acercar\", \"alejar\" o \"rango\" de la situación."
L["Never"] = "Nunca"
L["Always"] = "Siempre"
L["Adaptive"] = "Adaptativo"
L["<zoom_desc>"] = [[Para determinar el nivel de zoom actual, puedes usar la "Ayuda visual" (que se activa en la configuración de "Zoom con el ratón" de DynamicCam) o usar el comando de consola:

  /zoomInfo

O de forma abreviada:

  /zi]]
L["Rotation"] = "Rotación"
L["Start a camera rotation when this situation is active."] = "Inicia una rotación de cámara cuando esta situación está activa."
L["Reset to global defaults!\n(To restore the settings of a specific profile, restore the profile in the \"Profiles\" tab.)"] = "¡Restablecer a los valores predeterminados globales!\n(Para restaurar la configuración de un perfil específico, restaura el perfil en la pestaña \"Perfiles\".)"
L["Rotation Type"] = "Tipo de rotación"
L["<rotationType_desc>"] = "\nContinuamente: La cámara rota horizontalmente todo el tiempo mientras esta situación está activa. Solo se recomienda para situaciones en las que no mueves la cámara con el ratón; por ejemplo, lanzamiento de hechizo de teletransporte, taxi o AFK. La rotación vertical continua no es posible ya que se detendría en la vista perpendicular hacia arriba o abajo.\n\nPor grados: Al entrar en la situación, cambia el giro (horizontal) y/o la inclinación (vertical) de la cámara por la cantidad de grados indicada."
L["Continuously"] = "Continuamente"
L["By Degrees"] = "Por grados"
L["Acceleration Time"] = "Tiempo de aceleración"
L["Rotation Time"] = "Tiempo de rotación"
L["<accelerationTime_desc>"] = "Si estableces un tiempo mayor a 0 aquí, la rotación continua no comenzará inmediatamente a su velocidad máxima, sino que tomará esa cantidad de tiempo para acelerar. (Solo se nota con velocidades de rotación relativamente altas)."
L["<rotationTime_desc>"] = "Cuánto tiempo debe tomar para asumir el nuevo ángulo de cámara. Si se da un valor demasiado bajo aquí, la cámara podría rotar demasiado, porque solo se verifica una vez por cuadro renderizado si se alcanzó el ángulo deseado.\n\nSi una situación asigna la variable \"this.rotationTime\" en su script de entrada (ver \"Controles de situación\"), la configuración aquí se sobrescribe. Esto se hace, por ejemplo, en la situación \"Hogar/Teletransporte\" para permitir un tiempo de rotación igual a la duración de la canalización del hechizo."
L["Rotation Speed"] = "Velocidad de rotación"
L["Speed at which to rotate in degrees per second. You can manually enter values between -900 and 900, if you want to get yourself really dizzy..."] = "Velocidad a la que rotar en grados por segundo. Puedes ingresar manualmente valores entre -900 y 900, si realmente quieres marearte..."
L["Yaw (-Left/Right+)"] = "Giro (-Izquierda/Derecha+)"
L["Degrees to yaw (left or right)."] = "Grados de giro (izquierda o derecha)."
L["Pitch (-Down/Up+)"] = "Inclinación (-Abajo/Arriba+)"
L["Degrees to pitch (up or down). There is no going beyond the perpendicular upwards or downwards view."] = "Grados de inclinación (arriba o abajo). No se puede ir más allá de la vista perpendicular hacia arriba o abajo."
L["Rotate Back"] = "Rotar hacia atrás"
L["<rotateBack_desc>"] = "Al salir de la situación, rota hacia atrás la cantidad de grados (módulo 360) rotados desde que entraste en la situación. Esto te lleva efectivamente a la posición de cámara previa a entrar, a menos que hayas cambiado el ángulo de vista con el ratón entre medias.\n\nSi entras en una nueva situación con una configuración de rotación propia, el \"rotar hacia atrás\" de la situación saliente se ignora."
L["Rotate Back Time"] = "Tiempo de rotación hacia atrás"
L["<rotateBackTime_desc>"] = "El tiempo que tarda en rotar hacia atrás. Si se da un valor demasiado bajo aquí, la cámara podría rotar demasiado, porque solo se verifica una vez por cuadro renderizado si se alcanzó el ángulo deseado."
L["Fade Out UI"] = "Desvanecer IU"
L["Fade out or hide (parts of) the UI when this situation is active."] = "Desvanece u oculta (partes de) la IU cuando esta situación está activa."
L["Reset to global defaults!\n(To restore the settings of a specific profile, restore the profile in the \"Profiles\" tab.)"] = "¡Restablecer a los valores predeterminados globales!\n(Para restaurar la configuración de un perfil específico, restaura el perfil en la pestaña \"Perfiles\".)"
L["Adjust to Immersion"] = "Ajustar a Immersion"
L["<adjustToImmersion_desc>"] = "Muchas personas usan el addon Immersion junto con DynamicCam. Immersion tiene funciones propias para ocultar la IU que se activan durante la interacción con PNJ. Bajo ciertas circunstancias, el ocultar IU de DynamicCam sobrescribe el de Immersion. Para evitar esto, haz tu configuración deseada aquí en DynamicCam. Haz clic en este botón para usar los mismos tiempos de desvanecimiento que Immersion. Para más opciones, revisa el otro addon de Ludius llamado \"Immersion ExtraFade\"."
L["Fade Out Time"] = "Tiempo de desvanecimiento"
L["Seconds it takes to fade out the UI when entering the situation."] = "Segundos que tarda en desvanecerse la IU al entrar en la situación."
L["Fade In Time"] = "Tiempo de aparición"
L["<fadeInTime_desc>"] = "Segundos que tarda en aparecer la IU al salir de la situación.\n\nCuando sales de una situación mientras entras en otra, se usa el tiempo de desvanecimiento de la situación entrante para la transición."
L["Hide entire UI"] = "Ocultar toda la IU"
L["<hideEntireUI_desc>"] = "Hay una diferencia entre una IU \"oculta\" y una IU \"solo desvanecida\": los elementos desvanecidos tienen opacidad 0 pero aún pueden interactuarse. Desde DynamicCam 2.0 ocultamos automáticamente la mayoría de elementos de IU si su opacidad es 0. Por lo tanto, esta opción de ocultar toda la IU tras el desvanecimiento es más bien un vestigio. Un motivo para seguir usándola puede ser evitar interacciones no deseadas (por ejemplo, tooltips al pasar el ratón) de elementos de IU que DynamicCam aún no oculta correctamente.\n\nLa opacidad de la IU oculta es por supuesto 0, así que no puedes elegir otra opacidad ni mantener elementos visibles (excepto el indicador de FPS).\n\nDurante combate no podemos cambiar el estado oculto de elementos protegidos de la IU. Por lo tanto, dichos elementos siempre se ponen en \"solo desvanecidos\" durante combate. Ten en cuenta que la opacidad de los \"blips\" del minimapa no puede reducirse. Así que si intentas ocultar el minimapa, los \"blips\" siempre serán visibles durante combate.\n\nSi marcas esta casilla para la situación actualmente activa, no se aplicará de inmediato, porque también ocultaría este marco de configuración. Debes entrar en la situación para que surta efecto, lo cual también es posible con la casilla \"Activar\" arriba.\n\nAdemás, ocultar toda la IU cancela interacciones con buzón o PNJ. ¡No lo uses para esas situaciones!"
L["Keep FPS indicator"] = "Mantener indicador de FPS"
L["Do not fade out or hide the FPS indicator (the one you typically toggle with Ctrl + R)."] = "No desvanecer ni ocultar el indicador de FPS (el que normalmente activas con Ctrl + R)."
L["Fade Opacity"] = "Opacidad de desvanecimiento"
L["Fade the UI to this opacity when entering the situation."] = "Desvanece la IU a esta opacidad al entrar en la situación."
L["Excluded UI elements"] = "Elementos de IU excluidos"
L["Keep Alerts"] = "Mantener alertas"
L["Still show alert popups from completed achievements, Covenant Renown, etc."] = "Seguir mostrando alertas emergentes de logros completados, Renombre de pacto, etc."
L["Keep Tooltip"] = "Mantener tooltip"
L["Still show the game tooltip, which appears when you hover your mouse cursor over UI or world elements."] = "Seguir mostrando el tooltip del juego, que aparece al pasar el ratón sobre elementos de la IU o del mundo."
L["Keep Minimap"] = "Mantener minimapa"
L["<keepMinimap_desc>"] = "No desvanecer el minimapa.\n\nTen en cuenta que no podemos reducir la opacidad de los \"blips\" del minimapa. Estos solo pueden ocultarse junto con todo el minimapa, cuando la IU se desvanece a opacidad 0."
L["Keep Chat Box"] = "Mantener chat"
L["Do not fade out the chat box."] = "No desvanecer la caja de chat."
L["Keep Tracking Bar"] = "Mantener barra de seguimiento"
L["Do not fade out the tracking bar (XP, AP, reputation)."] = "No desvanecer la barra de seguimiento (XP, AP, reputación)."
L["Keep Party/Raid"] = "Mantener grupo/banda"
L["Do not fade out the Party/Raid frame."] = "No desvanecer el marco de grupo/banda."
L["Keep Encounter Frame (Dragonriding Vigor)"] = "Mantener marco de encuentro (Vigor de vuelo de dragón)"
L["Do not fade out the Encounter Frame, which while dragonriding is the Vigor display."] = "No desvanecer el marco de encuentro, que durante vuelo de dragón es el indicador de Vigor."
L["Keep additional frames"] = "Mantener marcos adicionales"
L["<keepCustomFrames_desc>"] = "La caja de texto abajo te permite definir cualquier marco que quieras mantener durante la interacción con PNJ.\n\nUsa el comando de consola /fstack para conocer los nombres de los marcos.\n\nPor ejemplo, puedes querer mantener los iconos de buff junto al minimapa para poder desmontar durante la interacción con PNJ haciendo clic en el icono correspondiente."
L["Custom frames to keep"] = "Marcos personalizados a mantener"
L["Separated by commas."] = "Separados por comas."
L["Emergency Fade In"] = "Aparición de emergencia"
L["Pressing Esc fades the UI back in."] = "Presionar Esc hace que la IU vuelva a aparecer."
L["<emergencyShow_desc>"] = [[A veces necesitas mostrar la IU incluso en situaciones donde normalmente quieres que esté oculta. Las versiones anteriores de DynamicCam hacían que la IU se mostrara siempre que se presionaba la tecla Esc. El inconveniente de esto es que la IU también se muestra cuando usas Esc para otros propósitos, como cerrar ventanas, cancelar lanzamientos de hechizos, etc. Desmarcar la casilla de arriba desactiva este comportamiento.

¡Ten en cuenta que puedes quedarte sin acceso a la IU de esta manera! Una mejor alternativa a la tecla Esc son los siguientes comandos de consola, que muestran u ocultan la IU según la configuración de "Desvanecer IU" de la situación actual:

  /showUI
  /hideUI

Para una tecla rápida conveniente para mostrar la IU, pon /showUI en una macro y asígnale una tecla en tu archivo "bindings-cache.wtf". Por ejemplo:

  bind ALT+F11 MACRO Nombre de tu macro

Si editar el archivo "bindings-cache.wtf" no te convence, puedes usar un addon de asignación de teclas como "BindPad".

Usar /showUI o /hideUI sin argumentos toma el tiempo de aparición o desvanecimiento de la situación actual. Pero también puedes indicar un tiempo de transición diferente. Por ejemplo:

  /showUI 0

para mostrar la IU sin ningún retraso.]]
L["<hideUIHelp_desc>"] = "Al configurar los efectos de desvanecimiento de la IU, puede ser molesto que este marco de configuración de \"Interfaz\" también se desvanezca. Si esta casilla está marcada, no se desvanecerá.\n\nEsta configuración es global para todas las situaciones."
L["Do not fade out this \"Interface\" settings frame."] = "No desvanecer este marco de configuración de \"Interfaz\"."
L["Situation Controls"] = "Controles de situación"
L["<situationControls_help>"] = "Aquí controlas cuándo una situación está activa. Puede requerir conocimientos de la API de la IU de WoW. Si estás satisfecho con las situaciones predeterminadas de DynamicCam, simplemente ignora esta sección. Pero si quieres crear situaciones personalizadas, puedes consultar las situaciones predeterminadas aquí. También puedes modificarlas, pero ten cuidado: tus cambios permanecerán incluso si futuras versiones de DynamicCam introducen actualizaciones importantes.\n\n"
L["Priority"] = "Prioridad"
L["The priority of this situation.\nMust be a number."] = "La prioridad de esta situación.\nDebe ser un número."
L["Restore stock setting"] = "Restaurar configuración predeterminada"
L["Your \"Priority\" deviates from the stock setting for this situation ("] = "Tu \"Prioridad\" difiere de la configuración predeterminada para esta situación ("
L["). Click here to restore it."] = "). Haz clic aquí para restaurarla."
L["<priority_desc>"] = "Si se cumplen las condiciones de varias situaciones de DynamicCam al mismo tiempo, se entra en la situación con mayor prioridad. Por ejemplo, cuando se cumple la condición de \"Mundo (interiores)\", también se cumple la de \"Mundo\". Pero como \"Mundo (interiores)\" tiene mayor prioridad que \"Mundo\", se prioriza. También puedes ver las prioridades de todas las situaciones en el menú desplegable de arriba.\n\n"
L["Error message:"] = "Mensaje de error:"
L["Events"] = "Eventos"
L["Separated by commas."] = "Separados por comas."
L["Your \"Events\" deviate from the default for this situation. Click here to restore them."] = "Tus \"Eventos\" difieren de la configuración predeterminada para esta situación. Haz clic aquí para restaurarlos."
L["<events_desc>"] = [[Aquí defines todos los eventos del juego tras los cuales DynamicCam debe comprobar la condición de esta situación, para entrar o salir de ella si corresponde.

Puedes aprender sobre los eventos del juego usando el registro de eventos de WoW.
Para abrirlo, escribe esto en la consola:

  /eventtrace

Una lista de todos los eventos posibles también se encuentra aquí:
https://warcraft.wiki.gg/wiki/Events

]]
L["Initialisation"] = "Inicialización"
L["Initialisation Script"] = "Script de inicialización"
L["Lua code using the WoW UI API."] = "Código Lua usando la API de la IU de WoW."
L["Your \"Initialisation Script\" deviates from the stock setting for this situation. Click here to restore it."] = "Tu \"Script de inicialización\" difiere de la configuración predeterminada para esta situación. Haz clic aquí para restaurarlo."
L["<initialisation_desc>"] = [[El script de inicialización de una situación se ejecuta una vez cuando se carga DynamicCam (y también cuando se modifica la situación). Normalmente pondrías aquí cosas que quieras reutilizar en cualquiera de los otros scripts (condición, al entrar, al salir). Esto puede hacer que esos otros scripts sean más cortos.

Por ejemplo, el script de inicialización de la situación "Hogar/Teletransporte" define la tabla "this.spells", que incluye los IDs de hechizos de teletransporte. El script de condición puede entonces simplemente acceder a "this.spells" cada vez que se ejecuta.

Como en este ejemplo, puedes compartir cualquier objeto de datos entre los scripts de una situación poniéndolo en la tabla "this".

]]
L["Condition"] = "Condición"
L["Condition Script"] = "Script de condición"
L["Lua code using the WoW UI API.\nShould return \"true\" if and only if the situation should be active."] = "Código Lua usando la API de la IU de WoW.\nDebe devolver \"true\" solo si la situación debe estar activa."
L["Your \"Condition Script\" deviates from the stock setting for this situation. Click here to restore it."] = "Tu \"Script de condición\" difiere de la configuración predeterminada para esta situación. Haz clic aquí para restaurarlo."
L["<condition_desc>"] = [[El script de condición de una situación se ejecuta cada vez que se activa un evento del juego para esa situación. El script debe devolver "true" solo si la situación debe estar activa.

Por ejemplo, el script de condición de la situación "Ciudad" usa la función de la API de WoW "IsResting()" para comprobar si estás en una zona de descanso:

  return IsResting()

De igual manera, el script de condición de la situación "Ciudad (interiores)" también usa la función "IsIndoors()" para comprobar si estás en interiores:

  return IsResting() and IsIndoors()

Una lista de funciones de la API de WoW se encuentra aquí:
https://warcraft.wiki.gg/wiki/World_of_Warcraft_API

]]
L["Entering"] = "Al entrar"
L["On-Enter Script"] = "Script al entrar"
L["Your \"On-Enter Script\" deviates from the stock setting for this situation. Click here to restore it."] = "Tu \"Script al entrar\" difiere de la configuración predeterminada para esta situación. Haz clic aquí para restaurarlo."
L["<executeOnEnter_desc>"] = [[El script al entrar de una situación se ejecuta cada vez que se entra en la situación.

Por ahora, el único ejemplo de esto es la situación "Hogar/Teletransporte", en la que usamos la función de la API de WoW "UnitCastingInfo()" para determinar la duración de lanzamiento del hechizo actual. Luego asignamos esto a las variables "this.transitionTime" y "this.rotationTime", para que el zoom o la rotación (ver "Acciones de situación") duren exactamente lo mismo que el lanzamiento del hechizo. (No todos los hechizos de teletransporte tienen el mismo tiempo de lanzamiento.)

]]
L["Exiting"] = "Al salir"
L["On-Exit Script"] = "Script al salir"
L["Your \"On-Exit Script\" deviates from the stock setting for this situation. Click here to restore it."] = "Tu \"Script al salir\" difiere de la configuración predeterminada para esta situación. Haz clic aquí para restaurarlo."
L["Exit Delay"] = "Retraso al salir"
L["Wait for this many seconds before exiting this situation."] = "Espera esta cantidad de segundos antes de salir de la situación."
L["Your \"Exit Delay\" deviates from the stock setting for this situation. Click here to restore it."] = "Tu \"Retraso al salir\" difiere de la configuración predeterminada para esta situación. Haz clic aquí para restaurarlo."
L["<executeOnEnter_desc>"] = [[El script al salir de una situación se ejecuta cada vez que se sale de la situación. Por ahora, ninguna situación lo utiliza.

El retraso determina cuántos segundos esperar antes de salir de la situación. Por ahora, el único ejemplo de esto es la situación "Pesca", donde el retraso te da tiempo para volver a lanzar la caña sin salir de la situación.

]]
L["Export"] = "Exportar"
L["Coming soon(TM)."] = "Próximamente(TM)."
L["Import"] = "Importar"
L["<welcomeMessage>"] = [[¡Nos alegra que estés aquí y esperamos que disfrutes el addon!

DynamicCam (DC) fue iniciado en mayo de 2016 por mpstark cuando los desarrolladores de WoW en Blizzard introdujeron las funciones experimentales de ActionCam en el juego. El propósito principal de DC ha sido proporcionar una interfaz para los ajustes de ActionCam. Dentro del juego, ActionCam sigue siendo "experimental" y no hay señales de que Blizzard lo desarrolle más. Tiene algunas limitaciones, pero debemos agradecer que ActionCam siga en el juego para entusiastas como nosotros. :-) DC no solo te permite cambiar los ajustes de ActionCam, sino también tener diferentes configuraciones para distintas situaciones del juego. Además, DC ofrece funciones relacionadas con el zoom de cámara y el desvanecimiento de la IU.

El trabajo de mpstark en DC continuó hasta agosto de 2018. Aunque la mayoría de las funciones funcionaban bien para muchos usuarios, mpstark siempre consideró DC en estado beta y, debido a su menor interés en WoW, terminó sin retomar el desarrollo. En ese momento, Ludius ya había comenzado a hacer ajustes en DC para sí mismo, lo que fue notado por Weston (también conocido como dernPerkins), quien a principios de 2020 logró contactar a mpstark y así Ludius tomó el desarrollo. La primera versión no beta, la 1.0, se lanzó en mayo de 2020 incluyendo los ajustes de Ludius hasta ese momento. Después, Ludius comenzó a trabajar en una renovación de DC que resultó en la versión 2.0 lanzada en otoño de 2022.

Cuando mpstark inició DC, su enfoque fue permitir la mayoría de las personalizaciones dentro del juego en vez de modificar el código fuente. Esto facilitó experimentar especialmente con las distintas situaciones del juego. Desde la versión 2.0, estas configuraciones avanzadas se han movido a una sección especial llamada "Controles de situación". La mayoría de los usuarios probablemente nunca la necesiten, pero los "usuarios avanzados" aún la tienen disponible. El riesgo de hacer cambios ahí es que los ajustes guardados del usuario siempre sobrescriben los ajustes predeterminados de DC, incluso si nuevas versiones de DC traen actualizaciones. Por eso, se muestra una advertencia arriba cuando tienes situaciones predeterminadas con "Controles de situación" modificados.

Si crees que alguna situación predeterminada de DC debería cambiarse, siempre puedes crear una copia con tus cambios. Siéntete libre de exportar esta nueva situación y publicarla en la página de curseforge de DC. Así podríamos agregarla como una nueva situación predeterminada. También puedes exportar y compartir tu perfil completo de DC, ya que siempre buscamos nuevos perfiles predefinidos que faciliten la entrada a DC para nuevos usuarios. Si encuentras un problema o quieres hacer una sugerencia, deja un comentario en curseforge o, mejor aún, usa los Issues en GitHub. Si quieres contribuir, también puedes abrir un pull request allí.

Aquí tienes algunos comandos útiles:

  `/dynamiccam` o `/dc` abre este menú.
  `/zoominfo` o `/zi` muestra el nivel de zoom actual.

  `/zoom #1 #2` ajusta el zoom al nivel #1 en #2 segundos.
  `/yaw #1 #2` gira la cámara #1 grados en #2 segundos (negativo #1 para girar a la derecha).
  `/pitch #1 #2` inclina la cámara #1 grados (negativo #1 para inclinar hacia arriba).


]]
L["About"] = "Acerca de"
L["The following game situations have \"Situation Controls\" deviating from DynamicCam's stock settings.\n\n"] = "Las siguientes situaciones del juego tienen \"Controles de situación\" que difieren de la configuración predeterminada de DynamicCam.\n\n"
L["<situationControlsWarning>"] = "\nSi haces esto intencionadamente, está bien. Solo ten en cuenta que cualquier actualización de estos ajustes por parte de los desarrolladores de DynamicCam siempre será sobrescrita por tu versión modificada (posiblemente desactualizada). Puedes revisar la pestaña \"Controles de situación\" de cada situación para más detalles. Si no eres consciente de ninguna modificación en los \"Controles de situación\" y simplemente quieres restaurar la configuración predeterminada para *todas* las situaciones, haz clic en este botón:"
L["Restore all stock Situation Controls"] = "Restaurar todos los controles de situación predeterminados"
L["Hello and welcome to DynamicCam!"] = "¡Hola y bienvenido a DynamicCam!"
L["Profiles"] = "Perfiles"
L["Manage Profiles"] = "Gestionar perfiles"
L["<manageProfilesWarning>"] = "Como muchos addons, DynamicCam usa la librería \"AceDB-3.0\" para gestionar perfiles. Lo que debes entender es que aquí no existe \"Guardar perfil\". Solo puedes crear nuevos perfiles y copiar configuraciones de otro perfil al que esté activo actualmente. ¡Cualquier cambio que hagas en el perfil activo se guarda inmediatamente! No existe \"cancelar\" ni \"descartar cambios\". El botón \"Restablecer perfil\" solo restablece al perfil predeterminado global.\n\nAsí que si te gustan tus ajustes de DynamicCam, deberías crear otro perfil y copiar estos ajustes como respaldo. Cuando no uses este perfil de respaldo como activo, puedes experimentar con los ajustes y volver a tu perfil original en cualquier momento seleccionando tu perfil de respaldo en la caja \"Copiar de\".\n\nSi quieres cambiar de perfil mediante macro, puedes usar lo siguiente:\n/run DynamicCam.db:SetProfile(\"Nombre del perfil aquí\")\n\n"
L["Profile presets"] = "Perfiles predefinidos"
L["Import / Export"] = "Importar / Exportar"
L["DynamicCam"] = "DynamicCam"
L["Disabled"] = "Desactivado"
L["Your DynamicCam addon lets you adjust horizontal and vertical mouse look speed individually! Just go to the \"Mouse Look\" settings of DynamicCam to make the adjustments there."] = "¡Tu addon DynamicCam te permite ajustar la velocidad de vista con el ratón horizontal y vertical de forma individual! Solo ve a la configuración de \"Vista con el ratón\" de DynamicCam para hacer los ajustes allí."
L["Attention"] = "Atención"
L["The \""] = "La opción \""
L["\" setting is disabled by DynamicCam, while you are using the horizontal camera over shoulder offset."] = "\" está desactivada por DynamicCam mientras usas el desplazamiento horizontal de cámara sobre el hombro."
L["While you are using horizontal camera offset, DynamicCam prevents CameraKeepCharacterCentered!"] = "Mientras usas el desplazamiento horizontal de cámara, DynamicCam impide CameraKeepCharacterCentered."
L["While you are using horizontal camera offset, DynamicCam prevents CameraReduceUnexpectedMovement!"] = "Mientras usas el desplazamiento horizontal de cámara, DynamicCam impide CameraReduceUnexpectedMovement."
L["While you are using vertical camera pitch, DynamicCam prevents CameraKeepCharacterCentered!"] = "Mientras usas la inclinación vertical de cámara, DynamicCam impide CameraKeepCharacterCentered."
L["cameraView ="] = "cameraView ="
L["prevented by DynamicCam!"] = "¡impedido por DynamicCam!"

-- MouseZoom
L["Actual\nZoom\nValue"] = "Valor\nactual\nde zoom"
L["Reactive\nZoom\nTarget"] = "Objetivo\nde zoom\nreactivo"

-- Core
L["Enter name for custom situation:"] = "Ingresa el nombre para la situación personalizada:"
L["Create"] = "Crear"
L["Cancel"] = "Cancelar"

-- DefaultSettings
L["City"] = "Ciudad"
L["City (Indoors)"] = "Ciudad (Interiores)"
L["World"] = "Mundo"
L["World (Indoors)"] = "Mundo (Interiores)"
L["World (Combat)"] = "Mundo (Combate)"
L["Dungeon/Scenerio"] = "Calabozos/Escenario"
L["Dungeon/Scenerio (Outdoors)"] = "Calabozos/Escenario (Exteriores)"
L["Dungeon/Scenerio (Combat, Boss)"] = "Calabozos/Escenario (Combate, Jefe)"
L["Dungeon/Scenerio (Combat, Trash)"] = "Calabozos/Escenario (Combate, Basura)"
L["Raid"] = "Banda"
L["Raid (Outdoors)"] = "Banda (Exteriores)"
L["Raid (Combat, Boss)"] = "Banda (Combate, Jefe)"
L["Raid (Combat, Trash)"] = "Banda (Combate, Basura)"
L["Arena"] = "Arena"
L["Arena (Combat)"] = "Arena (Combate)"
L["Battleground"] = "Campo de Batalla"
L["Battleground (Combat)"] = "Campo de Batalla (Combate)"
L["Mounted (any)"] = "Montado (cualquiera)"
L["Mounted (only flying-mount)"] = "Montado (solo montura voladora)"
L["Mounted (only flying-mount + airborne)"] = "Montado (solo montura voladora + en el aire)"
L["Mounted (only flying-mount + airborne + Skyriding)"] = "Montado (solo montura voladora + en el aire + Cielonáutica)"
L["Mounted (only flying-mount + Skyriding)"] = "Montado (solo montura voladora + Cielonáutica)"
L["Mounted (only airborne)"] = "Montado (solo en el aire)"
L["Mounted (only airborne + Skyriding)"] = "Montado (solo en el aire + Cielonáutica)"
L["Mounted (only Skyriding)"] = "Montado (solo Cielonáutica)"
L["Druid Travel Form"] = "Forma de Viaje de Druida"
L["Dracthyr Soar"] = "Elevarse de Dracthyr"
L["Skyriding Race"] = "Carrera de Cielonáutica"
L["Taxi"] = "Taxi"
L["Vehicle"] = "Vehículo"
L["Hearth/Teleport"] = "Piedra Hogar/Teleportación"
L["Annoying Spells"] = "Hechizos Molestos"
L["NPC Interaction"] = "Interacción con NPC"
L["Mailbox"] = "Buzón"
L["Fishing"] = "Pesca"
L["Gathering"] = "Recolección"
L["AFK"] = "AFK"
L["Pet Battle"] = "Duelo de Mascotas"