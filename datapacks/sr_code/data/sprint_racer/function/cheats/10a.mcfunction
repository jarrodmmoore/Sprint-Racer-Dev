scoreboard players set @e[tag=w,type=armor_stand] math 0
execute as @a[tag=playing,gamemode=adventure] run scoreboard players add @e[tag=w,type=armor_stand] math 1
execute as @a[tag=ai] run scoreboard players add @e[tag=w,type=armor_stand] math 1

execute if entity @e[tag=w,type=armor_stand,scores={math=2}] run effect give @a[scores={itemPosition=2..,speedBoost=0,speedlevel=7}] speed 1 8 true
execute if entity @e[tag=w,type=armor_stand,scores={math=3}] run effect give @a[scores={itemPosition=3..,speedBoost=0,speedlevel=7}] speed 1 8 true
execute if entity @e[tag=w,type=armor_stand,scores={math=4}] run effect give @a[scores={itemPosition=4..,speedBoost=0,speedlevel=7}] speed 1 8 true
execute if entity @e[tag=w,type=armor_stand,scores={math=5}] run effect give @a[scores={itemPosition=5..,speedBoost=0,speedlevel=7}] speed 1 8 true
execute if entity @e[tag=w,type=armor_stand,scores={math=6}] run effect give @a[scores={itemPosition=6..,speedBoost=0,speedlevel=7}] speed 1 8 true
execute if entity @e[tag=w,type=armor_stand,scores={math=7}] run effect give @a[scores={itemPosition=7..,speedBoost=0,speedlevel=7}] speed 1 8 true
execute if entity @e[tag=w,type=armor_stand,scores={math=8}] run effect give @a[scores={itemPosition=8..,speedBoost=0,speedlevel=7}] speed 1 8 true
execute if entity @e[tag=w,type=armor_stand,scores={math=9}] run effect give @a[scores={itemPosition=9..,speedBoost=0,speedlevel=7}] speed 1 8 true
execute if entity @e[tag=w,type=armor_stand,scores={math=10}] run effect give @a[scores={itemPosition=10..,speedBoost=0,speedlevel=7}] speed 1 8 true
execute if entity @e[tag=w,type=armor_stand,scores={math=11}] run effect give @a[scores={itemPosition=11..,speedBoost=0,speedlevel=7}] speed 1 8 true
execute if entity @e[tag=w,type=armor_stand,scores={math=12}] run effect give @a[scores={itemPosition=12..,speedBoost=0,speedlevel=7}] speed 1 8 true
execute if entity @e[tag=w,type=armor_stand,scores={math=13..14}] run effect give @a[scores={itemPosition=13..,speedBoost=0,speedlevel=7}] speed 1 8 true
execute if entity @e[tag=w,type=armor_stand,scores={math=15..16}] run effect give @a[scores={itemPosition=14..,speedBoost=0,speedlevel=7}] speed 1 8 true
execute if entity @e[tag=w,type=armor_stand,scores={math=17..18}] run effect give @a[scores={itemPosition=17..,speedBoost=0,speedlevel=7}] speed 1 8 true
execute if entity @e[tag=w,type=armor_stand,scores={math=19..20}] run effect give @a[scores={itemPosition=19..,speedBoost=0,speedlevel=7}] speed 1 8 true
execute if entity @e[tag=w,type=armor_stand,scores={math=21..24}] run effect give @a[scores={itemPosition=21..,speedBoost=0,speedlevel=7}] speed 1 8 true
execute if entity @e[tag=w,type=armor_stand,scores={math=25..28}] run effect give @a[scores={itemPosition=25..,speedBoost=0,speedlevel=7}] speed 1 8 true
execute if entity @e[tag=w,type=armor_stand,scores={math=29..32}] run effect give @a[scores={itemPosition=29..,speedBoost=0,speedlevel=7}] speed 1 8 true
execute if entity @e[tag=w,type=armor_stand,scores={math=36..40}] run effect give @a[scores={itemPosition=36..,speedBoost=0,speedlevel=7}] speed 1 8 true
execute if entity @e[tag=w,type=armor_stand,scores={math=41..49}] run effect give @a[scores={itemPosition=41..,speedBoost=0,speedlevel=7}] speed 1 8 true
execute if entity @e[tag=w,type=armor_stand,scores={math=50..}] run effect give @a[scores={itemPosition=50..,speedBoost=0,speedlevel=7}] speed 1 8 true
