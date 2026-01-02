$tag @e[tag=w,x=1560,y=150,z=406,distance=..1] remove banNo$(item)
$tag @e[tag=w,x=1560,y=150,z=406,distance=..1] add banEnchant$(item)
setblock ~ ~1 ~ spruce_log
execute at @e[limit=1,sort=nearest,tag=itempreview] run particle dust{color:[1.0,1.0,0.0],scale:2} ~ ~.3 ~ .1 .1 .1 2 10 force
function sprint_racer_language:_dlc_6/lobby/item_enchant_banned

$function sprint_racer:game_logic/0/toggle_item/check_color_$(category)