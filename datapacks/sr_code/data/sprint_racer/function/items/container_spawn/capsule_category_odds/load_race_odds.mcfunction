scoreboard objectives add capsuleState dummy
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] capsuleState 1

tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..50}] remove specialOddBan

# 5 snowball
# 5 missile
# 4 tnt
# 1 sword
#TOTAL: 15
execute if entity @s[tag=banNo1] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..5}] add specialOddBan
execute if entity @s[tag=banNo2] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=6..10}] add specialOddBan
execute if entity @s[tag=banNo3] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=11..14}] add specialOddBan
execute if entity @s[tag=banNo4] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=15}] add specialOddBan

# 3 apple
# 2 invis
# 3 resist
# 1 totem
#TOTAL: 9
execute if entity @s[tag=banNo5] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=16..18}] add specialOddBan
execute if entity @s[tag=banNo6] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=19..20}] add specialOddBan
execute if entity @s[tag=banNo7] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=21..23}] add specialOddBan
execute if entity @s[tag=banNo8] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=24}] add specialOddBan

# 2 jump
# 5 speed
# 3 ender
# 2 elytra
#TOTAL: 12
execute if entity @s[tag=banNo9] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=25..26}] add specialOddBan
execute if entity @s[tag=banNo10] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=27..31}] add specialOddBan
execute if entity @s[tag=banNo11] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=32..34}] add specialOddBan
execute if entity @s[tag=banNo12] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=35..36}] add specialOddBan

# 2 slime
# 1 potion
# 3 chicken
# 2 trapped
#TOTAL: 8
execute if entity @s[tag=banNo13] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=37..38}] add specialOddBan
execute if entity @s[tag=banNo14] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=39}] add specialOddBan
execute if entity @s[tag=banNo15] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=40..42}] add specialOddBan
execute if entity @s[tag=banNo16] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=43..44}] add specialOddBan

# 2 anvil
# 2 thief
# 1 squid
# 1 lightning
#TOTAL: 6
execute if entity @s[tag=banNo17] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=45..46}] add specialOddBan
execute if entity @s[tag=banNo18] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=47..48}] add specialOddBan
execute if entity @s[tag=banNo19] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=49}] add specialOddBan
execute if entity @s[tag=banNo20] run tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=50}] add specialOddBan