execute if entity @s[scores={speedlevel=1}] run function sprint_racer:speedometer/xp_bar/sprinting/kph/1
execute if entity @s[scores={speedlevel=2}] run function sprint_racer:speedometer/xp_bar/sprinting/kph/2
execute if entity @s[scores={speedlevel=3}] run function sprint_racer:speedometer/xp_bar/sprinting/kph/3
execute if entity @s[scores={speedlevel=4}] run function sprint_racer:speedometer/xp_bar/sprinting/kph/4
execute if entity @s[scores={speedlevel=5}] run function sprint_racer:speedometer/xp_bar/sprinting/kph/5
execute if entity @s[scores={speedlevel=6}] run function sprint_racer:speedometer/xp_bar/sprinting/kph/6
execute if entity @s[scores={speedlevel=7}] run function sprint_racer:speedometer/xp_bar/sprinting/kph/7

execute if entity @s[scores={speedBoost=1..20}] run function sprint_racer:speedometer/xp_bar/sprinting/kph/gold
execute if entity @s[scores={speedBoost=31..50}] run function sprint_racer:speedometer/xp_bar/sprinting/kph/diamond