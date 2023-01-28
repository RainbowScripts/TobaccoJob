fx_version 'cerulean'
game 'gta5'
 
description 'Rainbow Scripts - TobacoFactory'

lua54 'yes'
 
shared_scripts { 
    '@ox_lib/init.lua'
}
 
client_scripts {
    'client/main.lua',
    'client/functions.lua',
    'shared/shared.lua',
}
 
server_scripts {
    'server/*.lua',
    'shared/shared.lua',
}


dependency {
     'es_extended',
     'ox_lib',
     'ox_inventory',
}