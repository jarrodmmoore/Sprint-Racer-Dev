#set initial value to 1:09
execute if entity @s[scores={timeRemaining=1210}] run scoreboard players set @s countTimeMin 1
execute if entity @s[scores={timeRemaining=1210}] run scoreboard players set @s countTimeSec 0
execute if entity @s[scores={timeRemaining=1210}] run scoreboard players set @s countTimeMsec 9
execute if entity @s[scores={timeRemaining=1210}] run bossbar set minecraft:timeremaining max 6000

#can't go below 0
execute if entity @s[scores={gameTime=200..,timeRemaining=..0}] run scoreboard players set @s countTimeMin 0
execute if entity @s[scores={gameTime=200..,timeRemaining=..0}] run scoreboard players set @s countTimeSec 0
execute if entity @s[scores={gameTime=200..,timeRemaining=..0}] run scoreboard players set @s countTimeMsec 9
execute if entity @s[scores={gameTime=200..,timeRemaining=..0}] run bossbar set minecraft:timeremaining max 6000

#decrement Msec every 10th of a second
execute if entity @s[scores={oTimer=1,timeRemaining=1..}] run scoreboard players remove @s countTimeMsec 1

#correct negative seconds
execute if entity @s[scores={countTimeMsec=..-1}] run scoreboard players remove @s countTimeSec 1
execute if entity @s[scores={countTimeMsec=..-1}] run scoreboard players add @s countTimeMsec 10
execute if entity @s[scores={countTimeSec=..-1}] run scoreboard players remove @s countTimeMin 1
execute if entity @s[scores={countTimeSec=..-1}] run scoreboard players add @s countTimeSec 60

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

#bossbar time remaining display
execute if score #bbPersonalize value matches 2 if entity @s[scores={timeRemaining=3..4800}] run bossbar set timeremaining players @a[tag=!bbarbump,tag=miniHUD]
execute unless score #bbPersonalize value matches 2 if entity @s[scores={timeRemaining=3..4800}] run bossbar set timeremaining players @a[tag=!bbarbump]
tag @a[tag=bbarbump] remove bbarbump
execute if entity @s[scores={timeRemaining=..2}] run bossbar set timeremaining players
execute if entity @s[scores={timeRemaining=601..}] run bossbar set minecraft:timeremaining color white
execute if entity @s[scores={timeRemaining=..600}] run bossbar set minecraft:timeremaining color red
function sprint_racer_language:gameplay/battle_end/bossbar_timer
execute store result bossbar minecraft:timeremaining value run scoreboard players get @s timeRemaining