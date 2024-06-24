#get proper numbers
scoreboard players operation #getDigit0 value = @s storedTimeMin
scoreboard players operation #getDigit0 value /= #10 value

scoreboard players operation #getDigit1 value = @s storedTimeMin
scoreboard players operation #getDigit1 value %= #10 value

scoreboard players operation #getDigitSec value = @s storedTimeSec

scoreboard players operation #getDigit2 value = @s storedTimeSec
scoreboard players operation #getDigit2 value /= #10 value

scoreboard players operation #getDigit3 value = @s storedTimeSec
scoreboard players operation #getDigit3 value %= #10 value

scoreboard players operation #getDigit4 value = @s storedTimeMsec


#blank when flashing
execute if score #hud5Hz value matches ..1 run scoreboard players set #getDigit0 value -1
execute if score #hud5Hz value matches ..1 run scoreboard players set #getDigit1 value -1
execute if score #hud5Hz value matches ..1 run scoreboard players set #getDigit2 value -1
execute if score #hud5Hz value matches ..1 run scoreboard players set #getDigit3 value -1
execute if score #hud5Hz value matches ..1 run scoreboard players set #getDigit4 value -1
execute if score #hud5Hz value matches ..1 run scoreboard players set #getDigitSec value -1