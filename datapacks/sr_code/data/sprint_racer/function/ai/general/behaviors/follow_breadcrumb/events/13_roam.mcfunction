function sprint_racer:ai/general/battle_get_unstuck_roam

execute if entity @s[scores={AIBC_condition=..-1}] run scoreboard players set @s roamLookTime 9999999
execute if entity @s[scores={AIBC_condition=1..}] run scoreboard players operation @s roamLookTime = @s AIBC_condition
scoreboard players set #math value 10
execute if entity @s[scores={AIBC_condition=1..}] run scoreboard players operation @s roamLookTime *= #10 value