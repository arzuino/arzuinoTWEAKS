#get an rng number
execute store result score #rng15 arztw_dummy run loot spawn ~ ~ ~ loot arzuino:rng10
#getting rng from above and placing block depending on rng

execute if score #rng15 arztw_dummy matches 1..3 run execute at @e[type=item,nbt={Age:3000s,Item:{id:"minecraft:egg"}}] run summon chicken ~ ~ ~ {Age:-25000}

#kill the item after its been used
kill @e[type=item,nbt={Age:3000s,Item:{id:"minecraft:egg"}}]