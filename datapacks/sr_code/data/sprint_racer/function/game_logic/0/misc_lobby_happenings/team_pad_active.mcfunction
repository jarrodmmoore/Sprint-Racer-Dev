#spawn team text
execute positioned 1575 89 406 unless entity @e[type=armor_stand,tag=team_text,distance=..2] run function sprint_racer_language:_dlc_4/lobby/team_floating_text

#cyan join
execute positioned 1575 88 402 as @a[distance=..2,tag=playing,tag=!requestCyan] at @s run function sprint_racer_language:_dlc_2/lobby/team_join_cyan

#white
execute positioned 1575 88 406 as @a[distance=..2,tag=playing,tag=requestOrange] at @s run function sprint_racer_language:_dlc_2/lobby/team_join_neutral
execute positioned 1575 88 406 as @a[distance=..2,tag=playing,tag=requestCyan] at @s run function sprint_racer_language:_dlc_2/lobby/team_join_neutral

#orange join
execute positioned 1575 88 410 as @a[distance=..2,tag=playing,tag=!requestOrange] at @s run function sprint_racer_language:_dlc_2/lobby/team_join_orange