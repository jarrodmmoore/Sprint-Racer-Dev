#ate the apple, give them 150 ticks of the apple effect
scoreboard players add @s[scores={eatGoldApple=1}] gAppleTime 110
execute if entity @s[scores={eatGoldApple=1}] at @s run function sprint_racer_language:gameplay/misc_item_text/full_recovery
scoreboard players set @s[scores={eatGoldApple=1}] speedBoost 1
tag @s[scores={eatGoldApple=1}] add clearEffects
scoreboard players set @s[scores={eatGoldApple=1}] eatGoldApple 0
execute if entity @s[tag=clearEffects] run function sprint_racer:items/item_tick/golden_apple_clear_effects

#continuous effects
execute if entity @s[scores={gAppleTime=1..,speedBoost=1..,invisibility=..0}] at @s run particle dust{color:[1.0,1.0,0.0],scale:2} ~ ~.6 ~ .2 .5 .2 1 20 force
scoreboard players set @s[scores={gAppleTime=1..}] hitstun 0
scoreboard players set @s[scores={gAppleTime=1..,speedBoost=8..30}] speedBoost 9

#timer, kick out when timer expires
scoreboard players remove @s[scores={gAppleTime=1..}] gAppleTime 1
scoreboard players reset @s[scores={gAppleTime=..0}] eatGoldApple