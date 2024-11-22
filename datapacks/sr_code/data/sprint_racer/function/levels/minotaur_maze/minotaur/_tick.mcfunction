#stay alive as long as this runs
scoreboard players set @s lifespan 10

#customTrackTime is used for movement timer
#when customTrackTime goes below 0, we do a movement step
scoreboard players remove @s customTrackTime 1
execute if entity @s[tag=isAngry] run scoreboard players remove @s customTrackTime 1
execute if score @s customTrackTime matches ..0 run function sprint_racer:levels/minotaur_maze/minotaur/movement_step

#kill anything we run into
execute positioned ~-2 ~-2 ~-2 as @e[tag=activeplayer,dx=4,dy=5,dz=4] unless score @s invulTime matches 1.. unless score @s invisibility matches 1.. run function sprint_racer:levels/minotaur_maze/minotaur/eat_player

#bounceCount is used for interval between wheel squeaks
#make squeak noises
scoreboard players remove @s bounceCount 1
execute if entity @s[tag=isAngry] run scoreboard players remove @s bounceCount 1
execute if score @s bounceCount matches ..0 run function sprint_racer:levels/minotaur_maze/minotaur/wheel_squeak

#aiHasItem1 is used to count down to laugh
scoreboard players remove @s[scores={aiHasItem1=1..}] aiHasItem1 1
execute if score @s aiHasItem1 matches 1 run playsound entity.ravager.celebrate master @a ~ ~ ~ 2.5 1