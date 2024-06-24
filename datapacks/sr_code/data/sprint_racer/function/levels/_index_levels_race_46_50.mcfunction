#this function was split into 3 due to performance concerns
#since this index will be called on every tick during gameplay

execute if entity @s[scores={rNumber=46}] run function sprint_racer:levels/casino_chase/main
execute if entity @s[scores={rNumber=47}] run function sprint_racer:levels/seaside_joyride/main
execute if entity @s[scores={rNumber=48}] run function sprint_racer:levels/praia_de_abril_2/main
execute if entity @s[scores={rNumber=49}] run function sprint_racer:levels/crash_course_neo/main
execute if entity @s[scores={rNumber=50}] run function sprint_racer:levels/cotton_void/main