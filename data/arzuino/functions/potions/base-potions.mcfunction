##########################################
#                                        #
#    Mundane potions undo all effects    #
#                                        #
##########################################

#item_frames
execute as @e[type=item_frame] at @s run execute if entity @e[distance=0..2,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:mundane"}}}] run data modify entity @s Invisible set value 0b
execute as @e[type=item_frame] at @s run execute if entity @e[distance=0..2,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:mundane"}}}] run data modify entity @s Invulnerable set value 0b
#armor_stands
execute as @e[type=armor_stand] at @s anchored eyes run execute if entity @e[distance=0..2,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:mundane"}}}] run data modify entity @s Invisible set value 0b
execute as @e[type=armor_stand] at @s anchored eyes run execute if entity @e[distance=0..2,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:mundane"}}}] run data modify entity @s NoGravity set value 0b
execute as @e[type=armor_stand] at @s anchored eyes run execute if entity @e[distance=0..1.3,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:mundane"}}}] run data modify entity @s ShowArms set value 0b
execute as @e[type=armor_stand] at @s anchored eyes run execute if entity @e[distance=0..1.3,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:mundane"}}}] run data modify entity @s NoBasePlate set value 0b
#everything
execute as @e at @s run execute if entity @e[distance=0..2,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:mundane"}}}] run data modify entity @s Silent set value 0b
execute as @e at @s run execute if entity @e[distance=0..2,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:slowness"}}}] run data modify entity @s NoAI set value 0b




#########################################
#                                       #
#    Awkward potions make mobs silent    #
#                                       #
#########################################

execute as @e at @s run execute if entity @e[distance=0..3.5,type=potion,nbt={Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:awkward"}}}] run data modify entity @s Silent set value 1b
