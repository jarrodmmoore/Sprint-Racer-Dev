#bup
execute if entity @e[tag=w,scores={teamPoints=1..}] run tag @e[tag=w,type=armor_stand] add winOrange
execute if entity @e[tag=w,scores={teamPoints=..-1}] run tag @e[tag=w,type=armor_stand] add winCyan

#you da winner
execute if entity @e[tag=w,tag=winOrange] run tp @a[tag=playing,scores={previousTeam=1}] 1653 92 406 facing 1636 88 406
execute if entity @e[tag=w,tag=winOrange] as @a[tag=playing,scores={previousTeam=1}] run function sprint_racer_language:_dlc_3/lobby/award_ceremony/give_trophy_1st
execute if entity @e[tag=w,tag=winCyan] run tp @a[tag=playing,scores={previousTeam=2}] 1653 92 406 facing 1636 88 406
execute if entity @e[tag=w,tag=winCyan] as @a[tag=playing,scores={previousTeam=2}] run function sprint_racer_language:_dlc_3/lobby/award_ceremony/give_trophy_1st

#you da winner
execute if entity @e[tag=w,tag=winOrange] at @s run summon firework_rocket 1653 93 406 {LifeTime:25,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:2,explosions:[{shape:"star",colors:[I;14602026,15790320],fade_colors:[I;2651799,15435844,15790320],has_trail:1,has_twinkle:1},{shape:"large_ball",colors:[I;14602026,6719955,15790320],fade_colors:[I;15790320],has_trail:0,has_twinkle:0}]}}}}
execute if entity @e[tag=w,tag=winCyan] at @s run summon firework_rocket 1653 93 406 {LifeTime:25,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:2,explosions:[{shape:"star",colors:[I;14602026,15790320],fade_colors:[I;2651799,15435844,15790320],has_trail:1,has_twinkle:1},{shape:"large_ball",colors:[I;14602026,6719955,15790320],fade_colors:[I;15790320],has_trail:0,has_twinkle:0}]}}}}
execute unless entity @e[tag=w,tag=winOrange] unless entity @e[tag=w,tag=winCyan] run particle large_smoke 1653 93 406 0.5 0.5 0.5 0 20 force
execute unless entity @e[tag=w,tag=winOrange] unless entity @e[tag=w,tag=winCyan] run playsound minecraft:entity.villager.no master @a 1653 93 406 3 1.2

#AUUUUGGGGHHHH
execute if entity @e[tag=w,tag=winOrange] run function sprint_racer_language:_dlc_2/lobby/award_ceremony/announce_win_orange
execute if entity @e[tag=w,tag=winCyan] run function sprint_racer_language:_dlc_2/lobby/award_ceremony/announce_win_cyan
execute unless entity @e[tag=w,tag=winOrange] unless entity @e[tag=w,tag=winCyan] run function sprint_racer_language:_dlc_2/lobby/award_ceremony/announce_team_tie

tag @e[tag=w,type=armor_stand] remove winOrange
tag @e[tag=w,type=armor_stand] remove winCyan