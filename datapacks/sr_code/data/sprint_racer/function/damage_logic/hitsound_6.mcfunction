#randomly select 1 of 5 variants of this sound to play
scoreboard players operation #rb_sound value = @e[limit=1,tag=random,type=armor_stand,sort=random,scores={rNumber=1..5}] rNumber

execute if score #rb_sound value matches 1 run function sprint_racer:damage_logic/hitsound_6a
execute if score #rb_sound value matches 2 run function sprint_racer:damage_logic/hitsound_6b
execute if score #rb_sound value matches 3 run function sprint_racer:damage_logic/hitsound_6c
execute if score #rb_sound value matches 4 run function sprint_racer:damage_logic/hitsound_6d
execute if score #rb_sound value matches 5 run function sprint_racer:damage_logic/hitsound_6e