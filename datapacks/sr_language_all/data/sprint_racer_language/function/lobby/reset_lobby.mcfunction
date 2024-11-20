#(2021) ok so this message is spammy and I'm removing it
#tellraw @a[tag=!minChat] ["",{"text":"\uE075 Lobby has been restarted!","color":"red","bold":true}]

#so instead, let's do a meme easter egg
scoreboard players operation global math = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..50}] rNumber
scoreboard players operation global math2 = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..50}] rNumber
execute if score global math matches 1 if score global math2 matches 1 as @a at @s run playsound minecraft:sr_horns/honk2 master @s ~ ~ ~ 1 1.2
execute if score global math matches 1 if score global math2 matches 2 as @a at @s run playsound minecraft:sr_horns/honk5 master @s ~ ~ ~ 1 0.9

#scoreboard players reset @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] teamPoints
#scoreboard players reset * teamPointsShow
#scoreboard players reset * teamPoints
#scoreboard players reset * points
#scoreboard objectives remove dummyPoints
#scoreboard objectives add dummyPoints dummy

#YOUR FACE IS BOTHERING MY FACE