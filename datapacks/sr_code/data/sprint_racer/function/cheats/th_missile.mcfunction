summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b,DisabledSlots:2039583,ArmorItems:[{},{},{},{id:"gray_concrete",count:1,components:{"minecraft:custom_model_data":1111111}}],HandItems:[{},{}],Tags:["missile","aimMe","touhou"]}

execute if entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=01a] run tag @e[tag=aimMe,type=armor_stand,limit=1,sort=nearest] add hurryUp
execute if entity @s[tag=itemCyan] run tag @e[tag=aimMe,type=armor_stand,limit=1,sort=nearest] add itemCyan

tp @e[tag=aimMe,limit=1,type=armor_stand,sort=nearest] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=aimMe,limit=1,type=armor_stand,sort=nearest] playerID = @s playerID
execute if entity @e[type=armor_stand,tag=cheats,x=1548,y=148,z=422,distance=..1,tag=11a] as @e[tag=aimMe,limit=1,type=armor_stand,sort=nearest] run function sprint_racer:cheats/homing_entity_chance_rare
tag @e[tag=aimMe,limit=1,type=armor_stand,sort=nearest] remove aimMe