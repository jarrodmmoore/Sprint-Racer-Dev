scoreboard players set @s enchantQty 0

#pick one of four predetermined orders of priority
scoreboard players set @s rNumber 1
scoreboard players operation @s rNumber = @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,sort=random,scores={rNumber=1..4}] rNumber


#smarter AI only ever picks the better orders
scoreboard players add @s[scores={aiSkill=2,rNumber=1..2}] rNumber 2
scoreboard players set @s[scores={aiSkill=3..}] rNumber 4


tag @s remove enchDone

execute if entity @s[scores={rNumber=..1}] run function sprint_racer:items/ai_enchant/_order1
execute if entity @s[scores={rNumber=2}] run function sprint_racer:items/ai_enchant/_order2
execute if entity @s[scores={rNumber=3}] run function sprint_racer:items/ai_enchant/_order3
execute if entity @s[scores={rNumber=4..}] run function sprint_racer:items/ai_enchant/_order4

execute if entity @s[tag=!enchDone] run tag @s add enchanted_something_custom

tag @s remove enchDone