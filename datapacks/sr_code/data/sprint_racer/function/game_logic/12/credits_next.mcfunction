#say the next thing please
execute if entity @s[scores={creditsSeq2=..25}] run function sprint_racer_language:_dlc_3/credits_movie/_25
execute if entity @s[scores={creditsSeq2=26..50}] run function sprint_racer_language:_dlc_3/credits_movie/26_50
execute if entity @s[scores={creditsSeq2=51..}] run function sprint_racer_language:_dlc_3/credits_movie/51_

#put camera changes here
execute if entity @s[scores={creditsSeq2=8}] run tag @e[tag=cam_focus] remove cam_focus
execute if entity @s[scores={creditsSeq2=8}] run tag @e[limit=1,tag=ai1] add cam_focus

execute if entity @s[scores={creditsSeq2=14}] run tag @e[tag=cam_focus] remove cam_focus
execute if entity @s[scores={creditsSeq2=14}] run tag @e[limit=1,tag=ai2] add cam_focus

execute if entity @s[scores={creditsSeq2=20}] run tag @e[tag=cam_focus] remove cam_focus
execute if entity @s[scores={creditsSeq2=20}] run tag @e[limit=1,tag=ai3] add cam_focus

execute if entity @s[scores={creditsSeq2=28}] run tag @e[tag=cam_focus] remove cam_focus
execute if entity @s[scores={creditsSeq2=28}] run tag @e[limit=1,tag=ai9] add cam_focus

execute if entity @s[scores={creditsSeq2=36}] run tag @e[tag=cam_focus] remove cam_focus
execute if entity @s[scores={creditsSeq2=36}] run tag @e[limit=1,tag=ai7] add cam_focus

execute if entity @s[scores={creditsSeq2=46}] run tag @e[tag=cam_focus] remove cam_focus
execute if entity @s[scores={creditsSeq2=46}] run tag @e[limit=1,tag=ai6] add cam_focus

execute if entity @s[scores={creditsSeq2=54}] run tag @e[tag=cam_focus] remove cam_focus
execute if entity @s[scores={creditsSeq2=54}] run tag @e[limit=1,tag=ai5] add cam_focus

execute if entity @s[scores={creditsSeq2=64}] run tag @e[tag=cam_focus] remove cam_focus
execute if entity @s[scores={creditsSeq2=64}] run tag @e[limit=1,tag=ai4] add cam_focus

execute if entity @s[scores={creditsSeq2=72}] run tag @e[tag=cam_focus] remove cam_focus
execute if entity @s[scores={creditsSeq2=72}] run tag @e[limit=1,tag=ai8] add cam_focus

execute if entity @s[scores={creditsSeq2=87}] run tag @e[tag=cam_focus] remove cam_focus
#execute if entity @s[scores={creditsSeq2=81}] run function sprint_racer:game_logic/12/camera/set_random
