tag @s add self

tag @s remove good2throw
scoreboard players set #good2throw value 0

#keep track of how far away the target is
scoreboard players set #aiTDistance value 0

#higher skill AI have bigger areas of vision
#AI with skill level 3 can even shoot behind themselves-- scary!
execute if entity @s[scores={aiSkill=..1}] at @s facing entity @e[limit=1,sort=nearest,tag=myCHILDtarget] feet rotated ~ 0 positioned ^ ^ ^30 run tag @e[limit=1,sort=random,distance=..25,tag=activeplayer,tag=!self] add projectTarget
execute if entity @s[scores={aiSkill=2}] at @s facing entity @e[limit=1,sort=nearest,tag=myCHILDtarget] feet rotated ~ 0 positioned ^ ^ ^30 run tag @e[limit=1,sort=random,distance=..30,tag=activeplayer,tag=!self] add projectTarget
execute if entity @s[scores={aiSkill=3..}] at @s facing entity @e[limit=1,sort=nearest,tag=myCHILDtarget] feet rotated ~ 0 positioned ^ ^ ^22 run tag @e[limit=1,sort=random,distance=..38,tag=activeplayer,tag=!self] add projectTarget

#DEBUG
#execute unless entity @e[tag=projectTarget] run tag @e[limit=1,sort=nearest,tag=!self,tag=activeplayer] add projectTarget
#execute as @e[tag=projectTarget] at @s run say im the target lol

#old, dumb algorithm. always tested true even if walls were in the way. also was needlessly laggy
#protip: get 8 hours of sleep before coding
#execute if entity @e[tag=projectTarget] at @s run summon marker ~ ~ ~ {Tags:["projectiletest"]}
#execute as @e[tag=projectiletest,limit=1,type=marker] at @s run function sprint_racer:ai/general/item_logic/check_for_projectile_target_recursive
#execute if entity @e[tag=projectiletest,tag=foundsomeone] run tag @s add good2throw
#kill @e[tag=projectiletest]

scoreboard players set #LOS_range value 61
execute if entity @e[tag=projectTarget] facing entity @e[tag=projectTarget] eyes run function sprint_racer:ai/general/item_logic/check_for_projectile_target_recursive
execute if score #good2throw value matches 1 run tag @s add good2throw

tag @s remove self