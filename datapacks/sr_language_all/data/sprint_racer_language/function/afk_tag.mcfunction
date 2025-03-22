execute if loaded ~ ~ ~ run summon armor_stand ~ ~2.2 ~ {CustomName:{translate:"sr.idle",color:"white",bold:true},CustomNameVisible:1b,Marker:1b,Invulnerable:1b,Invisible:1b,Tags:["setlife"]}
scoreboard players set @e[tag=setlife] lifespan 2
tag @e[tag=setlife] remove setlife

execute if entity @s[tag=forcespectate] run tag @s remove afk

title @s[scores={subtitleDelay=..0}] subtitle ["",{translate:"sr.you_are_idle",color:"white",bold:true}]
title @s[scores={subtitleDelay=..0}] title [""]