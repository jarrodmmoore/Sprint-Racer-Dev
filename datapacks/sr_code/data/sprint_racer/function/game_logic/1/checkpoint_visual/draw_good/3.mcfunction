particle block_marker{block_state:{Name:"minecraft:light",Properties:{level:"15"}}} ~ ~1 ~ 0 0 0 1 1 force @a[gamemode=!spectator,tag=playing,scores={check=2}]
execute if entity @s[tag=checkWarn] run particle block_marker{block_state:{Name:"minecraft:light",Properties:{level:"0"}}} ~ ~1 ~ 0 0 0 1 1 normal @a[gamemode=!spectator,tag=playing,scores={check=..1}]
execute if entity @s[tag=checkWrongWay] run particle block_marker{block_state:{Name:"minecraft:light",Properties:{level:"0"}}} ~ ~1 ~ 0 0 0 1 1 normal @a[gamemode=!spectator,tag=playing,scores={check=4..}]

scoreboard players remove #temp2 visualLength 1

execute if score #temp2 visualLength matches 1.. positioned ^ ^ ^1 run function sprint_racer:game_logic/1/checkpoint_visual/draw_good/3