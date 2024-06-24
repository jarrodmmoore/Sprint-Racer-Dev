#lives
execute if score @s playerLives matches ..0 run data merge entity 00000000-0000-0328-0000-00000000000b {CustomName:'{"text":"\\uE906\\uF001","italic":false}'}
execute if score @s playerLives matches 1 run data merge entity 00000000-0000-0328-0000-00000000000b {CustomName:'{"text":"\\uE907\\uF001","italic":false}'}
execute if score @s playerLives matches 2 run data merge entity 00000000-0000-0328-0000-00000000000b {CustomName:'{"text":"\\uE908\\uF001","italic":false}'}
execute if score @s playerLives matches 3 run data merge entity 00000000-0000-0328-0000-00000000000b {CustomName:'{"text":"\\uE909\\uF001","italic":false}'}
execute if score @s playerLives matches 4 run data merge entity 00000000-0000-0328-0000-00000000000b {CustomName:'{"text":"\\uE910\\uF001","italic":false}'}
execute if score @s playerLives matches 5 run data merge entity 00000000-0000-0328-0000-00000000000b {CustomName:'{"text":"\\uE911\\uF001","italic":false}'}
execute if score @s playerLives matches 6 run data merge entity 00000000-0000-0328-0000-00000000000b {CustomName:'{"text":"\\uE912\\uF001","italic":false}'}
execute if score @s playerLives matches 7 run data merge entity 00000000-0000-0328-0000-00000000000b {CustomName:'{"text":"\\uE913\\uF001","italic":false}'}
execute if score @s playerLives matches 8 run data merge entity 00000000-0000-0328-0000-00000000000b {CustomName:'{"text":"\\uE914\\uF001","italic":false}'}
execute if score @s playerLives matches 9.. run data merge entity 00000000-0000-0328-0000-00000000000b {CustomName:'{"text":"\\uE915\\uF001","italic":false}'}

#always update
scoreboard players set #hudPrev11 value -1