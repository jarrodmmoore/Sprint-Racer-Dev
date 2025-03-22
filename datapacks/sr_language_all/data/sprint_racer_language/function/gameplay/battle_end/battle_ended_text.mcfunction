title @a subtitle [""]
title @a title ["",{text:"\uE043",color:"#FFCCCC",italic:true}]

scoreboard players set @s lap 999999
scoreboard players set @s check 0

#we played this track. +1 popularity in the search algorithm
scoreboard players add @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,tag=chosenTrack] bSortPopular 1