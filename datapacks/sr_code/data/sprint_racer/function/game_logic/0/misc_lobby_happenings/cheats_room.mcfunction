#give everyone the cheat entry bow, provided they're in the cheat room
tag @a remove hasCHT
tag @a[nbt={Inventory:[{Slot:3b,components:{"minecraft:custom_data":{cheatentry:1b}}}]}] add hasCHT
clear @a[tag=!hasCHT] bow[custom_data~{cheatentry:1b}]
execute as @a unless entity @s[x=1574,y=97,z=438,dx=20,dy=14,dz=13,gamemode=adventure] run clear @s bow[custom_data~{cheatentry:1b}]
execute as @a[x=1574,y=97,z=438,dx=20,dy=14,dz=13,gamemode=adventure,tag=!hasCHT] run function sprint_racer_language:_dlc_1/lobby/cheat_room/give_bow
tag @a remove hasCHT

#also give an arrow
tag @a remove hasCArrow
tag @a[nbt={Inventory:[{Slot:5b,components:{"minecraft:custom_data":{cheatarrow:1b}}}]}] add hasCArrow
clear @a[tag=!hasCArrow] arrow[custom_data~{cheatarrow:1b}]
execute as @a unless entity @s[x=1574,y=97,z=438,dx=20,dy=14,dz=13,gamemode=adventure] run clear @s arrow[custom_data~{cheatarrow:1b}]
execute as @a[x=1574,y=97,z=438,dx=20,dy=14,dz=13,gamemode=adventure,tag=!hasCArrow] run function sprint_racer_language:_dlc_1/lobby/cheat_room/give_arrow
tag @a remove hasCArrow

#grounded arrows run logic before dissapearing, check if they were shot into the cheat entry letters
execute as @e[type=arrow,nbt={inGround:1b}] at @s run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_arrow_logic/_main
kill @e[type=arrow,nbt={inGround:1b}]

#summon floating texts
execute unless entity @e[tag=lobbyprop,tag=cheattext] run function sprint_racer_language:_dlc_4/lobby/cheat_room/floating_text/spawn

#handle triggers
execute as @a[scores={csl_trigger=1..}] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/csl_trigger
execute as @a[scores={cl_trigger=1..}] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/cl_trigger
execute as @a[scores={ca_trigger=1..}] run function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/ca_trigger

#keep homing entities out of the room
execute as @e[tag=homer,x=1574,y=97,z=438,dx=20,dy=14,dz=13] at @s run tp @s ~ ~10 ~

#no afks in cheat room
scoreboard players set @a[x=1574,y=97,z=438,dx=20,dy=14,dz=13] afkTime 0