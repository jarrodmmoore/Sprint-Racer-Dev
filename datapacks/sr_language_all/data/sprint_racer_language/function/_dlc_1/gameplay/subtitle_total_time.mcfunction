#use new HUD?
execute if score #bbPersonalize value matches 2 run title @a[tag=playing,tag=!finished,scores={subtitleDelay=..0}] subtitle [""]

#or use classic HUD?
execute unless score #bbPersonalize value matches 2 run function sprint_racer_language:_dlc_1/gameplay/subtitle_total_time_classic

#show to spectators no matter what
execute if entity @s[scores={currentTimeSec=..9}] run title @a[tag=!playing,tag=!miniHUD,scores={subtitleDelay=..0}] subtitle ["",{score:{name:"@s",objective:"currentTimeMin"}},{text:":0"},{score:{name:"@s",objective:"currentTimeSec"}},{text:":"},{score:{name:"@s",objective:"currentTimeMsec"}}]
execute if entity @s[scores={currentTimeSec=10..}] run title @a[tag=!playing,tag=!miniHUD,scores={subtitleDelay=..0}] subtitle ["",{score:{name:"@s",objective:"currentTimeMin"}},{text:":"},{score:{name:"@s",objective:"currentTimeSec"}},{text:":"},{score:{name:"@s",objective:"currentTimeMsec"}}]
