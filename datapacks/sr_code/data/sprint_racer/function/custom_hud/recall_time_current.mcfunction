scoreboard players operation #getDigit0 value = #hudTimeMin value
scoreboard players operation #getDigit0 value /= #10 value

scoreboard players operation #getDigit1 value = #hudTimeMin value
scoreboard players operation #getDigit1 value %= #10 value

scoreboard players operation #getDigit2 value = #hudTimeSec10 value
scoreboard players operation #getDigit3 value = #hudTimeSec value

scoreboard players operation #getDigit4 value = #hudTimeMsec value

scoreboard players operation #getDigitSec value = #currentTimeSec value