#the larger the distance between 1st and 2nd, the more likely it is for an anvil to be forcibly rolled
scoreboard players set #math value 0
scoreboard players operation #math value = @e[limit=1,sort=random,type=armor_stand,tag=random,scores={rNumber=1..10}] rNumber
#2 second lead = 10% chance
#3 second lead = 20% chance
#4 second lead = 30% chance
#5 second lead = 40% chance
#6 second lead = 50% chance
#7+ second lead = 60% chance
execute if score #1stPlaceLead value matches 40..59 if score #math value matches ..1 run scoreboard players set #nextItemIsAnvil value 1
execute if score #1stPlaceLead value matches 60..79 if score #math value matches ..2 run scoreboard players set #nextItemIsAnvil value 1
execute if score #1stPlaceLead value matches 80..99 if score #math value matches ..3 run scoreboard players set #nextItemIsAnvil value 1
execute if score #1stPlaceLead value matches 100..119 if score #math value matches ..4 run scoreboard players set #nextItemIsAnvil value 1
execute if score #1stPlaceLead value matches 120..139 if score #math value matches ..5 run scoreboard players set #nextItemIsAnvil value 1
execute if score #1stPlaceLead value matches 140.. if score #math value matches ..6 run scoreboard players set #nextItemIsAnvil value 1

#check again in 14-19 seconds?
scoreboard players set #math value 0
scoreboard players operation #math value = @e[limit=1,sort=random,type=armor_stand,tag=random,scores={rNumber=1..6}] rNumber
scoreboard players set #anvilLeadCheck value 280
execute if score #math value matches 2 run scoreboard players set #anvilLeadCheck value 300
execute if score #math value matches 3 run scoreboard players set #anvilLeadCheck value 320
execute if score #math value matches 4 run scoreboard players set #anvilLeadCheck value 340
execute if score #math value matches 5 run scoreboard players set #anvilLeadCheck value 360
execute if score #math value matches 6 run scoreboard players set #anvilLeadCheck value 380

#anvil is banned? don't ever force it
execute if entity @e[tag=w,type=armor_stand,tag=banNo17] run scoreboard players set #nextItemIsAnvil value 0