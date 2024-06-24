#flipping this number because negative scoreboard values SUCK
scoreboard players set @s splitCalc 0
scoreboard players operation @s splitCalc -= @s splitTimeMsec
scoreboard players operation @s splitTimeMsec = @s splitCalc


#basically just spamming conversions here until everything is where we want it

scoreboard players add @s[scores={splitTimeMsec=600..}] splitTimeMin 1
scoreboard players remove @s[scores={splitTimeMsec=600..}] splitTimeMsec 600
scoreboard players add @s[scores={splitTimeMsec=600..}] splitTimeMin 1
scoreboard players remove @s[scores={splitTimeMsec=600..}] splitTimeMsec 600
scoreboard players add @s[scores={splitTimeMsec=600..}] splitTimeMin 1
scoreboard players remove @s[scores={splitTimeMsec=600..}] splitTimeMsec 600
scoreboard players add @s[scores={splitTimeMsec=600..}] splitTimeMin 1
scoreboard players remove @s[scores={splitTimeMsec=600..}] splitTimeMsec 600
scoreboard players add @s[scores={splitTimeMsec=600..}] splitTimeMin 1
scoreboard players remove @s[scores={splitTimeMsec=600..}] splitTimeMsec 600
scoreboard players add @s[scores={splitTimeMsec=600..}] splitTimeMin 1
scoreboard players remove @s[scores={splitTimeMsec=600..}] splitTimeMsec 600
scoreboard players add @s[scores={splitTimeMsec=600..}] splitTimeMin 1
scoreboard players remove @s[scores={splitTimeMsec=600..}] splitTimeMsec 600
scoreboard players add @s[scores={splitTimeMsec=600..}] splitTimeMin 1
scoreboard players remove @s[scores={splitTimeMsec=600..}] splitTimeMsec 600
scoreboard players add @s[scores={splitTimeMsec=600..}] splitTimeMin 1
scoreboard players remove @s[scores={splitTimeMsec=600..}] splitTimeMsec 600
scoreboard players add @s[scores={splitTimeMsec=600..}] splitTimeMin 1
scoreboard players remove @s[scores={splitTimeMsec=600..}] splitTimeMsec 600

scoreboard players add @s[scores={splitTimeMsec=100..}] splitTimeSec 10
scoreboard players remove @s[scores={splitTimeMsec=100..}] splitTimeMsec 100
scoreboard players add @s[scores={splitTimeMsec=100..}] splitTimeSec 10
scoreboard players remove @s[scores={splitTimeMsec=100..}] splitTimeMsec 100
scoreboard players add @s[scores={splitTimeMsec=100..}] splitTimeSec 10
scoreboard players remove @s[scores={splitTimeMsec=100..}] splitTimeMsec 100
scoreboard players add @s[scores={splitTimeMsec=100..}] splitTimeSec 10
scoreboard players remove @s[scores={splitTimeMsec=100..}] splitTimeMsec 100
scoreboard players add @s[scores={splitTimeMsec=100..}] splitTimeSec 10
scoreboard players remove @s[scores={splitTimeMsec=100..}] splitTimeMsec 100
scoreboard players add @s[scores={splitTimeMsec=100..}] splitTimeSec 10
scoreboard players remove @s[scores={splitTimeMsec=100..}] splitTimeMsec 100


scoreboard players add @s[scores={splitTimeMsec=10..}] splitTimeSec 1
scoreboard players remove @s[scores={splitTimeMsec=10..}] splitTimeMsec 10
scoreboard players add @s[scores={splitTimeMsec=10..}] splitTimeSec 1
scoreboard players remove @s[scores={splitTimeMsec=10..}] splitTimeMsec 10
scoreboard players add @s[scores={splitTimeMsec=10..}] splitTimeSec 1
scoreboard players remove @s[scores={splitTimeMsec=10..}] splitTimeMsec 10
scoreboard players add @s[scores={splitTimeMsec=10..}] splitTimeSec 1
scoreboard players remove @s[scores={splitTimeMsec=10..}] splitTimeMsec 10
scoreboard players add @s[scores={splitTimeMsec=10..}] splitTimeSec 1
scoreboard players remove @s[scores={splitTimeMsec=10..}] splitTimeMsec 10
scoreboard players add @s[scores={splitTimeMsec=10..}] splitTimeSec 1
scoreboard players remove @s[scores={splitTimeMsec=10..}] splitTimeMsec 10
scoreboard players add @s[scores={splitTimeMsec=10..}] splitTimeSec 1
scoreboard players remove @s[scores={splitTimeMsec=10..}] splitTimeMsec 10
scoreboard players add @s[scores={splitTimeMsec=10..}] splitTimeSec 1
scoreboard players remove @s[scores={splitTimeMsec=10..}] splitTimeMsec 10
scoreboard players add @s[scores={splitTimeMsec=10..}] splitTimeSec 1
scoreboard players remove @s[scores={splitTimeMsec=10..}] splitTimeMsec 10
scoreboard players add @s[scores={splitTimeMsec=10..}] splitTimeSec 1
scoreboard players remove @s[scores={splitTimeMsec=10..}] splitTimeMsec 10


tag @s add getSplit
function sprint_racer_language:gameplay/show_lap_times/compare_ahead