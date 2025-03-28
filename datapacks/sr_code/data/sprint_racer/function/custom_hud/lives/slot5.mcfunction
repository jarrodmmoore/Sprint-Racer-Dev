#big negative space in an effort to balance the HUD in the middle
execute if score #hudLeftDebt value matches ..91 run data merge entity 00000000-0000-0328-0000-000000000005 {CustomName:{text:"\uF016",color:"white",italic:false}}
execute if score #hudLeftDebt value matches 92..105 run data merge entity 00000000-0000-0328-0000-000000000005 {CustomName:{text:"\uF016\uF006",color:"white",italic:false}}
execute if score #hudLeftDebt value matches 106.. run data merge entity 00000000-0000-0328-0000-000000000005 {CustomName:{text:"\uF016\uF006\uF006",color:"white",italic:false}}

#store previous value
scoreboard players operation #hudPrev5 value = #hudLeftDebt value