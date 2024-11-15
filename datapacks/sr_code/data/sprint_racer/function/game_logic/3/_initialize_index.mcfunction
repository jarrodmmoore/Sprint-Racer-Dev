#mark us as most recently played (only if we're not a custom track)
execute if entity @s[tag=!custombattle] run function sprint_racer:worldmap/mark_most_recent_battle

#boot custom track
execute if entity @s[tag=custombattle] run function sprint_racer:levels/_custom_battle/_initialize

#boot stock track
execute if entity @s[scores={rNumber=50}] run function sprint_racer:levels/underworld/_initialize

execute if entity @s[scores={rNumber=1}] run function sprint_racer:levels/windy_watch/_initialize
execute if entity @s[scores={rNumber=2}] run function sprint_racer:levels/shiver_stream_caverns/_initialize
execute if entity @s[scores={rNumber=3}] run function sprint_racer:levels/block_island/_initialize
execute if entity @s[scores={rNumber=4}] run function sprint_racer:levels/sedove_isle/_initialize
execute if entity @s[scores={rNumber=5}] run function sprint_racer:levels/metro_plaza/_initialize
execute if entity @s[scores={rNumber=6}] run function sprint_racer:levels/scorched_sands/_initialize

execute if entity @s[scores={rNumber=7}] run function sprint_racer:levels/greenhouse/_initialize

execute if entity @s[scores={rNumber=8}] run function sprint_racer:levels/colosseum/_initialize
execute if entity @s[scores={rNumber=9}] run function sprint_racer:levels/hidden_garden/_initialize
execute if entity @s[scores={rNumber=10}] run function sprint_racer:levels/battle_house/_initialize
execute if entity @s[scores={rNumber=11}] run function sprint_racer:levels/bit_city/_initialize

execute if entity @s[scores={rNumber=12}] run function sprint_racer:levels/sugar_rush/_initialize
execute if entity @s[scores={rNumber=13}] run function sprint_racer:levels/honeybee_hideout/_initialize
execute if entity @s[scores={rNumber=14}] run function sprint_racer:levels/battle_labyrinth/_initialize
execute if entity @s[scores={rNumber=15}] run function sprint_racer:levels/end_core/_initialize

execute if entity @s[scores={rNumber=16}] run function sprint_racer:levels/pyramid_village/_initialize

execute if entity @s[scores={rNumber=17}] run function sprint_racer:levels/aldeao_redentor/_initialize

execute if entity @s[scores={rNumber=18}] run function sprint_racer:levels/toy_tussle/_initialize
execute if entity @s[scores={rNumber=19}] run function sprint_racer:levels/minotaur_maze/_initialize

#...