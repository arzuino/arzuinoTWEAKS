#first time run commands
scoreboard objectives add arztw_dummy dummy
scoreboard objectives add arztw_settings dummy
scoreboard objectives add admin_cp trigger
scoreboard objectives add dark_oak_slab minecraft.used:minecraft.dark_oak_slab

#start loops
function arzuino:2tick

#home
scoreboard objectives add home trigger
scoreboard objectives add homeX dummy
scoreboard objectives add homeY dummy
scoreboard objectives add homeZ dummy

tellraw @a [{"text":"[","color":"dark_gray","bold":true},{"text":"arzuino","color":"#FF553B","bold":true,"italic":true},{"text":"TWEAKS","color":"#54AAFF","bold":true,"italic":true},{"text":"] ","color":"dark_gray","bold":true,"italic":false},{"text":"arzuinoTWEAKS loaded.","color":"gray","bold":false}]

#notify if there is no admins
execute if entity @a[tag=!admin] run tellraw @a [{"text":"[","color":"dark_gray","bold":true},{"text":"arzuino","color":"#FF553B","bold":true,"italic":true},{"text":"TWEAKS","color":"#54AAFF","bold":true,"italic":true},{"text":"] ","color":"dark_gray","bold":true,"italic":false},{"text":"There are no admins added. ","color":"gray","bold":false},{"text":"Admins: to add an admin, type ","color":"gray","bold":false},{"text":"/tag (username) add admin","color":"blue","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to open command in chat.","color":"dark_gray","bold":true}]},"clickEvent":{"action":"suggest_command","value":"/tag @p add admin"}}]