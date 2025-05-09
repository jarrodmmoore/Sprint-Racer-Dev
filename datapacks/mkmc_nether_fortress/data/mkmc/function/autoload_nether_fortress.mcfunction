#don't do anything until world spawn is loaded

scoreboard players set #test value 0
execute as @e[tag=w,type=armor_stand] at @s if loaded ~ ~ ~16 if entity @a run scoreboard players set #test value 1
execute if score #test value matches 0 run return run schedule function mkmc:autoload_nether_fortress 10t
#=====

#import track
#(note: this will work once, then doing nothing on subsequent import attempts)
function sprint_racer:game_logic/10/storage/import_track {filename:"mkmc_nether_fortress"}


#this track should be less common.
#i'll do a dirty trick for now, and we'll support this more properly in future Sprint Racer versions
tag 75bd6ba6-7783-4cf9-866f-e1778591881a add r_1_only