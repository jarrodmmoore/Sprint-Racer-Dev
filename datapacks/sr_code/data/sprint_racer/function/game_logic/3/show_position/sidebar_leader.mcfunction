tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add s1

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=rank_sidebar_b,tag=s1] add s2
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=s2] remove rank_sidebar_b
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=s2] remove s1
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=s2] remove s2

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!rank_sidebar_b,tag=s1] add s2
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=s2] add rank_sidebar_b
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=s2] remove s1
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=s2] remove s2

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] remove s1



tag @s add this_is_me
execute if entity @e[tag=displayViable,tag=!this_is_me] run function sprint_racer_language:gameplay/rank_display/sidebar_plural
execute unless entity @e[tag=displayViable,tag=!this_is_me] run function sprint_racer_language:gameplay/rank_display/sidebar_not_plural

execute if entity @s[tag=playing] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=rank_sidebar_b] run scoreboard players operation @s displayLeaderB = @s KOs
execute if entity @s[tag=playing] unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=rank_sidebar_b] run scoreboard players operation @s displayLeaderA = @s KOs
execute if entity @s[tag=AImaster] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=rank_sidebar_b] run function sprint_racer_language:gameplay/rank_display/sidebar_ai_name_b
execute if entity @s[tag=AImaster] unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=rank_sidebar_b] run function sprint_racer_language:gameplay/rank_display/sidebar_ai_name

scoreboard players set @s leadDisplayDelay 1
execute as @e[tag=displayViable,tag=!this_is_me] run scoreboard players add @e[tag=this_is_me] leadDisplayDelay 1

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!rank_sidebar_b] run scoreboard objectives setdisplay sidebar displayLeaderA
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=rank_sidebar_b] run scoreboard objectives setdisplay sidebar displayLeaderB

tag @s remove this_is_me