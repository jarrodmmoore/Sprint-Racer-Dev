#mark us as most recently played (only if we're not a custom track)
execute if entity @s[tag=!customrace] run function sprint_racer:worldmap/mark_most_recent_race

#boot custom track
execute if entity @s[tag=customrace] run function sprint_racer:levels/_custom_race/_initialize

#boot stock track
execute if entity @s[scores={rNumber=0}] run function sprint_racer:levels/_error/_initialize
execute if entity @s[scores={rNumber=50}] run function sprint_racer:levels/cotton_void/_initialize

execute if entity @s[scores={rNumber=1}] run function sprint_racer:levels/river_valley/_initialize
execute if entity @s[scores={rNumber=2}] run function sprint_racer:levels/highlight_stadium/_initialize
execute if entity @s[scores={rNumber=3}] run function sprint_racer:levels/sakura_city/_initialize
execute if entity @s[scores={rNumber=4}] run function sprint_racer:levels/seaside_village/_initialize
execute if entity @s[scores={rNumber=5}] run function sprint_racer:levels/laeto_forest/_initialize
execute if entity @s[scores={rNumber=6}] run function sprint_racer:levels/petra_mountains/_initialize
execute if entity @s[scores={rNumber=7}] run function sprint_racer:levels/magna_desert/_initialize
execute if entity @s[scores={rNumber=8}] run function sprint_racer:levels/cinder_caverns/_initialize
execute if entity @s[scores={rNumber=9}] run function sprint_racer:levels/logmill/_initialize
execute if entity @s[scores={rNumber=10}] run function sprint_racer:levels/redstone_factory/_initialize
execute if entity @s[scores={rNumber=11}] run function sprint_racer:levels/the_dragon/_initialize
execute if entity @s[scores={rNumber=12}] run function sprint_racer:levels/suspension_mountain/_initialize
execute if entity @s[scores={rNumber=13}] run function sprint_racer:levels/highlight_city/_initialize
execute if entity @s[scores={rNumber=14}] run function sprint_racer:levels/green_labyrinth/_initialize
execute if entity @s[scores={rNumber=15}] run function sprint_racer:levels/iceberg_alley/_initialize
execute if entity @s[scores={rNumber=16}] run function sprint_racer:levels/hurricane_islands/_initialize
execute if entity @s[scores={rNumber=17}] run function sprint_racer:levels/crash_course/_initialize
execute if entity @s[scores={rNumber=18}] run function sprint_racer:levels/the_gauntlet/_initialize
execute if entity @s[scores={rNumber=19}] run function sprint_racer:levels/fossil_cove/_initialize
execute if entity @s[scores={rNumber=20}] run function sprint_racer:levels/frostbite_village/_initialize
execute if entity @s[scores={rNumber=21}] run function sprint_racer:levels/dead_canyon/_initialize
execute if entity @s[scores={rNumber=22}] run function sprint_racer:levels/haunted_woodland/_initialize
execute if entity @s[scores={rNumber=23}] run function sprint_racer:levels/mushroom_cavern/_initialize

execute if entity @s[scores={rNumber=24}] run function sprint_racer:levels/the_loop/_initialize
execute if entity @s[scores={rNumber=25}] run function sprint_racer:levels/roadroller_park/_initialize
execute if entity @s[scores={rNumber=26}] run function sprint_racer:levels/miners_island/_initialize

execute if entity @s[scores={rNumber=27}] run function sprint_racer:levels/coastal_avenue/_initialize
execute if entity @s[scores={rNumber=28}] run function sprint_racer:levels/cinder_core/_initialize
execute if entity @s[scores={rNumber=29}] run function sprint_racer:levels/sacred_village/_initialize
execute if entity @s[scores={rNumber=30}] run function sprint_racer:levels/monochrome_road/_initialize
execute if entity @s[scores={rNumber=31}] run function sprint_racer:levels/outer_spaceway/_initialize

execute if entity @s[scores={rNumber=32}] run function sprint_racer:levels/highlight_resort/_initialize
execute if entity @s[scores={rNumber=33}] run function sprint_racer:levels/fiery_volcano/_initialize
execute if entity @s[scores={rNumber=34}] run function sprint_racer:levels/hot_air_docks/_initialize
execute if entity @s[scores={rNumber=35}] run function sprint_racer:levels/site_x/_initialize

execute if entity @s[scores={rNumber=36}] run function sprint_racer:levels/undersea_shipyard/_initialize
execute if entity @s[scores={rNumber=37}] run function sprint_racer:levels/praia_de_abril/_initialize
execute if entity @s[scores={rNumber=38}] run function sprint_racer:levels/petra_resort/_initialize
execute if entity @s[scores={rNumber=39}] run function sprint_racer:levels/cargo_bay/_initialize
execute if entity @s[scores={rNumber=40}] run function sprint_racer:levels/sprint_circuit/_initialize
execute if entity @s[scores={rNumber=41}] run function sprint_racer:levels/space_colony_luna/_initialize

execute if entity @s[scores={rNumber=42}] run function sprint_racer:levels/mountain_park/_initialize
execute if entity @s[scores={rNumber=43}] run function sprint_racer:levels/frostbite_caverns/_initialize
execute if entity @s[scores={rNumber=44}] run function sprint_racer:levels/retro_synthwave/_initialize
execute if entity @s[scores={rNumber=45}] run function sprint_racer:levels/shroom_spring/_initialize
execute if entity @s[scores={rNumber=46}] if entity @e[tag=w,type=armor_stand,tag=!realms] run function sprint_racer:levels/casino_chase/_initialize
execute if entity @s[scores={rNumber=46}] if entity @e[tag=w,type=armor_stand,tag=realms] run tag @s remove chosenTrack
execute if entity @s[scores={rNumber=47}] run function sprint_racer:levels/seaside_joyride/_initialize
execute if entity @s[scores={rNumber=48}] run function sprint_racer:levels/praia_de_abril_2/_initialize
execute if entity @s[scores={rNumber=49}] run function sprint_racer:levels/crash_course_neo/_initialize

execute if entity @s[scores={rNumber=51}] run function sprint_racer:levels/candy_land/_initialize
execute if entity @s[scores={rNumber=52}] run function sprint_racer:levels/gummi_gorge/_initialize
execute if entity @s[scores={rNumber=53}] run function sprint_racer:levels/nether_castle/_initialize


#add more here