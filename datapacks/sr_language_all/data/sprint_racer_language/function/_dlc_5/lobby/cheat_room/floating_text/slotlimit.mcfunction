execute as @e[tag=cheattext2] run data merge entity @s {CustomName:'{"text":"57 - SLOTLIMIT","color":"white","bold":true,"italic":false}'}
execute if entity @e[tag=cheats,tag=57a] as @e[tag=cheattext3] run data merge entity @s {CustomName:'{"translate":"sr.cheats.cheat_on","color":"green","bold":false,"italic":false}',CustomNameVisible:true}
execute unless entity @e[tag=cheats,tag=57a] as @e[tag=cheattext3] run data merge entity @s {CustomName:'{"translate":"sr.cheats.cheat_off","color":"gray","bold":false,"italic":false}',CustomNameVisible:true}
execute as @e[tag=cheattext4] run data merge entity @s {CustomName:'{"translate":"sr.cheats.slotlimit","color":"white","bold":false,"italic":false}',CustomNameVisible:true}

setblock 1594 101 448 air
setblock 1594 101 448 minecraft:birch_wall_sign[facing=west]{front_text:{has_glowing_text:0b,messages:['{"text":"","clickEvent":{"action":"run_command","value":"function sprint_racer:game_logic/0/options_signs/custom_slot_limit"}}','{"text":"SLOT LIMIT","bold":true,"color":"black"}','{"text":"[SET]","color":"dark_blue"}','{"text":""}']},is_waxed:1b}

scoreboard players add #cheatSlotLimit value 0