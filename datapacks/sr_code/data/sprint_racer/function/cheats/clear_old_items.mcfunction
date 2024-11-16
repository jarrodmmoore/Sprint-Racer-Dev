#run by @e[tag=cheats,x=1550,y=148,z=406,distance=..1]

execute unless entity @s[tag=05a] run clear @a[gamemode=adventure] command_block
execute unless entity @s[tag=09a] run clear @a[gamemode=adventure] minecart
execute unless entity @s[tag=34a] run clear @a[gamemode=adventure] elytra[custom_data~{flytra:1b}]
execute unless entity @s[tag=36a] run clear @a[gamemode=adventure] stick
execute unless entity @s[tag=58a] as @a[scores={kart_model=10..}] run function sprint_racer:cheats/remove_car_model
execute unless entity @s[tag=59a] run clear @a[gamemode=adventure] chain_command_block
execute unless entity @s[tag=60a] run tag @a[tag=needShoeButton] remove needShoeButton
execute unless entity @s[tag=60a] run scoreboard players set @a cStatRequest 0
execute unless entity @s[tag=61a] run clear @a[gamemode=adventure] trident
execute unless entity @s[tag=62a] run clear @a[gamemode=adventure] blaze_powder
function sprint_racer:speed_attribute