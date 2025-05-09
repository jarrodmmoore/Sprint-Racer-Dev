#don't do anything until world spawn is loaded

scoreboard players set #test value 0
execute as @e[tag=w,type=armor_stand] at @s if loaded ~ ~ ~16 if entity @a run scoreboard players set #test value 1
execute if score #test value matches 0 run return run schedule function mkmc:autoload_tutorial_course 10t
#=====

#import track
#(note: this will work once, then doing nothing on subsequent import attempts)
function sprint_racer:game_logic/10/storage/import_track {filename:"mkmc_tutorial_course"}


#let's do a fun little hack:
#tag this track as a tutorial course
tag 01ed2af6-6eb0-462f-b8ce-632f7567d498 add trackTutorial

#"trackTutorial" means this can replace Crash Course or Crash Course Neo in the first round of voting.
#after replaying this course, i've found that it holds up remarkably well as a tutorial in the Sprint Racer era


#i'm also gonna make it slightly less common...
tag 01ed2af6-6eb0-462f-b8ce-632f7567d498 add r_1_only