#rate of acceleration and deceleration change over time
#scoreboard players add @s[scores={moving=1..,rateAccel=..300}] rateAccel 3
#scoreboard players set @s[scores={moving=1..}] rateDecel 0
scoreboard players remove @s[scores={moving=1..,rateDecel=34..}] rateDecel 4
scoreboard players remove @s[scores={moving=1..,rateDecel=31..}] rateDecel 1

scoreboard players add @s[scores={moving=..0,rateDecel=..300}] rateDecel 3
scoreboard players remove @s[scores={moving=..0,rateDecel=305..}] rateDecel 3
#scoreboard players set @s[scores={moving=..0}] rateAccel 0
#scoreboard players remove @s[scores={moving=..0,rateAccel=29..}] rateAccel 19
#scoreboard players remove @s[scores={moving=..0,rateAccel=11..}] rateAccel 1

#just kidding I'm making rateAccel constant
scoreboard players remove @s rateAccel 10
#scoreboard players set @s[scores={rateAccel=..139}] rateAccel 140
execute if score @s rateAccel < @s cStatAccel run scoreboard players operation @s rateAccel = @s cStatAccel


execute if entity @s[scores={moving=1..,moveSpeed=..10000}] run scoreboard players operation @s moveSpeed += @s rateAccel
execute if entity @s[scores={moving=..0,moveSpeed=0..}] run scoreboard players operation @s moveSpeed -= @s rateDecel

scoreboard players set @s[scores={moveSpeed=..0}] moveSpeed 0
scoreboard players set @s[scores={moveSpeed=10051..}] moveSpeed 10050