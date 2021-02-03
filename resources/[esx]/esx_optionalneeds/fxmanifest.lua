fx_version 'adamant' -- fx versiyonunu cekiyor, burasi degismiyor simdilik. (zorunlu)

game 'gta5' -- oyunu cekiyor. zorunlu rdr de yazılabilir ancak o zaman gta 5'te kullanamazsınız scripti.

description 'ESX Optional Needs'

version '1.0.0'

server_scripts {
	'@es_extended/locale.lua',
	'locales/en.lua',
	'locales/fi.lua',
	'locales/fr.lua',
	'config.lua',
	'server/main.lua'
}

client_scripts {
	'client/main.lua'
}
