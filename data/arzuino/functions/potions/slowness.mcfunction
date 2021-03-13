#########################################################################
#                                                                       #
#   Make all entities stop rotating when slowness is thrown at them     #
#                                                                       #
#########################################################################

execute as @e at @s anchored eyes run execute if entity @e[distance=0..1.3,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:slowness"}}}] run data modify entity @s NoAI set value 1b
execute as @e[type=!player] at @s anchored eyes run execute if entity @e[distance=0..1.3,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:slowness"}}}] run data modify entity @s AbsorptionAmount set value 0.1f
execute as @e at @s anchored eyes run execute if entity @e[distance=0..2,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:long_slowness"}}}] run data modify entity @s NoAI set value 1b
execute as @e[type=!player] at @s anchored eyes run execute if entity @e[distance=0..1.3,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:long_slowness"}}}] run data modify entity @s AbsorptionAmount set value 0.1f