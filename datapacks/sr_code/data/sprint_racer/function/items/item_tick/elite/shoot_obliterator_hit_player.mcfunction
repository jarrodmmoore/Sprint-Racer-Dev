#credit attacker
scoreboard players operation @s attackerID = #checkID value
scoreboard players set @s attackTime 100

#feedback
playsound entity.generic.burn master @a ~ ~ ~ 2 1
particle large_smoke ~ ~1 ~ 0.25 0.25 0.25 0.1 7 force

#take damage
damage @s 25 sonic_boom at ~ ~ ~

#cleanup
tag @s remove getBeamed