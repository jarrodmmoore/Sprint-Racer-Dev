#gray wool = missed checkpoint, reset self
#black wool = out of bounds, reset self
execute if entity @s[scores={recDirection=11..12}] run function sprint_racer:ai/general/reset