execute as @e[tag=cheattext2] run data merge entity @s {CustomName:'{"text":"55 - CUSTOMLAPS","color":"white","bold":true,"italic":false}'}
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=55a] as @e[tag=cheattext3] run data merge entity @s {CustomName:'{"translate":"sr.cheats.cheat_on","color":"green","bold":false,"italic":false}',CustomNameVisible:true}
execute unless entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=55a] as @e[tag=cheattext3] run data merge entity @s {CustomName:'{"translate":"sr.cheats.cheat_off","color":"gray","bold":false,"italic":false}',CustomNameVisible:true}
execute as @e[tag=cheattext4] run data merge entity @s {CustomName:'{"translate":"sr.cheats.customlaps","color":"white","bold":false,"italic":false}',CustomNameVisible:true}

setblock 1594 101 448 air
setblock 1594 101 448 minecraft:pale_oak_wall_sign[facing=west]{front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/custom_laps"}}','{"text":"CUSTOM LAP","bold":true,"color":"black"}','{"text":"OFFSET","bold":true,"color":"black"}','{"text":"[CHANGE]","color":"dark_blue"}']},is_waxed:1b}


scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] customLapOffset 0
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] customLapType 0
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] customLapMult 0