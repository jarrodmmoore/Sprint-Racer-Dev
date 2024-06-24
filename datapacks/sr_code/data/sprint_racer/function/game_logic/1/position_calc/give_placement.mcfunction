scoreboard players operation @s racePosCalc = @e[tag=w,limit=1] racePosCalc
tag @s add gotCalc
scoreboard players add @e[tag=w,type=armor_stand] racePosCalc 1

#THE CYCLE CONTINUES until no more untagged players are found on this checkpoint
execute at @e[limit=1,sort=nearest,tag=node,tag=posCalc,scores={nodeState=1..,checkCalc=0}] as @e[limit=1,sort=nearest,tag=pCalcTarget,tag=!gotCalc,scores={checkCalc=1}] run function sprint_racer:game_logic/1/position_calc/give_placement