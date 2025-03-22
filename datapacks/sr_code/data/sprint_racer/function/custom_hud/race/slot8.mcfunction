#big negative space in an effort to balance the HUD in the middle
execute if score #hudRightDebt value matches ..118 run data merge entity 00000000-0000-0328-0000-000000000008 {CustomName:{text:"\uF010",italic:false}}
execute if score #hudRightDebt value matches 119.. run data merge entity 00000000-0000-0328-0000-000000000008 {CustomName:{text:"\uF010\uF006",italic:false}}

#store previous value
scoreboard players operation #hudPrev8 value = #hudRightDebt value