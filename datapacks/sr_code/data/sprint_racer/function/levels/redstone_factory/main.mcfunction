function sprint_racer:levels/redstone_factory/map

#close the front door when the race ends
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=100000..}] if block 310 57 334 redstone_block run setblock 310 57 334 air

#change to a new route once someone hits a new lap
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={mapZone=1}] if entity @e[tag=activeplayer,scores={lapFake=2..}] run function sprint_racer:levels/redstone_factory/open_emerald_route
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={mapZone=2}] if entity @e[tag=activeplayer,scores={lapFake=3..}] run function sprint_racer:levels/redstone_factory/open_gold_route

#route 1 wind tunnel
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={oTimerGlobal=1}] if loaded 326 59 275 run summon area_effect_cloud 326 59 275 {Particle:{type:"block",block_state:{Name:"air"}},Duration:50,Tags:["risingTrail","randomSpread"]}
spreadplayers 326 275 3 3 false @e[tag=risingTrail,tag=randomSpread,type=area_effect_cloud]
scoreboard players operation @e[tag=randomSpread,type=area_effect_cloud,limit=1] lifespan = @e[tag=random,x=1548,y=155,z=406,distance=..1,limit=1,sort=random,scores={rNumber=10..40}] rNumber
execute as @e[tag=randomSpread,type=area_effect_cloud] at @s run tp @s ~ 59 ~
tag @e[tag=randomSpread,type=area_effect_cloud,limit=1] remove randomSpread

execute as @e[tag=risingTrail,type=area_effect_cloud] at @s run particle cloud ~ ~ ~ 0.1 0.1 0.1 0 1 normal
execute as @e[tag=risingTrail,type=area_effect_cloud] at @s run tp @s ~ ~.6 ~

playsound minecraft:entity.generic.extinguish_fire master @a[gamemode=!spectator,scores={mapZone=1},x=326,y=59,z=275,distance=..12] 326 59 275 .2 .5 .01
playsound minecraft:entity.generic.extinguish_fire master @a[gamemode=spectator,x=326,y=59,z=275,distance=..12] 326 59 275 .2 .5 .01

effect give @e[tag=activeplayer,x=322,y=59,z=271,dx=8,dy=5,dz=8] levitation 1 5 true
effect give @e[tag=activeplayer,x=322,y=64,z=271,dx=8,dy=5,dz=8] levitation 1 1 true
effect give @e[type=pig,tag=kartpig,x=322,y=64,z=271,dx=8,dy=5,dz=8] levitation 1 2 true

#route 1, reset players who fall down
execute as @a[scores={mapZone=1,check=2..},gamemode=adventure,x=306,y=65,z=283,dx=18,dy=2,dz=17] run function sprint_racer:levels/redstone_factory/respawn1
execute as @e[scores={mapZone=1,check=2..},tag=ai,x=306,y=65,z=283,dx=18,dy=2,dz=17] at @s run function sprint_racer:ai/general/reset

#route 3, reset players who fall down
execute as @a[scores={mapZone=3..4,check=3..},gamemode=adventure,x=343,y=60,z=366,dx=55,dy=4,dz=33] run function sprint_racer:levels/redstone_factory/respawn2
execute as @e[scores={mapZone=3..4,check=3..},tag=ai,x=343,y=60,z=366,dx=55,dy=4,dz=33] at @s run function sprint_racer:ai/general/reset

##########
#MAP ZONES

#outside the factory / on the roof
scoreboard players set @a[tag=playing,x=241,y=60,z=334,dx=100,dy=100,dz=100] mapZone 0
scoreboard players set @a[tag=playing,x=245,y=98,z=241,dx=154,dy=100,dz=81] mapZone 0

#early factory, no route has been chosen yet so default to the currently open one
scoreboard players operation @a[tag=playing,x=310,y=61,z=328,dx=2,dy=2,dz=5] mapZone = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] mapZone
scoreboard players operation @a[tag=playing,x=268,y=68,z=275,dx=6,dy=4,dz=7] mapZone = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] mapZone

#route 1 (iron)
scoreboard players set @a[tag=playing,x=298,y=64,z=283,dx=10,dy=9,dz=4] mapZone 1
scoreboard players set @a[tag=playing,x=330,y=60,z=272,dx=6,dy=5,dz=6] mapZone 1
scoreboard players set @a[tag=playing,x=338,y=68,z=302,dx=5,dy=5,dz=18] mapZone 1
scoreboard players set @a[tag=playing,x=316,y=56,z=372,dx=25,dy=3,dz=2] mapZone 1

#route 2 interior (emerald)
scoreboard players set @a[tag=playing,x=298,y=68,z=270,dx=10,dy=9,dz=4] mapZone 2
scoreboard players set @a[tag=playing,x=343,y=87,z=276,dx=6,dy=7,dz=18] mapZone 2
scoreboard players set @a[tag=playing,x=293,y=87,z=282,dx=8,dy=5,dz=8] mapZone 2

#route 3 upper (gold)
scoreboard players set @a[tag=playing,x=298,y=64,z=276,dx=10,dy=9,dz=5] mapZone 3
scoreboard players set @a[tag=playing,x=369,y=53,z=269,dx=6,dy=5,dz=30] mapZone 3
scoreboard players set @a[tag=playing,x=347,y=52,z=297,dx=15,dy=10,dz=15] mapZone 3

#route 3 lower (gold)
scoreboard players set @a[tag=playing,x=343,y=60,z=366,dx=55,dy=20,dz=33] mapZone 4
scoreboard players set @a[tag=playing,x=383,y=60,z=330,dx=14,dy=12,dz=32] mapZone 4

#secret???
scoreboard players set @a[tag=playing,x=331,y=70,z=275,dx=30,dy=1,dz=1] mapZone 5
scoreboard players set @a[tag=playing,x=351,y=87,z=283,dx=6,dy=7,dz=6] mapZone 5
scoreboard players set @a[tag=playing,x=376,y=54,z=294,dx=5,dz=5,dy=5] mapZone 5

##########################
#NAVIGATION FOR EACH ROUTE

execute as @a[tag=playing,scores={mapZone=0}] at @s positioned ~ 9 ~ run function sprint_racer:game_logic/1/nav/y_override
execute as @a[tag=playing,scores={mapZone=1,check=1..2}] at @s positioned ~ 5 ~ run function sprint_racer:game_logic/1/nav/y_override
execute as @a[tag=playing,scores={mapZone=1,check=2..3}] at @s positioned ~ 6 ~ run function sprint_racer:game_logic/1/nav/y_override
execute as @a[tag=playing,scores={mapZone=1,check=3..4}] at @s positioned ~ 7 ~ run function sprint_racer:game_logic/1/nav/y_override
execute as @a[tag=playing,scores={mapZone=2,check=1..}] at @s positioned ~ 8 ~ run function sprint_racer:game_logic/1/nav/y_override
execute as @a[tag=playing,scores={mapZone=3..4,check=1..2}] at @s positioned ~ 5 ~ run function sprint_racer:game_logic/1/nav/y_override
execute as @a[tag=playing,scores={mapZone=3..4,check=2..3}] at @s positioned ~ 6 ~ run function sprint_racer:game_logic/1/nav/y_override
execute as @a[tag=playing,scores={mapZone=3..4,check=3..4}] at @s positioned ~ 7 ~ run function sprint_racer:game_logic/1/nav/y_override

#	0 - nothing
#	1 - all routes, checkpoint 0-1
#	2 - nothing
#	3 - nothing
#	4 - nothing
#	5 - iron/gold route, checkpoint 1-2
#	6 - iron/gold route, checkpoint 2-3
#	7 - iron/gold route, checkpoint 3-4
#	8 - emerald route inside, checkpoint 1-3
#	9 - all routes outside