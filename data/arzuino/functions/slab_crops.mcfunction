## plant on water logged slab raycasting

execute if score #raycast arztw_dummy matches 0 run execute as @a[scores={dark_oak_slab=1}] at @s run summon armor_stand ~.5 ~ ~.5 {Invulnerable:1b,NoGravity:1b,Invisible:1b,Small:1b,Tags:["raycast"]}
execute if score #raycast arztw_dummy matches 0 run execute as @a[scores={dark_oak_slab=1}] at @s run tp @e[tag=raycast] ~ ~1 ~ ~ ~
execute if score #raycast arztw_dummy matches 0 run execute as @a[scores={dark_oak_slab=1}] run scoreboard players set #raycast arztw_dummy 1
execute if score #raycast arztw_dummy matches 1 run execute as @a[scores={dark_oak_slab=1}] run scoreboard players set @s dark_oak_slab 0

execute if score #raycast arztw_dummy matches 1 run execute at @e[tag=raycast] if block ~ ~ ~ dark_oak_slab[type=top,waterlogged=true] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Invisible:1b,Tags:["dark_oak_stand"],ShowArms:1b}
execute if score #raycast arztw_dummy matches 1 run execute as @e[tag=dark_oak_stand] at @s align xyz run tp @s ~0.5 ~-0.5 ~0.5
execute if score #raycast arztw_dummy matches 1 run scoreboard players add #raycast_i arztw_dummy 1
execute if score #raycast arztw_dummy matches 1 run execute at @e[tag=raycast] if block ~ ~ ~ dark_oak_slab[type=top,waterlogged=true] run scoreboard players set #raycast arztw_dummy 0
execute if score #raycast arztw_dummy matches 0 run execute at @e[tag=raycast] if block ~ ~ ~ dark_oak_slab[type=top,waterlogged=true] run kill @e[tag=raycast]
execute if score #raycast arztw_dummy matches 1 run execute as @e[tag=raycast] at @s run tp @s ^ ^ ^1

 #check if raycasting failed.
execute if score #raycast_i arztw_dummy matches 7 run scoreboard players set @a dark_oak_slab 0
execute if score #raycast_i arztw_dummy matches 7 run scoreboard players set #raycast arztw_dummy 0
execute if score #raycast_i arztw_dummy matches 7 run kill @e[tag=raycast]
execute if score #raycast_i arztw_dummy matches 7 run scoreboard players set #raycast_i arztw_dummy 0

## end of raycasting


#detecting if it has a seed, placing seeds, and removing seed from its hand. (TODO: may be a dupe here, but its only seeds so who cares) 
 #place crop
execute as @e[type=armor_stand,nbt={Tags:["dark_oak_stand"],HandItems:[{id:"minecraft:wheat_seeds",Count:1b},{}]}] at @s run setblock ~ ~2 ~ wheat keep
execute as @e[type=armor_stand,nbt={Tags:["dark_oak_stand"],HandItems:[{id:"minecraft:potato",Count:1b},{}]}] at @s run setblock ~ ~2 ~ potatoes keep
execute as @e[type=armor_stand,nbt={Tags:["dark_oak_stand"],HandItems:[{id:"minecraft:carrot",Count:1b},{}]}] at @s run setblock ~ ~2 ~ carrots keep
 #clear item out of hand
execute as @e[type=armor_stand,nbt={Tags:["dark_oak_stand"],HandItems:[{id:"minecraft:wheat_seeds",Count:1b},{}]}] run data merge entity @s {Tags:["dark_oak_stand"],HandItems:[{id:"minecraft:air",Count:1b},{}]}
execute as @e[type=armor_stand,nbt={Tags:["dark_oak_stand"],HandItems:[{id:"minecraft:potato",Count:1b},{}]}] run data merge entity @s {Tags:["dark_oak_stand"],HandItems:[{id:"minecraft:air",Count:1b},{}]}
execute as @e[type=armor_stand,nbt={Tags:["dark_oak_stand"],HandItems:[{id:"minecraft:carrot",Count:1b},{}]}] run data merge entity @s {Tags:["dark_oak_stand"],HandItems:[{id:"minecraft:air",Count:1b},{}]}

#setting Marker value if block (seeds) are there. 
execute as @e[tag=dark_oak_stand] at @s run execute unless block ~ ~2 ~ air run data modify entity @s Marker set value 1b
execute as @e[tag=dark_oak_stand] at @s run execute if block ~ ~2 ~ air run data modify entity @s Marker set value 0b

 #detect if slab (and technicaly waterlogged) was removed.
execute as @e[tag=dark_oak_stand] at @s run execute unless block ~ ~1 ~ dark_oak_slab[type=top,waterlogged=true] run kill @s