local storeItems = {"water", "burger", "sprunk", "bread"}
local cooldowns = {}
local cooldownTime = 10 -- seconds

local function notify(src, type, description)
    TriggerClientEvent('ox_lib:notify', src, {
        type = type,
        description = description
    })
end

RegisterNetEvent('my_shelf_script:grabItem', function()
    local src = source
    local now = os.time()

    if cooldowns[src] and (now - cooldowns[src] < cooldownTime) then
        local waitTime = cooldownTime - (now - cooldowns[src])
        notify(src, 'error', ('Please wait %d more seconds before grabbing another item.'):format(waitTime))
        print(('[my_shelf_script] Player %d tried to grab an item but is on cooldown.'):format(src))
        return
    end

    local randomItem = storeItems[math.random(#storeItems)]
    print(('[my_shelf_script] Player %d is trying to grab: %s'):format(src, randomItem))

    local success = exports.ox_inventory:AddItem(src, randomItem, 1)
    print(('[my_shelf_script] AddItem success for player %d: %s'):format(src, tostring(success)))

    if success then
        notify(src, 'success', ('You grabbed a %s!'):format(randomItem))
        cooldowns[src] = now
    else
        notify(src, 'error', 'Your inventory is full!')
    end
end)
