#calculating overall "maturity" of players
scoreboard players set @e[tag=w,type=armor_stand] maturity 0
execute as @a[tag=playing] run scoreboard players operation @e[tag=w,type=armor_stand] maturity += @s maturity
scoreboard players operation @e[tag=w,type=armor_stand] maturity /= @e[tag=w,limit=1] playerCountB

#pick a random number between 1 and 50
scoreboard players operation @e[tag=w,type=armor_stand] rNumber = @e[limit=1,tag=random,sort=random,scores={rNumber=1..50}] rNumber

#override of previous, easier to grasp item settings are picked when most players are new
scoreboard players operation @e[tag=w,scores={maturity=..2}] rNumber = @e[limit=1,tag=random,sort=random,scores={rNumber=1..10}] rNumber
scoreboard players operation @e[tag=w,scores={maturity=3}] rNumber = @e[limit=1,tag=random,sort=random,scores={rNumber=1..16}] rNumber
scoreboard players operation @e[tag=w,scores={maturity=4}] rNumber = @e[limit=1,tag=random,sort=random,scores={rNumber=1..26}] rNumber
scoreboard players operation @e[tag=w,scores={maturity=5}] rNumber = @e[limit=1,tag=random,sort=random,scores={rNumber=1..40}] rNumber
scoreboard players operation @e[tag=w,scores={maturity=6}] rNumber = @e[limit=1,tag=random,sort=random,scores={rNumber=1..43}] rNumber


#alright so "ender only" proved to be a little TOO absurd in testing... so we're not gonna let that get chosen randomly
scoreboard players set @e[tag=w,scores={rNumber=41..43}] rNumber 15



#random number determines item composition
execute if entity @e[tag=w,scores={rNumber=1..10}] run function sprint_racer:items/item_presets/chests_only
execute if entity @e[tag=w,scores={rNumber=11..13}] run function sprint_racer:items/item_presets/chests_and_ender
execute if entity @e[tag=w,scores={rNumber=14..16}] run function sprint_racer:items/item_presets/chests_and_enchanting
execute if entity @e[tag=w,scores={rNumber=17..21}] run function sprint_racer:items/item_presets/capsules_only
execute if entity @e[tag=w,scores={rNumber=22..26}] run function sprint_racer:items/item_presets/specialty_only
execute if entity @e[tag=w,scores={rNumber=27..30}] run function sprint_racer:items/item_presets/chests_ender_enchanting
execute if entity @e[tag=w,scores={rNumber=31..35}] run function sprint_racer:items/item_presets/capsules_and_enchanting
execute if entity @e[tag=w,scores={rNumber=36..40}] run function sprint_racer:items/item_presets/specialty_and_enchanting
execute if entity @e[tag=w,scores={rNumber=41..43}] run function sprint_racer:items/item_presets/ender_only
execute if entity @e[tag=w,scores={rNumber=44..50}] run function sprint_racer:items/item_presets/buffet