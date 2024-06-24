execute unless entity @s[x=-1028,y=135,z=-735,dx=37,dy=31,dz=27] run effect give @s minecraft:night_vision 15 1 true

execute unless entity @s[x=-1028,y=135,z=-735,dx=37,dy=31,dz=27] run scoreboard players set @s[gamemode=adventure,scores={recDirection=..9}] recDirection 10

execute if entity @s[x=-1028,y=135,z=-735,dx=37,dy=31,dz=27] run effect clear @s minecraft:night_vision