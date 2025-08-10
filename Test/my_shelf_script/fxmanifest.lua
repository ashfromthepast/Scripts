fx_version 'cerulean'
game 'gta5'

author 'souledoutnicole'
description 'Simple Shelf grab script using ESX + ox_inventory + ox_target + ox_lib'
version '1.0.0'

-- ox script/ dependencies
shared_scripts
{
    '@ox_lib/init.lua'
}

-- client scripts
client_scripts {
    'client.lua'
}

-- server scripts 
server_scripts {
    'server.lua'
}