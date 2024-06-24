scoreboard players add #holdInPlace value 1
execute if score #holdInPlace value matches 7.. as @a[limit=1] at @s run tp @a @e[limit=1,distance=..100,sort=nearest,tag=RHoldPlayers,type=armor_stand]
execute if score #holdInPlace value matches 7.. run effect give @a minecraft:slow_falling 3 100 true
execute if score #holdInPlace value matches 7.. run scoreboard players set #holdInPlace value 1

scoreboard players set @e[tag=RHoldPlayers,type=armor_stand] lifespan 4