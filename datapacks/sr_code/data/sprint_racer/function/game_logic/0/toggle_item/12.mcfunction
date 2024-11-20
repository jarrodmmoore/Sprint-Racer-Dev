tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banNo12] add unban


tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!unban] add banNo12
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!unban] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=12}] add capsuleBan
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!unban] at @e[limit=1,sort=nearest,tag=itempreview] run particle dust{color:[1.0,0.0,0.0],scale:2} ~ ~.3 ~ .1 .1 .1 2 10 force
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!unban] run setblock ~ ~1 ~ dark_oak_log
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=!unban] at @e[limit=1,sort=nearest,tag=itempreview] run function sprint_racer_language:lobby/item_banned

tag @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=unban] remove banNo12
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=unban] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=12}] remove capsuleBan
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=unban] at @e[limit=1,sort=nearest,tag=itempreview] run particle dust{color:[0.0,1.0,0.0],scale:2} ~ ~.3 ~ .1 .1 .1 2 10 force
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=unban] run setblock ~ ~1 ~ oak_log
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=unban] at @e[limit=1,sort=nearest,tag=itempreview] run function sprint_racer_language:lobby/item_unbanned


tag @e[tag=unban] remove unban

function sprint_racer:game_logic/0/toggle_item/check_color_blue