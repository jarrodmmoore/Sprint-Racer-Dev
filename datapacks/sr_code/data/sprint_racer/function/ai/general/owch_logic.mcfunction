execute if entity @s[nbt={OnGround:1b}] run tag @s remove aiGotOwie

scoreboard players add @s[tag=aiGotOwie] aiOwchTime 1

tag @s[scores={aiOwchTime=60..}] remove aiGotOwie
tag @s[tag=inWater,scores={aiOwchTime=10..}] remove aiGotOwie