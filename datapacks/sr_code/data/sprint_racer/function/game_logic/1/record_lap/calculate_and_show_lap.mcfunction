#if somebody finishes a lap with 513 minutes on the clock then this will break lol
#if somebody does this their msec counter is going to explode

scoreboard players set @s lapTimeMin 0
scoreboard players set @s lapTimeSec 0
scoreboard players add @s lapTimeMsec 0

scoreboard players add @s[scores={lapTimeMsec=307200..}] lapTimeMin 512
scoreboard players remove @s[scores={lapTimeMsec=307200..}] lapTimeMsec 307200
scoreboard players add @s[scores={lapTimeMsec=153600..}] lapTimeMin 256
scoreboard players remove @s[scores={lapTimeMsec=153600..}] lapTimeMsec 153600
scoreboard players add @s[scores={lapTimeMsec=76800..}] lapTimeMin 128
scoreboard players remove @s[scores={lapTimeMsec=76800..}] lapTimeMsec 76800
scoreboard players add @s[scores={lapTimeMsec=38400..}] lapTimeMin 64
scoreboard players remove @s[scores={lapTimeMsec=38400..}] lapTimeMsec 38400
scoreboard players add @s[scores={lapTimeMsec=19200..}] lapTimeMin 32
scoreboard players remove @s[scores={lapTimeMsec=19200..}] lapTimeMsec 19200
scoreboard players add @s[scores={lapTimeMsec=9600..}] lapTimeMin 16
scoreboard players remove @s[scores={lapTimeMsec=9600..}] lapTimeMsec 9600
scoreboard players add @s[scores={lapTimeMsec=4800..}] lapTimeMin 8
scoreboard players remove @s[scores={lapTimeMsec=4800..}] lapTimeMsec 4800
scoreboard players add @s[scores={lapTimeMsec=2400..}] lapTimeMin 4
scoreboard players remove @s[scores={lapTimeMsec=2400..}] lapTimeMsec 2400
scoreboard players add @s[scores={lapTimeMsec=1200..}] lapTimeMin 2
scoreboard players remove @s[scores={lapTimeMsec=1200..}] lapTimeMsec 1200
scoreboard players add @s[scores={lapTimeMsec=600..}] lapTimeMin 1
scoreboard players remove @s[scores={lapTimeMsec=600..}] lapTimeMsec 600

scoreboard players add @s[scores={lapTimeMsec=100..}] lapTimeSec 10
scoreboard players remove @s[scores={lapTimeMsec=100..}] lapTimeMsec 100
scoreboard players add @s[scores={lapTimeMsec=100..}] lapTimeSec 10
scoreboard players remove @s[scores={lapTimeMsec=100..}] lapTimeMsec 100
scoreboard players add @s[scores={lapTimeMsec=100..}] lapTimeSec 10
scoreboard players remove @s[scores={lapTimeMsec=100..}] lapTimeMsec 100
scoreboard players add @s[scores={lapTimeMsec=100..}] lapTimeSec 10
scoreboard players remove @s[scores={lapTimeMsec=100..}] lapTimeMsec 100
scoreboard players add @s[scores={lapTimeMsec=100..}] lapTimeSec 10
scoreboard players remove @s[scores={lapTimeMsec=100..}] lapTimeMsec 100
scoreboard players add @s[scores={lapTimeMsec=100..}] lapTimeSec 10
scoreboard players remove @s[scores={lapTimeMsec=100..}] lapTimeMsec 100

scoreboard players add @s[scores={lapTimeMsec=10..}] lapTimeSec 1
scoreboard players remove @s[scores={lapTimeMsec=10..}] lapTimeMsec 10
scoreboard players add @s[scores={lapTimeMsec=10..}] lapTimeSec 1
scoreboard players remove @s[scores={lapTimeMsec=10..}] lapTimeMsec 10
scoreboard players add @s[scores={lapTimeMsec=10..}] lapTimeSec 1
scoreboard players remove @s[scores={lapTimeMsec=10..}] lapTimeMsec 10
scoreboard players add @s[scores={lapTimeMsec=10..}] lapTimeSec 1
scoreboard players remove @s[scores={lapTimeMsec=10..}] lapTimeMsec 10
scoreboard players add @s[scores={lapTimeMsec=10..}] lapTimeSec 1
scoreboard players remove @s[scores={lapTimeMsec=10..}] lapTimeMsec 10
scoreboard players add @s[scores={lapTimeMsec=10..}] lapTimeSec 1
scoreboard players remove @s[scores={lapTimeMsec=10..}] lapTimeMsec 10
scoreboard players add @s[scores={lapTimeMsec=10..}] lapTimeSec 1
scoreboard players remove @s[scores={lapTimeMsec=10..}] lapTimeMsec 10
scoreboard players add @s[scores={lapTimeMsec=10..}] lapTimeSec 1
scoreboard players remove @s[scores={lapTimeMsec=10..}] lapTimeMsec 10
scoreboard players add @s[scores={lapTimeMsec=10..}] lapTimeSec 1
scoreboard players remove @s[scores={lapTimeMsec=10..}] lapTimeMsec 10
scoreboard players add @s[scores={lapTimeMsec=10..}] lapTimeSec 1
scoreboard players remove @s[scores={lapTimeMsec=10..}] lapTimeMsec 10

execute if entity @s[scores={lapShowTime=..1}] run function sprint_racer_language:gameplay/show_lap_times/no_compare
execute if entity @s[scores={lapShowTime=2..25}] run function sprint_racer:game_logic/1/record_lap/lap_compare
execute if entity @s[scores={lapShowTime=26}] run function sprint_racer_language:_dlc_3/gameplay/cannot_count_above_25_laps