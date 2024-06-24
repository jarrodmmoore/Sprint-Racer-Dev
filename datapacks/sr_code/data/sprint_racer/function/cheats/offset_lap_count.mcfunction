#calculate how long a lap is expected to take based on given time limit and lap count
scoreboard players operation @s math = @s timeRemaining
scoreboard players remove @s math 1409
scoreboard players operation @s math /= @s lap

#modify the lap count
scoreboard players operation @s math2 = @s lap

execute if entity @s[scores={customLapType=1}] run scoreboard players operation @s math2 += @s customLapOffset

#scoreboard players set #100 value 100
execute if entity @s[scores={customLapType=2}] run scoreboard players operation @s math2 *= @s customLapMult
execute if entity @s[scores={customLapType=2}] run scoreboard players operation #roundUpCheck value = @s math2
execute if entity @s[scores={customLapType=2}] run scoreboard players operation #roundUpCheck value %= #100 value
execute if entity @s[scores={customLapType=2}] run scoreboard players operation @s math2 /= #100 value
execute if entity @s[scores={customLapType=2}] if score #roundUpCheck value matches 50.. run scoreboard players add @s math2 1

scoreboard players set @s[scores={math2=..0}] math2 1


#lap difference compared to default
scoreboard players operation #compare value = @s math2
scoreboard players operation #compare value -= @s lap


#time added = (time per lap) * (lap difference)
scoreboard players operation @s math *= #compare value

#increase the time limit if needed ^
execute if entity @s[scores={math=0..}] run scoreboard players operation @s timeRemaining += @s math



#now set the lap count
scoreboard players operation @s lap = @s math2