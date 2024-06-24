#check if the node is active
tag @e[tag=tReady,type=marker] remove tReady
tag @e[tag=node,type=marker,tag=tatarget,scores={targetData=..999}] add tReady

#if not, make it spawn one
execute as @e[tag=node,type=marker,tag=tatarget,tag=!tReady,scores={nodeState=1..}] at @s run function sprint_racer:game_logic/8/targets/target_spawn

#kill any invalid targets from previous rounds
tag @e[tag=tValid,type=magma_cube] remove tValid
tag @e[tag=taTargetEnt,type=magma_cube,scores={targetData=..999}] add tValid
kill @e[type=magma_cube,tag=taTargetEnt,tag=!tValid]
#execute as @e[type=slime,tag=taTargetEnt,tag=!tValid] at @s run tp @s ~ -200 ~
#execute as @e[type=slime,tag=taTargetEnt,tag=!tValid] run tag @s remove taTargetEnt

#keep the entities alive
#execute as @e[tag=taTargetEnt,type=falling_block] run data merge entity @s {Time:1}