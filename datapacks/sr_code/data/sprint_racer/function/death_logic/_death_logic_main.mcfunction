#run by all players who have a death score
scoreboard players add @s death 1

scoreboard players set @s timeSinceDeath 0

execute if entity @s[scores={death=2}] if score grandprix gameState matches 1 if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!noCrowdSFX,limit=1] run function sprint_racer:grand_prix/crowd_aww

#warp to saved coords
execute unless score global gameState matches 0 run function sprint_racer:warp_to_saved_coords/_go

#fix title times to deal with fussy plugin servers
title @s times 0 45 5

#goodbye kart
execute if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,tag=09a] if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig"}}}] at @s as @e[limit=1,sort=nearest,tag=playerkart] run function sprint_racer:cheats/kart_burst

#speed attribute
execute if entity @s[scores={death=3}] run function sprint_racer:speed_attribute

#elimination cheat
execute if entity @s[scores={death=3}] if entity @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand,tag=61a] run function sprint_racer:death_logic/elimination_after_death

#clear hitstun upon death
execute if entity @s[scores={death=3}] run scoreboard players set @s hitstun 0

#do different things depending on gamemode
execute if entity @s[scores={death=3..}] unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=1..}] run function sprint_racer:death_logic/basic
execute if entity @s[scores={death=3..}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=1}] run function sprint_racer:death_logic/1
execute if entity @s[scores={death=3..}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=2}] run function sprint_racer:death_logic/basic
execute if entity @s[scores={death=3..}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=3}] run function sprint_racer:death_logic/3
execute if entity @s[scores={death=3..}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=4..6}] run function sprint_racer:death_logic/basic
execute if entity @s[scores={death=3..}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=7}] run function sprint_racer:death_logic/7
execute if entity @s[scores={death=3..}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=8}] run function sprint_racer:death_logic/8
execute if entity @s[scores={death=3..}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=9..}] run function sprint_racer:death_logic/basic

#restart music because I guess that's a thing we have to do manually >:(
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=noMusicReset] run scoreboard players set @s[tag=!musicOff] musicTime 10