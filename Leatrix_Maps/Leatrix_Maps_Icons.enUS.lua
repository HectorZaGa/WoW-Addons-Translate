
	----------------------------------------------------------------------
	-- Leatrix Maps Icons
	----------------------------------------------------------------------

	local void, Leatrix_Maps = ...
	local L = Leatrix_Maps.L

	-- LeaMapsLC.NewPatch
	local LeaMapsLC = {}
	local gameversion, gamebuild, gamedate, gametocversion = GetBuildInfo()
	if gametocversion and gametocversion > 110000 then -- 11.0.0
		LeaMapsLC.NewPatch = true
	end

	Leatrix_Maps["Icons"] = {

		----------------------------------------------------------------------
		--	World Of Warcraft: Eastern Kingdoms
		----------------------------------------------------------------------

		[18] =  --[[Claros de Tirisfal]] {
			{"PortalH", 61.9, 59.0, L["Vega de Tuercespina"], L["Portal"]},
			{"PortalH", 60.7, 58.7, L["Orgrimmar"], L["Portal"]},
			{"PortalH", 59.1, 58.9, L["Fiordo Aquilonal"], L["Portal"]},
			{"PortalH", 59.4, 67.4, L["Ciudad de Lunargenta"], L["Orbe de Translocación"]},
		},

		[50] =  --[[Vega de Tuercespina]] {
					{"PortalH", 37.6, 51.0, L["Ciudad de Entrañas"], L["Portal"]},
		},

		[84] =  --[[Ciudad de Ventormenta]] {
					{"PortalA", 74.4, 18.4, L["Santuario de la Tierra Oriental"], L["Infralar"] .. ", " .. L["Hyjal"] .. ", " .. L["Tol Barad"] .. ", " .. L["Tierras Altas Crepusculares"] .. ", " .. L["Uldum"] .. ", " .. L["Vashj'ir"]},
				},

				[90] =  --[[Ciudad de Entrañas]] {
					{"PortalH", 85.3, 17.1, L["Península del Fuego Infernal"], L["Portal"]},
		},

		----------------------------------------------------------------------
		--	World Of Warcraft: Kalimdor
		----------------------------------------------------------------------

		[57] =  --[[Teldrassil]] {
			{"PortalA", 55.0, 93.7, L["Ciudad de Ventormenta"], L["Portal"]},
			{"PortalA", 52.3, 89.5, L["Exodar"], L["Portal"]},
		},

		[74] = 	--[[Cavernas del Tiempo: La Espiral]] {
			{"PortalA", 59.0, 26.8, L["Ciudad de Ventormenta"], L["Portal"]},
			{"PortalH", 58.2, 26.7, L["Orgrimmar"], L["Portal"]},
		},

		[81] =  --[[Silithus]] {
			{"PortalN", 43.2, 44.5, L["Cámara del Corazón"], L["Translocador Titánico"]},
			{"PortalA", 41.5, 44.9, L["Tiragarde"], L["Portal"]},
			{"PortalH", 41.6, 45.2, L["Zuldazar"], L["Portal"]},
		},

		[85] =  --[[Orgrimmar: Ciudad Principal]] {
			{"PortalH", 50.1, 37.8, L["Santuario de la Tierra Occidental"], L["Infralar"] .. ", " .. L["Hyjal"] .. ", " .. L["Tierras Altas Crepusculares"] .. ", " .. L["Uldum"] .. ", " .. L["Vashj'ir"]},
			{"PortalH", 47.4, 39.3, L["Tol Barad"], L["Portal"]},
			{"PortalH", 43.0, 65.0, L["Zepelín a"] .. " " .. L["Cima del Trueno"] .. ", " .. L["Mulgore"], ""},
			{"PortalH", 50.7, 55.5, L["Ciudad de Entrañas"], L["Portal"]},
		},

		[86] =  --[[Orgrimmar: La Falla de la Sombra]] {
			{"PortalH", 50.1, 37.8, L["Santuario de la Tierra Occidental"], L["Infralar"] .. ", " .. L["Hyjal"] .. ", " .. L["Tierras Altas Crepusculares"] .. ", " .. L["Uldum"] .. ", " .. L["Vashj'ir"]},
			{"PortalH", 47.4, 39.3, L["Tol Barad"], L["Portal"]},
			{"PortalH", 43.0, 65.0, L["Zepelín a"] .. " " .. L["Cima del Trueno"] .. ", " .. L["Mulgore"], ""},
			{"PortalH", 50.7, 55.5, L["Ciudad de Entrañas"], L["Portal"]},
		},

		[88] =  --[[Cima del Trueno]] {
			{"PortalH", 14.6, 26.4, L["Zepelín a"] .. " " .. L["Orgrimmar"] .. ", " .. L["Durotar"], ""},
		},

		[89] =  --[[Darnassus]] {
			{"PortalA", 44.1, 78.5, L["Templo de la Luna"], L["Exodar"] .. ", " .. L["Península del Fuego Infernal"]},
		},

		[97] =  --[[Isla Bruma Azur]] {
			{"PortalA", 20.4, 54.1, L["Darnassus"], L["Portal"]},
		},

		[247] =  --[[Ruinas de Ahn'Qiraj]] {
			{"Chest", 59.3, 28.7, L["Arca de escarabajos"], L["Cofre"]},
			{"Chest", 60.8, 51.0, L["Arca de escarabajos"], L["Cofre"]},
			{"Chest", 73.0, 66.4, L["Arca de escarabajos"], L["Cofre"]},
			{"Chest", 57.4, 78.3, L["Arca de escarabajos"], L["Cofre"]},
			{"Chest", 54.8, 87.5, L["Arca de escarabajos"], L["Cofre"]},
			{"Chest", 41.0, 76.9, L["Arca de escarabajos"], L["Cofre"]},
			{"Chest", 34.0, 53.0, L["Arca de escarabajos"], L["Cofre"]},
			{"Chest", 41.1, 32.2, L["Arca de escarabajos"], L["Cofre"]},
			{"Chest", 41.6, 46.3, L["Arca de escarabajos"], L["Cofre"]},
			{"Chest", 46.7, 42.0, L["Arca de escarabajos"], L["Cofre"]},
		},

		[319] =  --[[Templo de Ahn'Qiraj]] {
			{"Chest", 33.1, 48.4, L["Arca de escarabajos grande"], L["Cofre"]},
			{"Chest", 64.5, 25.5, L["Arca de escarabajos grande"], L["Cofre"]},
			{"Chest", 58.4, 49.9, L["Arca de escarabajos grande"], L["Cofre"]},
			{"Chest", 47.5, 54.7, L["Arca de escarabajos grande"], L["Cofre"]},
			{"Chest", 56.2, 66.0, L["Arca de escarabajos grande"], L["Cofre"]},
			{"Chest", 50.7, 78.1, L["Arca de escarabajos grande"], L["Cofre"]},
			{"Chest", 51.4, 83.2, L["Arca de escarabajos grande"], L["Cofre"]},
			{"Chest", 48.4, 85.4, L["Arca de escarabajos grande"], L["Cofre"]},
			{"Chest", 48.0, 81.1, L["Arca de escarabajos grande"], L["Cofre"]},
			{"Chest", 34.2, 83.5, L["Arca de escarabajos grande"], L["Cofre"]},
			{"Chest", 39.2, 68.4, L["Arca de escarabajos grande"], L["Cofre"]},
		},

		----------------------------------------------------------------------
		--	The Burning Crusade
		----------------------------------------------------------------------

		[100] =  --[[Península del Fuego Infernal]] {
			{"PortalH", 88.6, 47.7, L["Orgrimmar"], L["Portal"]},
			{"PortalA", 88.6, 52.8, L["Ciudad de Ventormenta"], L["Portal"]},
		},

		[103] =  --[[Exodar]] {
			{"PortalA", 48.3, 62.9, L["Ciudad de Ventormenta"], L["Portal"]},
		},

		[110] =  --[[Ciudad de Lunargenta]] {
			{"PortalH", 58.5, 18.7, L["Orgrimmar"], L["Portal"]},
			{"PortalH", 49.5, 14.8, L["Entrañas"], L["Orbe de Translocación"]},
			{"PortalH", 58.5, 18.7, L["Orgrimmar"], L["Portal"]},
		},

		[111] =  --[[Ciudad de Shattrath]] {
			{"PortalN", 48.5, 42.0, L["Isla de Quel'Danas"], L["Portal"]},
			{"PortalH", 56.8, 48.9, L["Orgrimmar"], L["Portal"]},
			{"PortalA", 57.2, 48.3, L["Ciudad de Ventormenta"], L["Portal"]},
		},

		[245] =  --[[Península de Tol Barad]] {
			{"PortalH", 56.3, 79.7, L["Orgrimmar"], L["Portal"]},
			{"PortalA", 75.3, 58.8, L["Ciudad de Ventormenta"], L["Portal"]},
		},

		----------------------------------------------------------------------
		--	Wrath Of The Lich King
		----------------------------------------------------------------------

		[114] =  --[[Tundra Boreal]] {
			{"PortalN", 78.9, 53.7, L["Barco a"] .. " " .. L["Puerto Moa'ki"] .. ", " .. L["Cementerio de Dragones"]},
		},

		[115] =  --[[Cementerio de Dragones]] {
			{"PortalN", 49.6, 78.4, L["Barco a"] .. " " .. L["Kamagua"] .. ", " .. L["Fiordo Aquilonal"]},
			{"PortalN", 47.9, 78.7, L["Barco a"] .. " " .. L["Unu'pe"] .. ", " .. L["Tundra Boreal"]},
		},

		[117] =  --[[Fiordo Aquilonal]] {
			{"PortalN", 23.5, 57.8, L["Barco a"] .. " " .. L["Puerto Moa'ki"] .. ", " .. L["Cementerio de Dragones"]},
		},

		[125] =  --[[Dalaran]] {
			{"PortalA", 40.1, 62.8, L["Ciudad de Ventormenta"], L["Portal"]},
			{"PortalH", 55.3, 25.4, L["Orgrimmar"], L["Portal"]},
		},

		----------------------------------------------------------------------
		--	Cataclysm
		----------------------------------------------------------------------

		----------------------------------------------------------------------
		--	Mists of Pandaria
		----------------------------------------------------------------------

		[392] =  --[[Santuario de las Dos Lunas]] {
			{"PortalH", 73.3, 42.8, L["Orgrimmar"], L["Portal"]},
		},

		[394] =  --[[Santuario de las Siete Estrellas]] {
			{"PortalA", 71.6, 36.0, L["Ciudad de Ventormenta"], L["Portal"]},
		},

		----------------------------------------------------------------------
		--	Warlords of Draenor
		----------------------------------------------------------------------

		[622] =  --[[Escudo de Tormenta]] {
			{"PortalA", 60.8, 38.0, L["Ciudad de Ventormenta"], L["Portal"]},
			{"PortalA", 36.4, 41.1, L["Vigilia del León"], L["Portal"], 0, 38445},
		},

		[624] =  --[[Lanza de Guerra]] {
			{"PortalH", 60.6, 51.6, L["Orgrimmar"], L["Portal"]},
			{"PortalH", 53.0, 43.9, L["Vol'mar"], L["Portal"], 0, 37935},
		},

		----------------------------------------------------------------------
		--	Legion
		----------------------------------------------------------------------

		[627] =  --[[Dalaran]] {
			{"PortalA", 39.6, 63.2, L["Ciudad de Ventormenta"], L["Portal"]},
			{"PortalH", 55.2, 23.9, L["Orgrimmar"], L["Portal"]},
		},

		[682] =  --[[Bastión Vil]] {
			{"PortalN", 53.6, 36.8, L["Shal'Aran"], L["Portal"], 0, 41575,},
		},

		[684] =  --[[Enclave Destrozado]] {
			{"PortalN", 40.9, 13.7, L["Shal'Aran"], L["Portal"], 0, 42230,},
		},

		[680] =  --[[Suramar]] {
			{"PortalN", 21.6, 28.5, L["Falanaar"], L["Portal"], 0, 42230,},
			{"PortalN", 39.7, 76.2, L["Bastión Vil"], L["Portal"], 0, 41575,},
			{"PortalN", 30.8, 11.0, L["Bastión de la Guardia Lunar"], L["Portal"], 0, 43808,},
			{"PortalN", 43.7, 79.2, L["Finca Lunastre"], L["Portal"], 0, 43811,},
			{"PortalN", 36.1, 47.2, L["Ruinas de Elune'eth"], L["Portal"], 0, 40956,},
			{"PortalN", 52.0, 78.8, L["Terraza de la Eterna Luna"], L["Portal"], 0, 42889,},
			{"PortalN", 43.4, 60.6, L["Santuario del Orden"], L["Portal"], 0, 43813,},
			{"PortalN", 42.0, 35.2, L["Tel'anor"], L["Portal"], 0, 43809,},
			{"PortalN", 64.0, 60.4, L["Viñedos del Crepúsculo"], L["Portal"], 0, 44084,},
			{"PortalN", 54.5, 69.4, L["Puerto Astravar"], L["Portal"], 0, 44740,},
			{"PortalN", 47.7, 81.4, L["El Creciente Menguante"], L["Portal"], 0, 42487, 38649,},
		},

		[761] =  --[[Calabozo: Corte de las Estrellas]] {

			{"Arrow", 42.5, 76.8, L["Paso 1"], L["Comienza aquí."], 5.5},
			{"Arrow", 42.4, 65.2, L["Paso 2"], L["Entra en este edificio y sube las escaleras."], 0.1},
			{"Arrow", 41.3, 53.0, L["Paso 3"], L["Haz clic en el Faro Arcano y cruza el puente a la izquierda."], 0.7},
			{"Arrow", 36.2, 47.1, L["Paso 4"], L["Mata al Constructo y gira a la izquierda antes del puente."], 1.1},
			{"Arrow", 32.0, 41.2, L["Paso 5"], L["Cruza este puente."], 5.9},
			{"Arrow", 33.5, 30.8, L["Paso 6"], L["Llama al Capitán de Patrulla Gerdo aquí y mátalo."], 6.1},
			{"Arrow", 38.5, 24.5, L["Paso 7"], L["Sube estos escalones."], 4.5},
			{"Arrow", 42.6, 26.7, L["Paso 8"], L["Entra en este edificio y sube las escaleras."], 4.5},
			{"Arrow", 46.4, 34.9, L["Paso 9"], L["Entra en este edificio y baja las escaleras."], 2.7},
			{"Arrow", 48.4, 39.7, L["Paso 10"], L["Mira el mapa. Encuentra y mata 3 Ejecutores (puntos amarillos).|nDespués de cada Ejecutor, espera y mata al Pacto.|n|nLuego mata a Talixae Corona de Fuego."], 5.9},
			{"Arrow", 60.4, 61.6, L["Paso 11"], L["Después de matar a Talixae, habla con Ly'leth Lunastre para obtener un disfraz."], 4.0},
			{"Arrow", 64.0, 67.0, L["Paso 12"], L["Entra en este edificio y habla con los Chismosos para obtener una descripción del espía."], 4.0},
		},

		[763] =  --[[Calabozo: Corte de las Estrellas (Los Balcones)]] {
			{"Arrow", 27.1, 77.8, L["Paso 13 (1)"], L["Una vez identificado, mata al espía aquí o en el lado opuesto.|nLuego recoge las Llaves Arcanas."], 2.3},
			{"Arrow", 66.7, 18.7, L["Paso 13 (2)"], L["Una vez identificado, mata al espía aquí o en el lado opuesto.|nLuego recoge las Llaves Arcanas."], 5.5},
			{"Arrow", 60.0, 69.3, L["Paso 14"], L["Abre las puertas de la Terraza Celestial usando las Llaves Arcanas.|nMata al Consejero Melandrus."], 4.0},
		},

		----------------------------------------------------------------------
		--	Battle For Azeroth
		----------------------------------------------------------------------

		[1161] =  --[[Puerto de Boralus]] {
			{"PortalA", 70.4, 17.7, L["Santuario de los Sabios"], L["Exodar"] .. ", " .. L["Forjaz"] .. ", " .. L["Nazjatar"] .. ", " .. L["Silithus"] .. ", " .. L["Ciudad de Ventormenta"]},
		},

		[1163] =  --[[Dazar'alor (interior)]] {
			{"PortalH", 60.5, 70.3, L["Sala de los Caminos Antiguos"], L["Nazjatar"] .. ", " .. L["Orgrimmar"] .. ", " .. L["Silithus"] .. ", " .. L["Ciudad de Lunargenta"] .. ", " .. L["Cima del Trueno"]},
		},

		[1473] =  --[[Cámara del Corazón]] {
			{"PortalN", 50.1, 30.4, L["Silithus"], L["Translocador Titánico"]},
		},

		----------------------------------------------------------------------
		--	Shadowlands
		----------------------------------------------------------------------

		[1670] =  --[[Oribos]] {
			{"PortalH", 20.9, 54.8, L["Orgrimmar"], L["Portal"]},
			{"PortalA", 20.9, 45.9, L["Ciudad de Ventormenta"], L["Portal"]},
		},

		[1961] =  --[[Korthia]] {
			{"PortalN", 64.5, 24.1, L["Oribos"], L["Portal"]},
			{"TaxiN", 49.3, 63.9, L["Transportador Desollador"], L["Taxi a Guarida del Erudito"]},
			{"TaxiN", 60.8, 28.5, L["Transportador Desollador"], L["Taxi a Bóveda de los Secretos"]},
		},

		[1970] =  --[[Zereth Mortis]] {
			{"TaxiN", 34.9, 45.7, L["Hondonada del Exilio"], L["Santuario"]},
			{"TaxiN", 61.9, 58.9, L["Forja de Síntesis"], L["Creación de Mascotas"]},
			{"TaxiN", 68.5, 30.2, L["Repositorio de Protoformas"], L["Creación de Monturas"]},
		},

		----------------------------------------------------------------------
		--	Dragonflight
		----------------------------------------------------------------------

		[2023] =  --[[Llanuras de Ohn'ahran]] {
			{"PortalN", 18.5, 52.1, L["Sueño Esmeralda"], L["Portal"]},
		},

		[2112] =  --[[Valdrakken]] {
			{"PortalN", 53.9, 55.0, L["Portales de Valdrakken"]},
			{"PortalH", 56.6, 38.4, L["Orgrimmar"], L["Portal"]},
			{"PortalA", 59.7, 41.8, L["Ciudad de Ventormenta"], L["Portal"]},
			{"PortalN", 62.6, 57.3, L["Sueño Esmeralda"], L["Portal"]},
			{"PortalN", 26.1, 40.9, L["Tierras Inhóspitas"], L["Portal"]},
		},

		[2200] =  --[[Sueño Esmeralda]] {
			{"PortalN", 72.8, 52.9, L["Llanuras de Ohn'ahran"], L["Portal"]},
		},

		[2239] =  --[[Amirdrassil]] {
			{"PortalN", 89.3, 38.7, L["Sueño Esmeralda"], L["Portal"]},
		},

		----------------------------------------------------------------------
		--	The War Within
		----------------------------------------------------------------------

		[2339] =  --[[Dornogal]] {
			{"PortalA", 41.1, 22.7, L["Ciudad de Ventormenta"], L["Portal"]},
			{"PortalH", 38.2, 27.2, L["Orgrimmar"], L["Portal"]},
		},

	}

	local frame = CreateFrame("FRAME")
	frame:RegisterEvent("PLAYER_LOGIN")
	frame:SetScript("OnEvent", function()

		-- Add Caverns of Time portal to Shattrath if reputation with Keepers of Time is revered or higher
		if LeaMapsLC.NewPatch then
			local factionData = C_Reputation.GetFactionDataByID(989)
			if factionData and factionData.reaction then
				if factionData.reaction and factionData.reaction >= 7 then
					Leatrix_Maps["Icons"][111] = Leatrix_Maps["Icons"][111] or {}; tinsert(Leatrix_Maps["Icons"][111],
						{"PortalN", 74.7, 31.4, L["Cavernas del Tiempo"], L["Portal de Zephyr"]}			)
				end
			end
		else
			local name, description, standingID = C_Reputation.GetFactionDataByID(989)
			if standingID and standingID >= 7 then
				Leatrix_Maps["Icons"][111] = Leatrix_Maps["Icons"][111] or {}; tinsert(Leatrix_Maps["Icons"][111],
					{"PortalN", 74.7, 31.4, L["Cavernas del Tiempo"], L["Portal de Zephyr"]}			)
			end
		end

	end)
