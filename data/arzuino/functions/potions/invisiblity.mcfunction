##########################################################################
#                                                                        #
#   Make all armorstands invisible when invisiblity is throw at them     #
#                                                                        #
##########################################################################

execute as @e[type=armor_stand] at @s anchored eyes run execute if entity @e[distance=0..1.3,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:invisibility"}}}] run data modify entity @s Invisible set value 1b
execute as @e[type=armor_stand] at @s anchored eyes run execute if entity @e[distance=0..2,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:long_invisibility"}}}] run data modify entity @s Invisible set value 1b


#########################################################################
#                                                                       #
#   Make all itemframes invisible when invisiblity is throw at them     #
#                                                                       #
#########################################################################

execute as @e[type=item_frame] at @s run execute if entity @e[distance=0..1.3,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:invisibility"}}}] run data modify entity @s Invisible set value 1b
execute as @e[type=item_frame] at @s run execute if entity @e[distance=0..2,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:long_invisibility"}}}] run data modify entity @s Invisible set value 1b