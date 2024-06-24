#run by a player, not globally ;)

#night vision
effect give @s night_vision 15 5 true

#go fast
effect give @s[scores={coord_y=..960000}] speed 1 20 true

#get track map
execute if entity @s[gamemode=adventure] run function sprint_racer:game_logic/0/find_nearest_track

#choose track
execute if entity @s[gamemode=adventure,scores={inputCooldown=..0,carrotInput=1..}] if items entity @s weapon.mainhand filled_map[custom_data~{wmPreview:1b}] at @s run function sprint_racer:game_logic/5/worldmap_choose