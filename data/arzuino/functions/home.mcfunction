scoreboard players enable @a home

execute as @a run execute if entity @s[scores={home=0}] run tellraw @s [{"text":"Home: ","color":"gray","bold":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to teleport, If admin enabled. Set home with /trigger home 1","color":"red"}]},"clickEvent":{"action":"run_command","value":"/trigger home set 2"}},{"score":{"name":"@p","objective":"homeX"},"color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"red"}]},"clickEvent":{"action":"run_command","value":"/trigger home set 2"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger home set 2"}},{"score":{"name":"@p","objective":"homeY"},"color":"gold","clickEvent":{"action":"run_command","value":"/trigger home set 2"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger home set 2"}},{"score":{"name":"@p","objective":"homeZ"},"color":"gold","clickEvent":{"action":"run_command","value":"/trigger home set 2"}}]

execute as @a run execute if entity @s[scores={home=1}] run execute store result score @s homeX run data get entity arzuino Pos[0] 1
execute as @a run execute if entity @s[scores={home=1}] run execute store result score @s homeY run data get entity arzuino Pos[1] 1
execute as @a run execute if entity @s[scores={home=1}] run execute store result score @s homeZ run data get entity arzuino Pos[2] 1

#teleporting WIP 
scoreboard players set @a home -1