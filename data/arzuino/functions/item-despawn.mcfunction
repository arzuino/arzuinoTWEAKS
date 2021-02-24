#crops
execute if score #plantRegrowth arztw_settings matches 1 run execute if entity @e[type=item,nbt={Age:60s,Item:{id:"minecraft:wheat_seeds"}}] run function arzuino:plant-placement/wheat_seeds
execute if score #plantRegrowth arztw_settings matches 1 run execute if entity @e[type=item,nbt={Age:60s,Item:{id:"minecraft:carrot"}}] run function arzuino:plant-placement/carrots
execute if score #plantRegrowth arztw_settings matches 1 run execute if entity @e[type=item,nbt={Age:60s,Item:{id:"minecraft:potato"}}] run function arzuino:plant-placement/potatoes
execute if score #plantRegrowth arztw_settings matches 1 run execute if entity @e[type=item,nbt={Age:60s,Item:{id:"minecraft:melon"}}] run function arzuino:plant-placement/melon
execute if score #plantRegrowth arztw_settings matches 1 run execute if entity @e[type=item,nbt={Age:60s,Item:{id:"minecraft:melon_seeds"}}] run function arzuino:plant-placement/melon_seeds
execute if score #plantRegrowth arztw_settings matches 1 run execute if entity @e[type=item,nbt={Age:60s,Item:{id:"minecraft:melon_slice"}}] run function arzuino:plant-placement/melon_slice
#saplings
execute if score #plantRegrowth arztw_settings matches 1 run execute if entity @e[type=item,nbt={Age:60s,Item:{id:"minecraft:oak_sapling"}}] run function arzuino:plant-placement/oak_sapling
execute if score #plantRegrowth arztw_settings matches 1 run execute if entity @e[type=item,nbt={Age:60s,Item:{id:"minecraft:birch_sapling"}}] run function arzuino:plant-placement/birch_sapling
execute if score #plantRegrowth arztw_settings matches 1 run execute if entity @e[type=item,nbt={Age:60s,Item:{id:"minecraft:spruce_sapling"}}] run function arzuino:plant-placement/spruce_sapling
execute if score #plantRegrowth arztw_settings matches 1 run execute if entity @e[type=item,nbt={Age:60s,Item:{id:"minecraft:jungle_sapling"}}] run function arzuino:plant-placement/jungle_sapling
execute if score #plantRegrowth arztw_settings matches 1 run execute if entity @e[type=item,nbt={Age:60s,Item:{id:"minecraft:dark_oak_sapling"}}] run function arzuino:plant-placement/dark_oak_sapling
execute if score #plantRegrowth arztw_settings matches 1 run execute if entity @e[type=item,nbt={Age:60s,Item:{id:"minecraft:acacia_sapling"}}] run function arzuino:plant-placement/acacia_sapling
#misc
execute if score #plantRegrowth arztw_settings matches 1 run execute if entity @e[type=item,nbt={Age:60s,Item:{id:"minecraft:bamboo"}}] run function arzuino:plant-placement/bamboo