scoreboard players add @s creditsSeq1 1
scoreboard players add @s[scores={creditsSeq1=26}] creditsSeq2 1
execute if entity @s[scores={creditsSeq1=26}] run function sprint_racer:game_logic/12/credits_next
scoreboard players set @s[scores={creditsSeq1=26..}] creditsSeq1 1

#no music loop please
execute if entity @s[scores={gameTime=200..}] run scoreboard players set @a[tag=musicDef,scores={musicTime=..50}] musicTime 1000

#keep camera nodes alive
execute unless entity @s[scores={creditsSeq2=94..}] run scoreboard players set @e[tag=c_life,type=item_display] lifespan 30

#make sure we're focused on something
execute if entity @s[scores={creditsSeq2=8..88}] unless entity @e[tag=cam_focus,tag=ai] run tag @e[limit=1,sort=random,tag=ai] add cam_focus

#camera...
execute if entity @s[scores={creditsSeq2=..7}] run function sprint_racer:game_logic/12/camera/start
execute if entity @s[scores={creditsSeq2=8..88}] as @e[tag=cam_focus,tag=ai,limit=1] at @s run function sprint_racer:game_logic/12/camera/random
execute if entity @s[scores={creditsSeq2=89..}] run function sprint_racer:game_logic/12/camera/end

#end game only when credits stop
execute if entity @s[scores={creditsSeq2=..95}] run scoreboard players set @s timeRemaining 10000
execute if entity @s[scores={creditsSeq2=96..}] run scoreboard players set @s timeRemaining -1