#look at my cat
function sprint_racer:levels/cotton_void/map

#i can't see
effect give @a night_vision 15 1 true

#get items on certain checkpoints
execute as @a[scores={check=..1}] run function sprint_racer:levels/cotton_void/item_none
execute as @a[scores={check=2}] run function sprint_racer:levels/cotton_void/item_check2
execute as @a[scores={check=3}] run function sprint_racer:levels/cotton_void/item_none
execute as @a[scores={check=4}] run function sprint_racer:levels/cotton_void/item_check4
execute as @a[scores={check=5}] run function sprint_racer:levels/cotton_void/item_check5
execute as @a[scores={check=6}] run function sprint_racer:levels/cotton_void/item_none
execute as @a[scores={check=7}] run function sprint_racer:levels/cotton_void/item_check7
execute as @a[scores={check=8..9}] run function sprint_racer:levels/cotton_void/item_none
execute as @a[scores={check=10..}] run function sprint_racer:levels/cotton_void/item_check10

#no smuggling jump boost in beehive area
effect clear @a[gamemode=adventure,x=1600,y=205,z=2841,distance=..7] jump_boost

#send lapped players back to start
execute as @a[gamemode=adventure,tag=playing,tag=!finished,scores={check=..0},x=1530,y=143,z=2755,dx=19,dy=19,dz=19] at @s run tp @s 1594 154 2965 180 0

#screw with the navigator because nobody is allowed to cheese the maze
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
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=1,gamemodePresetA=2}] run execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={timeRemaining2=..0}] run bossbar set minecraft:gauntlettime players

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160}] run tag @a add bbarbump

execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=1,gamemodePresetA=2}] run execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160..99999}] as @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] unless entity @a[tag=playing,scores={playerState=2}] run function sprint_racer:levels/the_gauntlet/timer
execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=1,gamemodePresetA=2}] run execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160..99999}] unless entity @a[tag=playing,tag=!finished] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] timeRemaining2 0


#missiles
#platforms around checkpoint no. 2
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160..99999}] if entity @a[tag=playing,scores={check=0..1}] run function sprint_racer:levels/cotton_void/platforms
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=halftick,scores={gameTime=160..99999}] if entity @a[tag=playing,scores={check=0..1}] run function sprint_racer:levels/cotton_void/platforms

#effects in the gold speed section
execute as @a[tag=playing,gamemode=!spectator,scores={check=3,speedBoost=..0}] at @s if block ~ ~-1 ~ gold_ore run scoreboard players set @s speedBoost 1
execute as @a[tag=playing,gamemode=!spectator,scores={check=3,speedBoost=10..}] at @s if block ~ ~-1 ~ gold_ore run scoreboard players set @s speedBoost 10


#respawn players when they fall on pink glass
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=160..99999}] as @a[tag=playing,gamemode=adventure,nbt={OnGround:1b}] at @s run function sprint_racer:levels/cotton_void/glass_check

#max speed and heals
scoreboard players set @a[scores={check=1..}] hitstun 0
scoreboard players set @a[scores={check=1..}] rateDecel 0
scoreboard players set @a[scores={check=1..}] moveSpeed 10000
effect give @a[scores={hp=1..,check=1..}] minecraft:instant_health 1 101 true

#kill all item drops
execute as @e[type=item] if entity @s[nbt={Item:{components:{"minecraft:custom_data":{item:1b}}}}] run kill @s