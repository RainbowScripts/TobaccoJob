Config =    {}

Config.Ubrania = {
	job_wear = {
			male = {
				['tshirt_1'] = 15,  ['tshirt_2'] = 0,
				['torso_1'] = 270,   ['torso_2'] = 1,
				['decals_1'] = 0,   ['decals_2'] = 0,
				['arms'] = 0,       ['arms_2'] = 0,
				['pants_1'] = 33,   ['pants_2'] = 0,
				['shoes_1'] = 25,   ['shoes_2'] = 0,
				-- ['mask_1'] = 52,    ['mask_2'] = 0,
				['bproof_1'] = 64,   ['bproof_2'] = 1,
                ['helmet_1'] = 150, ['helmet_2'] = 0

			},
			female = {
				['tshirt_1'] = 188,   ['tshirt_2'] = 0,
				['torso_1'] = 44,   ['torso_2'] = 0,
				['decals_1'] = 0,   ['decals_2'] = 0,
				['arms'] = 3,
				['pants_1'] = 72,   ['pants_2'] = 1,
				['shoes_1'] = 29,   ['shoes_2'] = 0,
				['mask_1'] = 0,    ['mask_2'] = 0,
				['bproof_1'] = 0,  ['bproof_2'] = 0,
				['chain_1'] = 0,    ['chain_2'] = 0
			  }
			},
}




Config.Blipy = {
	Zbrorka = {
		Pos   = {x = 2918.6150, y = 4676.8984, z = 49.4370},
		Name  = "# Pole Tytoniu",
		Type  = 27
	},

	Tworzenie = {
		Pos   = {x = 2483.0349, y = 3727.2400, z = 43.3444},
		Name  = "# Tworzenie Papierosów",
		Type  = 27
	},
	
	Pakowanie = {
		Pos   = {x = 2677.6499, y = 3510.7268, z =  52.7121},
		Name  = "# Pakowanie Papierosów",
		Type  = 27
	},

	Sprzedarz = {
		Pos   = {x = 943.2993, y = -1474.0209, z =  30.1026},
		Name  = "# Sprzedarz Paczek",
		Type  = 27
	},
	
	Siedziba = {
		Pos   = {x = 947.3734, y = -1483.5995, z =  32.2976}, 
		Name  = "Tobacco Factory",
		Type  = 69
	},

}

Config.Pedy = {
	Wyciaganieaut = {
		Pos   = {x = 934.1537, y = -1469.2609, z = 29.2024, h = 177.1132},
	},

	Sprzedarz = {
		Pos   = {x = 943.8273, y = -1473.7754, z = 29.2024, h = 91.9922},
	},

}

Config.Autowyciaganie = {


	VehicleSpawner = {
		Pos	= { x = 939.6543, y = -1467.7646, z = 30.1024, h = 176.2909  },      

	}


}

Config.CarName = "speedo"


Config.animDict1 = "anim@move_m@trash"
Config.animName1 = "pickup"


Config.animDict2 = "amb@prop_human_movie_bulb@base"
Config.animName2 = "base"

Config.animDict3 = "mini@repair"
Config.animName3 = "fixing_a_ped"

Config.animDict4 = "mp_am_hold_up"
Config.animName4 = "purchase_beerbox_shopkeeper"

Config.animDictSell = "misscarsteal4@actor"
Config.animNameSell = "actor_berating_loop"



Config.Requestped = "s_m_y_airworker"
Config.HashPed = 0x62018559



-------------------------------------------------------
--               SERVERSIDE
-------------------------------------------------------


Config.item1 = 'tobaco_tytnon'
Config.item2 = 'tobaco_papierosy'
Config.item3 = 'tobaco_paczka'


Config.moneyacountmin = 250
Config.moneyacountmax = 1000