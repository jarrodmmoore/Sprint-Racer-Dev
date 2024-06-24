#AI WITH SKILL LEVEL 1
#Can't be sped up by rubberbanding
#Can be slowed down when players are behind them

function sprint_racer:ai/race/rubberbanding/find_previous_ranked_player

#compare ONLY to players on the same lap as the AI
scoreboard players set @s math 0
scoreboard players operation @s math = @e[limit=1,tag=previousPlayer] lap
scoreboard players operation @s math -= @s lap
execute if entity @s[scores={math=..-1}] if entity @e[tag=previousPlayer] run scoreboard players set @s aiRubberBand -2
execute if entity @s[scores={math=1..}] run tag @e[tag=previousPlayer] remove previousPlayer
execute if entity @s[scores={math=..-1}] run tag @e[tag=previousPlayer] remove previousPlayer

execute if entity @e[tag=previousPlayer] run scoreboard players set @s aiRubberBand -2
execute if entity @e[tag=previousPlayer] if entity @e[tag=previousPlayer,distance=..30] run scoreboard players set @s aiRubberBand -1
execute if entity @e[tag=previousPlayer] if entity @e[tag=previousPlayer,distance=..15] run scoreboard players set @s aiRubberBand 0

execute unless entity @e[tag=previousPlayer] run scoreboard players set @s aiRubberBand 0
execute unless entity @s[scores={racePosDisplay=1..12}] run scoreboard players set @s aiRubberBand 0