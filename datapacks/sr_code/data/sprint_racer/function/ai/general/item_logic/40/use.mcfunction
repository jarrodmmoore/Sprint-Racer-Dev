#cast a thunderstorm
scoreboard players add @s[scores={lightningSafe=..400}] lightningSafe 600
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] attackerID = @s playerID

execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={storm=..9999}] unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=12}] run function sprint_racer_language:gameplay/misc_item_text/storm_incoming
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={storm=..9999}] unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=12}] run function sprint_racer_language:gameplay/misc_item_text/storm_extended
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] storm 600
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={storm=1001..}] storm 1000
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] lightningSafe 100

weather thunder

execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ 100000 ~ 100000 .5


scoreboard players set @s aiActICooldown 100
scoreboard players set @s inputCooldown 30
scoreboard players remove @s aiHasItem40 1
scoreboard players remove @s aiHasGlobal 1
scoreboard players remove @s aiHasElite 1

#still have the item? hold it in our hand and potentially use it again
scoreboard players set @s[scores={aiHasItem40=1..}] aiHoldingItem 40
scoreboard players set @s[scores={aiHasItem40=1..}] aiActICooldown 100