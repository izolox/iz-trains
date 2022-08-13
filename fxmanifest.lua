fx_version 'cerulean'
game 'gta5'

name "test"
description "A testing resource"
author "i_zolox"
version "1.0.0"

shared_scripts {
	'@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
	'config.lua'
}

client_scripts {
	'client/*.lua'
}

-- data_file 'TRAINCONFIGS_FILE' 'trains.xml'

-- files {
--     'trains.xml',
-- }