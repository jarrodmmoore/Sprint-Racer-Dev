execute if entity @s[tag=!gotoFinish,scores={check=0}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=1}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/1
execute if entity @s[tag=!gotoFinish,scores={check=1}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=2}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/2
execute if entity @s[tag=!gotoFinish,scores={check=2}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=3}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/3
execute if entity @s[tag=!gotoFinish,scores={check=3}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=4}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/4
execute if entity @s[tag=!gotoFinish,scores={check=4}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=5}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/5

execute if entity @s[tag=!gotoFinish,scores={check=5}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=6}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/6
execute if entity @s[tag=!gotoFinish,scores={check=6}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=7}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/7
execute if entity @s[tag=!gotoFinish,scores={check=7}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=8}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/8
execute if entity @s[tag=!gotoFinish,scores={check=8}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=9}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/9
execute if entity @s[tag=!gotoFinish,scores={check=9}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=10}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/10

execute if entity @s[tag=!gotoFinish,scores={check=10}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=11}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/11
execute if entity @s[tag=!gotoFinish,scores={check=11}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=12}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/12
execute if entity @s[tag=!gotoFinish,scores={check=12}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=13}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/13
execute if entity @s[tag=!gotoFinish,scores={check=13}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=14}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/14
execute if entity @s[tag=!gotoFinish,scores={check=14}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=15}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/15

execute if entity @s[tag=!gotoFinish,scores={check=15}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=16}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/16
execute if entity @s[tag=!gotoFinish,scores={check=16}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=17}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/17
execute if entity @s[tag=!gotoFinish,scores={check=17}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=18}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/18
execute if entity @s[tag=!gotoFinish,scores={check=18}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=19}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/19
execute if entity @s[tag=!gotoFinish,scores={check=19}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=20}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/20

execute if entity @s[tag=!gotoFinish,scores={check=20}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=21}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/21
execute if entity @s[tag=!gotoFinish,scores={check=21}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=22}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/22
execute if entity @s[tag=!gotoFinish,scores={check=22}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=23}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/23
execute if entity @s[tag=!gotoFinish,scores={check=23}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=24}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/24
execute if entity @s[tag=!gotoFinish,scores={check=24}] if entity @e[tag=checkpoint,scores={nodeState=1..,check=25}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/25

execute if entity @s[tag=gotoFinish] if entity @e[tag=finishline,scores={nodeState=1..}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint/finish_line