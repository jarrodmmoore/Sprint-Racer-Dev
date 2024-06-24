scoreboard players remove @a[tag=!musicOff,scores={BGMtrack=1..}] musicTime 1
execute as @a[tag=!musicOff,scores={musicTime=..0}] at @s run function sprint_racer:music/player/_play_index

#inventory controls
scoreboard players enable @a BGMcontrol
execute as @a[tag=!musicOff,scores={BGMcontrol=1..}] run function sprint_racer:music/player/control_main