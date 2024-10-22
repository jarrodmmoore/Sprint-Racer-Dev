scoreboard players set @a moveSpeed 0
scoreboard players set @a raceAccel 10
scoreboard players set @a rateDecel 500
execute as @a run attribute @s minecraft:water_movement_efficiency base set 1
#effect clear @a
function sprint_racer:game_logic/1/start_clear_effects
effect clear @a speed
effect give @a instant_health 1 200 true

scoreboard players set @a speedBState 0
scoreboard players set @a dSpeedBState 0

scoreboard players set @e[tag=ai] aiStuckTime 0
scoreboard players set @e[tag=ai] moveSpeed 0
scoreboard players set @e[tag=ai] raceAccel 10
scoreboard players set @e[tag=ai] rateDecel 500
effect clear @e[tag=ai]