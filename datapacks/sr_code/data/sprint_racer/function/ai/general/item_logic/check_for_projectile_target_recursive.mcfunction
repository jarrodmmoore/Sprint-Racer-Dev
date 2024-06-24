#scoreboard players add @e[tag=self,limit=1,sort=nearest] aiTDistance 1
#execute at @s facing entity @e[tag=projectTarget] feet run tp @s ^ ^ ^1
##execute at @s unless block ~ ~ ~ #sprint_racer:missile_do_not_explode unless entity @e[tag=self,scores={aiTDistance=..70}] run kill @s
#execute at @s unless block ~ ~ ~ air unless entity @e[tag=self,scores={aiTDistance=..70}] run kill @s
#execute at @s if entity @e[tag=projectTarget,distance=..2] run tag @s add foundsomeone

#execute unless entity @s[tag=foundsomeone] at @s run function sprint_racer:ai/general/item_logic/check_for_projectile_target_recursive

scoreboard players add #aiTDistance value 1
scoreboard players remove #LOS_range value 1
#found the target?
execute if entity @e[tag=projectTarget,distance=..2] run scoreboard players set #good2throw value 1
#keep looking. stop if we run into a solid block we can't shoot through
execute if score #LOS_range value matches 1.. if score #good2throw value matches 0 positioned ^ ^ ^1 if block ~ ~ ~ #sprint_racer:missile_do_not_explode run function sprint_racer:ai/general/item_logic/check_for_projectile_target_recursive