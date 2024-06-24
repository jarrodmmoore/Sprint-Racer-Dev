execute as @e[tag=node,tag=checkpoint,tag=posCalc,scores={nodeState=1..}] run scoreboard players operation @s checkCalc = @s check
execute as @e[tag=node,tag=finishline,tag=posCalc,scores={nodeState=1..}] run scoreboard players operation @s checkCalc = @s nCheck
scoreboard players add @e[tag=node,tag=finishline,tag=posCalc,scores={nodeState=1..}] checkCalc 1

scoreboard players operation @e[tag=node,tag=posCalc,scores={checkCalc=1..,nodeState=1..}] checkCalc -= @e[tag=w,type=armor_stand] checkCalc
scoreboard players operation @e[tag=pCalcTarget] checkCalc = @e[tag=w,type=armor_stand] checkCalc
execute as @e[tag=pCalcTarget] run scoreboard players operation @s checkCalc -= @s storedCheck
#we care about checkCalc=0 for nodes
#we care about checkCalc=1 for players

#give the next best position to the nearest player to the checkpoint or finish line
#the selected player will run a function will daisy-chain more statements like this until no more players are found on this checkpoint, thereby giving positions to every player on this checkpoint
execute as @e[limit=1,tag=!gotCalc,tag=pCalcTarget,scores={checkCalc=1}] at @e[limit=1,sort=nearest,tag=node,tag=posCalc,scores={nodeState=1..,checkCalc=0}] as @e[limit=1,sort=nearest,tag=pCalcTarget,tag=!gotCalc,scores={checkCalc=1}] run function sprint_racer:game_logic/1/position_calc/give_placement

#DEBUG
#tellraw @a ["",{"text":" "}]
#tellraw @a ["",{"text":"w lap is "},{"score":{"name":"@e[tag=w,limit=1]","objective":"lapCalc"}}]
#tellraw @a ["",{"text":"w checkCalc is "},{"score":{"name":"@e[tag=w,limit=1]","objective":"checkCalc"}}]
#tellraw @a ["",{"text":"C1 checkCalc is "},{"score":{"name":"@e[tag=checkpoint,limit=1,scores={check=1}]","objective":"checkCalc"}}]
#tellraw @a ["",{"text":"C2 checkCalc is "},{"score":{"name":"@e[tag=checkpoint,limit=1,scores={check=2}]","objective":"checkCalc"}}]
#tellraw @a ["",{"text":"C3 checkCalc is "},{"score":{"name":"@e[tag=checkpoint,limit=1,scores={check=3}]","objective":"checkCalc"}}]
#tellraw @a ["",{"text":"FIN checkCalc is "},{"score":{"name":"@e[tag=finishline,limit=1]","objective":"checkCalc"}}]
#tellraw @a ["",{"text":"player checkCalc is "},{"score":{"name":"@a[limit=1]","objective":"checkCalc"}}]
#tellraw @a ["",{"text":" "}]

scoreboard players remove @e[tag=w,type=armor_stand] checkCalc 1
scoreboard players remove @e[tag=w,scores={checkCalc=0}] lapCalc 1
tag @e[tag=w,scores={checkCalc=0,lapCalc=0}] add calcEnd