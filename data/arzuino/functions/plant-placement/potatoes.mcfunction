#checking if conditions are ok
execute as @e[type=item,nbt={Age:5999s,Item:{id:"minecraft:potato"}}] at @s unless block ~ ~-0.3 ~ #arzuino:plant_growable run kill @s
execute as @e[type=item,nbt={Age:5999s,Item:{id:"minecraft:potato"}}] at @s unless block ~ ~0.3 ~ air run kill @s
execute as @e[type=item,nbt={Age:5999s,Item:{id:"minecraft:potato"}}] at @s unless block ~1 ~0.3 ~ air run kill @s
execute as @e[type=item,nbt={Age:5999s,Item:{id:"minecraft:potato"}}] at @s unless block ~-1 ~0.3 ~ air run kill @s
execute as @e[type=item,nbt={Age:5999s,Item:{id:"minecraft:potato"}}] at @s unless block ~ ~0.3 ~1 air run kill @s
execute as @e[type=item,nbt={Age:5999s,Item:{id:"minecraft:potato"}}] at @s unless block ~ ~0.3 ~-1 air run kill @s


execute store result score #rng15 arztw_dummy run loot spawn ~ ~ ~ loot arzuino:rng15
#getting rng from above and placing block depending on rng
execute if score #rng15 arztw_dummy matches 1..4 run execute at @e[type=item,nbt={Age:5999s,Item:{id:"minecraft:potato"}}] run setblock ~ ~0.3 ~ potatoes
execute if score #rng15 arztw_dummy matches 5 run execute at @e[type=item,nbt={Age:5999s,Item:{id:"minecraft:potato"}}] run setblock ~ ~0.3 ~ potatoes[age=3]
execute if score #rng15 arztw_dummy matches 6..7 run execute at @e[type=item,nbt={Age:5999s,Item:{id:"minecraft:potato"}}] run setblock ~ ~0.3 ~ potatoes[age=5]
execute if score #rng15 arztw_dummy matches 8 run execute at @e[type=item,nbt={Age:5999s,Item:{id:"minecraft:potato"}}] run setblock ~ ~0.3 ~ potatoes[age=7]
execute if score #rng15 arztw_dummy matches 9 run execute at @e[type=item,nbt={Age:5999s,Item:{id:"minecraft:potato"}}] run setblock ~ ~0.3 ~ carrots
execute if score #rng15 arztw_dummy matches 10..12 run execute at @e[type=item,nbt={Age:5999s,Item:{id:"minecraft:potato"}}] run setblock ~ ~0.3 ~ wheat

#kill the item after its been used
kill @e[type=item,nbt={Age:5999s,Item:{id:"minecraft:potato"}}]