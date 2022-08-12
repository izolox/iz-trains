Config = {}

Config.RuralSpeed = 50.0

Config.Zones = {
    losSantos = {
        Zone = CircleZone:Create(vector3(-156.46, -1150.74, 23.74), 2000.00, { --establishes los santos train zones
        name="losSantosTrainZone",
        useZ = true,
        debugPoly = false
    }),

    Speed = 15.0
    },

    poletoBay = {
        Zone = CircleZone:Create(vector3(-68.64, 6165.47, 30.4), 500.00, { --establishes paletobay train zones
        name="paletoBayTrainZone",
        useZ = true,
        debugPoly = false
    }),

    Speed = 15.0
    },

    sandyShores = {
        Zone = CircleZone:Create(vector3(1797.3, 3785.14, 33.72), 750.00, { --establishes sandyshores train zones
        name="sandyShoresTrainZone",
        useZ = true,
        debugPoly = false
    }),

    Speed = 20.0
    }
}