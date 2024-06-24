#this function is to be executed by entity "w"

scoreboard players add @s oTimer 1
scoreboard players set @s[scores={oTimer=2..}] oTimer 0

#increment raw time and Msec every 10th of a second
execute if entity @s[scores={oTimer=1}] run scoreboard players add @s currentTime 1
execute if entity @s[scores={oTimer=1}] run scoreboard players add @s currentTimeMsec 1

#correct negative seconds (if needed, ever?)
execute if entity @s[scores={currentTimeSec=..-1}] run scoreboard players remove @s currentTimeMin 1
execute if entity @s[scores={currentTimeSec=..-1}] run scoreboard players add @s currentTimeSec 60

#increment timer, carry numbers whenever needed
execute if entity @s[scores={currentTimeMsec=10..}] run scoreboard players add @s currentTimeSec 1
execute if entity @s[scores={currentTimeMsec=10..}] run scoreboard players remove @s currentTimeMsec 10
execute if entity @s[scores={currentTimeSec=60..}] run scoreboard players add @s currentTimeMin 1
execute if entity @s[scores={currentTimeSec=60..}] run scoreboard players remove @s currentTimeSec 60


#store timer as fakeplayers for ease of access for HUD
scoreboard players operation #currentTimeMin value = @s currentTimeMin
scoreboard players operation #currentTimeSec value = @s currentTimeSec
scoreboard players operation #currentTimeMSec value = @s currentTimeMsec