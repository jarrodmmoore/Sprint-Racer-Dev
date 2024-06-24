#note, while in water, AI's "velocity vector" is allowed to have a pitch other than 0

tag @s add self

execute store result score @s mvmt_coord_x run data get entity @s Pos[0] 1000000
execute store result score @s mvmt_coord_y run data get entity @s Pos[1] 1000000
execute store result score @s mvmt_coord_z run data get entity @s Pos[2] 1000000

#ai rotation stuff
#when the ai rotation offset timer expires, default back to whatever our "aiRotSet" value is
#this allows us to create temporary offsets without forgetting what the AI's "hook" is supposed to be
scoreboard players remove @s[scores={aiRotOSTime=1..}] aiRotOSTime 1
execute if entity @s[scores={aiRotOSTime=1}] run scoreboard players operation @s aiRotOffset = @s aiRotSet

function sprint_racer:ai/general/movement/lookinghere_rotations_3d

#OLD, lacking scalers
#execute if entity @s[tag=!inWater] facing entity @e[limit=1,sort=nearest,tag=myCHILDtarget] feet rotated ~ 0 run summon marker ^ ^ ^0.001 {Tags:["lookinghere"]}
#execute if entity @s[tag=inWater] facing entity @e[limit=1,sort=nearest,tag=myCHILDtarget] feet run summon marker ^ ^ ^0.001 {Tags:["lookinghere"]}

#possibly avoid traps, unless the trap is the target
execute unless entity @e[tag=myCHILDtarget,tag=trap] facing entity @e[limit=1,sort=nearest,tag=myCHILDtarget] feet positioned ^ ^ ^5 if entity @e[tag=trap,distance=..3] run function sprint_racer:ai/general/movement/possibly_dodge_trap

execute as @e[tag=lookinghere] store result score @e[tag=self] mvmt_coord_dx run data get entity @s Pos[0] 1000000
execute as @e[tag=lookinghere] store result score @e[tag=self] mvmt_coord_dy run data get entity @s Pos[1] 1000000
execute as @e[tag=lookinghere] store result score @e[tag=self] mvmt_coord_dz run data get entity @s Pos[2] 1000000

scoreboard players operation @s mvmt_coord_dx -= @s mvmt_coord_x
scoreboard players operation @s mvmt_coord_dy -= @s mvmt_coord_y
scoreboard players operation @s mvmt_coord_dz -= @s mvmt_coord_z


#move depending on speed level
execute if entity @s[scores={elytraTimer=..0,scriptMove=..0}] run function sprint_racer:ai/general/movement/speed_level_3d/_index
tag @s[tag=aiswimup] remove aiswimup

tag @s[tag=!aiGotOwie,tag=!aiHasVelocity] add aiHasVelocity

kill @e[tag=lookinghere]

tag @s remove self