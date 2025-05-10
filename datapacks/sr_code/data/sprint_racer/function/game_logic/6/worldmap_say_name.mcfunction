execute if entity @s[type=player,tag=!qsDirectChoose] run scoreboard players operation @s worldmapID = @e[limit=1,sort=nearest,type=armor_stand,tag=trackminimap] worldmapID
#worldmapID is overridden is specific places
execute if entity @s[type=player,tag=!qsDirectChoose] at @s if block ~ 0 ~ yellow_wool run function sprint_racer:worldmap/special_worldmap_override

execute if entity @s[scores={worldmapID=..0}] run function sprint_racer:game_logic/6/worldmap_say_name_custom

execute if entity @s[scores={worldmapID=50}] run function sprint_racer_language:_dlc_2/lobby/worldmap_say_name/cotton_void

execute if entity @s[scores={worldmapID=1}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/river_valley
execute if entity @s[scores={worldmapID=2}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/highlight_stadium
execute if entity @s[scores={worldmapID=3}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/sakura_city
execute if entity @s[scores={worldmapID=4}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/seaside_village
execute if entity @s[scores={worldmapID=5}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/laeto_forest
execute if entity @s[scores={worldmapID=6}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/petra_mountains
execute if entity @s[scores={worldmapID=7}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/magna_desert
execute if entity @s[scores={worldmapID=8}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/cinder_caverns
execute if entity @s[scores={worldmapID=9}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/logmill
execute if entity @s[scores={worldmapID=10}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/redstone_factory
execute if entity @s[scores={worldmapID=11}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/the_dragon
execute if entity @s[scores={worldmapID=12}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/suspension_mountain
execute if entity @s[scores={worldmapID=13}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/highlight_city
execute if entity @s[scores={worldmapID=14}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/green_labyrinth
execute if entity @s[scores={worldmapID=15}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/iceberg_alley
execute if entity @s[scores={worldmapID=16}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/hurricane_islands
execute if entity @s[scores={worldmapID=17}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/crash_course
execute if entity @s[scores={worldmapID=18}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/the_gauntlet
execute if entity @s[scores={worldmapID=19}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/fossil_cove
execute if entity @s[scores={worldmapID=20}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/frostbite_village
execute if entity @s[scores={worldmapID=21}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/dead_canyon
execute if entity @s[scores={worldmapID=22}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/haunted_woodland
execute if entity @s[scores={worldmapID=23}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/mushroom_cavern
execute if entity @s[scores={worldmapID=24}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/the_loop
execute if entity @s[scores={worldmapID=25}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/roadroller_park
execute if entity @s[scores={worldmapID=26}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/miners_island
execute if entity @s[scores={worldmapID=27}] run function sprint_racer_language:_dlc_2/lobby/worldmap_say_name/coastal_avenue
execute if entity @s[scores={worldmapID=28}] run function sprint_racer_language:_dlc_2/lobby/worldmap_say_name/cinder_core
execute if entity @s[scores={worldmapID=29}] run function sprint_racer_language:_dlc_2/lobby/worldmap_say_name/sacred_village
execute if entity @s[scores={worldmapID=30}] run function sprint_racer_language:_dlc_2/lobby/worldmap_say_name/monochrome_road
execute if entity @s[scores={worldmapID=31}] run function sprint_racer_language:_dlc_2/lobby/worldmap_say_name/outer_spaceway
execute if entity @s[scores={worldmapID=32}] run function sprint_racer_language:_dlc_3/lobby/worldmap_say_name/highlight_resort
execute if entity @s[scores={worldmapID=33}] run function sprint_racer_language:_dlc_3/lobby/worldmap_say_name/fiery_volcano
execute if entity @s[scores={worldmapID=34}] run function sprint_racer_language:_dlc_3/lobby/worldmap_say_name/hot_air_docks
execute if entity @s[scores={worldmapID=35}] run function sprint_racer_language:_dlc_3/lobby/worldmap_say_name/site_x
execute if entity @s[scores={worldmapID=36}] run function sprint_racer_language:_dlc_4/lobby/worldmap_say_name/undersea_shipyard
execute if entity @s[scores={worldmapID=37}] run function sprint_racer_language:_dlc_4/lobby/worldmap_say_name/praia_de_abril
execute if entity @s[scores={worldmapID=38}] run function sprint_racer_language:_dlc_4/lobby/worldmap_say_name/petra_resort
execute if entity @s[scores={worldmapID=39}] run function sprint_racer_language:_dlc_4/lobby/worldmap_say_name/cargo_bay
execute if entity @s[scores={worldmapID=40}] run function sprint_racer_language:_dlc_4/lobby/worldmap_say_name/sprint_circuit
execute if entity @s[scores={worldmapID=41}] run function sprint_racer_language:_dlc_4/lobby/worldmap_say_name/space_colony_luna
execute if entity @s[scores={worldmapID=42}] run function sprint_racer_language:_dlc_5/lobby/worldmap_say_name/mountain_park
execute if entity @s[scores={worldmapID=43}] run function sprint_racer_language:_dlc_5/lobby/worldmap_say_name/frostbite_caverns
execute if entity @s[scores={worldmapID=44}] run function sprint_racer_language:_dlc_5/lobby/worldmap_say_name/retro_synthwave
execute if entity @s[scores={worldmapID=45}] run function sprint_racer_language:_dlc_5/lobby/worldmap_say_name/shroom_spring
execute if entity @s[scores={worldmapID=46}] run function sprint_racer_language:_dlc_5/lobby/worldmap_say_name/casino_chase
execute if entity @s[scores={worldmapID=47}] run function sprint_racer_language:_dlc_5/lobby/worldmap_say_name/seaside_joyride
execute if entity @s[scores={worldmapID=48}] run function sprint_racer_language:_dlc_5/lobby/worldmap_say_name/praia_de_abril_2
execute if entity @s[scores={worldmapID=49}] run function sprint_racer_language:_dlc_5/lobby/worldmap_say_name/crash_course_neo

execute if entity @s[scores={worldmapID=51}] run function sprint_racer_language:_dlc_6/lobby/worldmap_say_name/candy_land
execute if entity @s[scores={worldmapID=52}] run function sprint_racer_language:_dlc_6/lobby/worldmap_say_name/gummi_gorge
execute if entity @s[scores={worldmapID=53}] run function sprint_racer_language:_dlc_6/lobby/worldmap_say_name/nether_castle
execute if entity @s[scores={worldmapID=54}] run function sprint_racer_language:_dlc_6/lobby/worldmap_say_name/moonlit_mountains

#add more here...

execute if entity @s[scores={worldmapID=1050}] run function sprint_racer_language:_dlc_4/lobby/worldmap_say_name/underworld

execute if entity @s[scores={worldmapID=1001}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/windy_watch
execute if entity @s[scores={worldmapID=1002}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/shiver_stream_caverns
execute if entity @s[scores={worldmapID=1003}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/block_island
execute if entity @s[scores={worldmapID=1004}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/sedove_isle
execute if entity @s[scores={worldmapID=1005}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/metro_plaza
execute if entity @s[scores={worldmapID=1006}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/scorched_sands
execute if entity @s[scores={worldmapID=1007}] run function sprint_racer_language:_dlc_1/lobby/worldmap_say_name/greenhouse
execute if entity @s[scores={worldmapID=1008}] run function sprint_racer_language:_dlc_2/lobby/worldmap_say_name/colosseum
execute if entity @s[scores={worldmapID=1009}] run function sprint_racer_language:_dlc_2/lobby/worldmap_say_name/hidden_garden
execute if entity @s[scores={worldmapID=1010}] run function sprint_racer_language:_dlc_2/lobby/worldmap_say_name/battle_house
execute if entity @s[scores={worldmapID=1011}] run function sprint_racer_language:_dlc_2/lobby/worldmap_say_name/bit_city
execute if entity @s[scores={worldmapID=1012}] run function sprint_racer_language:_dlc_3/lobby/worldmap_say_name/sugar_rush
execute if entity @s[scores={worldmapID=1013}] run function sprint_racer_language:_dlc_3/lobby/worldmap_say_name/honeybee_hideout
execute if entity @s[scores={worldmapID=1014}] run function sprint_racer_language:_dlc_3/lobby/worldmap_say_name/battle_labyrinth
execute if entity @s[scores={worldmapID=1015}] run function sprint_racer_language:_dlc_3/lobby/worldmap_say_name/end_core
execute if entity @s[scores={worldmapID=1016}] run function sprint_racer_language:_dlc_4/lobby/worldmap_say_name/pyramid_village
execute if entity @s[scores={worldmapID=1017}] run function sprint_racer_language:_dlc_5/lobby/worldmap_say_name/aldeao_redentor
execute if entity @s[scores={worldmapID=1018}] run function sprint_racer_language:_dlc_6/lobby/worldmap_say_name/toy_tussle
execute if entity @s[scores={worldmapID=1019}] run function sprint_racer_language:_dlc_6/lobby/worldmap_say_name/minotaur_maze

#add more here...