#pick a random message to say
scoreboard players operation @s math = @e[limit=1,sort=random,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..25}] rNumber

#sound
execute at @s run playsound minecraft:entity.villager.yes master @a ~ ~ ~

#say something
execute if entity @s[scores={math=1}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.1"}]
execute if entity @s[scores={math=2}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.2"}]
execute if entity @s[scores={math=3}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.3"}]
execute if entity @s[scores={math=4}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.4"}]
execute if entity @s[scores={math=5}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.5"}]
execute if entity @s[scores={math=6}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.6"}]
execute if entity @s[scores={math=7}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.7"}]
execute if entity @s[scores={math=8}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.8"}]
execute if entity @s[scores={math=9}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.9"}]
execute if entity @s[scores={math=10}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.10"}]

execute if entity @s[scores={math=11}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.11"}]
execute if entity @s[scores={math=12}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.12"}]
execute if entity @s[scores={math=13}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.13"}]
execute if entity @s[scores={math=14}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.14"}]
execute if entity @s[scores={math=15}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.15"}]
execute if entity @s[scores={math=16}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.16"}]
execute if entity @s[scores={math=17}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.17"}]
execute if entity @s[scores={math=18}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.18"}]
execute if entity @s[scores={math=19}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.19"}]
execute if entity @s[scores={math=20}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.20"}]

execute if entity @s[scores={math=21}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.21"}]
execute if entity @s[scores={math=22}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.22"}]
execute if entity @s[scores={math=23}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.23"}]
execute if entity @s[scores={math=24}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.24"}]
execute if entity @s[scores={math=25}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.ko.25"}]