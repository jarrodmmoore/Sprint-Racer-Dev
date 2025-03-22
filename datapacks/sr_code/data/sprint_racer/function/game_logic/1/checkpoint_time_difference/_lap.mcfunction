scoreboard players set @s itemSplitTime 0


tag @s remove new_split
tag @s remove lap_behind

#gameTime is used as a base. this is completely arbitrary but it works as a measure of time
scoreboard players operation @s itemSplitTime = @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] gameTime

#we're the first person to hit this checkpoint on this lap (1st), so we become the standard
execute if score @s lap > finishLine lap run tag @s add new_split
execute if entity @s[tag=new_split] run scoreboard players operation finishLine itemSplitTime = @s itemSplitTime
execute if entity @s[tag=new_split] run scoreboard players operation finishLine lap = @s lap
execute if entity @s[tag=new_split] run scoreboard players set @s itemSplitTime 0

#we're a lap behind! get good items no matter what (if using time balancing)
execute if score @s lap < finishLine lap run tag @s add lap_behind
execute if entity @s[tag=lap_behind] run scoreboard players set @s itemSplitTime 999999

#same lap, find time difference
execute if entity @s[tag=!new_split,tag=!lap_behind] run scoreboard players operation @s itemSplitTime -= finishLine itemSplitTime

tag @s remove new_split
tag @s remove lap_behind


#thresholds for item balance (adjustable?)
scoreboard players set @s itemLuck 1
execute if score @s itemSplitTime > global timeThreshold2 run scoreboard players set @s itemLuck 2
execute if score @s itemSplitTime > global timeThreshold3 run scoreboard players set @s itemLuck 3
execute if score @s itemSplitTime > global timeThreshold4 run scoreboard players set @s itemLuck 4
execute if score @s itemSplitTime > global timeThreshold5 run scoreboard players set @s itemLuck 5
execute if score @s itemSplitTime > global timeThreshold6 run scoreboard players set @s itemLuck 6

#DEV
#tellraw @s ["",{text:"[DEV] Time behind 1st: "},{score:{name:"@s",objective:"itemSplitTime"}}]
#tellraw @s ["",{text:"[DEV] Item luck is now: "},{score:{name:"@s",objective:"itemLuck"}}]

#rival ai gets slightly better items
execute if entity @s[tag=ai,tag=ai_rival] run scoreboard players add @s[scores={itemLuck=..5}] itemLuck 1

#inverted balance cheat
execute if entity @e[tag=22a,tag=cheats,x=1548,y=148,z=422,distance=..1,limit=1,type=armor_stand] run function sprint_racer:items/invert_balance_self

#item luck stat
scoreboard players operation @s[type=player] itemLuck += @s cStatLuck
scoreboard players set @s[scores={itemLuck=7..}] itemLuck 6
scoreboard players set @s[scores={itemLuck=..0}] itemLuck 1