kill @e[tag=lobbyprop,tag=chestdisplay,tag=gpB]
kill @e[type=item,tag=lobbyprop,tag=gpB]

#center is 1611 81 371

#1 = standard
execute if entity @e[tag=w,tag=!randomPresetB,scores={gamemodePresetB=1}] run summon armor_stand 1611 80 371 {Tags:["lobbyprop","chestdisplay","gpB","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1031853657,919423726,-2059367205,1418649205],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2FmNTk3NzZmMmYwMzQxMmM3YjU5NDdhNjNhMGNmMjgzZDUxZmU2NWFjNmRmN2YyZjg4MmUwODM0NDU2NWU5In19fQ=="}]}}}],HandItems:[{},{}],DisabledSlots:2039583}

#2 = elimination
execute if entity @e[tag=w,tag=!randomPresetB,scores={gamemodePresetB=2}] run summon armor_stand 1611 80 371 {Tags:["lobbyprop","chestdisplay","gpB","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"skeleton_skull",count:1}],HandItems:[{},{}],DisabledSlots:2039583}

#3 = resource control
execute if entity @e[tag=w,tag=!randomPresetB,scores={gamemodePresetB=3}] run summon armor_stand 1611 80 371 {Tags:["lobbyprop","chestdisplay","gpB","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;364451694,-32355386,-1146070605,894932690],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWIzMzQ4YTYxY2ZmYzc5ZWI0MmQ4NDlkMzc4MjI5NDMyYWE4MWQxOTg1NmIyNWZlYWFjNzUzODQ4NzEzN2E1In19fQ=="}]}}}],HandItems:[{},{}],DisabledSlots:2039583}

#2tag = random
execute if entity @e[tag=w,tag=randomPresetB] run summon armor_stand 1611 80 371 {Tags:["lobbyprop","chestdisplay","gpB","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"black_concrete",count:1}],HandItems:[{},{}],DisabledSlots:2039583}


execute as @e[tag=tpNudge] at @s run tp @s ~.5 ~ ~
execute as @e[tag=tpNudge2] at @s run tp @s ~ ~ ~.5
execute as @e[tag=tpMeUp] at @s run tp @s ~ ~1 ~

tag @e[tag=tpMeUp] remove tpMeUp
tag @e[tag=tpNudge] remove tpNudge
tag @e[tag=tpNudge2] remove tpNudge2

function sprint_racer:game_logic/0/misc_lobby_happenings/spawn_container_name_battle_gamemode