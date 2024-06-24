#show total number of players in the battle
execute if score #hudAliveAtStart value matches ..0 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:'{"text":"\\uE935\\uF001\\uE925\\uF001\\uE904\\uF001","italic":false}'}
execute if score #hudAliveAtStart value matches 1 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:'{"text":"\\uE935\\uF001\\uE926\\uF001\\uE904\\uF001","italic":false}'}
execute if score #hudAliveAtStart value matches 2 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:'{"text":"\\uE935\\uF001\\uE927\\uF001\\uE904\\uF001","italic":false}'}
execute if score #hudAliveAtStart value matches 3 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:'{"text":"\\uE935\\uF001\\uE928\\uF001\\uE904\\uF001","italic":false}'}
execute if score #hudAliveAtStart value matches 4 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:'{"text":"\\uE935\\uF001\\uE929\\uF001\\uE904\\uF001","italic":false}'}
execute if score #hudAliveAtStart value matches 5 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:'{"text":"\\uE935\\uF001\\uE930\\uF001\\uE904\\uF001","italic":false}'}
execute if score #hudAliveAtStart value matches 6 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:'{"text":"\\uE935\\uF001\\uE931\\uF001\\uE904\\uF001","italic":false}'}
execute if score #hudAliveAtStart value matches 7 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:'{"text":"\\uE935\\uF001\\uE932\\uF001\\uE904\\uF001","italic":false}'}
execute if score #hudAliveAtStart value matches 8 run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:'{"text":"\\uE935\\uF001\\uE933\\uF001\\uE904\\uF001","italic":false}'}
execute if score #hudAliveAtStart value matches 9.. run data merge entity 00000000-0000-0328-0000-000000000007 {CustomName:'{"text":"\\uE935\\uF001\\uE934\\uF001\\uE904\\uF001","italic":false}'}

#remember previous value
scoreboard players operation #hudPrev7 value = #hudAliveAtStart value