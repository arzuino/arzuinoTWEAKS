#checking if conditions are ok
execute as @e[type=item,nbt={Age:5999s,Item:{id:"minecraft:jungle_sapling"}}] at @s unless block ~ ~-0.3 ~ #arzuino:plant_growable run kill @s

execute at @e[type=item,nbt={Age:5999s,Item:{id:"minecraft:jungle_sapling"}}] run setblock ~ ~0.3 ~ jungle_sapling
#kill the item after its been used
kill @e[type=item,nbt={Age:5999s,Item:{id:"minecraft:jungle_sapling"}}]