#check if we need to make changes to accommodate modified lap counts
execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=0}] as @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,limit=1] unless score @s lap = @e[tag=chosenTrack,type=armor_stand,limit=1] lap run function sprint_racer:levels/_custom_race/gauntlet_added_laps

#this track uses its own timer and the default one is ignored
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1,gamemodePresetA=2}] run scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={timeRemaining2=1..}] timeRemaining 4000
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1,gamemodePresetA=2}] run scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={timeRemaining2=..0}] timeRemaining 0
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1,gamemodePresetA=2}] if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={timeRemaining2=..0}] run bossbar set minecraft:gauntlettime players

execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160}] run tag @a add bbarbump

execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1,gamemodePresetA=2}] run execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160..99999}] as @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,limit=1] unless entity @a[tag=playing,scores={playerState=2}] run function sprint_racer:levels/the_gauntlet/timer
execute unless entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1,gamemodePresetA=2}] run execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160..99999}] unless entity @a[tag=playing,tag=!finished] run scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] timeRemaining2 0
