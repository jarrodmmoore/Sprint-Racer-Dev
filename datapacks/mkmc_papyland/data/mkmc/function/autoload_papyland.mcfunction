#don't do anything until world spawn is loaded

scoreboard players set #test value 0
execute as @e[tag=w,type=armor_stand] at @s if loaded ~ ~ ~16 if entity @a run scoreboard players set #test value 1
execute if score #test value matches 0 run return run schedule function mkmc:autoload_papyland 10t
#=====

#import track
#(note: this will work once, then doing nothing on subsequent import attempts)
function sprint_racer:game_logic/10/storage/import_track {filename:"mkmc_papyland"}


#this track should be less common.
#i'll do a dirty trick for now, and we'll support this more properly in future Sprint Racer versions
tag 07f78732-df77-4582-bfe3-485210447f85 add b_1_only
