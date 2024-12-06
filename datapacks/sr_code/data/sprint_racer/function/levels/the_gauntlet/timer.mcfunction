#count down time remaining
scoreboard players remove @s timeRemaining2 1
scoreboard players remove @s[tag=halftick] timeRemaining2 1

#decrement Msec every 10th of a second
execute if entity @s[tag=!halftick,scores={oTimer=1}] run scoreboard players remove @s countTimeMsec 1
execute if entity @s[tag=halftick] run scoreboard players remove @s countTimeMsec 1

#correct negative seconds
execute if entity @s[scores={countTimeMsec=..-1}] run scoreboard players remove @s countTimeSec 1
execute if entity @s[scores={countTimeMsec=..-1}] run scoreboard players add @s countTimeMsec 10
execute if entity @s[scores={countTimeSec=..-1}] run scoreboard players remove @s countTimeMin 1
execute if entity @s[scores={countTimeSec=..-1}] run scoreboard players add @s countTimeSec 60

execute if entity @s[scores={countTimeMin=..-1}] run scoreboard players add @s countTimeMin 1

#store timer for use on HUD
scoreboard players set #10 value 10
scoreboard players operation #hudCountdownMin10 value = @s countTimeMin
scoreboard players operation #hudCountdownMin10 value /= #10 value
scoreboard players operation #hudCountdownMin value = @s countTimeMin
scoreboard players operation #hudCountdownMin value %= #10 value
scoreboard players operation #hudCountdownSec2 value = @s countTimeSec
scoreboard players operation #hudCountdownSec10 value = @s countTimeSec
scoreboard players operation #hudCountdownSec10 value /= #10 value
scoreboard players operation #hudCountdownSec value = @s countTimeSec
scoreboard players operation #hudCountdownSec value %= #10 value
#cap at 99 minutes
execute if score @s countTimeMin matches 100.. run scoreboard players set #hudCountdownMin value 9

#show the timer
#bossbar set gauntlettime players @a[tag=!bbarbump]
execute if entity @s[scores={gameState=1}] if score #bbPersonalize value matches 2 run bossbar set gauntlettime players @a[tag=!bbarbump,tag=miniHUD]
execute if entity @s[scores={gameState=1}] unless score #bbPersonalize value matches 2 run bossbar set gauntlettime players @a[tag=!bbarbump]
execute if entity @s[scores={gameState=7,timeRemaining2=2401..}] run bossbar set gauntlettime players
execute if entity @s[scores={gameState=7,timeRemaining2=..2400}] run bossbar set gauntlettime players @a[tag=!bbarbump]
tag @a[tag=bbarbump] remove bbarbump
execute if entity @s[scores={gameState=1,timeRemaining2=1201..}] run bossbar set minecraft:gauntlettime color white
execute if entity @s[scores={gameState=1,timeRemaining2=..1200}] run bossbar set minecraft:gauntlettime color red
execute if entity @s[scores={gameState=7}] run bossbar set minecraft:gauntlettime color pink
function sprint_racer_language:levels/the_gauntlet/bossbar_timer
execute store result bossbar minecraft:gauntlettime value run scoreboard players get @e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1] timeRemaining2