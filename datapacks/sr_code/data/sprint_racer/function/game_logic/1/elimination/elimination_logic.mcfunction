scoreboard players remove @s[scores={timeUntilElim=1..}] timeUntilElim 1

#convert timeUntilElim to seconds
scoreboard players operation @s countTimeMsec = @s timeUntilElim
scoreboard players set @s math 20
scoreboard players operation @s countTimeMsec /= @s math

#bossbar time remaining display
execute if entity @s run bossbar set timeremaining players @a[tag=!bbarbump]
tag @a[tag=bbarbump] remove bbarbump
execute unless score #bbPersonalize value matches 2 if entity @s[scores={timeUntilElim=201..}] run bossbar set minecraft:timeremaining color white
execute unless score #bbPersonalize value matches 2 if entity @s[scores={timeUntilElim=..200}] run bossbar set minecraft:timeremaining color red
function sprint_racer_language:_dlc_1/gameplay/race_elimination/bossbar_timer
execute store result bossbar minecraft:timeremaining value run scoreboard players get @s timeUntilElim


#last place glows
effect give @e[tag=nextelimination] minecraft:glowing 2 1 true
effect clear @a[tag=!nextelimination] minecraft:glowing
effect clear @e[tag=ai,tag=!nextelimination] minecraft:glowing


#a player must exist! if not, end
scoreboard players add @s timeOut 1
execute if entity @e[tag=activeplayer] run scoreboard players set @s timeOut 0
execute if entity @s[scores={timeOut=80..}] run scoreboard players set @s timeRemaining -1