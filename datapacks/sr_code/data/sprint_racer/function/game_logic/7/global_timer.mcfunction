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



#player lap timer for time attack
execute if entity @s[scores={oTimer=1}] as @a[tag=playing,tag=!finished] run function sprint_racer:game_logic/7/self_lap_timer


#count down medal and best times
execute if entity @s[scores={oTimer=1}] run scoreboard players remove @s bronzeTR 1
execute if entity @s[scores={oTimer=1}] run scoreboard players remove @s silverTR 1
execute if entity @s[scores={oTimer=1}] run scoreboard players remove @s goldTR 1
execute if entity @s[scores={oTimer=1}] run scoreboard players remove @s diamondTR 1
execute if entity @s[scores={oTimer=1}] run scoreboard players remove @s bestTR 1
execute if entity @s[scores={oTimer=1}] run function sprint_racer_language:_dlc_1/gameplay/medals_tr_live_update

execute if entity @s[scores={oTimer=1,bronzeTR=1}] run function sprint_racer_language:_dlc_1/gameplay/medal_finish/bronze
execute if entity @s[scores={oTimer=1,silverTR=1}] run function sprint_racer_language:_dlc_1/gameplay/medal_finish/silver
execute if entity @s[scores={oTimer=1,goldTR=1}] run function sprint_racer_language:_dlc_1/gameplay/medal_finish/gold
execute if entity @s[scores={oTimer=1,bestTR=1}] run function sprint_racer_language:_dlc_1/gameplay/medal_finish/best