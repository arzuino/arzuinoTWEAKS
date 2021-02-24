#################################################################################
#                                                                               #
#   Make all armorstands have no gravity when slow falling is throw at them     #
#                                                                               #
#################################################################################

execute as @e[type=armor_stand] at @s anchored eyes run execute if entity @e[distance=0..1.3,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:slow_falling"}}}] run data modify entity @s NoGravity set value 1b
execute as @e[type=armor_stand] at @s anchored eyes run execute if entity @e[distance=0..2,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:long_slow_falling"}}}] run data modify entity @s NoGravity set value 1b