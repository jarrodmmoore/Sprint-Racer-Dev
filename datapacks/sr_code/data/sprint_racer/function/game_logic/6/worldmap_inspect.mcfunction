execute if entity @s[type=player] run scoreboard players operation @s worldmapID = @e[limit=1,sort=nearest,type=armor_stand,tag=trackminimap] worldmapID
#worldmapID is overridden is specific places
execute if entity @s[type=player] at @s if block ~ 0 ~ yellow_wool run function sprint_racer:worldmap/special_worldmap_override

execute if entity @s[tag=!chosenTrack,scores={worldmapID=..0}] run function sprint_racer:game_logic/6/worldmap_inspect_custom
execute if entity @s[tag=chosenTrack,scores={worldmapID=..0}] run function sprint_racer:levels/_custom_general/medal_times

execute if entity @s[scores={worldmapID=50}] run function sprint_racer:levels/cotton_void/medal_times

execute if entity @s[scores={worldmapID=1}] run function sprint_racer:levels/river_valley/medal_times
execute if entity @s[scores={worldmapID=2}] run function sprint_racer:levels/highlight_stadium/medal_times
execute if entity @s[scores={worldmapID=3}] run function sprint_racer:levels/sakura_city/medal_times
execute if entity @s[scores={worldmapID=4}] run function sprint_racer:levels/seaside_village/medal_times

execute if entity @s[scores={worldmapID=5}] run function sprint_racer:levels/laeto_forest/medal_times
execute if entity @s[scores={worldmapID=6}] run function sprint_racer:levels/petra_mountains/medal_times
execute if entity @s[scores={worldmapID=7}] run function sprint_racer:levels/magna_desert/medal_times
execute if entity @s[scores={worldmapID=8}] run function sprint_racer:levels/cinder_caverns/medal_times

execute if entity @s[scores={worldmapID=9}] run function sprint_racer:levels/logmill/medal_times
execute if entity @s[scores={worldmapID=10}] run function sprint_racer:levels/redstone_factory/medal_times
execute if entity @s[scores={worldmapID=11}] run function sprint_racer:levels/the_dragon/medal_times
execute if entity @s[scores={worldmapID=12}] run function sprint_racer:levels/suspension_mountain/medal_times

execute if entity @s[scores={worldmapID=13}] run function sprint_racer:levels/highlight_city/medal_times
execute if entity @s[scores={worldmapID=14}] run function sprint_racer:levels/green_labyrinth/medal_times
execute if entity @s[scores={worldmapID=15}] run function sprint_racer:levels/iceberg_alley/medal_times
execute if entity @s[scores={worldmapID=16}] run function sprint_racer:levels/hurricane_islands/medal_times

execute if entity @s[scores={worldmapID=17}] run function sprint_racer:levels/crash_course/medal_times
execute if entity @s[scores={worldmapID=18}] run function sprint_racer:levels/the_gauntlet/medal_times

execute if entity @s[scores={worldmapID=19}] run function sprint_racer:levels/fossil_cove/medal_times
execute if entity @s[scores={worldmapID=20}] run function sprint_racer:levels/frostbite_village/medal_times
execute if entity @s[scores={worldmapID=21}] run function sprint_racer:levels/dead_canyon/medal_times
execute if entity @s[scores={worldmapID=22}] run function sprint_racer:levels/haunted_woodland/medal_times
execute if entity @s[scores={worldmapID=23}] run function sprint_racer:levels/mushroom_cavern/medal_times

execute if entity @s[scores={worldmapID=24}] run function sprint_racer:levels/the_loop/medal_times
execute if entity @s[scores={worldmapID=25}] run function sprint_racer:levels/roadroller_park/medal_times
execute if entity @s[scores={worldmapID=26}] run function sprint_racer:levels/miners_island/medal_times

execute if entity @s[scores={worldmapID=27}] run function sprint_racer:levels/coastal_avenue/medal_times
execute if entity @s[scores={worldmapID=28}] run function sprint_racer:levels/cinder_core/medal_times
execute if entity @s[scores={worldmapID=29}] run function sprint_racer:levels/sacred_village/medal_times
execute if entity @s[scores={worldmapID=30}] run function sprint_racer:levels/monochrome_road/medal_times
execute if entity @s[scores={worldmapID=31}] run function sprint_racer:levels/outer_spaceway/medal_times

execute if entity @s[scores={worldmapID=32}] run function sprint_racer:levels/highlight_resort/medal_times
execute if entity @s[scores={worldmapID=33}] run function sprint_racer:levels/fiery_volcano/medal_times
execute if entity @s[scores={worldmapID=34}] run function sprint_racer:levels/hot_air_docks/medal_times
execute if entity @s[scores={worldmapID=35}] run function sprint_racer:levels/site_x/medal_times

execute if entity @s[scores={worldmapID=36}] run function sprint_racer:levels/undersea_shipyard/medal_times
execute if entity @s[scores={worldmapID=37}] run function sprint_racer:levels/praia_de_abril/medal_times
execute if entity @s[scores={worldmapID=38}] run function sprint_racer:levels/petra_resort/medal_times
execute if entity @s[scores={worldmapID=39}] run function sprint_racer:levels/cargo_bay/medal_times
execute if entity @s[scores={worldmapID=40}] run function sprint_racer:levels/sprint_circuit/medal_times
execute if entity @s[scores={worldmapID=41}] run function sprint_racer:levels/space_colony_luna/medal_times

execute if entity @s[scores={worldmapID=42}] run function sprint_racer:levels/mountain_park/medal_times
execute if entity @s[scores={worldmapID=43}] run function sprint_racer:levels/frostbite_caverns/medal_times
execute if entity @s[scores={worldmapID=44}] run function sprint_racer:levels/retro_synthwave/medal_times
execute if entity @s[scores={worldmapID=45}] run function sprint_racer:levels/shroom_spring/medal_times
execute if entity @s[scores={worldmapID=46}] run function sprint_racer:levels/casino_chase/medal_times
execute if entity @s[scores={worldmapID=47}] run function sprint_racer:levels/seaside_joyride/medal_times
execute if entity @s[scores={worldmapID=48}] run function sprint_racer:levels/praia_de_abril_2/medal_times
execute if entity @s[scores={worldmapID=49}] run function sprint_racer:levels/crash_course_neo/medal_times

execute if entity @s[scores={worldmapID=51}] run function sprint_racer:levels/candy_land/medal_times
execute if entity @s[scores={worldmapID=52}] run function sprint_racer:levels/gummi_gorge/medal_times
execute if entity @s[scores={worldmapID=53}] run function sprint_racer:levels/nether_castle/medal_times
execute if entity @s[scores={worldmapID=54}] run function sprint_racer:levels/moonlit_mountains/medal_times

#add more here...

execute if entity @s[scores={worldmapID=1050}] run function sprint_racer:levels/underworld/medal_times

execute if entity @s[scores={worldmapID=1001}] run function sprint_racer:levels/windy_watch/medal_times
execute if entity @s[scores={worldmapID=1002}] run function sprint_racer:levels/shiver_stream_caverns/medal_times
execute if entity @s[scores={worldmapID=1003}] run function sprint_racer:levels/block_island/medal_times
execute if entity @s[scores={worldmapID=1004}] run function sprint_racer:levels/sedove_isle/medal_times
execute if entity @s[scores={worldmapID=1005}] run function sprint_racer:levels/metro_plaza/medal_times
execute if entity @s[scores={worldmapID=1006}] run function sprint_racer:levels/scorched_sands/medal_times

execute if entity @s[scores={worldmapID=1007}] run function sprint_racer:levels/greenhouse/medal_times

execute if entity @s[scores={worldmapID=1008}] run function sprint_racer:levels/colosseum/medal_times
execute if entity @s[scores={worldmapID=1009}] run function sprint_racer:levels/hidden_garden/medal_times
execute if entity @s[scores={worldmapID=1010}] run function sprint_racer:levels/battle_house/medal_times
execute if entity @s[scores={worldmapID=1011}] run function sprint_racer:levels/bit_city/medal_times

execute if entity @s[scores={worldmapID=1012}] run function sprint_racer:levels/sugar_rush/medal_times
execute if entity @s[scores={worldmapID=1013}] run function sprint_racer:levels/honeybee_hideout/medal_times
execute if entity @s[scores={worldmapID=1014}] run function sprint_racer:levels/battle_labyrinth/medal_times
execute if entity @s[scores={worldmapID=1015}] run function sprint_racer:levels/end_core/medal_times
execute if entity @s[scores={worldmapID=1016}] run function sprint_racer:levels/pyramid_village/medal_times
execute if entity @s[scores={worldmapID=1017}] run function sprint_racer:levels/aldeao_redentor/medal_times

execute if entity @s[scores={worldmapID=1018}] run function sprint_racer:levels/toy_tussle/medal_times
execute if entity @s[scores={worldmapID=1019}] run function sprint_racer:levels/minotaur_maze/medal_times

#add more here...



#show diamond time on the sidebar during gameplay (only if we already have gold already)
scoreboard players set #sidebarDiamond value 0
execute if entity @s[scores={worldmapID=..999,medalRace=3..}] run scoreboard players set #sidebarDiamond value 1
execute if entity @s[scores={worldmapID=1000..,medalBattle=3..}] run scoreboard players set #sidebarDiamond value 1