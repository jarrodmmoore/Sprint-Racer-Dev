function sprint_racer:levels/highlight_stadium/map

execute as @a[tag=playing,gamemode=adventure] at @s if block ~ ~-1 ~ grass_block run effect give @s slowness 1 1

#optimal racing lines for skilled AI
execute as @e[tag=ai,scores={aiSkill=3..,check=..0}] run scoreboard players set @s aiSpreadBias 3
execute as @e[tag=ai,scores={aiSkill=3..,check=1}] run scoreboard players set @s aiSpreadBias 7
execute as @e[tag=ai,scores={aiSkill=3..,check=2..}] run scoreboard players set @s aiSpreadBias 3

effect give @a night_vision 15 1 true