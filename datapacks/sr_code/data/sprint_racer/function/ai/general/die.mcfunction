#give proper KO credit
function sprint_racer:ko_logic/_main



#drop all items in inventory

#normal items
execute if entity @s[scores={aiHasItem1=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/1
execute if entity @s[scores={aiHasItem2=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/2
execute if entity @s[scores={aiHasItem3=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/3
execute if entity @s[scores={aiHasItem4=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/4

execute if entity @s[scores={aiHasItem5=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/5
execute if entity @s[scores={aiHasItem6=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/6
execute if entity @s[scores={aiHasItem7=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/7
execute if entity @s[scores={aiHasItem8=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/8

execute if entity @s[scores={aiHasItem9=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/9
execute if entity @s[scores={aiHasItem10=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/10
execute if entity @s[scores={aiHasItem11=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/11
execute if entity @s[scores={aiHasItem12=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/12

execute if entity @s[scores={aiHasItem13=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/13
execute if entity @s[scores={aiHasItem14=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/14
execute if entity @s[scores={aiHasItem15=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/15
execute if entity @s[scores={aiHasItem16=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/16

execute if entity @s[scores={aiHasItem17=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/17
execute if entity @s[scores={aiHasItem18=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/18
execute if entity @s[scores={aiHasItem19=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/19
execute if entity @s[scores={aiHasItem20=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/20


#elite items
execute if entity @s[scores={aiHasItem21=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/21
execute if entity @s[scores={aiHasItem22=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/22
execute if entity @s[scores={aiHasItem23=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/23
execute if entity @s[scores={aiHasItem24=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/24

execute if entity @s[scores={aiHasItem25=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/25
execute if entity @s[scores={aiHasItem26=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/26
execute if entity @s[scores={aiHasItem27=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/27
execute if entity @s[scores={aiHasItem28=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/28

execute if entity @s[scores={aiHasItem29=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/29
execute if entity @s[scores={aiHasItem30=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/30
execute if entity @s[scores={aiHasItem31=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/31
execute if entity @s[scores={aiHasItem32=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/32

execute if entity @s[scores={aiHasItem33=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/33
execute if entity @s[scores={aiHasItem34=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/34
execute if entity @s[scores={aiHasItem35=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/35
execute if entity @s[scores={aiHasItem36=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/36

execute if entity @s[scores={aiHasItem37=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/37
execute if entity @s[scores={aiHasItem38=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/38
execute if entity @s[scores={aiHasItem39=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/39
execute if entity @s[scores={aiHasItem40=1..}] at @s run function sprint_racer_language:gameplay/ai_drop_item/40

#give all dropped items a random velocity
execute as @e[type=item,tag=giveVelocity] at @s run function sprint_racer:ai/general/item_random_velocity


#remove 1 playerLives from master
scoreboard players remove @e[tag=currentMaster] playerLives 1

#explode if creeper
execute if entity @s[tag=sa_creeper] at @s run function sprint_racer:explode
execute if entity @s[tag=sa_villager] at @s run function sprint_racer_language:_dlc_3/gameplay/villager_ai/chat_death

#permadeath cheat code
execute if score global gameState matches 1 if entity @e[tag=cheats,type=armor_stand,tag=61a] run function sprint_racer:game_logic/1/eliminate_permadeath

#and now die
kill @s