##################################################################
#                                                                #
#   Make all itemframes fixed when strength is throw at them     #
#                                                                #
##################################################################

execute as @e[type=item_frame] at @s run execute if entity @e[distance=0..1.3,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:strength"}}}] run data modify entity @s Fixed set value 1b
execute as @e[type=item_frame] at @s run execute if entity @e[distance=0..1.3,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:strength"}}}] run data modify entity @s Invulnerable set value 1b
execute as @e[type=item_frame] at @s run execute if entity @e[distance=0..2,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:long_strength"}}}] run data modify entity @s Fixed set value 1b
execute as @e[type=item_frame] at @s run execute if entity @e[distance=0..2,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:long_strength"}}}] run data modify entity @s Invulnerable set value 1b