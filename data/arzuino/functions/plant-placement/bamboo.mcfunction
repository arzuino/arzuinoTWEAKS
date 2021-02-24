#checking if conditions are ok
execute as @e[type=item,nbt={Age:60s,Item:{id:"minecraft:potato"}}] at @s unless block ~ ~-0.3 ~ #arzuino:plant_growable run kill @s

execute store result score #rng15 arztw_dummy run loot spawn ~ ~ ~ loot arzuino:rng15
#getting rng from above and placing block depending on rng
execute if score #rng15 arztw_dummy matches 1..7 run execute at @e[type=item,nbt={Age:60s,Item:{id:"minecraft:bamboo"}}] run setblock ~ ~0.3 ~ bamboo
execute if score #rng15 arztw_dummy matches 8..15 run execute at @e[type=item,nbt={Age:60s,Item:{id:"minecraft:bamboo"}}] run setblock ~ ~0.3 ~ bamboo_sapling

#kill the item after its been used
kill @e[type=item,nbt={Age:60s,Item:{id:"minecraft:bamboo"}}]