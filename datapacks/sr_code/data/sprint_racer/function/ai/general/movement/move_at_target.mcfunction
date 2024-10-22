#note, while in water, AI's "velocity vector" is allowed to have a pitch other than 0

tag @s add self

execute store result score @s mvmt_coord_x run data get entity @s Pos[0] 100000
execute store result score @s mvmt_coord_y run data get entity @s Pos[1] 100000
execute store result score @s mvmt_coord_z run data get entity @s Pos[2] 100000

#ai rotation stuff
#when the ai rotation offset timer expires, default back to whatever our "aiRotSet" value is
#this allows us to create temporary offsets without forgetting what the AI's "hook" is supposed to be
scoreboard players remove @s[scores={aiRotOSTime=1..}] aiRotOSTime 1
execute if entity @s[scores={aiRotOSTime=1}] run scoreboard players operation @s aiRotOffset = @s aiRotSet

execute if entity @s[tag=!inWater] run function sprint_racer:ai/general/movement/lookinghere_rotations_2d
execute if entity @s[tag=inWater] run function sprint_racer:ai/general/movement/lookinghere_rotations_3d
execute if entity @s[tag=inWater,tag=swimup] run function sprint_racer:ai/general/movement/lookinghere_rotations_2d

#OLD, lacking scalers
#execute if entity @s[tag=!inWater] facing entity @e[limit=1,sort=nearest,tag=myCHILDtarget] feet rotated ~ 0 run summon marker ^ ^ ^0.001 {Tags:["lookinghere"]}
#execute if entity @s[tag=inWater] facing entity @e[limit=1,sort=nearest,tag=myCHILDtarget] feet run summon marker ^ ^ ^0.001 {Tags:["lookinghere"]}

#possibly avoid traps, unless the trap is the target
execute unless entity @e[tag=myCHILDtarget,tag=trap] facing entity @e[limit=1,sort=nearest,tag=myCHILDtarget] feet positioned ^ ^ ^5 if entity @e[tag=trap,distance=..3] run function sprint_racer:ai/general/movement/possibly_dodge_trap

execute as @e[tag=lookinghere,limit=1,sort=nearest,type=marker,distance=..1] store result score @e[tag=self,sort=nearest,limit=1,distance=..1] mvmt_coord_dx run data get entity @s Pos[0] 100000
execute as @e[tag=lookinghere,limit=1,sort=nearest,type=marker,distance=..1] store result score @e[tag=self,sort=nearest,limit=1,distance=..1] mvmt_coord_dy run data get entity @s Pos[1] 100000
execute as @e[tag=lookinghere,limit=1,sort=nearest,type=marker,distance=..1] store result score @e[tag=self,sort=nearest,limit=1,distance=..1] mvmt_coord_dz run data get entity @s Pos[2] 100000

scoreboard players operation @s mvmt_coord_dx -= @s mvmt_coord_x
scoreboard players operation @s mvmt_coord_dy -= @s mvmt_coord_y
scoreboard players operation @s mvmt_coord_dz -= @s mvmt_coord_z

#slow down on ice and soul sand
execute if entity @s[scores={moveState=2}] if block ~ ~-0.5 ~ #sprint_racer:slippery run scoreboard players remove @s speedlevel 1
execute if entity @s[scores={moveState=2}] if block ~ ~-0.5 ~ #sprint_racer:slow_terrain run scoreboard players remove @s speedlevel 6

#easy ai slows down in battle mode
execute if entity @s[tag=very_easy_ai,scores={aiSkill=..1,moveState=2}] if score global gameState matches 3 run scoreboard players set @s[scores={speedlevel=4..}] speedlevel 3
execute if entity @s[tag=!very_easy_ai,scores={aiSkill=..1,moveState=2}] if score global gameState matches 3 run scoreboard players set @s[scores={speedlevel=6..}] speedlevel 5

#don't go mega slow in the air, please
execute if entity @s[scores={moveState=0,speedlevel=..6}] run scoreboard players add @s speedlevel 2

#boost up a bit on stairs
#execute if block ~ ~-0.2 ~ #minecraft:stairs if entity @s[nbt={OnGround:1b}] run tp @s ~ ~0.4 ~
execute if block ~ ~ ~ #minecraft:stairs if entity @s[nbt={OnGround:1b}] run tp @s ~ ~0.4 ~

#apply speed multiplier? (only while NOT airborne)
execute if score @s aiAirTime matches ..0 unless score #speedoSpeed value matches -1 run function sprint_racer:ai/general/movement/speedo_multiplier

#move depending on speed level
execute unless entity @s[tag=aiGotOwie] if entity @s[tag=!inWater,scores={elytraTimer=..0,scriptMove=..0}] run function sprint_racer:ai/general/movement/speed_level_2d/_index
execute unless entity @s[tag=aiGotOwie] if entity @s[tag=inWater,tag=!aiswimup,scores={elytraTimer=..0,scriptMove=..0}] run function sprint_racer:ai/general/movement/speed_level_3d/_index
execute unless entity @s[tag=aiGotOwie] if entity @s[tag=inWater,tag=aiswimup,scores={elytraTimer=..0,scriptMove=..0}] run function sprint_racer:ai/general/movement/speed_level_2d/_index
tag @s[tag=aiswimup] remove aiswimup

tag @s[tag=!aiGotOwie,tag=!aiRememberVelocity] add aiRememberVelocity

kill @e[tag=lookinghere,type=marker]

tag @s remove self