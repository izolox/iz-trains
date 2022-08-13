Config = {}

Config.RuralSpeed = 50.0 -- Speed outside any urban zone.

Config.TramSpawnEnabled = true -- Does tram spawn.
Config.FreightSpawnEnabled = true -- Does freight train spawn.

Config.TramSpawnFrequency = 120 -- How often the tram spawns in seconds.
Config.FreightSpawnFrequency = 120 -- How often the freight train spawns in seconds.

Config.Zones = {
    losSantos = {
        Zone = CircleZone:Create(vector3(-156.46, -1150.74, 23.74), 2000.00, { -- Establishes los santos train zones.
        name="losSantosTrainZone",
        useZ = true,
        debugPoly = false
    }),

    Speed = 15.0 -- Speed within zone.
    },

    poletoBay = {
        Zone = CircleZone:Create(vector3(-68.64, 6165.47, 30.4), 500.00, { -- Establishes paletobay train zones.
        name="paletoBayTrainZone",
        useZ = true,
        debugPoly = false
    }),

    Speed = 15.0 -- Speed within zone.
    },

    sandyShores = {
        Zone = CircleZone:Create(vector3(1797.3, 3785.14, 33.72), 750.00, { -- Establishes sandyshores train zones.
        name="sandyShoresTrainZone",
        useZ = true,
        debugPoly = false
    }),

    Speed = 20.0 -- Speed within zone.
    }
}