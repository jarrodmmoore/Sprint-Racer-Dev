#this function was split into many due to performance concerns
#since this index will be called on every tick during gameplay

execute if entity @s[tag=customtrack] run function sprint_racer:levels/_custom_race/main
execute if entity @s[scores={rNumber=1..5}] run function sprint_racer:levels/_index_levels_race_1_5
execute if entity @s[scores={rNumber=6..10}] run function sprint_racer:levels/_index_levels_race_6_10
execute if entity @s[scores={rNumber=11..15}] run function sprint_racer:levels/_index_levels_race_11_15
execute if entity @s[scores={rNumber=16..20}] run function sprint_racer:levels/_index_levels_race_16_20
execute if entity @s[scores={rNumber=21..25}] run function sprint_racer:levels/_index_levels_race_21_25
execute if entity @s[scores={rNumber=26..30}] run function sprint_racer:levels/_index_levels_race_26_30
execute if entity @s[scores={rNumber=31..35}] run function sprint_racer:levels/_index_levels_race_31_35
execute if entity @s[scores={rNumber=36..40}] run function sprint_racer:levels/_index_levels_race_36_40
execute if entity @s[scores={rNumber=41..45}] run function sprint_racer:levels/_index_levels_race_41_45
execute if entity @s[scores={rNumber=46..50}] run function sprint_racer:levels/_index_levels_race_46_50
execute if entity @s[scores={rNumber=51..55}] run function sprint_racer:levels/_index_levels_race_51_55