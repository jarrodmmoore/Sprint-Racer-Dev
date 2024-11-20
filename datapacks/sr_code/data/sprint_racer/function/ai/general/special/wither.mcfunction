#always has missiles
scoreboard players set @s aiHasItem2 6

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160..}] run scoreboard players set @s aiHasNormal 6
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameTime=160..}] run scoreboard players set @s aiHasProjectile 6

#fast fall if above target
execute store result score @s math run data get entity @s Motion[1] 100000
execute if entity @s[tag=!inWater,nbt={OnGround:0b}] if entity @s[scores={aiStuckTime2=6..,math=-20000..-1}] run function sprint_racer:ai/general/fast_fall