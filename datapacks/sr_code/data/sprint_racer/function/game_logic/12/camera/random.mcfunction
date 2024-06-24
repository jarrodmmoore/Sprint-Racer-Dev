scoreboard players remove global cameraTime 1
execute if score global cameraTime matches ..0 run function sprint_racer:game_logic/12/camera/new_angle

tag @s add cam_self

execute if score global cameraMode matches ..4 run function sprint_racer:game_logic/12/camera/1
execute if score global cameraMode matches 5..6 run function sprint_racer:game_logic/12/camera/2
execute if score global cameraMode matches 7..9 run function sprint_racer:game_logic/12/camera/3
execute if score global cameraMode matches 10 run function sprint_racer:game_logic/12/camera/4
execute if score global cameraMode matches 11..13 run function sprint_racer:game_logic/12/camera/5
execute if score global cameraMode matches 14.. run function sprint_racer:game_logic/12/camera/6

tag @s remove cam_self