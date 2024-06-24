scoreboard players operation @s hitboxHP2 = @s hitboxHP

execute store result score @s hitboxHP run data get entity @s Health

scoreboard players operation @s hitboxHP2 -= @s hitboxHP

scoreboard players operation @s hitboxHP2 *= @s damageMultiply
scoreboard players operation @s damage = @s hitboxHP2



scoreboard players add @s[scores={damage=10..}] hitstun 2

execute unless entity @s[scores={aiAirTime=2..,damage=..59},nbt={OnGround:0b}] run tag @s[scores={damage=1..}] add aiGotOwie

