#slash + extra KO goal slot
execute if score #hudKOgoalA value matches ..0 run data merge entity 00000000-0000-0328-0000-000000000003 {CustomName:{text:"\uE917\uF001",color:"white",italic:false}}
execute if score #hudKOgoalA value matches 1 run data merge entity 00000000-0000-0328-0000-000000000003 {CustomName:{text:"\uE917\uF001\uE907\uF001",color:"white",italic:false}}
execute if score #hudKOgoalA value matches 2 run data merge entity 00000000-0000-0328-0000-000000000003 {CustomName:{text:"\uE917\uF001\uE908\uF001",color:"white",italic:false}}
execute if score #hudKOgoalA value matches 3 run data merge entity 00000000-0000-0328-0000-000000000003 {CustomName:{text:"\uE917\uF001\uE909\uF001",color:"white",italic:false}}
execute if score #hudKOgoalA value matches 4 run data merge entity 00000000-0000-0328-0000-000000000003 {CustomName:{text:"\uE917\uF001\uE910\uF001",color:"white",italic:false}}
execute if score #hudKOgoalA value matches 5 run data merge entity 00000000-0000-0328-0000-000000000003 {CustomName:{text:"\uE917\uF001\uE911\uF001",color:"white",italic:false}}
execute if score #hudKOgoalA value matches 6 run data merge entity 00000000-0000-0328-0000-000000000003 {CustomName:{text:"\uE917\uF001\uE912\uF001",color:"white",italic:false}}
execute if score #hudKOgoalA value matches 7 run data merge entity 00000000-0000-0328-0000-000000000003 {CustomName:{text:"\uE917\uF001\uE913\uF001",color:"white",italic:false}}
execute if score #hudKOgoalA value matches 8 run data merge entity 00000000-0000-0328-0000-000000000003 {CustomName:{text:"\uE917\uF001\uE914\uF001",color:"white",italic:false}}
execute if score #hudKOgoalA value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000003 {CustomName:{text:"\uE917\uF001\uE915\uF001",color:"white",italic:false}}

#store previous value
scoreboard players operation #hudPrev3 value = #hudKOgoalA value