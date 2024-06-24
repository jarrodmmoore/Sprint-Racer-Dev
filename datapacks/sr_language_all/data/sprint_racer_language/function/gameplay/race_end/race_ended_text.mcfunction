title @a subtitle [""]
title @a title ["",{"text":"\uE043","color":"#CCCCFF","italic":true}]

scoreboard players set @s lap 999999
scoreboard players set @s check 0

#we played this track. +1 popularity in the search algorithm
scoreboard players add @e[type=armor_stand,tag=random,tag=chosenTrack] rSortPopular 1