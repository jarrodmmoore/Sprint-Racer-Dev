#clock + possible extra digit
#(using a yellow timer for time attack)
execute if score #hudTimeMin value matches ..9 run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:{text:"\uE903\uF001\uE938\uF001",italic:false}}
execute if score #hudTimeMin value matches 10.. if score #getDigit0 value matches ..-1 run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:{text:"\uE903\uF001\uE938\uF001\uE920\uF001",italic:false}}
execute if score #hudTimeMin value matches 10.. if score #getDigit0 value matches 0 run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:{text:"\uE903\uF001\uE938\uF001\uE906\uF001",italic:false}}
execute if score #hudTimeMin value matches 10.. if score #getDigit0 value matches 1 run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:{text:"\uE903\uF001\uE938\uF001\uE907\uF001",italic:false}}
execute if score #hudTimeMin value matches 10.. if score #getDigit0 value matches 2 run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:{text:"\uE903\uF001\uE938\uF001\uE908\uF001",italic:false}}
execute if score #hudTimeMin value matches 10.. if score #getDigit0 value matches 3 run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:{text:"\uE903\uF001\uE938\uF001\uE909\uF001",italic:false}}
execute if score #hudTimeMin value matches 10.. if score #getDigit0 value matches 4 run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:{text:"\uE903\uF001\uE938\uF001\uE910\uF001",italic:false}}
execute if score #hudTimeMin value matches 10.. if score #getDigit0 value matches 5 run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:{text:"\uE903\uF001\uE938\uF001\uE911\uF001",italic:false}}
execute if score #hudTimeMin value matches 10.. if score #getDigit0 value matches 6 run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:{text:"\uE903\uF001\uE938\uF001\uE912\uF001",italic:false}}
execute if score #hudTimeMin value matches 10.. if score #getDigit0 value matches 7 run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:{text:"\uE903\uF001\uE938\uF001\uE913\uF001",italic:false}}
execute if score #hudTimeMin value matches 10.. if score #getDigit0 value matches 8 run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:{text:"\uE903\uF001\uE938\uF001\uE914\uF001",italic:false}}
execute if score #hudTimeMin value matches 10.. if score #getDigit0 value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000009 {CustomName:{text:"\uE903\uF001\uE938\uF001\uE915\uF001",italic:false}}

#store previous value
scoreboard players operation #hudPrev9 value = #getDigit0 value