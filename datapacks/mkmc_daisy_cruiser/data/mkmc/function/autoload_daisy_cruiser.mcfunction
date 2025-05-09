#don't do anything until world spawn is loaded

scoreboard players set #test value 0
execute as @e[tag=w,type=armor_stand] at @s if loaded ~ ~ ~16 if entity @a run scoreboard players set #test value 1
execute if score #test value matches 0 run return run schedule function mkmc:autoload_daisy_cruiser 10t
#=====

#import track
#(note: this will work once, then doing nothing on subsequent import attempts)
function sprint_racer:game_logic/10/storage/import_track {filename:"mkmc_daisy_cruiser"}