tag @s remove afk
scoreboard players set @s afkTime 0

execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1..3}] run tellraw @s[scores={subtitleDelay=..0}] ["",{"translate":"sr.no_longer_idle","color":"aqua","italic":true}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1..3}] run tellraw @s ["",{"translate":"sr.no_longer_idle","color":"aqua"}]

#misc... don't edit
tag @s remove readyup
#if the lobby is already in "ready" mode, newly joined players are declared ready by default
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={readyState=1..}] run tag @s add readyup

function sprint_racer:give_ids2

title @s subtitle [""]
title @s title [""]