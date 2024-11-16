tag @s remove gotoFinish
tag @s remove gotWarped

execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,tag=09a] run tag @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig"}}}] add ejectkart

#test if we're ready to go for the finish line or not
scoreboard players operation @s nCheck = @e[tag=w,type=armor_stand,limit=1] check
scoreboard players operation @s nCheck -= @s check
tag @s[scores={nCheck=..0}] add gotoFinish
scoreboard players set @s nCheck 0

execute if entity @s[tag=!gotoFinish,scores={check=0}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=1}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/1
execute if entity @s[tag=!gotoFinish,scores={check=1}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=2}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/2
execute if entity @s[tag=!gotoFinish,scores={check=2}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=3}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/3
execute if entity @s[tag=!gotoFinish,scores={check=3}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=4}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/4
execute if entity @s[tag=!gotoFinish,scores={check=4}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=5}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/5

execute if entity @s[tag=!gotoFinish,scores={check=5}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=6}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/6
execute if entity @s[tag=!gotoFinish,scores={check=6}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=7}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/7
execute if entity @s[tag=!gotoFinish,scores={check=7}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=8}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/8
execute if entity @s[tag=!gotoFinish,scores={check=8}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=9}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/9
execute if entity @s[tag=!gotoFinish,scores={check=9}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=10}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/10

execute if entity @s[tag=!gotoFinish,scores={check=10}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=11}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/11
execute if entity @s[tag=!gotoFinish,scores={check=11}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=12}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/12
execute if entity @s[tag=!gotoFinish,scores={check=12}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=13}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/13
execute if entity @s[tag=!gotoFinish,scores={check=13}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=14}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/14
execute if entity @s[tag=!gotoFinish,scores={check=14}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=15}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/15

execute if entity @s[tag=!gotoFinish,scores={check=15}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=16}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/16
execute if entity @s[tag=!gotoFinish,scores={check=16}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=17}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/17
execute if entity @s[tag=!gotoFinish,scores={check=17}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=18}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/18
execute if entity @s[tag=!gotoFinish,scores={check=18}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=19}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/19
execute if entity @s[tag=!gotoFinish,scores={check=19}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=20}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/20

execute if entity @s[tag=!gotoFinish,scores={check=20}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=21}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/21
execute if entity @s[tag=!gotoFinish,scores={check=21}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=22}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/22
execute if entity @s[tag=!gotoFinish,scores={check=22}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=23}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/23
execute if entity @s[tag=!gotoFinish,scores={check=23}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=24}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/24
execute if entity @s[tag=!gotoFinish,scores={check=24}] if entity @e[tag=checkpoint,tag=posCalc,scores={nodeState=1..,check=25}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/25

execute if entity @s[tag=gotoFinish] if entity @e[tag=finishline,tag=posCalc,scores={nodeState=1..}] run function sprint_racer:items/item_tick/elite/warp/warp_to_checkpoint_pcalc/finish_line

#didn't find a posCalc point to warp to? try again, but with ANY checkpoints this time
execute unless entity @s[tag=gotWarped] run function sprint_racer:items/item_tick/elite/warp/race_retry

execute unless entity @s[tag=gotWarped] run function sprint_racer_language:gameplay/misc_item_text/error_warp_failed
execute unless entity @s[tag=gotWarped] run function sprint_racer_language:gameplay/give_item/elite11

execute if entity @s[tag=gotWarped,scores={anvil=..999}] run tag @s add dodge

tag @s remove gotoFinish
tag @s remove gotWarped