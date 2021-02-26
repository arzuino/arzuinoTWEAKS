execute if score #entityEffects arztw_settings matches 1 run function arzuino:potions/base-potions
execute if score #entityEffects arztw_settings matches 1 run function arzuino:potions/invisiblity
execute if score #entityEffects arztw_settings matches 1 run function arzuino:potions/leaping
execute if score #entityEffects arztw_settings matches 1 run function arzuino:potions/regeneration
execute if score #entityEffects arztw_settings matches 1 run function arzuino:potions/slow-falling

execute if score #disableElytraSpawning arztw_settings matches 1..2 run kill @e[type=item_frame,nbt={Item:{id:"minecraft:elytra"}}]
execute if score #disableElytraSpawning arztw_settings matches 2 run clear @a elytra