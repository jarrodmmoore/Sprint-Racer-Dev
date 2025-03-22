tellraw @a ["",{text:" "}]
tellraw @a ["",{translate:"sr.mid_game_vote.restart",color:"yellow",bold:true}]
tellraw @a ["",{translate:"sr.mid_game_vote.vote_was_passed",color:"yellow",italic:true}]
tellraw @a ["",{text:" "}]

execute as @a at @s run playsound minecraft:entity.ender_dragon.hurt master @s ~ 1000000 ~ 1000000 .5

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=1}] run function sprint_racer:game_logic/1/_initialize
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=3}] run function sprint_racer:game_logic/3/_initialize