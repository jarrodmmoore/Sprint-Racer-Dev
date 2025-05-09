#reset timer
scoreboard players set #airshipCannon value 0

#do nothing in Time Attack mode
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1}] run return 0
#=====

#shoot a fireball out of 1 of the 3 cannons
execute store result score #test value run random value 1..9
execute if score #test value matches 1 positioned 8363 80 -9024 positioned ~ ~.2 ~.5 run summon fireball ~ ~ ~ {Tags:["setBall"],Time:0,Motion:[0.1d,0.0d,0.0d]}
execute if score #test value matches 2 positioned 8363 80 -9024 positioned ~ ~.2 ~.5 run summon fireball ~ ~ ~ {Tags:["setBall"],Time:0,Motion:[0.1d,0.0d,0.003d]}
execute if score #test value matches 3 positioned 8363 80 -9024 positioned ~ ~.2 ~.5 run summon fireball ~ ~ ~ {Tags:["setBall"],Time:0,Motion:[0.1d,0.0d,-0.003d]}

execute if score #test value matches 4 positioned 8363 80 -9021 positioned ~ ~.2 ~.5 run summon fireball ~ ~ ~ {Tags:["setBall"],Time:0,Motion:[0.1d,0.0d,0.0d]}
execute if score #test value matches 5 positioned 8363 80 -9021 positioned ~ ~.2 ~.5 run summon fireball ~ ~ ~ {Tags:["setBall"],Time:0,Motion:[0.1d,0.0d,0.003d]}
execute if score #test value matches 6 positioned 8363 80 -9021 positioned ~ ~.2 ~.5 run summon fireball ~ ~ ~ {Tags:["setBall"],Time:0,Motion:[0.1d,0.0d,-0.003d]}

execute if score #test value matches 7 positioned 8363 80 -9018 positioned ~ ~.2 ~.5 run summon fireball ~ ~ ~ {Tags:["setBall"],Time:0,Motion:[0.1d,0.0d,0.0d]}
execute if score #test value matches 8 positioned 8363 80 -9018 positioned ~ ~.2 ~.5 run summon fireball ~ ~ ~ {Tags:["setBall"],Time:0,Motion:[0.1d,0.0d,0.003d]}
execute if score #test value matches 9 positioned 8363 80 -9018 positioned ~ ~.2 ~.5 run summon fireball ~ ~ ~ {Tags:["setBall"],Time:0,Motion:[0.1d,0.0d,-0.003d]}

execute as @e[type=fireball,tag=setBall] at @s run function mkmc:airship_fortress/fireball_setup