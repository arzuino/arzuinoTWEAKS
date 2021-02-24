##############################################################################
#                                                                            #
#   Make all armorstands remove base plate when leaping is throw at them     #
#                                                                            #
##############################################################################

execute as @e[type=armor_stand] at @s anchored eyes run execute if entity @e[distance=0..1.3,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:leaping"}}}] run data modify entity @s NoBasePlate set value 1b
execute as @e[type=armor_stand] at @s anchored eyes run execute if entity @e[distance=0..2,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:long_leaping"}}}] run data modify entity @s NoBasePlate set value 1b