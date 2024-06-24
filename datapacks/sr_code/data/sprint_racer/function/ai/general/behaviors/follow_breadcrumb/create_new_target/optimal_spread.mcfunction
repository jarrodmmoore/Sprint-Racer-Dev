#higher skilled AI opponents take sharper race lines
execute if entity @s[tag=!hasOptimalSpread,scores={AIBC_spread=1}] facing entity @e[limit=1,tag=lookatmeson] feet rotated ~ 0 run tp @s ^ ^ ^1
execute if entity @s[tag=!hasOptimalSpread,scores={AIBC_spread=2}] facing entity @e[limit=1,tag=lookatmeson] feet rotated ~ 0 run tp @s ^ ^ ^2
execute if entity @s[tag=!hasOptimalSpread,scores={AIBC_spread=3}] facing entity @e[limit=1,tag=lookatmeson] feet rotated ~ 0 run tp @s ^ ^ ^3
execute if entity @s[tag=!hasOptimalSpread,scores={AIBC_spread=4}] facing entity @e[limit=1,tag=lookatmeson] feet rotated ~ 0 run tp @s ^ ^ ^4
execute if entity @s[tag=!hasOptimalSpread,scores={AIBC_spread=5}] facing entity @e[limit=1,tag=lookatmeson] feet rotated ~ 0 run tp @s ^ ^ ^5

#if our next target had a specific optimal race line defined, we'll use that
execute if entity @s[tag=hasOptimalSpread,scores={AIBC_spread=1}] rotated as @e[limit=1,tag=iwannabetheguy] rotated ~ 0 run tp @s ^ ^ ^1
execute if entity @s[tag=hasOptimalSpread,scores={AIBC_spread=2}] rotated as @e[limit=1,tag=iwannabetheguy] rotated ~ 0 run tp @s ^ ^ ^2
execute if entity @s[tag=hasOptimalSpread,scores={AIBC_spread=3}] rotated as @e[limit=1,tag=iwannabetheguy] rotated ~ 0 run tp @s ^ ^ ^3
execute if entity @s[tag=hasOptimalSpread,scores={AIBC_spread=4}] rotated as @e[limit=1,tag=iwannabetheguy] rotated ~ 0 run tp @s ^ ^ ^4
execute if entity @s[tag=hasOptimalSpread,scores={AIBC_spread=5}] rotated as @e[limit=1,tag=iwannabetheguy] rotated ~ 0 run tp @s ^ ^ ^5