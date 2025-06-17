local MenuV = assert(MenuV)

local menu = MenuV:CreateMenu(false, 'Spawn Vehicle', 'topright', 255, 0, 0, 'size-125', 'default', 'menuv', 'vehicle_spawn_menu')

local vehicles = {
    'cheetah3',
    'driftchavosv6',
    'driftdominator10',
    'driftgauntlet4',
    'drifthardy',
    'driftl352',
    'everon3',
    'flatbed2',
    'hardy',
    'l352',
    'maverick2',
    'minimus',
    'policeb2',
    'rapidgt4',
    'sentinel5',
    'stockade4',
    'suzume',
    'tampa4',
    'woodlander'
}

for _, model in pairs(vehicles) do
    menu:AddButton({ 
        icon = '🚗', 
        label = model, 
        value = model,
        description = 'Spawn vehicle ' .. model,
        select = function(btn)
            local playerPed = PlayerPedId()
            local hash = GetHashKey(model)

            RequestModel(hash)
            while not HasModelLoaded(hash) do
                Wait(10)
            end

            local coords = GetEntityCoords(playerPed)
            local heading = GetEntityHeading(playerPed)

            local vehicle = CreateVehicle(hash, coords.x + 2.0, coords.y, coords.z, heading, true, false)
            SetPedIntoVehicle(playerPed, vehicle, -1)
            SetEntityAsNoLongerNeeded(vehicle)
        end
    })
end

RegisterCommand('moneyfronts', function()
    menu:Open()
end, false)
