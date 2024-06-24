#rubber banding only applies while on the the ground and not in a speed boost state
execute if entity @s[scores={speedBoost=..0}] run function sprint_racer:ai/general/movement/movement_scaler/sneaking/standard

#always use speed boost scalers when applicable
execute if entity @s[scores={speedBoost=1..29}] run function sprint_racer:ai/general/movement/movement_scaler/sneaking/gold
execute if entity @s[scores={speedBoost=30..}] run function sprint_racer:ai/general/movement/movement_scaler/sneaking/diamond