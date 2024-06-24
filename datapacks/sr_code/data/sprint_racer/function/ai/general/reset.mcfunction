tag @e[tag=imgoinghere] remove imgoinghere

execute if entity @s[scores={check=0}] run tag @e[tag=node,tag=finishline,scores={nodeState=1..},tag=posCalc] add imgoinghere

execute if entity @s[scores={check=1}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=1},tag=posCalc] add imgoinghere
execute if entity @s[scores={check=2}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=2},tag=posCalc] add imgoinghere
execute if entity @s[scores={check=3}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=3},tag=posCalc] add imgoinghere
execute if entity @s[scores={check=4}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=4},tag=posCalc] add imgoinghere
execute if entity @s[scores={check=5}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=5},tag=posCalc] add imgoinghere

execute if entity @s[scores={check=6}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=6},tag=posCalc] add imgoinghere
execute if entity @s[scores={check=7}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=7},tag=posCalc] add imgoinghere
execute if entity @s[scores={check=8}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=8},tag=posCalc] add imgoinghere
execute if entity @s[scores={check=9}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=9},tag=posCalc] add imgoinghere
execute if entity @s[scores={check=10}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=10},tag=posCalc] add imgoinghere

execute if entity @s[scores={check=11}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=11},tag=posCalc] add imgoinghere
execute if entity @s[scores={check=12}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=12},tag=posCalc] add imgoinghere
execute if entity @s[scores={check=13}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=13},tag=posCalc] add imgoinghere
execute if entity @s[scores={check=14}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=14},tag=posCalc] add imgoinghere
execute if entity @s[scores={check=15}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=15},tag=posCalc] add imgoinghere

execute if entity @s[scores={check=16}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=16},tag=posCalc] add imgoinghere
execute if entity @s[scores={check=17}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=17},tag=posCalc] add imgoinghere
execute if entity @s[scores={check=18}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=18},tag=posCalc] add imgoinghere
execute if entity @s[scores={check=19}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=19},tag=posCalc] add imgoinghere
execute if entity @s[scores={check=20}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=20},tag=posCalc] add imgoinghere

execute if entity @s[scores={check=21}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=21},tag=posCalc] add imgoinghere
execute if entity @s[scores={check=22}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=22},tag=posCalc] add imgoinghere
execute if entity @s[scores={check=23}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=23},tag=posCalc] add imgoinghere
execute if entity @s[scores={check=24}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=24},tag=posCalc] add imgoinghere
execute if entity @s[scores={check=25}] run tag @e[tag=node,tag=checkpoint,scores={nodeState=1..,check=25},tag=posCalc] add imgoinghere

tag @s add aiDontFace
execute unless entity @e[tag=imgoinghere] run function sprint_racer:ai/general/die
execute if entity @e[tag=imgoinghere] run function sprint_racer:ai/general/reset_successful
scoreboard players set @s aiStuckTime 0
scoreboard players set @s aiStuckTime2 0

tag @e[tag=imgoinghere] remove imgoinghere