function sprint_racer_language:_dlc_1/gameplay/fr_ended

scoreboard players set #varyTeleport value 0
execute as @a run function sprint_racer:game_logic/0/goto_spawn
tp @s[type=player] 1629 80 365 90 0

execute as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] run function sprint_racer:game_logic/0/_initialize