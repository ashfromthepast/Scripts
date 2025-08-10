CreateThread(function()
    exports.ox_target:addBoxZone({
        coords = vec3(25.7, -1347.3, 29.5), -- change to your MLO shelf coords
        size = vec3(1, 1, 1),
        rotation = 0,
        debug = false,
        options = {
            {
                name = 'grab_item',
                event = 'my_shelf_script:grabItem',
                icon = 'fa-solid fa-hand',
                label = 'Grab Item',
            }
        }
    })
end)
