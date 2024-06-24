scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=1..26}] rNumber

tag @s add justOne

execute if entity @s[scores={math=1..4,aiHasItem4=..0}] run function sprint_racer_language:gameplay/give_item/no4
execute if entity @s[scores={math=5,aiHasItem24=..0}] run function sprint_racer_language:gameplay/give_item/elite4
execute if entity @s[scores={math=6,aiHasItem25=..0}] run function sprint_racer_language:gameplay/give_item/elite5
execute if entity @s[scores={math=7,aiHasItem8=..0}] run function sprint_racer_language:gameplay/give_item/no8
execute if entity @s[scores={math=8..13,aiHasItem10=..2}] run function sprint_racer_language:gameplay/give_item/no10

tag @s remove justOne

#random intervals
scoreboard players operation @s math = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=1..50}] rNumber
scoreboard players set @s math2 15
scoreboard players operation @s math *= @s math2
scoreboard players operation @s aiSpecial -= @s math