#checking if conditions are ok
execute as @e[type=item,nbt={Age:60s,Item:{id:"minecraft:melon_slice"}}] at @s unless block ~ ~-0.3 ~ #arzuino:plant_growable run kill @s
execute as @e[type=item,nbt={Age:60s,Item:{id:"minecraft:melon_slice"}}] at @s unless block ~ ~0.3 ~ air run kill @s
execute as @e[type=item,nbt={Age:60s,Item:{id:"minecraft:melon_slice"}}] at @s unless block ~1 ~0.3 ~ air run kill @s
execute as @e[type=item,nbt={Age:60s,Item:{id:"minecraft:melon_slice"}}] at @s unless block ~-1 ~0.3 ~ air run kill @s
execute as @e[type=item,nbt={Age:60s,Item:{id:"minecraft:melon_slice"}}] at @s unless block ~ ~0.3 ~1 air run kill @s
execute as @e[type=item,nbt={Age:60s,Item:{id:"minecraft:melon_slice"}}] at @s unless block ~ ~0.3 ~-1 air run kill @s


execute store result score #rng15 arztw_dummy run loot spawn ~ ~ ~ loot arzuino:rng15
#getting rng from above and placing block depending on rng
execute if score #rng15 arztw_dummy matches 1..3 run execute at @e[type=item,nbt={Age:60s,Item:{id:"minecraft:melon_slice"}}] run setblock ~ ~0.3 ~ melon_stem
execute if score #rng15 arztw_dummy matches 4 run execute at @e[type=item,nbt={Age:60s,Item:{id:"minecraft:melon_slice"}}] run setblock ~ ~0.3 ~ melon_stem[age=3]
execute if score #rng15 arztw_dummy matches 5 run execute at @e[type=item,nbt={Age:60s,Item:{id:"minecraft:melon_slice"}}] run setblock ~ ~0.3 ~ melon_stem[age=5]
execute if score #rng15 arztw_dummy matches 6..7 run execute at @e[type=item,nbt={Age:60s,Item:{id:"minecraft:melon_slice"}}] run setblock ~ ~0.3 ~ melon_stem[age=6]
execute if score #rng15 arztw_dummy matches 8 run execute at @e[type=item,nbt={Age:60s,Item:{id:"minecraft:melon_slice"}}] run setblock ~ ~0.3 ~ carrots
execute if score #rng15 arztw_dummy matches 9 run execute at @e[type=item,nbt={Age:60s,Item:{id:"minecraft:melon_slice"}}] run setblock ~ ~0.3 ~ potatoes
execute if score #rng15 arztw_dummy matches 10 run execute at @e[type=item,nbt={Age:60s,Item:{id:"minecraft:melon_slice"}}] run setblock ~ ~0.3 ~ wheat[age=4]


#kill the item after its been used
kill @e[type=item,nbt={Age:60s,Item:{id:"minecraft:melon_slice"}}]