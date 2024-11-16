tag @e[limit=1,sort=nearest,tag=activeplayer,scores={useSnowball=..999}] add SBparent

scoreboard players operation @s playerID = @e[limit=1,sort=nearest,tag=SBparent] playerID
execute if entity @e[tag=SBparent] run tag @s add sHasID
execute if entity @e[tag=SBparent,tag=playerCyan] run tag @s add itemCyan
execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,type=armor_stand,tag=11a] run function sprint_racer:cheats/homing_entity_chance

tag @e[tag=SBparent] remove SBparent