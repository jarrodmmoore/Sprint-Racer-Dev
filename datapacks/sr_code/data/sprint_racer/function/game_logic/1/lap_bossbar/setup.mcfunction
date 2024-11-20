scoreboard players set #count value 0
execute as @a[tag=playing] run scoreboard players add #count value 1

scoreboard players operation #bbDisplayLap value = @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lap
scoreboard players operation #bbDisplayCheck value = @e[limit=1,tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] check
scoreboard players add #bbDisplayCheck value 1
scoreboard players operation #bbDisplayTotal value = #bbDisplayLap value
scoreboard players operation #bbDisplayTotal value *= #bbDisplayCheck value

scoreboard players reset @a bbLapDisplay

#debug
#scoreboard players set #count value 11

execute if score #count value matches 33.. if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={lap=1..10}] run function sprint_racer:game_logic/1/lap_bossbar/lap_bossbar_index
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=classicHUD] if score #count value matches ..32 run function sprint_racer:game_logic/1/lap_bossbar/lap_bossbar_personalize
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!classicHUD] if score #count value matches ..32 run function sprint_racer:game_logic/1/lap_bossbar/use_custom_hud