scoreboard players set @s ranking 1000000

scoreboard players operation @s bestTime = @s currentTime
scoreboard players operation @s ranking -= @s currentTime

scoreboard players operation @s bestSplit1 = @s currentSplit1
scoreboard players operation @s bestSplit2 = @s currentSplit2
scoreboard players operation @s bestSplit3 = @s currentSplit3
scoreboard players operation @s bestSplit4 = @s currentSplit4
scoreboard players operation @s bestSplit5 = @s currentSplit5
scoreboard players operation @s bestSplit6 = @s currentSplit6
scoreboard players operation @s bestSplit7 = @s currentSplit7
scoreboard players operation @s bestSplit8 = @s currentSplit8
scoreboard players operation @s bestSplit9 = @s currentSplit9
scoreboard players operation @s bestSplit10 = @s currentSplit10
scoreboard players operation @s bestSplit11 = @s currentSplit11
scoreboard players operation @s bestSplit12 = @s currentSplit12
scoreboard players operation @s bestSplit13 = @s currentSplit13
scoreboard players operation @s bestSplit14 = @s currentSplit14
scoreboard players operation @s bestSplit15 = @s currentSplit15
scoreboard players operation @s bestSplit16 = @s currentSplit16
scoreboard players operation @s bestSplit17 = @s currentSplit17
scoreboard players operation @s bestSplit18 = @s currentSplit18
scoreboard players operation @s bestSplit19 = @s currentSplit19
scoreboard players operation @s bestSplit20 = @s currentSplit20
scoreboard players operation @s bestSplit21 = @s currentSplit21
scoreboard players operation @s bestSplit22 = @s currentSplit22
scoreboard players operation @s bestSplit23 = @s currentSplit23
scoreboard players operation @s bestSplit24 = @s currentSplit24
scoreboard players operation @s bestSplit25 = @s currentSplit25

scoreboard players operation @s bestTimeMin = @s currentTimeMin
scoreboard players operation @s bestTimeSec = @s currentTimeSec
scoreboard players operation @s bestTimeMsec = @s currentTimeMsec

#execute if entity @s[scores={bestTimeSec=..9}] run tellraw @a ["",{selector:"@s",color:"yellow",bold:false},{text:" set a new personal best! ",color:"white"},{text:"["},{score:{name:"@s",objective:"bestTimeMin"},color:"yellow"},{text:":0",color:"yellow"},{score:{name:"@s",objective:"bestTimeSec"},color:"yellow"},{text:":",color:"yellow"},{score:{name:"@s",objective:"bestTimeMsec"},color:"yellow"},{text:"]",color:"yellow"}]
#execute if entity @s[scores={bestTimeSec=10..}] run tellraw @a ["",{selector:"@s",color:"yellow",bold:false},{text:" set a new personal best! ",color:"white"},{text:"["},{score:{name:"@s",objective:"bestTimeMin"},color:"yellow"},{text:":",color:"yellow"},{score:{name:"@s",objective:"bestTimeSec"},color:"yellow"},{text:":",color:"yellow"},{score:{name:"@s",objective:"bestTimeMsec"},color:"yellow"},{text:"]",color:"yellow"}]