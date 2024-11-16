#executed by @e[tag=cheats]

#gravity
execute if entity @s[tag=!53a] as @a run attribute @s minecraft:gravity base set 0.08
execute if entity @s[tag=53a] as @a run attribute @s minecraft:gravity base set 0.04
execute if entity @s[tag=!53a] as @a run attribute @s minecraft:fall_damage_multiplier base set 1.0
execute if entity @s[tag=53a] as @a run attribute @s minecraft:fall_damage_multiplier base set 0.5
execute if entity @s[tag=!53a] as @a run attribute @s minecraft:safe_fall_distance base set 3
execute if entity @s[tag=53a] as @a run attribute @s minecraft:safe_fall_distance base set 6

#size
execute if entity @s[tag=!63a] as @a run attribute @s minecraft:scale base set 1.0
execute if entity @s[tag=63a] as @a run attribute @s minecraft:scale base set 0.5

#interaction range
execute if entity @s[tag=!64a] as @a run attribute @s minecraft:entity_interaction_range base set 3.0
execute if entity @s[tag=64a] as @a run attribute @s minecraft:entity_interaction_range base set 10.0
execute if entity @s[tag=!64a] as @a run attribute @s minecraft:block_interaction_range base set 4.5
execute if entity @s[tag=64a] as @a run attribute @s minecraft:block_interaction_range base set 10.0

#step height
execute if entity @s[tag=!65a] as @a run attribute @s minecraft:step_height base set 0.6
execute if entity @s[tag=65a] as @a run attribute @s minecraft:step_height base set 1.2
