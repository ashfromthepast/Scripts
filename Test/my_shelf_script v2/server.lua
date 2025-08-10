local storeItems = {"water", "burger", "sprunk", "bread"}
local cooldowns = {}
local cooldownTime = 10 -- seconds

local function notify(src, type, text)
    TriggerClientEvent('ox_lib:notify', src, {
        type = type,
        description = text
    })
end

RegisterNetEvent('my_shelf_script:grabItem', function()
    local src = source
    local now = os.time()

    -- Cooldown check
    if cooldowns[src] and (now - cooldowns[src] < cooldownTime) then
        local waitTime = cooldownTime - (now - cooldowns[src])
        notify(src, 'error', ('Please wait %d seconds before grabbing another item.'):format(waitTime))
        return
    end

    -- Pick random item
    local randomItem = storeItems[math.random(#storeItems)]

    -- Try adding item to inventory
    local success = exports.ox_inventory:AddItem(src, randomItem, 1)

    if success then
        notify(src, 'success', ('You grabbed a %s!'):format(randomItem))
        cooldowns[src] = now
    else
        notify(src, 'error', 'Your inventory is full!')
    end
end)
