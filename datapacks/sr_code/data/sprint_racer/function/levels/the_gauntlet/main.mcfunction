function sprint_racer:levels/the_gauntlet/map

#screw with the navigator because it's funny
#also this track doesn't support nav because a bunch of wool at the bottom of this track is a bad look
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160..99999,oTimerGlobal=1}] run tag @e[tag=goofNav] remove goofNav
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160..99999,oTimerGlobal=1}] run tag @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..7}] add goofNav
scoreboard players operation @a recDirection = @e[tag=goofNav,limit=1] rNumber
scoreboard players set @a wrongWayBuffer 0
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=100000..}] run tag @e[tag=goofNav] remove goofNav

#no checkpoint navigator thing
scoreboard players set @a[tag=!showCheckNav] showCheckNav -4

#this track uses its own timer and the default one is ignored
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=1,gamemodePresetA=2}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={timeRemaining2=1..}] timeRemaining 4000
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=1,gamemodePresetA=2}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={timeRemaining2=..0}] timeRemaining 0
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=1,gamemodePresetA=2}] if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={timeRemaining2=..0}] run bossbar set minecraft:gauntlettime players

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160}] run tag @a add bbarbump

execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=1,gamemodePresetA=2}] run execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160..99999}] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] unless entity @a[tag=playing,scores={playerState=2}] run function sprint_racer:levels/the_gauntlet/timer
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=1,gamemodePresetA=2}] run execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160..99999}] unless entity @a[tag=playing,tag=!finished] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] timeRemaining2 0


#platforms around checkpoint no. 5 and 6
execute if entity @a[tag=playing,scores={check=5..6}] run function sprint_racer:levels/the_gauntlet/platforms
execute if score #halftick value matches 1 if entity @a[tag=playing,scores={check=5..6}] run function sprint_racer:levels/the_gauntlet/platforms

#guardians in the water section
execute if entity @a[tag=playing,x=898,y=0,z=1942,dx=600,dy=35,dz=600,scores={check=10..11}] unless entity @e[tag=GTguardian,type=guardian] run function sprint_racer:levels/the_gauntlet/guardians
execute if entity @e[tag=GTguardian,type=guardian] unless entity @a[tag=playing,scores={check=10..11}] run kill @e[tag=GTguardian,type=guardian]

#effects in the super speed section
execute as @a[tag=playing,gamemode=!spectator,scores={check=15..16,speedBoost=..30}] at @s if block ~ ~-1 ~ cyan_glazed_terracotta run scoreboard players set @s speedBoost 31
execute as @a[tag=playing,gamemode=!spectator,scores={check=15..16,speedBoost=32..}] at @s if block ~ ~-1 ~ cyan_glazed_terracotta run scoreboard players set @s speedBoost 32
execute as @a[tag=playing,gamemode=!spectator,x=1201,y=69,z=2291,distance=..30,scores={check=15..16}] at @s if block ~ ~-1 ~ purple_glazed_terracotta run effect give @s jump_boost 1 15 false


#respawn players when they fall
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160..99999}] run function sprint_racer:levels/the_gauntlet/all_respawns