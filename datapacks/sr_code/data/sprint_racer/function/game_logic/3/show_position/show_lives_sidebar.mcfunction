tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add s1

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=rank_sidebar_b,tag=s1] add s2
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=s2] remove rank_sidebar_b
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=s2] remove s1
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=s2] remove s2

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!rank_sidebar_b,tag=s1] add s2
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=s2] add rank_sidebar_b
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=s2] remove s1
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=s2] remove s2

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove s1



#switch back and forth between two objectives that are cleared whenever not in display

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=rank_sidebar_b] run function sprint_racer_language:_dlc_1/gameplay/lives_sidebar/lives_sidebar_b
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=rank_sidebar_b] run function sprint_racer_language:_dlc_1/gameplay/lives_sidebar/lives_sidebar_a

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=rank_sidebar_b] as @a[tag=displayViable] run scoreboard players operation @s displayLivesB = @s playerLives
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=rank_sidebar_b] as @e[tag=ai,tag=displayViable] run function sprint_racer_language:_dlc_1/gameplay/lives_sidebar/ai_sidebar_b
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=rank_sidebar_b] as @a[tag=displayViable] run scoreboard players operation @s displayLivesA = @s playerLives
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=rank_sidebar_b] as @e[tag=ai,tag=displayViable] run function sprint_racer_language:_dlc_1/gameplay/lives_sidebar/ai_sidebar_a

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=rank_sidebar_b] run scoreboard objectives setdisplay sidebar displayLivesB
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=rank_sidebar_b] run scoreboard objectives setdisplay sidebar displayLivesA

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=rank_sidebar_b] run scoreboard objectives remove displayLivesA
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=rank_sidebar_b] run scoreboard objectives remove displayLivesB