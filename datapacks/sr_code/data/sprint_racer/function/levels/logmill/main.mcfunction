function sprint_racer:levels/logmill/map

execute as @a[tag=playing,gamemode=!spectator] at @s if block ~ ~ ~ water run scoreboard players add @s[scores={moveSpeed=..8000}] moveSpeed 500

#fall out of bounds, get reset since it's very hard to recover after falling to the jungle floor
execute as @a[tag=playing,scores={recDirection=10,hp=1..},nbt={OnGround:1b},gamemode=!spectator] at @s if block ~ ~-1 ~ grass_block run function sprint_racer:levels/logmill/respawn