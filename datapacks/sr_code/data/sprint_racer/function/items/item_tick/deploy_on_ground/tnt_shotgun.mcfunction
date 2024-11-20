#this is a fun one :)

summon tnt ~ ~ ~ {Tags:["centerTnt","giveID"],fuse:10000}
scoreboard players add @e[tag=centerTnt] age 70
tag @e[tag=centerTnt] remove centerTnt

summon tnt ~.7 ~.1 ~.7 {NoGravity:1b,fuse:10000,Tags:["giveID"]}
summon tnt ~-.7 ~.1 ~.7 {NoGravity:1b,fuse:10000,Tags:["giveID"]}
summon tnt ~.7 ~.1 ~-.7 {NoGravity:1b,fuse:10000,Tags:["giveID"]}
summon tnt ~-.7 ~.1 ~-.7 {NoGravity:1b,fuse:10000,Tags:["giveID"]}

execute if entity @s[tag=itemCyan] run tag @e[tag=giveID,limit=5,sort=nearest] add itemCyan
execute if entity @s[tag=itemCyan] run team join playerCyan @e[tag=giveID,limit=5,sort=nearest]
execute if entity @s[tag=!itemCyan] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay] run team join playerOrange @e[tag=giveID,limit=5,sort=nearest]

scoreboard players operation @e[tag=giveID] playerID = @s playerID
tag @e[tag=giveID] remove giveID

particle falling_dust{block_state:"minecraft:purple_concrete"} ~ ~.5 ~ 1.3 0.4 1.3 1 80
playsound minecraft:entity.tnt.primed master @a
kill @s[type=item]