clear @s blaze_rod[custom_data~{elite20:1b}] 1

#don't hit teammates!
execute if entity @e[tag=w,type=armor_stand,tag=teamplay] if entity @s[tag=playerOrange] run scoreboard players set @e[tag=activeplayer,tag=playerOrange] lightningSafe 440
execute if entity @e[tag=w,type=armor_stand,tag=teamplay] if entity @s[tag=playerCyan] run scoreboard players set @e[tag=activeplayer,tag=playerCyan] lightningSafe 440

scoreboard players add @s[scores={lightningSafe=..400}] lightningSafe 440
scoreboard players operation @e[tag=w,type=armor_stand,limit=1] attackerID = @s playerID

execute unless entity @e[tag=w,type=armor_stand,scores={storm=..9999}] unless entity @e[tag=w,type=armor_stand,scores={gameState=12}] run function sprint_racer_language:gameplay/misc_item_text/storm_incoming
execute if entity @e[tag=w,type=armor_stand,scores={storm=..9999}] unless entity @e[tag=w,type=armor_stand,scores={gameState=12}] run function sprint_racer_language:gameplay/misc_item_text/storm_extended
scoreboard players add @e[tag=w,type=armor_stand] storm 440
scoreboard players set @e[tag=w,type=armor_stand,scores={storm=801..}] storm 800
scoreboard players set @e[tag=w,type=armor_stand] lightningSafe 100

weather thunder

execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ 100000 ~ 100000 .5


scoreboard players set @s inputCooldown 30