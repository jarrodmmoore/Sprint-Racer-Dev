summon tnt ~ ~ ~ {fuse:10000,Tags:["giveID"]}
scoreboard players operation @e[tag=giveID,limit=1] playerID = @s playerID
execute if entity @e[type=armor_stand,tag=cheats,x=1550,y=148,z=406,distance=..1,tag=11a] as @e[tag=giveID,limit=1] run function sprint_racer:cheats/homing_entity_chance

execute if entity @s[tag=itemCyan] run tag @e[tag=giveID,limit=1] add itemCyan
execute if entity @s[tag=itemCyan] run team join playerCyan @e[tag=giveID,limit=1]
execute if entity @s[tag=!itemCyan] if entity @e[tag=w,type=armor_stand,tag=teamplay] run team join playerOrange @e[tag=giveID,limit=1]

tag @e[tag=giveID,limit=1] remove giveID
particle falling_dust{block_state:"minecraft:redstone_block"} ~ ~.5 ~ 0.4 0.4 0.4 1 40
playsound minecraft:entity.tnt.primed master @a
kill @s[type=item]