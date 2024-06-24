#this function was split into 3 due to performance concerns
#since this index will be called on every tick during gameplay

execute if entity @s[scores={rNumber=36}] run function sprint_racer:levels/undersea_shipyard/main
execute if entity @s[scores={rNumber=37}] run function sprint_racer:levels/praia_de_abril/main
execute if entity @s[scores={rNumber=38}] run function sprint_racer:levels/petra_resort/main
execute if entity @s[scores={rNumber=39}] run function sprint_racer:levels/cargo_bay/main
execute if entity @s[scores={rNumber=40}] run function sprint_racer:levels/sprint_circuit/main
#TRACK IDs 41 AND ABOVE NEED TO USE THE NEXT FUNCTION UP!