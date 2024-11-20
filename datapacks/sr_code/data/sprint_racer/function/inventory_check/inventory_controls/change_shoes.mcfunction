scoreboard players add @s[tag=!ignoreInvMenu] cStatRequest 1
execute if score @s cStatRequest matches 6.. run scoreboard players set @s cStatRequest 0

execute at @s run playsound minecraft:block.note_block.hat master @s[tag=!ignoreInvMenu]

execute unless entity @e[type=armor_stand,tag=60a,tag=cheats,x=1548,y=148,z=422,distance=..1] run function sprint_racer:cheats/shoes/0
execute unless entity @e[type=armor_stand,tag=60a,tag=cheats,x=1548,y=148,z=422,distance=..1] run tag @s remove needShoeButton

tag @s[tag=ignoreInvMenu] remove ignoreInvMenu