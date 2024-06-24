tag @e[limit=1,sort=random,tag=activeplayer,tag=playerOrange,tag=!self,tag=!anvilled] add anvTarget
scoreboard players set @e[tag=anvTarget] anvil 0
scoreboard players operation @e[tag=anvTarget] attackerID = @s playerID
scoreboard players set @e[tag=anvTarget] attackTime 150
tag @e[tag=anvTarget] add anvilled
tag @e[tag=anvTarget] remove anvTarget

scoreboard players remove @s repeatCount 1

execute if entity @s[scores={repeatCount=1..}] run function sprint_racer:items/item_tick/elite/anvil_of_injustice_repeat_teams_cyan