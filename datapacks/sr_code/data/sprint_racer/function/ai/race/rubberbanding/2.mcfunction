#AI WITH SKILL LEVEL 2
#Can be slowed down when players are behind them
#Can be sped up when players are ahead of them them (priority)

function sprint_racer:ai/race/rubberbanding/find_next_ranked_player
function sprint_racer:ai/race/rubberbanding/find_previous_ranked_player


#compare ONLY to players on the same lap as the AI
scoreboard players set @s math 0
scoreboard players operation @s math = @e[limit=1,tag=previousPlayer] lap
scoreboard players operation @s math -= @s lap
execute if entity @s[scores={math=..-1}] if entity @e[tag=previousPlayer] run scoreboard players set @s aiRubberBand -1
execute if entity @s[scores={math=1..}] run tag @e[tag=previousPlayer] remove previousPlayer
execute if entity @s[scores={math=..-1}] run tag @e[tag=previousPlayer] remove previousPlayer

scoreboard players set @s math 0
scoreboard players operation @s math = @e[limit=1,tag=nextPlayer] lap
scoreboard players operation @s math -= @s lap
execute if entity @s[scores={math=1..}] if entity @e[tag=nextPlayer] run scoreboard players set @s aiRubberBand 1
execute if entity @s[scores={math=1..}] run tag @e[tag=nextPlayer] remove nextPlayer
execute if entity @s[scores={math=..-1}] run tag @e[tag=nextPlayer] remove nextPlayer


execute if entity @e[tag=previousPlayer] run scoreboard players set @s aiRubberBand 0
execute if entity @e[tag=nextPlayer] run scoreboard players set @s aiRubberBand 0

execute if entity @e[tag=previousPlayer] unless entity @e[tag=previousPlayer,distance=..24] run scoreboard players set @s aiRubberBand -1
execute if entity @e[tag=nextPlayer] unless entity @e[tag=nextPlayer,distance=..26] run scoreboard players set @s aiRubberBand 1

execute if entity @s[scores={racePosDisplay=13..}] run scoreboard players set @s aiRubberBand 1

#don't rubberband at all if there's a human player close by
execute unless score @s aiRubberBand matches 0 at @s if entity @a[tag=playing,gamemode=adventure,distance=..10] run scoreboard players set @s aiRubberBand 0