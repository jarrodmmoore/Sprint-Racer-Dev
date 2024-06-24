#big negative space in an effort to balance the HUD in the middle
execute if score #hudLeftDebt value matches ..62 run data merge entity 00000000-0000-0328-0000-000000000005 {CustomName:'{"text":"\\uF014","italic":false}'}
execute if score #hudLeftDebt value matches 63.. run data merge entity 00000000-0000-0328-0000-000000000005 {CustomName:'{"text":"\\uF014\\uF006","italic":false}'}

#store previous value
scoreboard players operation #hudPrev5 value = #hudLeftDebt value