execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=0,readyState=..0}] run function sprint_racer:game_logic/0/set_mode_ready

tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add clearImpulse
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] oTimer 0
scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] gameTime 5
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={voteTime=1..}] voteTime 1
execute store result bossbar minecraft:menutimer max run scoreboard players get @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] gameTime

execute as @a[tag=playing] at @s run playsound minecraft:block.note_block.hat master @s

tag @s remove clickSign