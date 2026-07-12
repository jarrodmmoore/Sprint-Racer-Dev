#executed by "w"

#assume optRnB by default
data modify storage sprint_racer:round_sequence active set from storage sprint_racer:round_sequence race_and_battle

execute if entity @s[tag=optRace] run data modify storage sprint_racer:round_sequence active set from storage sprint_racer:round_sequence race
execute if entity @s[tag=optBattle] run data modify storage sprint_racer:round_sequence active set from storage sprint_racer:round_sequence battle
execute if entity @s[tag=optCustomRounds] run data modify storage sprint_racer:round_sequence active set from storage sprint_racer:round_sequence custom