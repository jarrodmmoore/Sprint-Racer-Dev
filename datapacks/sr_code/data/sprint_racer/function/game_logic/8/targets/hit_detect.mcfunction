#execute unless entity @e[tag=tatarget,tag=node,distance=..2] run tag @s add targetHit
execute unless entity @e[tag=targetVisual,distance=..1] run tag @s add targetHit

execute if entity @s[tag=targetHit] run function sprint_racer:game_logic/8/targets/burst