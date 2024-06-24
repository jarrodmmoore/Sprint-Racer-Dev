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


#alright, after like 5 billion steps we can finally DISPLAY THE SPLIT WOOO
execute if entity @s[scores={splitTimeSec=..9}] run title @s subtitle ["",{"text":"+","color":"red","bold":true},{"score":{"name":"@s","objective":"splitTimeMin"},"color":"red","bold":true},{"text":":0","color":"red","bold":true},{"score":{"name":"@s","objective":"splitTimeSec"},"color":"red","bold":true},{"text":":","color":"red","bold":true},{"score":{"name":"@s","objective":"splitTimeMsec"},"color":"red","bold":true}]
execute if entity @s[scores={splitTimeSec=10..}] run title @s subtitle ["",{"text":"+","color":"red","bold":true},{"score":{"name":"@s","objective":"splitTimeMin"},"color":"red","bold":true},{"text":":","color":"red","bold":true},{"score":{"name":"@s","objective":"splitTimeSec"},"color":"red","bold":true},{"text":":","color":"red","bold":true},{"score":{"name":"@s","objective":"splitTimeMsec"},"color":"red","bold":true}]
title @s title [""]

tag @s add getSplit
tag @s add splitBehind
scoreboard players set @s subtitleDelay 40