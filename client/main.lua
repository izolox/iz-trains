local function Lerp(a, b, x)
	return a + ((b - a) * x)
end

function isWithinUrbanZone(train) --checks if train is in an urban zone
    local coord = GetEntityCoords(train)
    
    local isInZone, activeZone = false, nil

    for _, zone in pairs(Config.Zones) do 
        if zone.Zone:isPointInside(coord) == true then
            isInZone, activeZone = true, zone
        end
    end

    return isInZone, activeZone
end

-- Enable tracks and train/tram spawning with fixed frequency
SwitchTrainTrack(0, Config.FreightSpawnEnabled)
SwitchTrainTrack(3, Config.TramSpawnEnabled)
SetTrainTrackSpawnFrequency(0, 1000 * Config.FreightSpawnFrequency)
SetTrainTrackSpawnFrequency(3, 1000 * Config.TramSpawnFrequency)
SetRandomTrains(true)

local stopTrain = false

CreateThread(function()

    local freightHash = GetHashKey("freight")
    
    local Speed = 20

    while true do

        local vehiclePool = GetGamePool("CVehicle")

        for _, vehicle in pairs(vehiclePool) do
            local isTrain = GetVehicleClass(vehicle) == 21
            if isTrain and GetEntityModel(vehicle) == freightHash then
                local isInZone, activeZone = isWithinUrbanZone(vehicle)
                local desiredSpeed = isInZone and activeZone.Speed or Config.RuralSpeed
                if stopTrain then desiredSpeed = 0.0 end
                Speed = Lerp(Speed, desiredSpeed, 0.0125)
                
                SetTrainSpeed(vehicle, Speed)
            end
        end

        Wait(100)
    end
end)

-- RegisterCommand("stoptrain", function()
--     stopTrain = not stopTrain
-- end, false)