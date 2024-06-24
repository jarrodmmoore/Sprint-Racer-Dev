#pick a random message to say
scoreboard players operation @s math = @e[limit=1,sort=random,type=armor_stand,tag=random,scores={rNumber=1..20}] rNumber

#say something
execute if entity @s[scores={math=1}] run tellraw @a ["",{"text":"<"},{"translate":"entity.minecraft.villager","color":"gray"},{"text":"> "},{"translate":"sr.villager.finish.1"}]
execute if entity @s[scores={math=2}] run tellraw @a ["",{"text":"<"},{"translate":"entity.minecraft.villager","color":"gray"},{"text":"> "},{"translate":"sr.villager.finish.2"}]
execute if entity @s[scores={math=3}] run tellraw @a ["",{"text":"<"},{"translate":"entity.minecraft.villager","color":"gray"},{"text":"> "},{"translate":"sr.villager.finish.3"}]
execute if entity @s[scores={math=4}] run tellraw @a ["",{"text":"<"},{"translate":"entity.minecraft.villager","color":"gray"},{"text":"> "},{"translate":"sr.villager.finish.4"}]
execute if entity @s[scores={math=5}] run tellraw @a ["",{"text":"<"},{"translate":"entity.minecraft.villager","color":"gray"},{"text":"> "},{"translate":"sr.villager.finish.5"}]
execute if entity @s[scores={math=6}] run tellraw @a ["",{"text":"<"},{"translate":"entity.minecraft.villager","color":"gray"},{"text":"> "},{"translate":"sr.villager.finish.6"}]
execute if entity @s[scores={math=7}] run tellraw @a ["",{"text":"<"},{"translate":"entity.minecraft.villager","color":"gray"},{"text":"> "},{"translate":"sr.villager.finish.7"}]
execute if entity @s[scores={math=8}] run tellraw @a ["",{"text":"<"},{"translate":"entity.minecraft.villager","color":"gray"},{"text":"> "},{"translate":"sr.villager.finish.8"}]
execute if entity @s[scores={math=9}] run tellraw @a ["",{"text":"<"},{"translate":"entity.minecraft.villager","color":"gray"},{"text":"> "},{"translate":"sr.villager.finish.9"}]
execute if entity @s[scores={math=10}] run tellraw @a ["",{"text":"<"},{"translate":"entity.minecraft.villager","color":"gray"},{"text":"> "},{"translate":"sr.villager.finish.10"}]

execute if entity @s[scores={math=11}] run tellraw @a ["",{"text":"<"},{"translate":"entity.minecraft.villager","color":"gray"},{"text":"> "},{"translate":"sr.villager.finish.11"}]
execute if entity @s[scores={math=12}] run tellraw @a ["",{"text":"<"},{"translate":"entity.minecraft.villager","color":"gray"},{"text":"> "},{"translate":"sr.villager.finish.12"}]
execute if entity @s[scores={math=13}] run tellraw @a ["",{"text":"<"},{"translate":"entity.minecraft.villager","color":"gray"},{"text":"> "},{"translate":"sr.villager.finish.13"}]
execute if entity @s[scores={math=14}] run tellraw @a ["",{"text":"<"},{"translate":"entity.minecraft.villager","color":"gray"},{"text":"> "},{"translate":"sr.villager.finish.14"}]
execute if entity @s[scores={math=15}] run tellraw @a ["",{"text":"<"},{"translate":"entity.minecraft.villager","color":"gray"},{"text":"> "},{"translate":"sr.villager.finish.15"}]
execute if entity @s[scores={math=16}] run tellraw @a ["",{"text":"<"},{"translate":"entity.minecraft.villager","color":"gray"},{"text":"> "},{"translate":"sr.villager.finish.16"}]
execute if entity @s[scores={math=17}] run tellraw @a ["",{"text":"<"},{"translate":"entity.minecraft.villager","color":"gray"},{"text":"> "},{"translate":"sr.villager.finish.17"}]
execute if entity @s[scores={math=18}] run tellraw @a ["",{"text":"<"},{"translate":"entity.minecraft.villager","color":"gray"},{"text":"> "},{"translate":"sr.villager.finish.18"}]
execute if entity @s[scores={math=19}] run tellraw @a ["",{"text":"<"},{"translate":"entity.minecraft.villager","color":"gray"},{"text":"> "},{"translate":"sr.villager.finish.19"}]
execute if entity @s[scores={math=20}] run tellraw @a ["",{"text":"<"},{"translate":"entity.minecraft.villager","color":"gray"},{"text":"> "},{"translate":"sr.villager.finish.20"}]