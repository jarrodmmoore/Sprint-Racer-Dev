scoreboard players add @s blinkTimer 1
execute if entity @s[scores={blinkTimer=4..}] run scoreboard players set @s blinkTimer 0


#effect give @s[scores={hitstun=1..,blinkTimer=..1}] invisibility 1 0
#effect clear @s[scores={hitstun=1..,blinkTimer=2..}] invisibility


scoreboard players remove @s[scores={hitstun=1..}] hitstun 1
execute if score #halftick value matches 1 run scoreboard players remove @s[scores={hitstun=1..}] hitstun 1


#effect clear @s[scores={hitstun=0}] invisibility
scoreboard players set @s[scores={hitstun=0}] blinkTimer 0
scoreboard players set @s[scores={hitstun=100..}] hitstun 100