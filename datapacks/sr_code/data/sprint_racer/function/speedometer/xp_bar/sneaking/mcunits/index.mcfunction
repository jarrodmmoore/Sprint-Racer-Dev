execute if entity @s[scores={speedlevel=1}] run function sprint_racer:speedometer/xp_bar/sneaking/mcunits/1
execute if entity @s[scores={speedlevel=2}] run function sprint_racer:speedometer/xp_bar/sneaking/mcunits/2
execute if entity @s[scores={speedlevel=3}] run function sprint_racer:speedometer/xp_bar/sneaking/mcunits/3
execute if entity @s[scores={speedlevel=4}] run function sprint_racer:speedometer/xp_bar/sneaking/mcunits/4
execute if entity @s[scores={speedlevel=5}] run function sprint_racer:speedometer/xp_bar/sneaking/mcunits/5
execute if entity @s[scores={speedlevel=6}] run function sprint_racer:speedometer/xp_bar/sneaking/mcunits/6
execute if entity @s[scores={speedlevel=7}] run function sprint_racer:speedometer/xp_bar/sneaking/mcunits/7

execute if entity @s[scores={speedBoost=1..20}] run function sprint_racer:speedometer/xp_bar/sneaking/mcunits/gold
execute if entity @s[scores={speedBoost=31..50}] run function sprint_racer:speedometer/xp_bar/sneaking/mcunits/diamond