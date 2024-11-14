clear @s slime_block[custom_data~{no13:1b}] 1

summon armor_stand ~ ~1 ~ {Tags:["slimetrap","trap","giveID"],Motion:[0.0d,0.5d,0.0d],Silent:1b,Invisible:1b,Small:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:slime_block",count:1}]}
scoreboard players operation @e[tag=giveID,limit=1] playerID = @s playerID
execute if entity @s[tag=playerCyan] run tag @e[tag=giveID,limit=1] add itemCyan

#sneaking, throw item!
execute if entity @s[scores={moveState=3}] unless entity @e[tag=cheats,type=armor_stand,tag=40a] at @s run function sprint_racer:items/item_tick/throw_velocity
execute if entity @e[tag=cheats,type=armor_stand,tag=40a] at @s run function sprint_racer:items/item_tick/throw_velocity_super

tag @e[tag=giveID,limit=1] remove giveID
playsound minecraft:entity.slime.attack master @a

scoreboard players set @s inputCooldown 7