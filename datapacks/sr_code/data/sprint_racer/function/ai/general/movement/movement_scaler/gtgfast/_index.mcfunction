#ur 2 slow
execute if entity @s[nbt={OnGround:1b}] run function sprint_racer:ai/general/movement/movement_scaler/gtgfast/ur2slow

#airborne and not boosting, just use normal velocity
execute if entity @s[nbt={OnGround:0b}] run function sprint_racer:ai/general/movement/movement_scaler/normal/standard