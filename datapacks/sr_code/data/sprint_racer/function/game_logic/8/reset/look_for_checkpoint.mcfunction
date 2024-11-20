tag @s remove foundCP

scoreboard players set @s resetCooldown 100

tag @s add self
playsound minecraft:entity.ender_dragon.hurt master @a[tag=!self] ~ ~ ~ 1 .5
execute unless entity @s[tag=RSnotext] run playsound minecraft:entity.ender_dragon.hurt master @s ~ 100000 ~ 100000 .5
execute unless entity @s[tag=RSnotext] run function sprint_racer_language:gameplay/misc_item_text/used_reset
tag @s[tag=RSnotext] remove RSnotext
tag @s remove self

execute if entity @s[scores={check=0}] if entity @e[tag=finishline,tag=posCalc,scores={nodeState=1..}] run function sprint_racer:game_logic/1/reset/go_to_checkpoint/0
execute if entity @s[scores={check=1}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=1}] run function sprint_racer:game_logic/1/reset/go_to_checkpoint/1
execute if entity @s[scores={check=2}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=2}] run function sprint_racer:game_logic/1/reset/go_to_checkpoint/2
execute if entity @s[scores={check=3}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=3}] run function sprint_racer:game_logic/1/reset/go_to_checkpoint/3
execute if entity @s[scores={check=4}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=4}] run function sprint_racer:game_logic/1/reset/go_to_checkpoint/4
execute if entity @s[scores={check=5}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=5}] run function sprint_racer:game_logic/1/reset/go_to_checkpoint/5
execute if entity @s[scores={check=6}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=6}] run function sprint_racer:game_logic/1/reset/go_to_checkpoint/6
execute if entity @s[scores={check=7}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=7}] run function sprint_racer:game_logic/1/reset/go_to_checkpoint/7
execute if entity @s[scores={check=8}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=8}] run function sprint_racer:game_logic/1/reset/go_to_checkpoint/8
execute if entity @s[scores={check=9}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=9}] run function sprint_racer:game_logic/1/reset/go_to_checkpoint/9
execute if entity @s[scores={check=10}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=10}] run function sprint_racer:game_logic/1/reset/go_to_checkpoint/10
execute if entity @s[scores={check=11}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=11}] run function sprint_racer:game_logic/1/reset/go_to_checkpoint/11
execute if entity @s[scores={check=12}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=12}] run function sprint_racer:game_logic/1/reset/go_to_checkpoint/12
execute if entity @s[scores={check=13}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=13}] run function sprint_racer:game_logic/1/reset/go_to_checkpoint/13
execute if entity @s[scores={check=14}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=14}] run function sprint_racer:game_logic/1/reset/go_to_checkpoint/14
execute if entity @s[scores={check=15}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=15}] run function sprint_racer:game_logic/1/reset/go_to_checkpoint/15
execute if entity @s[scores={check=16}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=16}] run function sprint_racer:game_logic/1/reset/go_to_checkpoint/16

execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=noCharity] unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,tag=banNo10] run function sprint_racer:game_logic/1/charity_item/_index

#if there are no checkpoints in range we can tp to, kill the player and let them repsawn at where their last checkpoint was
execute unless entity @s[tag=foundCP] run kill @s

tag @s remove foundCP