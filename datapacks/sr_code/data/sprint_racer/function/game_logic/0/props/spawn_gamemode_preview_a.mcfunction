kill @e[tag=lobbyprop,tag=chestdisplay,tag=gpA]
kill @e[type=item,tag=lobbyprop,tag=gpA]

#center is 1615 81 371

#1 = standard
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!randomPresetA,scores={gamemodePresetA=1}] run summon armor_stand 1615 80 371 {Tags:["lobbyprop","chestdisplay","gpA","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-690340706,-448508088,-1588396679,2114796727],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDRmNWNiNWU1YWJiZDBkMTIwOGJkOTM5MmRlZWVkZmU0OGY2NTI4ZTAxYjQ2NTNjYmM1NGZiMzkzOGExOTQyIn19fQ=="}]}}}},DisabledSlots:2039583}

#2 = elimination
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!randomPresetA,scores={gamemodePresetA=2}] run summon armor_stand 1615 80 371 {Tags:["lobbyprop","chestdisplay","gpA","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,equipment:{head:{id:"skeleton_skull",count:1}},DisabledSlots:2039583}

#3 = tactics race
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!randomPresetA,scores={gamemodePresetA=3}] run summon armor_stand 1615 80 371 {Tags:["lobbyprop","chestdisplay","gpA","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-156720236,-358529939,-1661789627,533896309],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmE5MDUzZDIxNjNkMGY1NjExNDVkMzNhNTEzMTQ1ZDRhYzFmOGE0NThiYWE3OTZiZTM4M2U3NTI1YTA1ZjQ1In19fQ=="}]}}}},DisabledSlots:2039583}

#2tag = random
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=randomPresetA] run summon armor_stand 1615 80 371 {Tags:["lobbyprop","chestdisplay","gpA","tpMeUp"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,equipment:{head:{id:"black_concrete",count:1}},DisabledSlots:2039583}


execute as @e[tag=tpNudge] at @s run tp @s ~.5 ~ ~
execute as @e[tag=tpNudge2] at @s run tp @s ~ ~ ~.5
execute as @e[tag=tpMeUp] at @s run tp @s ~ ~1 ~

tag @e[tag=tpMeUp] remove tpMeUp
tag @e[tag=tpNudge] remove tpNudge
tag @e[tag=tpNudge2] remove tpNudge2

function sprint_racer:game_logic/0/misc_lobby_happenings/spawn_container_name_race_gamemode