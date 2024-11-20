tag @s add displayFrame

#clear
data merge entity @s {Silent:1b,Item:{id:"minecraft:air"}}

#by default, show random (catches missing tracks, possible a custom track in the sequence got deleted)
execute if entity @s[scores={gpNumber=1..50}] if score @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,type=armor_stand] gpNumber >= @s gpNumber run data merge entity @s {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":9998}}}

#read gamemode from block sequence
execute if entity @s[scores={gpNumber=1}] positioned 1584 39 372 positioned ~ ~ ~1 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=2}] positioned 1584 39 372 positioned ~ ~ ~2 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=3}] positioned 1584 39 372 positioned ~ ~ ~3 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=4}] positioned 1584 39 372 positioned ~ ~ ~4 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=5}] positioned 1584 39 372 positioned ~ ~ ~5 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=6}] positioned 1584 39 372 positioned ~ ~ ~6 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=7}] positioned 1584 39 372 positioned ~ ~ ~7 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=8}] positioned 1584 39 372 positioned ~ ~ ~8 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=9}] positioned 1584 39 372 positioned ~ ~ ~9 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=10}] positioned 1584 39 372 positioned ~ ~ ~10 run function sprint_racer:game_logic/11/read_gamemode

execute if entity @s[scores={gpNumber=11}] positioned 1584 39 372 positioned ~ ~ ~11 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=12}] positioned 1584 39 372 positioned ~ ~ ~12 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=13}] positioned 1584 39 372 positioned ~ ~ ~13 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=14}] positioned 1584 39 372 positioned ~ ~ ~14 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=15}] positioned 1584 39 372 positioned ~ ~ ~15 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=16}] positioned 1584 39 372 positioned ~ ~ ~16 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=17}] positioned 1584 39 372 positioned ~ ~ ~17 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=18}] positioned 1584 39 372 positioned ~ ~ ~18 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=19}] positioned 1584 39 372 positioned ~ ~ ~19 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=20}] positioned 1584 39 372 positioned ~ ~ ~20 run function sprint_racer:game_logic/11/read_gamemode

execute if entity @s[scores={gpNumber=21}] positioned 1584 39 372 positioned ~ ~ ~21 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=22}] positioned 1584 39 372 positioned ~ ~ ~22 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=23}] positioned 1584 39 372 positioned ~ ~ ~23 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=24}] positioned 1584 39 372 positioned ~ ~ ~24 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=25}] positioned 1584 39 372 positioned ~ ~ ~25 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=26}] positioned 1584 39 372 positioned ~ ~ ~26 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=27}] positioned 1584 39 372 positioned ~ ~ ~27 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=28}] positioned 1584 39 372 positioned ~ ~ ~28 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=29}] positioned 1584 39 372 positioned ~ ~ ~29 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=30}] positioned 1584 39 372 positioned ~ ~ ~30 run function sprint_racer:game_logic/11/read_gamemode

execute if entity @s[scores={gpNumber=31}] positioned 1584 39 372 positioned ~ ~ ~31 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=32}] positioned 1584 39 372 positioned ~ ~ ~32 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=33}] positioned 1584 39 372 positioned ~ ~ ~33 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=34}] positioned 1584 39 372 positioned ~ ~ ~34 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=35}] positioned 1584 39 372 positioned ~ ~ ~35 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=36}] positioned 1584 39 372 positioned ~ ~ ~36 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=37}] positioned 1584 39 372 positioned ~ ~ ~37 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=38}] positioned 1584 39 372 positioned ~ ~ ~38 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=39}] positioned 1584 39 372 positioned ~ ~ ~39 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=40}] positioned 1584 39 372 positioned ~ ~ ~40 run function sprint_racer:game_logic/11/read_gamemode

execute if entity @s[scores={gpNumber=41}] positioned 1584 39 372 positioned ~ ~ ~41 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=42}] positioned 1584 39 372 positioned ~ ~ ~42 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=43}] positioned 1584 39 372 positioned ~ ~ ~43 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=44}] positioned 1584 39 372 positioned ~ ~ ~44 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=45}] positioned 1584 39 372 positioned ~ ~ ~45 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=46}] positioned 1584 39 372 positioned ~ ~ ~46 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=47}] positioned 1584 39 372 positioned ~ ~ ~47 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=48}] positioned 1584 39 372 positioned ~ ~ ~48 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=49}] positioned 1584 39 372 positioned ~ ~ ~49 run function sprint_racer:game_logic/11/read_gamemode
execute if entity @s[scores={gpNumber=50}] positioned 1584 39 372 positioned ~ ~ ~50 run function sprint_racer:game_logic/11/read_gamemode


#run function depending on gamemode
execute if entity @s[tag=read_race] run function sprint_racer:game_logic/11/item_frame/find_track_race
execute if entity @s[tag=read_battle] run function sprint_racer:game_logic/11/item_frame/find_track_battle
execute if entity @s[tag=read_random] run data merge entity @s {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":9998}}}

execute if entity @s[tag=read_rtrack] run data merge entity @s {Silent:1b,Item:{id:"minecraft:filled_map",count:1,components:{"minecraft:map_id":9998}}}


#clean up tags
tag @s remove read_race
tag @s remove read_battle
tag @s remove read_random
tag @s remove read_rtrack

tag @s remove displayFrame