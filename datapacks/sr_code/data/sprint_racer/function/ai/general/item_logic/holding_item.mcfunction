scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..50}] rNumber

execute if entity @s[scores={rNumber=1..10}] run function sprint_racer:ai/general/item_logic/put_away_item
execute if entity @s[scores={rNumber=11..50}] run function sprint_racer:ai/general/item_logic/held_item_logic/_index