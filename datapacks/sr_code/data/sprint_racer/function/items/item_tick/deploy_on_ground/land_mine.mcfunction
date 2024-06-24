summon armor_stand ~ ~-2 ~ {Tags:["itemcontainer","chest10","land_mine","cSETME"],Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"air",count:1}],HandItems:[{},{}],DisabledSlots:2039583}

scoreboard players set @e[tag=chest10,tag=cSETME,limit=1] itemBlockState 10
execute as @e[tag=chest10,tag=cSETME,limit=1] at @s run tp @s ~ ~1 ~
scoreboard players operation @e[tag=cSETME,limit=1] playerID = @s playerID
execute if entity @s[tag=itemCyan] run tag @e[tag=cSETME,limit=1] add itemCyan

tag @e[tag=cSETME] remove cSETME

particle falling_dust{block_state:"minecraft:purple_concrete"} ~ ~.5 ~ 0.4 0.4 0.4 1 20
playsound minecraft:entity.creeper.hurt master @a
kill @s[type=item]