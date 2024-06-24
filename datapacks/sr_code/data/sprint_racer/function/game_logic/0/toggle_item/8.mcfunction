tag @e[tag=w,tag=banNo8] add unban


tag @e[tag=w,tag=!unban] add banNo8
execute if entity @e[tag=w,tag=!unban] run tag @e[tag=random,scores={rNumber=8}] add capsuleBan
execute if entity @e[tag=w,tag=!unban] at @e[limit=1,sort=nearest,tag=itempreview] run particle dust{color:[1.0,0.0,0.0],scale:2} ~ ~.3 ~ .1 .1 .1 2 10 force
execute if entity @e[tag=w,tag=!unban] run setblock ~ ~1 ~ dark_oak_log
execute if entity @e[tag=w,tag=!unban] at @e[limit=1,sort=nearest,tag=itempreview] run function sprint_racer_language:lobby/item_banned

tag @e[tag=w,tag=unban] remove banNo8
execute if entity @e[tag=w,tag=unban] run tag @e[tag=random,scores={rNumber=8}] remove capsuleBan
execute if entity @e[tag=w,tag=unban] at @e[limit=1,sort=nearest,tag=itempreview] run particle dust{color:[0.0,1.0,0.0],scale:2} ~ ~.3 ~ .1 .1 .1 2 10 force
execute if entity @e[tag=w,tag=unban] run setblock ~ ~1 ~ oak_log
execute if entity @e[tag=w,tag=unban] at @e[limit=1,sort=nearest,tag=itempreview] run function sprint_racer_language:lobby/item_unbanned


tag @e[tag=unban] remove unban

function sprint_racer:game_logic/0/toggle_item/check_color_yellow