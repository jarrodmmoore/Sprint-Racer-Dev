execute if entity @s[scores={worldmapID=9999}] run function sprint_racer:game_logic/6/ta_hotbar_display/0

execute if entity @s[scores={medalRace=0}] run function sprint_racer:game_logic/6/ta_hotbar_display/1_0
execute if entity @s[scores={medalRace=1..}] run function sprint_racer:game_logic/6/ta_hotbar_display/1_1
execute if entity @s[scores={medalRace=0..1}] run function sprint_racer:game_logic/6/ta_hotbar_display/2_0
execute if entity @s[scores={medalRace=2..}] run function sprint_racer:game_logic/6/ta_hotbar_display/2_1
execute if entity @s[scores={medalRace=0..2}] run function sprint_racer:game_logic/6/ta_hotbar_display/3_0
execute if entity @s[scores={medalRace=3..}] run function sprint_racer:game_logic/6/ta_hotbar_display/3_1
execute if entity @s[scores={medalRace=0..3}] run function sprint_racer:game_logic/6/ta_hotbar_display/4_0
execute if entity @s[scores={medalRace=4..}] run function sprint_racer:game_logic/6/ta_hotbar_display/4_1