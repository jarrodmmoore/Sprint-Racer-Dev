#face saved direction?
execute if score @s aiFaceDirTime matches 1.. run return run function sprint_racer:ai/general/movement/face_target_saved_dir_macro
#=====

#otherwise, face target via /rotate
rotate @s ~ ~