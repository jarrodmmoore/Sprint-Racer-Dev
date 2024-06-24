scoreboard players set @e[tag=w,type=armor_stand] timeRemaining -1

tag @a[tag=playing,tag=!finished] add finished

#give points to 1st place
execute as @a[tag=playing,tag=!eliminated] run scoreboard players operation @s addPoints += @e[tag=w,limit=1] addPoints2
execute as @e[tag=ai,tag=!eliminated] run scoreboard players operation @s addPoints += @e[tag=w,limit=1] addPoints2

#surviving players are awarded with 1st place
scoreboard players set @a[tag=playing,tag=!eliminated] finishPos 1
execute if entity @e[tag=ai1,tag=!eliminated] run scoreboard players set @e[tag=AImaster,scores={rNumber=1}] finishPos 1
execute as @e[tag=ai1,tag=!eliminated] run scoreboard players operation @e[tag=AImaster,scores={rNumber=1}] addPoints = @s addPoints

execute if entity @e[tag=ai2,tag=!eliminated] run scoreboard players set @e[tag=AImaster,scores={rNumber=2}] finishPos 1
execute as @e[tag=ai2,tag=!eliminated] run scoreboard players operation @e[tag=AImaster,scores={rNumber=2}] addPoints = @s addPoints

execute if entity @e[tag=ai3,tag=!eliminated] run scoreboard players set @e[tag=AImaster,scores={rNumber=3}] finishPos 1
execute as @e[tag=ai3,tag=!eliminated] run scoreboard players operation @e[tag=AImaster,scores={rNumber=3}] addPoints = @s addPoints

execute if entity @e[tag=ai4,tag=!eliminated] run scoreboard players set @e[tag=AImaster,scores={rNumber=4}] finishPos 1
execute as @e[tag=ai4,tag=!eliminated] run scoreboard players operation @e[tag=AImaster,scores={rNumber=4}] addPoints = @s addPoints

execute if entity @e[tag=ai5,tag=!eliminated] run scoreboard players set @e[tag=AImaster,scores={rNumber=5}] finishPos 1
execute as @e[tag=ai5,tag=!eliminated] run scoreboard players operation @e[tag=AImaster,scores={rNumber=5}] addPoints = @s addPoints

execute if entity @e[tag=ai6,tag=!eliminated] run scoreboard players set @e[tag=AImaster,scores={rNumber=6}] finishPos 1
execute as @e[tag=ai6,tag=!eliminated] run scoreboard players operation @e[tag=AImaster,scores={rNumber=6}] addPoints = @s addPoints

execute if entity @e[tag=ai7,tag=!eliminated] run scoreboard players set @e[tag=AImaster,scores={rNumber=7}] finishPos 1
execute as @e[tag=ai7,tag=!eliminated] run scoreboard players operation @e[tag=AImaster,scores={rNumber=7}] addPoints = @s addPoints

execute if entity @e[tag=ai8,tag=!eliminated] run scoreboard players set @e[tag=AImaster,scores={rNumber=8}] finishPos 1
execute as @e[tag=ai8,tag=!eliminated] run scoreboard players operation @e[tag=AImaster,scores={rNumber=8}] addPoints = @s addPoints

execute if entity @e[tag=ai9,tag=!eliminated] run scoreboard players set @e[tag=AImaster,scores={rNumber=9}] finishPos 1
execute as @e[tag=ai9,tag=!eliminated] run scoreboard players operation @e[tag=AImaster,scores={rNumber=9}] addPoints = @s addPoints

tag @e[tag=nextelimination] remove nextelimination

scoreboard players set @e[tag=w,type=armor_stand] timeUntilElim 605
bossbar set minecraft:timeremaining max 600