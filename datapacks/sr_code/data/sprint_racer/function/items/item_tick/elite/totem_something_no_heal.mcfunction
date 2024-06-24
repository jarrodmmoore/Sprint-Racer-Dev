particle heart ^ ^1.5 ^.75 0.2 0.2 0.2 .1 1
playsound minecraft:block.note_block.harp master @a ~ ~ ~ 1 1.4

scoreboard players set @s inputCooldown 10

#SILLY SECRET FEATURE
#clicking the totem has a 2% chance of firing a homing missile
scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=1..50}] rNumber
execute if entity @s[scores={rNumber=1}] run function sprint_racer:items/item_tick/normal/totem_misfire