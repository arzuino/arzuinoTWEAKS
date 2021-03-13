execute if score #entityEffects arztw_settings matches 1 run function arzuino:potions/base-potions
execute if score #entityEffects arztw_settings matches 1 run function arzuino:potions/invisiblity
execute if score #entityEffects arztw_settings matches 1 run function arzuino:potions/leaping
execute if score #entityEffects arztw_settings matches 1 run function arzuino:potions/regeneration
execute if score #entityEffects arztw_settings matches 1 run function arzuino:potions/slow-falling
execute if score #entityEffects arztw_settings matches 1 run function arzuino:potions/slowness
execute if score #entityEffects arztw_settings matches 1 run function arzuino:potions/strength

execute if score #disableElytraSpawning arztw_settings matches 1..2 run kill @e[type=item_frame,nbt={Item:{id:"minecraft:elytra"}}]
execute if score #disableElytraSpawning arztw_settings matches 2 run clear @a elytra

execute as @e[nbt={NoAI:1b,AbsorptionAmount:0.0f}] run say test
execute as @e[nbt={NoAI:1b,AbsorptionAmount:0.0f}] run data modify entity @s NoAI set value 0b