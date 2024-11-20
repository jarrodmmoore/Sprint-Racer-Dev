tag @s add caip_self

#points sync for calculations
scoreboard players set @e[scores={math=1..}] math 0
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={aiPoints=1..}] run scoreboard players operation @s math = @s aiPoints
execute as @a[scores={points=1..}] run scoreboard players operation @s math = @s points


#nobody in 3rd? that's us now
execute unless entity @e[limit=1,scores={finishPos=3,math=1..}] run scoreboard players set @s finishPos 3

#nobody in 2nd? that's us now
execute unless entity @e[limit=1,scores={finishPos=2,math=1..}] run scoreboard players set @s finishPos 2

#nobody in 1st? that's us now
execute unless entity @e[limit=1,scores={finishPos=1,math=1..}] run scoreboard players set @s finishPos 1


#third?
execute if entity @e[limit=1,tag=!caip_self,scores={finishPos=3,math=1..}] if score @s aiPoints = @e[limit=1,tag=!caip_self,scores={finishPos=3,math=1..}] math run tag @s add beat3e
execute if entity @e[limit=1,tag=!caip_self,scores={finishPos=3,math=1..}] if score @s aiPoints > @e[limit=1,tag=!caip_self,scores={finishPos=3,math=1..}] math run tag @s add beat3

execute if entity @s[tag=beat3e] run scoreboard players set @s finishPos 3
execute if entity @s[tag=beat3] run scoreboard players set @s finishPos 3


#second?
execute if entity @e[limit=1,tag=!caip_self,scores={finishPos=2,math=1..}] if score @s aiPoints = @e[limit=1,tag=!caip_self,scores={finishPos=2,math=1..}] math run tag @s add beat2e
execute if entity @e[limit=1,tag=!caip_self,scores={finishPos=2,math=1..}] if score @s aiPoints > @e[limit=1,tag=!caip_self,scores={finishPos=2,math=1..}] math run tag @s add beat2

tag @s[tag=beat2e] remove beat3
execute if entity @s[tag=beat2e] run scoreboard players set @s finishPos 2
execute if entity @s[tag=beat2] run scoreboard players set @s finishPos 2


#first?
execute if entity @e[limit=1,tag=!caip_self,scores={finishPos=1,math=1..}] if score @s aiPoints = @e[limit=1,tag=!caip_self,scores={finishPos=1,math=1..}] math run tag @s add beat1e
execute if entity @e[limit=1,tag=!caip_self,scores={finishPos=1,math=1..}] if score @s aiPoints > @e[limit=1,tag=!caip_self,scores={finishPos=1,math=1..}] math run tag @s add beat1

tag @s[tag=beat1e] remove beat2
tag @s[tag=beat1e] remove beat3
execute if entity @s[tag=beat1e] run scoreboard players set @s finishPos 1
execute if entity @s[tag=beat1] run scoreboard players set @s finishPos 1


#everyone we beat gets shifted down
#make sure we don't do this multiple times :) -- i messed that up first time around
execute if entity @s[tag=beat3,tag=!beat2,tag=!beat1] run scoreboard players add @e[tag=!caip_self,scores={finishPos=3..,math=1..}] finishPos 1
execute if entity @s[tag=beat2,tag=!beat1] run scoreboard players add @e[tag=!caip_self,scores={finishPos=2..,math=1..}] finishPos 1
execute if entity @s[tag=beat1] run scoreboard players add @e[tag=!caip_self,scores={finishPos=1..,math=1..}] finishPos 1


#clean up tags
tag @s remove beat3e
tag @s remove beat3

tag @s remove beat2e
tag @s remove beat2

tag @s remove beat1e
tag @s remove beat1

tag @s remove caip_self