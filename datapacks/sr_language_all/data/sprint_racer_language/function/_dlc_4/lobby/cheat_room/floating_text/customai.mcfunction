execute as @e[tag=cheattext2] run data merge entity @s {CustomName:'{"text":"54 - CUSTOMAI","color":"white","bold":true,"italic":false}'}
execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,tag=54a] as @e[tag=cheattext3] run data merge entity @s {CustomName:'{"translate":"sr.cheats.cheat_on","color":"green","bold":false,"italic":false}',CustomNameVisible:true}
execute unless entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,tag=54a] as @e[tag=cheattext3] run data merge entity @s {CustomName:'{"translate":"sr.cheats.cheat_off","color":"gray","bold":false,"italic":false}',CustomNameVisible:true}
execute as @e[tag=cheattext4] run data merge entity @s {CustomName:'{"translate":"sr.cheats.customai","color":"white","bold":false,"italic":false}',CustomNameVisible:true}

setblock 1594 101 448 air
setblock 1594 101 448 minecraft:birch_wall_sign[facing=west]{front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/custom_ai"}}','{"text":"CUSTOM AI","bold":true,"color":"black"}','{"text":"PARAMETERS","bold":true,"color":"black"}','{"text":"[SET]","color":"dark_blue"}']},is_waxed:1b}


scoreboard players add @e[tag=random,type=armor_stand,scores={rNumber=1..9}] customAIset 0
scoreboard players add @e[tag=random,type=armor_stand,scores={rNumber=1..9}] customAIdiff 0
scoreboard players add @e[tag=random,type=armor_stand,scores={rNumber=1..9}] customAIteam 0