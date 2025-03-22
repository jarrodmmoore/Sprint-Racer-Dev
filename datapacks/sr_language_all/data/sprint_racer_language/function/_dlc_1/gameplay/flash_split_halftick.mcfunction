scoreboard players add @s oTimer 1
scoreboard players set @s[scores={oTimer=2..}] oTimer 0

title @s[scores={oTimer=1..}] actionbar [""]
execute if entity @s[tag=!darkHUD,scores={oTimer=..0,storedTimeSec=..9}] run title @s actionbar ["",{score:{name:"@s",objective:"storedTimeMin"},color:"white"},{text:":0",color:"white"},{score:{name:"@s",objective:"storedTimeSec"},color:"white"},{text:":",color:"white"},{score:{name:"@s",objective:"storedTimeMsec"},color:"white"}]
execute if entity @s[tag=!darkHUD,scores={oTimer=..0,storedTimeSec=10..}] run title @s actionbar ["",{score:{name:"@s",objective:"storedTimeMin"},color:"white"},{text:":",color:"white"},{score:{name:"@s",objective:"storedTimeSec"},color:"white"},{text:":",color:"white"},{score:{name:"@s",objective:"storedTimeMsec"},color:"white"}]

execute if entity @s[tag=darkHUD,scores={oTimer=..0,storedTimeSec=..9}] run title @s actionbar ["",{score:{name:"@s",objective:"storedTimeMin"},color:"gray"},{text:":0",color:"gray"},{score:{name:"@s",objective:"storedTimeSec"},color:"gray"},{text:":",color:"gray"},{score:{name:"@s",objective:"storedTimeMsec"},color:"gray"}]
execute if entity @s[tag=darkHUD,scores={oTimer=..0,storedTimeSec=10..}] run title @s actionbar ["",{score:{name:"@s",objective:"storedTimeMin"},color:"gray"},{text:":",color:"gray"},{score:{name:"@s",objective:"storedTimeSec"},color:"gray"},{text:":",color:"gray"},{score:{name:"@s",objective:"storedTimeMsec"},color:"gray"}]