#big negative space in an effort to balance the HUD in the middle
execute if score #hudRightDebt value matches ..97 run data merge entity 00000000-0000-0328-0000-000000000008 {CustomName:'{"text":"\\uF015","italic":false}'}
execute if score #hudRightDebt value matches 98.. run data merge entity 00000000-0000-0328-0000-000000000008 {CustomName:'{"text":"\\uF015\\uF006","italic":false}'}

#store previous value
scoreboard players operation #hudPrev8 value = #hudRightDebt value