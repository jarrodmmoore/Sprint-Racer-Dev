#pick a random message to say
scoreboard players operation @s math = @e[limit=1,sort=random,type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..30}] rNumber

#sound
execute at @s run playsound minecraft:entity.villager.yes master @a ~ ~ ~

#say something
execute if entity @s[scores={math=1}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.1"}]
execute if entity @s[scores={math=2}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.2"}]
execute if entity @s[scores={math=3}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.3"}]
execute if entity @s[scores={math=4}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.4"}]
execute if entity @s[scores={math=5}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.5"}]
execute if entity @s[scores={math=6}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.6"}]
execute if entity @s[scores={math=7}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.7"}]
execute if entity @s[scores={math=8}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.8a"},{keybind:"key.swapOffhand",color:"yellow"},{translate:"sr.villager.start.8b"}]
execute if entity @s[scores={math=9}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.9"}]
execute if entity @s[scores={math=10}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.10"}]

execute if entity @s[scores={math=11}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.11"}]
execute if entity @s[scores={math=12}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.12"}]
execute if entity @s[scores={math=13}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.13"}]
execute if entity @s[scores={math=14}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.14"}]
execute if entity @s[scores={math=15}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.15"}]
execute if entity @s[scores={math=16}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.16"}]
execute if entity @s[scores={math=17}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.17"}]
execute if entity @s[scores={math=18}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.18"}]
execute if entity @s[scores={math=19}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.19"}]
execute if entity @s[scores={math=20}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.20"}]

execute if entity @s[scores={math=21}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.21"}]
execute if entity @s[scores={math=22}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.22"}]
execute if entity @s[scores={math=23}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.23"}]

#LEETTING THE DAYS GO BYYY
execute if entity @s[scores={math=24}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.24",italic:true}]

execute if entity @s[scores={math=25}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.25"}]
execute if entity @s[scores={math=26}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.26"}]
execute if entity @s[scores={math=27}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.27"}]
execute if entity @s[scores={math=28}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.28"}]
execute if entity @s[scores={math=29}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.29"}]
execute if entity @s[scores={math=30}] run tellraw @a ["",{text:"<"},{translate:"entity.minecraft.villager",color:"gray"},{text:"> "},{translate:"sr.villager.start.30"}]

#don't say again
tag @s add vSay1