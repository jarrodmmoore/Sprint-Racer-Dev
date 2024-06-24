tag @e[tag=aiTarget7,tag=secondaryTarget] remove secondaryTarget
tag @e[tag=aiTarget7,scores={invisibility=1..}] remove aiTarget7

tag @s add selfCT
execute if entity @s[tag=!playerOrange,tag=!playerCyan] unless entity @e[tag=aiTarget7] run tag @e[limit=1,tag=activeplayer,tag=!selfCT,distance=..10,sort=nearest,scores={invisibility=..0}] add chasetarget
execute if entity @s[tag=playerOrange] unless entity @e[tag=aiTarget7] run tag @e[limit=1,tag=activeplayer,tag=playerCyan,tag=!selfCT,distance=..10,sort=nearest,scores={invisibility=..0}] add chasetarget
execute if entity @s[tag=playerCyan] unless entity @e[tag=aiTarget7] run tag @e[limit=1,tag=activeplayer,tag=playerOrange,tag=!selfCT,distance=..10,sort=nearest,scores={invisibility=..0}] add chasetarget

tag @e[tag=chasetarget] add aiTarget7
tag @e[tag=chasetarget] remove chasetarget

tag @e[tag=aiTarget7] add aiTargetG
execute if entity @s[scores={aiActCCooldown=..0}] at @s run function sprint_racer:ai/general/behaviors/evade_player/logic_main
tag @e[tag=aiTargetG] remove aiTargetG
tag @s remove selfCT

#no target found? go back to following breadcrumbs
execute unless entity @e[tag=aiTarget7] run function sprint_racer:ai/general/behaviors/follow_breadcrumb/create_new_target/target_nearest_instead