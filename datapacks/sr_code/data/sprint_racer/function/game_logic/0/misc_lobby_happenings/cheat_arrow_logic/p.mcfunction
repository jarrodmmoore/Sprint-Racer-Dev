function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_arrow_logic/_shift_characters

#IMPORTANT, CHANGE PER CHARACTER
scoreboard players set @e[tag=cheats] aiHasItem1 19
tellraw @a[x=1574,y=97,z=438,dx=20,dy=14,dz=13,gamemode=adventure] ["",{"text":"P","bold":true}]

execute as @a[x=1574,y=97,z=438,dx=20,dy=14,dz=13,gamemode=adventure] at @s run playsound minecraft:block.dispenser.dispense master @s ~ 100000 ~ 100000

function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_arrow_logic/_check_for_codes

particle happy_villager ~ ~ ~-.3 .1 .1 .1 0 20 force
tag @s add ded
kill @s