#stay alive as long as this runs
scoreboard players set @s lifespan 10

#customTrackTime is used for movement timer
#when customTrackTime goes below 0, we do a movement step
scoreboard players remove @s customTrackTime 1
execute if score @s customTrackTime matches ..0 run function sprint_racer:levels/minotaur_maze/minotaur/movement_step

#bounceCount is used for interval between wheel squeaks
#make squeak noises
scoreboard players remove @s bounceCount 1
execute if score @s bounceCount matches ..0 run function sprint_racer:levels/minotaur_maze/minotaur/wheel_squeak