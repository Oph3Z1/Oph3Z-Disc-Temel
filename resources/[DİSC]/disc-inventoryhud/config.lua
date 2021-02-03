------------------------------------------
-- Burası Oph3Z'in paketine göre ayarlandığı için burayı kendinize göre ayarlamanız lazım
------------------------------------------
Config = {}

Config.Locale = 'en'
Config.OpenControl = 289
Config.TrunkOpenControl = 47
Config.DeleteDropsOnStart = true
Config.HotKeyCooldown = 1000

-- Buraya dokunma
--[[Config.Locale = 'en'
Config.OpenControl = 289
Config.TrunkOpenControl = 47
Config.DeleteDropsOnStart = false
Config.HotKeyCooldown = 1000
Config.CheckLicense = true--]]

Config.Shops = {
    ['Market'] = {
        coords = {
            vector3(373.875, 325.896, 103.566),
            vector3(2557.458, 382.282, 106.622),
            vector3(-3038.939, 585.954, 7.908),
            vector3(-3241.927, 1001.462, 12.830),
            vector3(547.431, 2671.710, 42.156),
            vector3(1961.464, 3740.672, 32.343),
            vector3(2678.916, 3280.671, 55.241),
            vector3(1729.563, 6414.126, 36.037),
            vector3(26.18, -1347.37, 29.5),
            vector3(1135.808, -982.281, 46.415),
            vector3(-1222.915, -906.983, 12.326),
            vector3(-1487.553, -379.107, 40.163),
            vector3(-2968.243, 390.910, 15.043),
            vector3(1166.024, 2708.930, 38.157),
            vector3(1392.562, 3604.684, 34.980),
            vector3(-48.519, -1757.514, 29.421),
            vector3(1163.373, -323.801, 68.205),
            vector3(-707.501, -914.260, 19.215),
            vector3(-1820.523, 792.518, 138.118),
            vector3(1698.388, 4924.404, 42.063),
            --vector3(282.43, -214.66, 53.99),
            vector3(-272.78,239.46,90.57),
        },
        items = {
            { name = "bread", price = 10, count = 1 },

        },
        markerType = 1,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = 'Marketi açmak için ~INPUT_CONTEXT~ tuşuna basınız',
        enableBlip = true,
        job = 'all'
    },

    --[[['RobsLiquor'] = {
        coords = {
            vector3(-48.519, -1757.514, 29.421),
            vector3(1163.373, -323.801, 68.205),
            vector3(-707.501, -914.260, 19.215),
            vector3(-1820.523, 792.518, 138.118),
            vector3(1698.388, 4924.404, 42.063),
        },
        items = {
            { name = "bread", price = 20, count = 10 },
            { name = "water", price = 10, count = 10 }
        },
        markerType = 1,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = 'Open Shop ~INPUT_CONTEXT~',
        enableBlip = false,
        job = 'all'
    },

    

    ['LTDgasoline'] = {
        coords = {
            vector3(1135.808, -982.281, 46.415),
            vector3(-1222.915, -906.983, 12.326),
            vector3(-1487.553, -379.107, 40.163),
            vector3(-2968.243, 390.910, 15.043),
            vector3(1166.024, 2708.930, 38.157),
            vector3(1392.562, 3604.684, 34.980),
        },
        items = {
            { name = "bread", price = 20, count = 10 },
            { name = "water", price = 10, count = 10 },
        },
        markerType = 1,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = 'Open Shop ~INPUT_CONTEXT~',
        enableBlip = false,
        job = 'all'
    },

    ['Diner'] = {
        coords = {
            vector3(282.43, -214.66, 53.99),
            vector3(-272.78,239.46,90.57),
        },
        items = {
            { name = "bread", price = 20, count = 10 },
            { name = "water", price = 10, count = 10 },

        },
        markerType = 1,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = 'Open Diner ~INPUT_CONTEXT~',
        enableBlip = false,
        job = 'all'
    },--]]

    ['Bar'] = {
        coords = {
            vector3(127.5, -1284.71, 29.28),

        },
        items = {
            { name = "whisky", price = 140, count = 1 },
            { name = "tequila", price = 120, count = 1 },
            { name = "rum", price = 160, count = 1 },
            { name = "champagne", price = 700, count = 1 },
            { name = "beer", price = 110, count = 1 },
            { name = "wine", price = 140, count = 1 },
            { name = "vodka", price = 210, count = 1 },
        },
        markerType = 1,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = 'Open Shop ~INPUT_CONTEXT~',
        enableBlip = false,
        job = 'all'
    },

    ['Kıyafetçi'] = {
        coords = {
            vector3(-710.32, -153.44, 37.42),
            vector3(75.44, -1392.67, 29.38),
            vector3(425.52, -805.95, 29.49),
            vector3(125.72, -223.85, 54.56),
            vector3(-822.45, -1073.69, 11.33),
            vector3(-1451.02, -238.317, 49.810),
            vector3(1196.880, 2710.164, 38.222),
            vector3(614.3281, 2762.945, 42.088),
            vector3(1693.831, 4823.004, 42.063),
            vector3(4.934447, 6512.672, 31.877),
            vector3(-1101.42, 2710.459, 19.107),
            vector3(-3170.54, 1043.796, 20.863),
        },
        items = {
            { name = "bloodsbandana", price = 300, count = 1 },
            { name = "greenbandana", price = 300, count = 1 },
            { name = "ballasbandana", price = 300, count = 1 },
            { name = "vagosbandana", price = 300, count = 1 },
            { name = "cripsbandana", price = 300, count = 1 },
            { name = "whitebandana", price = 300, count = 1 },
            { name = "blackbandana", price = 300, count = 1 },
            { name = "orangebandana", price = 300, count = 1 },

        },
        markerType = 1,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = 'Kıyafetçi dükkanını açmak için ~INPUT_CONTEXT~ tuşuna basınız',
        enableBlip = false,
        job = 'all'
    },

    ['Elektronik Mağzası'] = {
        coords = {
            vector3(-628.380, -277.555, 35.577)
        },
        items = {
            { name = "phone", price = 300, count = 1 },
            { name = "tablet", price = 700, count = 1 },
            { name = "bodycamsivil", price = 450, count = 1 },
            { name = "radio", price = 350, count = 1 },

        },
        markerType = 1,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = 'Mağzayı dükkanını açmak için ~INPUT_CONTEXT~ tuşuna basınız',
        enableBlip = false,
        job = 'all'
    },

    ['Pearls Restoranı'] = {
        coords = {
            vector3(-1818.58, -1198.05, 14.469)
        },
        items = {
            { name = "fanta", price = 30, count = 1 },
            { name = "pizza", price = 90, count = 1 },
            { name = "sandwich", price = 60, count = 1 },
            { name = "burger", price = 45, count = 1 },
            { name = "tavukburger", price = 45, count = 1 },
            { name = "uckatliburger", price = 120, count = 1 },

        },
        markerType = 1,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = 'Restoran dükkanını açmak için ~INPUT_CONTEXT~ tuşuna basınız',
        enableBlip = false,
        job = 'all'
    },

    ['Sılahçı'] = {
        coords = {
            vector3(21.96286, -1107.06, 29.797),
            vector3(842.0750, -1033.88, 28.194),
            vector3(251.99, -49.82, 68.94),
            vector3(-662.32, -935.23, 20.83),
            vector3(810.05, -2156.93, 28.62),
            vector3(2567.76,294.63,107.74),
            vector3(1693.83,3759.77,33.81),
            vector3(-1117.45,2698.58,17.55),
            vector3(-330.24,6083.88,30.55),
        },
        items = {
            { name = "disc_ammo_pistol", price = 300, count = 1 },
            { name = "disc_ammo_smg", price = 600, count = 1 },
            { name = "disc_ammo_rifle", price = 900, count = 1 },
            { name = "WEAPON_SWITCHBLADE", price = 45000, count = 1 },
            { name = "WEAPON_BAT", price = 30000, count = 1 },

        },
        markerType = 1,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = 'Silahçıyı açmak için ~INPUT_CONTEXT~ tuşuna basınız',
        enableBlip = false,
        job = 'all'
    },

    ['Blackmarket'] = {
        coords = {
            vector3(1240.643, -3322.01, 6.0287),
        },
        items = {
            -- Ammo
            { name = "WEAPON_PISTOL", price = 650000, count = 1, grade = 0 },
            { name = "laptop_h", price = 40000, count = 1, grade = 0 },
            { name = "safecart", price = 35000, count = 1, grade = 0 },
            { name = "jammer", price = 15000, count = 1, grade = 0 },
            { name = "hackerlaptop", price = 140000, count = 1, grade = 0 },
            { name = "lockpick", price = 800, count = 1, grade = 0 },
            { name = "thermal_charge", price = 6000, count = 1, grade = 0 },
            { name = "id_card_f", price = 9000, count = 1, grade = 0 },
            { name = "radiobreaker", price = 90000, count = 1, grade = 0 },
            { name = "secure_card", price = 14000, count = 1, grade = 0 },
        },
        markerType = 2,
        markerColour = { r = 0, g = 0, b = 255 },
        msg = 'Blackmarketi Açmak İçin [E] Tuşuna Basınız',
        job = 'all'
    },

    ['EMS Mağzası'] = {
        coords = {
            vector3(328.7801, -572.947, 43.317),
        },
        items = {
            -- Ammo
            { name = "medikit", price = 5, count = 1, grade = 0 },
            { name = "bandage", price = 5, count = 1, grade = 0 },
        },
        markerType = 2,
        markerColour = { r = 0, g = 0, b = 255 },
        msg = 'EMS Mağzasını Açmak İçin [E] Tuşuna Basınız',
        job = 'ambulance'
    },

    ['Polis Mağzası'] = {
        coords = {
            vector3(452.0941, -980.038, 30.689),
        },
        items = {
            -- Ammo
            { name = "WEAPON_COMBATPISTOL", price = 500, count = 1, grade = 0 },
            { name = "WEAPON_STUNGUN", price = 110, count = 1, grade = 0 },
            { name = "WEAPON_NIGHTSTICK", price = 100, count = 1, grade = 0 },
            { name = "WEAPON_FLASHLIGHT", price = 100, count = 1, grade = 0 },
            { name = "WEAPON_CARBINERIFLE", price = 3500, count = 1, grade = 3 },
            { name = "disc_ammo_pistol", price = 10, count = 1, grade = 0 },
            { name = "disc_ammo_rifle", price = 30, count = 1, grade = 0 },
            { name = "HeavyArmor", price = 700, count = 1, grade = 0 },
            { name = "MedArmor", price = 450, count = 1, grade = 0 },
            { name = "SmallArmor", price = 350, count = 1, grade = 0 },
            { name = "mdt", price = 100, count = 1, grade = 0 },
            { name = "radio", price = 100, count = 1, grade = 0 },
            --{ name = "bodycam", price = 100, count = 1, grade = 0 },
        },
        markerType = 2,
        markerColour = { r = 0, g = 0, b = 255 },
        msg = 'Polis Mağzasını Açmak İçin [E] Tuşuna Basınız',
        job = 'police'
    },
}

Config.Stash = {
    ['Polis Kasası'] = {
        coords = vector3(477.4756, -989.399, 24.914),
        size = vector3(1.0, 1.0, 1.0),
        job = 'police',
        markerType = 2,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = 'Kasayı Açmak İçin ~INPUT_CONTEXT~ Tuşuna Basınız'
    },

    ['EMS Kasası'] = {
        coords = vector3(321.5027, -570.218, 43.317),
        size = vector3(1.0, 1.0, 1.0),
        job = 'ambulance',
        markerType = 2,
        markerColour = { r = 255, g = 255, b = 255 },
        msg = 'Kasayı Açmak İçin ~INPUT_CONTEXT~ Tuşuna Basınız'
    }
}

Config.Steal = {
    black_money = true,
    cash = true
}

Config.Seize = {
    black_money = true,
    cash = true
}

Config.VehicleLimit = {
    ['Zentorno'] = 10,
    ['Panto'] = 1,
    ['Zion'] = 5
}

--Courtesy DoctorTwitch
Config.VehicleSlot = {
    [0] = 10, --Compact
    [1] = 15, --Sedan
    [2] = 20, --SUV
    [3] = 15, --Coupes
    [4] = 5, --Muscle
    [5] = 5, --Sports Classics
    [6] = 5, --Sports
    [7] = 0, --Super
    [8] = 5, --Motorcycles
    [9] = 10, --Off-road
    [10] = 20, --Industrial
    [11] = 20, --Utility
    [12] = 30, --Vans
    [13] = 0, --Cycles
    [14] = 0, --Boats
    [15] = 0, --Helicopters
    [16] = 0, --Planes
    [17] = 20, --Service
    [18] = 20, --Emergency
    [19] = 90, --Military
    [20] = 0, --Commercial
    [21] = 0 --Trains
}

Config.Throwables = {
    WEAPON_MOLOTOV = 615608432,
    WEAPON_GRENADE = -1813897027,
    WEAPON_STICKYBOMB = 741814745,
    WEAPON_PROXMINE = -1420407917,
    WEAPON_SMOKEGRENADE = -37975472,
    WEAPON_PIPEBOMB = -1169823560,
    WEAPON_SNOWBALL = 126349499
}

Config.FuelCan = 883325847
