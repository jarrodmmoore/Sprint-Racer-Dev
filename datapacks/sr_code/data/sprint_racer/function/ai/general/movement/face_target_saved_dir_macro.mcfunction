execute store result storage sprint_racer:func_args arg1 int 1 run scoreboard players get @s aiFaceDirYaw
execute store result storage sprint_racer:func_args arg2 int 1 run scoreboard players get @s aiFaceDirPitch
function sprint_racer:ai/general/movement/face_target_saved_dir_macro_2 with storage sprint_racer:func_args