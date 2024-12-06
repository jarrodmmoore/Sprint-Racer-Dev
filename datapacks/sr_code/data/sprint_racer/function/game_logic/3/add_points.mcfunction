#points?
scoreboard players set @s playerCountC 0
scoreboard players set #countPlayers value 0
execute as @a[tag=playing] run scoreboard players add #countPlayers value 1
execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] run scoreboard players add #countPlayers value 1
scoreboard players operation @s playerCountC += #countPlayers value

scoreboard players reset @a finishPos
execute as @a[scores={battPosDisplay=1..}] run scoreboard players operation @s finishPos = @s battPosDisplay
scoreboard players operation @s addPoints = @s playerCountC

execute as @a[tag=playing,scores={finishPos=1..}] run scoreboard players operation @s addPoints = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] playerCountC
execute as @a[tag=playing,scores={finishPos=1..}] run scoreboard players operation @s addPoints -= @s finishPos
scoreboard players add @a[tag=playing,scores={finishPos=1..}] addPoints 1

execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] run scoreboard players operation @s finishPos = @s battlePos
execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={finishPos=1..}] run scoreboard players operation @s addPoints = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] playerCountC
execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={finishPos=1..}] run scoreboard players operation @s addPoints -= @s finishPos
scoreboard players add @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={finishPos=1..}] addPoints 1

#CUT, too polarizing
#bonus points for 1st and 2nd
#scoreboard players add @a[scores={finishPos=1..2}] addPoints 1
#scoreboard players add @a[scores={finishPos=1}] addPoints 1