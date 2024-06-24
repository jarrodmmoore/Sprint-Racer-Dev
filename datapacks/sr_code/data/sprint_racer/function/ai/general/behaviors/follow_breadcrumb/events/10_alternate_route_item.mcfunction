tag @s remove doIt

scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=1..50}] rNumber

#higher itemLuck means we want it more

execute if entity @s[scores={itemLuck=..1,rNumber=46..50}] run tag @s add doIt
execute if entity @s[scores={itemLuck=2,rNumber=41..50}] run tag @s add doIt
execute if entity @s[scores={itemLuck=3,rNumber=36..50}] run tag @s add doIt
execute if entity @s[scores={itemLuck=4,rNumber=27..50}] run tag @s add doIt
execute if entity @s[scores={itemLuck=5,rNumber=17..50}] run tag @s add doIt
execute if entity @s[scores={itemLuck=6..,rNumber=12..50}] run tag @s add doIt

#certain skill levels will never go with lower itemLuck
execute if entity @s[tag=doIt,tag=!tryhard,scores={aiSkill=2,itemLuck=..1}] run tag @s remove doIt
execute if entity @s[tag=doIt,tag=!tryhard,scores={aiSkill=3,itemLuck=..2}] run tag @s remove doIt
execute if entity @s[tag=doIt,tag=tryhard,scores={itemLuck=..3}] run tag @s remove doIt

#no items? don't do it
execute unless entity @e[type=armor_stand,tag=itemcontainer,limit=1,sort=nearest,distance=..500] run tag @s remove doIt

execute if entity @s[tag=doIt] unless score @s AIBC_id = @s AIBC_condition run scoreboard players operation @s AIBC_id = @s AIBC_condition

tag @s remove doIt