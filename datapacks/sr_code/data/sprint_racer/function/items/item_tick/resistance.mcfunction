scoreboard players remove @e[scores={resistTime=1..}] resistTime 1

effect give @e[scores={resistTime=2..,invisibility=..0}] resistance 3 1 false
effect give @e[scores={resistTime=2..,invisibility=1..}] resistance 3 1 true
effect clear @e[scores={resistTime=1,nResist=..0}] resistance

execute as @e[tag=activeplayer,scores={resistTime=1..,invisibility=..0}] at @s run particle falling_dust{block_state:"minecraft:iron_block"} ~ ~1 ~ 0.5 0.5 0.5 1 3

#convert to seconds for visual timer
execute as @e[scores={resistTime=1..}] run scoreboard players operation @s resTimer = @s resistTime
execute as @e[scores={resistTime=1..}] run scoreboard players operation @s resTimer /= @e[limit=1,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=20}] rNumber
execute as @e[scores={resistTime=1..}] run scoreboard players add @s resTimer 1

#actionbar display
scoreboard players set @a[gamemode=!spectator,scores={resistTime=1..,actionbarState=..3}] actionbarState 3
scoreboard players set @a[gamemode=!spectator,scores={resistTime=1..,actionbarState=..3}] actionbarState2 4