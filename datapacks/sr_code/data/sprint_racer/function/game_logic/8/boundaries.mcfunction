scoreboard players set @s recDirection 0

#check blocks at y=0 for logic

#red wool means out of bounds, start death timer
execute if block ~ 0 ~ minecraft:red_wool run scoreboard players set @s[scores={hp=1..}] recDirection 10
execute if block ~ 0 ~ minecraft:red_wool run scoreboard players set @s[tag=ai] recDirection 10

#black wool is an instant death
execute if block ~ 0 ~ minecraft:black_wool run scoreboard players set @s[scores={hp=1..}] recDirection 12
execute if block ~ 0 ~ minecraft:black_wool run scoreboard players set @s[tag=ai] recDirection 12


execute if entity @s[scores={recDirection=10}] if entity @e[tag=w,scores={oTimer=0,currentTimeMsec=0}] run scoreboard players remove @s[scores={boundaryTimer=1..}] boundaryTimer 1
execute unless entity @s[scores={recDirection=10}] if entity @e[tag=w,scores={oTimer=0,currentTimeMsec=0}] run scoreboard players add @s[scores={boundaryTimer=..9}] boundaryTimer 1

#out of bounds
scoreboard players set @s[scores={recDirection=10,actionbarState=..7}] actionbarState 7
scoreboard players set @s[scores={recDirection=10,actionbarState=..7}] actionbarState2 5
#execute unless entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,tag=20a] run kill @s[tag=!ai,scores={hp=1..,recDirection=10,boundaryTimer=..0}]
data merge entity @s[tag=ai,scores={hitboxHP=1001..,recDirection=10,boundaryTimer=..0}] {Health:500}

#get killed when super out of bounds
execute if entity @s[tag=!ai,scores={hp=1..,recDirection=12}] unless entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,tag=20a] run function sprint_racer:game_logic/3/boundaries_kill
data merge entity @s[tag=ai,scores={hitboxHP=1001..,recDirection=12}] {Health:500}