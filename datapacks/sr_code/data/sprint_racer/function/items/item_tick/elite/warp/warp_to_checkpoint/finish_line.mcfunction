function sprint_racer:items/item_tick/elite/warp/sound_effect
tp @s @e[limit=1,sort=nearest,tag=finishline,scores={nodeState=1..}]
tag @s add gotWarped