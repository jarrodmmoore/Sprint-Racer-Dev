summon armor_stand ~ ~ ~ {Tags:["magmatrap","trap","giveID"],Motion:[0.0d,0.0d,0.0d],Silent:1b,Invisible:1,Small:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:magma_block",count:1}]}
scoreboard players operation @e[tag=giveID,limit=1] playerID = @s playerID

execute if entity @s[tag=itemCyan] run tag @e[tag=giveID,limit=1] add itemCyan
execute if entity @s[tag=itemCyan] run team join playerCyan @e[tag=giveID,limit=1]
execute if entity @s[tag=itemOrange] run team join playerOrange @e[tag=giveID,limit=1]

tag @e[tag=giveID,limit=1] remove giveID

kill @s[type=item]