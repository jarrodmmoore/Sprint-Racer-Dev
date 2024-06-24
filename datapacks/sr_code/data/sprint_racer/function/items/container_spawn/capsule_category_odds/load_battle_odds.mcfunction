scoreboard objectives add capsuleState dummy
scoreboard players set @e[tag=w,type=armor_stand] capsuleState 3

tag @e[tag=random,type=armor_stand,scores={rNumber=1..50}] remove specialOddBan

# 6 snowball
# 6 missile
# 5 tnt
# 3 sword
#TOTAL: 20
execute if entity @s[tag=banNo1] run tag @e[tag=random,type=armor_stand,scores={rNumber=1..6}] add specialOddBan
execute if entity @s[tag=banNo2] run tag @e[tag=random,type=armor_stand,scores={rNumber=7..12}] add specialOddBan
execute if entity @s[tag=banNo3] run tag @e[tag=random,type=armor_stand,scores={rNumber=13..17}] add specialOddBan
execute if entity @s[tag=banNo4] run tag @e[tag=random,type=armor_stand,scores={rNumber=18..20}] add specialOddBan

# 4 apple
# 2 invis
# 2 resist
# 1 totem
#TOTAL: 9
execute if entity @s[tag=banNo5] run tag @e[tag=random,type=armor_stand,scores={rNumber=21..24}] add specialOddBan
execute if entity @s[tag=banNo6] run tag @e[tag=random,type=armor_stand,scores={rNumber=25..26}] add specialOddBan
execute if entity @s[tag=banNo7] run tag @e[tag=random,type=armor_stand,scores={rNumber=27..28}] add specialOddBan
execute if entity @s[tag=banNo8] run tag @e[tag=random,type=armor_stand,scores={rNumber=29}] add specialOddBan

# 2 jump
# 2 speed
# 1 ender
# 2 elytra
#TOTAL: 7
execute if entity @s[tag=banNo9] run tag @e[tag=random,type=armor_stand,scores={rNumber=30..31}] add specialOddBan
execute if entity @s[tag=banNo10] run tag @e[tag=random,type=armor_stand,scores={rNumber=32..33}] add specialOddBan
execute if entity @s[tag=banNo11] run tag @e[tag=random,type=armor_stand,scores={rNumber=34}] add specialOddBan
execute if entity @s[tag=banNo12] run tag @e[tag=random,type=armor_stand,scores={rNumber=35..36}] add specialOddBan

# 2 slime
# 2 potion
# 2 chicken
# 2 trapped
#TOTAL: 8
execute if entity @s[tag=banNo13] run tag @e[tag=random,type=armor_stand,scores={rNumber=37..38}] add specialOddBan
execute if entity @s[tag=banNo14] run tag @e[tag=random,type=armor_stand,scores={rNumber=39..40}] add specialOddBan
execute if entity @s[tag=banNo15] run tag @e[tag=random,type=armor_stand,scores={rNumber=41..42}] add specialOddBan
execute if entity @s[tag=banNo16] run tag @e[tag=random,type=armor_stand,scores={rNumber=43..44}] add specialOddBan

# 2 anvil
# 2 thief
# 1 squid
# 1 lightning
#TOTAL: 6
execute if entity @s[tag=banNo17] run tag @e[tag=random,type=armor_stand,scores={rNumber=45..46}] add specialOddBan
execute if entity @s[tag=banNo18] run tag @e[tag=random,type=armor_stand,scores={rNumber=47..48}] add specialOddBan
execute if entity @s[tag=banNo19] run tag @e[tag=random,type=armor_stand,scores={rNumber=49}] add specialOddBan
execute if entity @s[tag=banNo20] run tag @e[tag=random,type=armor_stand,scores={rNumber=50}] add specialOddBan