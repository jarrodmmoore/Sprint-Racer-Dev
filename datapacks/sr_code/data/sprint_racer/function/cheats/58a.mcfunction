#YOU get a car
#and YOU get a car
#and YOU get a car
execute as @a[gamemode=adventure] unless score @s kart_model matches 10.. run clear @s stone_button
execute as @a[gamemode=adventure] unless score @s kart_model matches 10.. run scoreboard players operation @s kart_model = @e[limit=1,sort=random,type=armor_stand,tag=random,scores={rNumber=11..19}] rNumber
execute as @e[tag=ai,tag=can_wear_hat] unless score @s kart_model matches 1.. run function sprint_racer:cheats/ai_gets_car



#LAUGH