#built-in stuff!

#night vision?
execute if entity @s[tag=nightVision] run effect give @a minecraft:night_vision 14 1 true


#(note: storage was handled at _initialize)

#kill plane?
execute if entity @s[tag=killPlane] run function sprint_racer:levels/_custom_battle/kill_plane_macro with storage sprint_racer:func_args

#overhead map?
execute if entity @s[tag=useOverheadMap] run function sprint_racer:levels/_custom_battle/overhead_map_macro with storage sprint_racer:func_args


#custom track code?
execute if entity @s[tag=customtrack,scores={customCodePath=1..}] run function sprint_racer:levels/_index_levels_custom_path