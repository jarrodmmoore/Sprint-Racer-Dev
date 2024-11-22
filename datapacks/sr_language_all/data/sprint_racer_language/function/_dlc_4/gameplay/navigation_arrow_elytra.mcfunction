#NULL (UNKNOWN DIRECTION)
execute unless entity @s[scores={navDirection=0..,navDirection2=0..}] run title @s actionbar ["",{"text":"\uE044","shadow_color":0},{"text":" "},{"text":"\uE009","color":"white","bold":false,"shadow_color":0},{"text":" "},{"text":"\uE044","shadow_color":0}]



#these below are special arrow characters to indicate direction

#UP
title @s[scores={navDirection=0..,navDirection2=0}] actionbar ["",{"text":"\uE044","shadow_color":0},{"text":" "},{"text":"\uE001","color":"white","bold":false,"shadow_color":0},{"text":" "},{"text":"\uE044","shadow_color":0}]

#UP-RIGHT
title @s[scores={navDirection=0..,navDirection2=1}] actionbar ["",{"text":"\uE044","shadow_color":0},{"text":" "},{"text":"\uE002","color":"white","bold":false,"shadow_color":0},{"text":" "},{"text":"\uE044","shadow_color":0}]

#RIGHT
title @s[scores={navDirection=0..,navDirection2=2}] actionbar ["",{"text":"\uE044","shadow_color":0},{"text":" "},{"text":"\uE003","color":"white","bold":false,"shadow_color":0},{"text":" "},{"text":"\uE044","shadow_color":0}]

#DOWN-RIGHT
title @s[scores={navDirection=0..,navDirection2=3}] actionbar ["",{"text":"\uE044","shadow_color":0},{"text":" "},{"text":"\uE004","color":"white","bold":false,"shadow_color":0},{"text":" "},{"text":"\uE044","shadow_color":0}]

#DOWN
title @s[scores={navDirection=0..,navDirection2=4}] actionbar ["",{"text":"\uE044","shadow_color":0},{"text":" "},{"text":"\uE005","color":"white","bold":false,"shadow_color":0},{"text":" "},{"text":"\uE044","shadow_color":0}]

#DOWN-LEFT
title @s[scores={navDirection=0..,navDirection2=5}] actionbar ["",{"text":"\uE044","shadow_color":0},{"text":" "},{"text":"\uE006","color":"white","bold":false,"shadow_color":0},{"text":" "},{"text":"\uE044","shadow_color":0}]

#LEFT
title @s[scores={navDirection=0..,navDirection2=6}] actionbar ["",{"text":"\uE044","shadow_color":0},{"text":" "},{"text":"\uE007","color":"white","bold":false,"shadow_color":0},{"text":" "},{"text":"\uE044","shadow_color":0}]

#UP-LEFT
title @s[scores={navDirection=0..,navDirection2=7}] actionbar ["",{"text":"\uE044","shadow_color":0},{"text":" "},{"text":"\uE008","color":"white","bold":false,"shadow_color":0},{"text":" "},{"text":"\uE044","shadow_color":0}]