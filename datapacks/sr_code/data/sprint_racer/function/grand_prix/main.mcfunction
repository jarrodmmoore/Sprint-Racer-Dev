scoreboard players add @a crowdCooldown 0
scoreboard players remove @a[scores={crowdCooldown=1..}] crowdCooldown 1

execute if entity @e[tag=w,type=armor_stand,limit=1,tag=noCrowdSFX] run scoreboard players set @a crowdCooldown 200