#summon random item
scoreboard players set @s rNumber 0
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..50}] rNumber

#useful items in race time attack are...
#3 - throwable tnt (2)
#5 - healthy apple (3)
#7 - resistance (2)
#8 - totem of undying (1)
#9 - jump boost (10)
#10 - speed boost (20)
#11 - ender pearl (5)
#12 - elytra (5)
#21 - enchant table (2)

#result is arbitrary based on what I felt like while writing this ;)
#should roughly match how common stuff is in the average time attack map
execute if entity @s[scores={rNumber=1..20}] run scoreboard players set @s itemchestSeedA 10
execute if entity @s[scores={rNumber=21..30}] run scoreboard players set @s itemchestSeedA 9
execute if entity @s[scores={rNumber=31..35}] run scoreboard players set @s itemchestSeedA 11
execute if entity @s[scores={rNumber=36..40}] run scoreboard players set @s itemchestSeedA 12
execute if entity @s[scores={rNumber=41..42}] run scoreboard players set @s itemchestSeedA 3
execute if entity @s[scores={rNumber=43..44}] run scoreboard players set @s itemchestSeedA 21
execute if entity @s[scores={rNumber=45..47}] run scoreboard players set @s itemchestSeedA 5
execute if entity @s[scores={rNumber=48..49}] run scoreboard players set @s itemchestSeedA 7
execute if entity @s[scores={rNumber=50}] run scoreboard players set @s itemchestSeedA 8

scoreboard players reset @s rNumber

tellraw @a ["",{"text":"[DEV] Assigned Item Chest to itemchestSeedA ","color":"green"},{"score":{"name":"@s","objective":"itemchestSeedA"},"color":"green"}]