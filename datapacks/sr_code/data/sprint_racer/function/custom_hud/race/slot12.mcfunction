#minute digit + colon
execute if score #getDigit4 value matches ..-1 run data merge entity 00000000-0000-0328-0000-00000000000c {CustomName:'{"text":"\\uE920\\uF001\\uE904\\uF001","italic":false}'}
execute if score #getDigit4 value matches 0 run data merge entity 00000000-0000-0328-0000-00000000000c {CustomName:'{"text":"\\uE906\\uF001\\uE904\\uF001","italic":false}'}
execute if score #getDigit4 value matches 1 run data merge entity 00000000-0000-0328-0000-00000000000c {CustomName:'{"text":"\\uE907\\uF001\\uE904\\uF001","italic":false}'}
execute if score #getDigit4 value matches 2 run data merge entity 00000000-0000-0328-0000-00000000000c {CustomName:'{"text":"\\uE908\\uF001\\uE904\\uF001","italic":false}'}
execute if score #getDigit4 value matches 3 run data merge entity 00000000-0000-0328-0000-00000000000c {CustomName:'{"text":"\\uE909\\uF001\\uE904\\uF001","italic":false}'}
execute if score #getDigit4 value matches 4 run data merge entity 00000000-0000-0328-0000-00000000000c {CustomName:'{"text":"\\uE910\\uF001\\uE904\\uF001","italic":false}'}
execute if score #getDigit4 value matches 5 run data merge entity 00000000-0000-0328-0000-00000000000c {CustomName:'{"text":"\\uE911\\uF001\\uE904\\uF001","italic":false}'}
execute if score #getDigit4 value matches 6 run data merge entity 00000000-0000-0328-0000-00000000000c {CustomName:'{"text":"\\uE912\\uF001\\uE904\\uF001","italic":false}'}
execute if score #getDigit4 value matches 7 run data merge entity 00000000-0000-0328-0000-00000000000c {CustomName:'{"text":"\\uE913\\uF001\\uE904\\uF001","italic":false}'}
execute if score #getDigit4 value matches 8 run data merge entity 00000000-0000-0328-0000-00000000000c {CustomName:'{"text":"\\uE914\\uF001\\uE904\\uF001","italic":false}'}
execute if score #getDigit4 value matches 9.. run data merge entity 00000000-0000-0328-0000-00000000000c {CustomName:'{"text":"\\uE915\\uF001\\uE904\\uF001","italic":false}'}

#store previous value
scoreboard players operation #hudPrev12 value = #getDigit4 value