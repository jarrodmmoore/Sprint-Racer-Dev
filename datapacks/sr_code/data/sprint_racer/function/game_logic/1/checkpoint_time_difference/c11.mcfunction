tag @s remove new_split
tag @s remove lap_behind

#gameTime is used as a base. this is completely arbitrary but it works as a measure of time
scoreboard players operation @s itemSplitTime = @e[tag=w,type=armor_stand,limit=1] gameTime

#we're the first person to hit this checkpoint on this lap (1st), so we become the standard
execute if score @s lap > check11 lap run tag @s add new_split
execute if entity @s[tag=new_split] run scoreboard players operation check11 itemSplitTime = @s itemSplitTime
execute if entity @s[tag=new_split] run scoreboard players operation check11 lap = @s lap
execute if entity @s[tag=new_split] run scoreboard players set @s itemSplitTime 0

#we're a lap behind! get good items no matter what (if using time balancing)
execute if score @s lap < check11 lap run tag @s add lap_behind
execute if entity @s[tag=lap_behind] run scoreboard players set @s itemSplitTime 999999

#same lap, find time difference
execute if entity @s[tag=!new_split,tag=!lap_behind] run scoreboard players operation @s itemSplitTime -= check11 itemSplitTime

tag @s remove new_split
tag @s remove lap_behind