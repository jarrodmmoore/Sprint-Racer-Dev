#bup
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={teamPoints=1..}] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add winOrange
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={teamPoints=..-1}] run tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add winCyan

#you da winner
scoreboard players set #varyTeleport value 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=winOrange] as @a[tag=playing,scores={previousTeam=1}] positioned 1653 92 406 facing 1636 88 406 run function sprint_racer:varied_teleport_thin
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=winOrange] as @a[tag=playing,scores={previousTeam=1}] run function sprint_racer_language:_dlc_3/lobby/award_ceremony/give_trophy_1st
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=winOrange] as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=playerOrange,scores={aiPoints=1..}] positioned 1653 92 406 run function sprint_racer:game_logic/4/spawn_ai_entity {tag:"1st_ai",model:"sr/item/sr_trophy_1st"}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=winCyan] as @a[tag=playing,scores={previousTeam=2}] positioned 1653 92 406 facing 1636 88 406 run function sprint_racer:varied_teleport_thin
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=winCyan] as @a[tag=playing,scores={previousTeam=2}] run function sprint_racer_language:_dlc_3/lobby/award_ceremony/give_trophy_1st
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=winCyan] as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,tag=playerCyan,scores={aiPoints=1..}] positioned 1653 92 406 run function sprint_racer:game_logic/4/spawn_ai_entity {tag:"1st_ai",model:"sr/item/sr_trophy_1st"}
execute as @e[tag=1st_ai] at @s facing 1636 88 406 run function sprint_racer:varied_teleport_thin

#you da winner
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=winOrange] at @s run summon firework_rocket 1653 93 406 {LifeTime:25,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:2,explosions:[{shape:"star",colors:[I;14602026,15790320],fade_colors:[I;2651799,15435844,15790320],has_trail:true,has_twinkle:true},{shape:"large_ball",colors:[I;14602026,6719955,15790320],fade_colors:[I;15790320],has_trail:false,has_twinkle:false}]}}}}
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=winCyan] at @s run summon firework_rocket 1653 93 406 {LifeTime:25,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:2,explosions:[{shape:"star",colors:[I;14602026,15790320],fade_colors:[I;2651799,15435844,15790320],has_trail:true,has_twinkle:true},{shape:"large_ball",colors:[I;14602026,6719955,15790320],fade_colors:[I;15790320],has_trail:false,has_twinkle:false}]}}}}
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=winOrange] unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=winCyan] run particle large_smoke 1653 93 406 0.5 0.5 0.5 0 20 force
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=winOrange] unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=winCyan] run playsound minecraft:entity.villager.no master @a 1653 93 406 3 1.2

#AUUUUGGGGHHHH
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=winOrange] run function sprint_racer_language:_dlc_2/lobby/award_ceremony/announce_win_orange
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=winCyan] run function sprint_racer_language:_dlc_2/lobby/award_ceremony/announce_win_cyan
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=winOrange] unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=winCyan] run function sprint_racer_language:_dlc_2/lobby/award_ceremony/announce_team_tie

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove winOrange
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove winCyan