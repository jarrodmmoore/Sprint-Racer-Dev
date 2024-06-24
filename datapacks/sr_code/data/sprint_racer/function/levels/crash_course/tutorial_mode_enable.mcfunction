clear @s book[custom_data~{tutor:1b}]

tag @s remove noTutorial
playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 1.6
function sprint_racer_language:levels/crash_course/enable_tutorial

scoreboard players set @s inputCooldown 20