#run by "@e[tag=cheats]"


#let's generate some random numbers, baby

#50% chance we subtract 1 from our result
scoreboard players operation #roll2 value = @e[limit=1,sort=random,tag=random,type=armor_stand,scores={rNumber=1..2}] rNumber
scoreboard players remove #roll2 value 1

#pick a random number
scoreboard players set #roll1 value 0
execute if entity @e[limit=1,tag=random,type=armor_stand,tag=rChtViable] run scoreboard players operation #roll1 value = @e[limit=1,sort=random,tag=random,type=armor_stand,tag=rChtViable] rNumber

#multiply our random number by 2, then *maybe* subtract 1 from it
scoreboard players set #2 value 2
scoreboard players operation #roll1 value *= #2 value
scoreboard players operation #roll1 value -= #roll2 value

#so... why did we do that?
#to get a larger random number range.
#usually there are only 50 armor stands available for random number grabbing
#BUT, we have more than 50 cheats. this presents a problem
#so by doing this, we expand our range beyond 50 while still having the odds for every cheat be the same

#activate the cheat based on our random number
scoreboard players set #focusCheat value 1
execute if score #roll1 value matches 1.. run function sprint_racer:cheats/randomize_cheats_3

#recursively run this function until math2 hits 0
scoreboard players set @s[scores={math2=10..}] math2 9
scoreboard players remove @s math2 1
execute if entity @s[scores={math2=1..}] run function sprint_racer:cheats/randomize_cheats_2