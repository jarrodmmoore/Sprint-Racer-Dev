#check if the node is active
tag @e[tag=cReady,type=marker] remove cReady
tag @e[tag=node,type=marker,tag=itemchest,scores={itemBlockState=..1999}] add cReady

#if not, make it spawn one
execute as @e[tag=node,tag=itemchest,type=marker,tag=!cReady,scores={nodeState=1..}] at @s run scoreboard players set @s itemBlockState 10

#kill any invalid chests from previous rounds
tag @e[tag=cValid] remove cValid
tag @e[tag=itemcontainer,scores={itemBlockState=..999}] add cValid
kill @e[tag=itemcontainer,tag=!cValid]