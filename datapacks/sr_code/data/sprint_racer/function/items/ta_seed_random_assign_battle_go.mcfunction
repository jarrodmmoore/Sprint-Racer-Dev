#summon random item
scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..50}] rNumber

#useful items in battle time attack are...
#1 - shocking snowball (7)
#2 - missile launcher (10)
#3 - throwable tnt (9)
#5 - healthy apple (3)
#7 - resistance (1)
#9 - jump boost (4)
#10 - speed boost (5)
#11 - ender pearl (4)
#12 - elytra (4)
#21 - enchant table (3)

#result is arbitrary based on what I felt like while writing this ;)
#should roughly match how common stuff is in the average time attack map
execute if entity @s[scores={rNumber=1..7}] run scoreboard players set @s itemchestSeedB 1
execute if entity @s[scores={rNumber=8..17}] run scoreboard players set @s itemchestSeedB 2
execute if entity @s[scores={rNumber=18..26}] run scoreboard players set @s itemchestSeedB 3
execute if entity @s[scores={rNumber=27..29}] run scoreboard players set @s itemchestSeedB 5
execute if entity @s[scores={rNumber=30}] run scoreboard players set @s itemchestSeedB 7
execute if entity @s[scores={rNumber=31..34}] run scoreboard players set @s itemchestSeedB 9
execute if entity @s[scores={rNumber=35..39}] run scoreboard players set @s itemchestSeedB 10
execute if entity @s[scores={rNumber=40..43}] run scoreboard players set @s itemchestSeedB 11
execute if entity @s[scores={rNumber=44..47}] run scoreboard players set @s itemchestSeedB 12
execute if entity @s[scores={rNumber=48..50}] run scoreboard players set @s itemchestSeedB 21

scoreboard players reset @s rNumber

tellraw @a ["",{"text":"[DEV] Assigned Item Chest to itemchestSeedB ","color":"green"},{"score":{"name":"@s","objective":"itemchestSeedB"},"color":"green"}]