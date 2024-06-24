#KO goal slot + right end
execute if score #hudKOgoalB value matches ..0 run data merge entity 00000000-0000-0328-0000-000000000004 {CustomName:'{"text":"\\uE906\\uF001\\uE904\\uF001","italic":false}'}
execute if score #hudKOgoalB value matches 1 run data merge entity 00000000-0000-0328-0000-000000000004 {CustomName:'{"text":"\\uE907\\uF001\\uE904\\uF001","italic":false}'}
execute if score #hudKOgoalB value matches 2 run data merge entity 00000000-0000-0328-0000-000000000004 {CustomName:'{"text":"\\uE908\\uF001\\uE904\\uF001","italic":false}'}
execute if score #hudKOgoalB value matches 3 run data merge entity 00000000-0000-0328-0000-000000000004 {CustomName:'{"text":"\\uE909\\uF001\\uE904\\uF001","italic":false}'}
execute if score #hudKOgoalB value matches 4 run data merge entity 00000000-0000-0328-0000-000000000004 {CustomName:'{"text":"\\uE910\\uF001\\uE904\\uF001","italic":false}'}
execute if score #hudKOgoalB value matches 5 run data merge entity 00000000-0000-0328-0000-000000000004 {CustomName:'{"text":"\\uE911\\uF001\\uE904\\uF001","italic":false}'}
execute if score #hudKOgoalB value matches 6 run data merge entity 00000000-0000-0328-0000-000000000004 {CustomName:'{"text":"\\uE912\\uF001\\uE904\\uF001","italic":false}'}
execute if score #hudKOgoalB value matches 7 run data merge entity 00000000-0000-0328-0000-000000000004 {CustomName:'{"text":"\\uE913\\uF001\\uE904\\uF001","italic":false}'}
execute if score #hudKOgoalB value matches 8 run data merge entity 00000000-0000-0328-0000-000000000004 {CustomName:'{"text":"\\uE914\\uF001\\uE904\\uF001","italic":false}'}
execute if score #hudKOgoalB value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000004 {CustomName:'{"text":"\\uE915\\uF001\\uE904\\uF001","italic":false}'}

#store previous value
scoreboard players operation #hudPrev4 value = #hudKOgoalB value