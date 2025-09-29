#-9..18 and 1001..1017
execute store result score @s aiEntityRandomized run random value -9..35

#re-roll if we got the wither. the wither sucks! it should be rare
execute if score @s aiEntityRandomized matches 4 store result score @s aiEntityRandomized run random value 1..18

#re-roll in the proper range if we landed in the credits mannequins
execute if score @s aiEntityRandomized matches 19.. store result score @s aiEntityRandomized run random value 1001..1017

#re-roll if we matched someone else
scoreboard players operation @s aiEntity = @s aiEntityRandomized
scoreboard players set #test2 value 0
scoreboard players operation #test value = @s aiEntityRandomized
execute as @e[tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=1..9}] if score @s aiEntity = #test value run scoreboard players add #test2 value 1
execute if score #test2 value matches 2.. run function sprint_racer:ai/general/pick_random_entity_any