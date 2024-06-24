#effect give @e[type=!wither,tag=ai,distance=..3] wither 7 1 false
execute if entity @e[type=!wither,tag=ai,distance=..3] run function sprint_racer:items/item_tick/poison_cloud_ai_hit