fx_version 'cerulean'
game 'gta5'

author 'majczi'
description 'Addon cars'
version '1.0.0'

files {
    'data/vehicles.meta',
    'data/carvariations.meta',
    'data/carcols.meta',
    'data/handling.meta',
    'data/dlctext.meta',
    'data/contentunlocks.meta',
    'data/vehiclelayouts.meta' 
}

data_file 'HANDLING_FILE'              'data/handling.meta'
data_file 'VEHICLE_METADATA_FILE'      'data/vehicles.meta'
data_file 'CARCOLS_FILE'               'data/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE'     'data/carvariations.meta'
data_file 'DLC_TEXT_FILE'              'data/dlctext.meta'
data_file 'CONTENT_UNLOCKS_FILE'       'data/contentunlocks.meta'
data_file 'VEHICLE_LAYOUTS_FILE'       'data/vehiclelayouts.meta' 

client_scripts {
    '@menuv/menuv.lua', 
    'client.lua'
}
