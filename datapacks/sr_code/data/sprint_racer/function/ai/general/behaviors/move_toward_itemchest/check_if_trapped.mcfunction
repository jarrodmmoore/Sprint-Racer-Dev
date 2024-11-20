execute if entity @e[tag=newTarget,type=armor_stand,scores={itemBlockState=10}] run tag @s add itsatrap

scoreboard players set @s[tag=itsatrap] rNumber 0
scoreboard players operation @s[tag=itsatrap] rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..50}] rNumber

#AI with higher skill are more likely to avoid the trap
execute if entity @s[tag=itsatrap,scores={aiSkill=..1,rNumber=42..50}] run tag @s add time2stop
execute if entity @s[tag=itsatrap,scores={aiSkill=2,rNumber=25..50}] run tag @s add time2stop
execute if entity @s[tag=itsatrap,scores={aiSkill=3..,rNumber=4..50}] run tag @s add time2stop
execute if entity @s[tag=itsatrap,tag=tryhard,scores={rNumber=2..50}] run tag @s add time2stop

#not related to trapped chests, but...
#we also need to check line of sight!
scoreboard players set #checkLOS value 0
scoreboard players set #recursions value 21
execute at @s positioned ~ ~1.4 ~ facing entity @e[tag=newTarget,type=armor_stand,limit=1] eyes run function sprint_racer:ai/general/behaviors/move_toward_itemchest/check_los_recursive
execute if score #checkLOS value matches 0 run tag @s add time2stop

tag @s remove itsatrap