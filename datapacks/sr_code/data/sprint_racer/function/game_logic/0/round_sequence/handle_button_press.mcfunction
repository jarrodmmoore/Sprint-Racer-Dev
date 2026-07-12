#non admins cannot press these buttons
scoreboard players set #success value 0
execute on target if entity @s[tag=admin] run scoreboard players set #success value 1
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=requireAdmin] if score #success value matches 0 on target run function sprint_racer_language:lobby/options/not_admin
data remove entity @s interaction
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=requireAdmin] if score #success value matches 0 run return 0
#=====

#respond based on what kind of button we are

#add
execute if entity @s[tag=customRoundAdd] run function sprint_racer:game_logic/0/round_sequence/button/add

#remove
execute if entity @s[tag=customRoundRemove] run function sprint_racer:game_logic/0/round_sequence/button/remove

#number
execute if entity @s[tag=customRoundNum] run function sprint_racer:game_logic/0/round_sequence/button/modify_round