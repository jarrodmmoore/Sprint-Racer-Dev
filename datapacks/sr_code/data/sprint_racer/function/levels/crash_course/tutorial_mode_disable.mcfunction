clear @s book[custom_data~{tutor:1b}]

tag @s add noTutorial
playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 1.3
function sprint_racer_language:levels/crash_course/disable_tutorial

scoreboard players set @s inputCooldown 20