#2 digits for seconds + colon

#flash split time (in this case we just assume the second digit is also flashing)
execute if score #getDigit2 value matches ..-1 run data merge entity 00000000-0000-0328-0000-00000000000b {CustomName:'{"text":"\\uE920\\uF001\\uE920\\uF001\\uE921\\uF001","italic":false}'}

#use function tree when not flashing
execute if score #getDigit2 value matches 0 run function sprint_racer:custom_hud/race/slot11_0
execute if score #getDigit2 value matches 1 run function sprint_racer:custom_hud/race/slot11_1
execute if score #getDigit2 value matches 2 run function sprint_racer:custom_hud/race/slot11_2
execute if score #getDigit2 value matches 3 run function sprint_racer:custom_hud/race/slot11_3
execute if score #getDigit2 value matches 4 run function sprint_racer:custom_hud/race/slot11_4
execute if score #getDigit2 value matches 5.. run function sprint_racer:custom_hud/race/slot11_5

#store previous value
scoreboard players operation #hudPrev11 value = #getDigitSec value