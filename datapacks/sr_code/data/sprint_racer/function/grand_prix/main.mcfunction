scoreboard players add @a crowdCooldown 0
scoreboard players remove @a[scores={crowdCooldown=1..}] crowdCooldown 1

execute if entity @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,limit=1,tag=noCrowdSFX] run scoreboard players set @a crowdCooldown 200