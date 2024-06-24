#rubber banding only applies while on the the ground and not in a speed boost state
execute if entity @s[nbt={OnGround:1b},scores={aiRubberBand=0,speedBoost=..0}] run function sprint_racer:ai/general/movement/movement_scaler/normal/standard
execute if entity @s[nbt={OnGround:1b},scores={aiRubberBand=-1,speedBoost=..0}] run function sprint_racer:ai/general/movement/movement_scaler/normal/rubberband_slow
execute if entity @s[nbt={OnGround:1b},scores={aiRubberBand=..-2,speedBoost=..0}] run function sprint_racer:ai/general/movement/movement_scaler/normal/rubberband_slow2
execute if entity @s[nbt={OnGround:1b},scores={aiRubberBand=1,speedBoost=..0}] run function sprint_racer:ai/general/movement/movement_scaler/normal/rubberband_fast
execute if entity @s[nbt={OnGround:1b},scores={aiRubberBand=2..,speedBoost=..0}] run function sprint_racer:ai/general/movement/movement_scaler/normal/rubberband_fast2

#airborne, just use normal velocity
execute if entity @s[nbt={OnGround:0b}] run function sprint_racer:ai/general/movement/movement_scaler/normal/standard

#always use speed boost scalers when applicable
execute if entity @s[nbt={OnGround:1b},scores={speedBoost=1..29}] run function sprint_racer:ai/general/movement/movement_scaler/normal/gold
execute if entity @s[nbt={OnGround:1b},scores={speedBoost=30..}] run function sprint_racer:ai/general/movement/movement_scaler/normal/diamond