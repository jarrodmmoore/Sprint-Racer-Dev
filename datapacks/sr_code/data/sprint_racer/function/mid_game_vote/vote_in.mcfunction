scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] mgVoteCount 1
execute as @a at @s run playsound minecraft:block.note_block.snare master @s ~ 100000 ~ 100000 .8
tellraw @s[tag=!minChat] ["",{"text":"Voted.","color":"green","italic":true}]
scoreboard players reset @s mgVoteTrigger