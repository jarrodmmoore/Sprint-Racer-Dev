scoreboard players set #getBattleRank value 1
scoreboard players set #nextBattleRank value 1
scoreboard players set #bestKOcount value -999999
scoreboard players add @a KOs 0
scoreboard players add @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] KOs 0

#keep track of how many unique ranks we give out
scoreboard players set @s playerCountC 0

#default values
scoreboard players set @a[tag=playing] battlePos 1
scoreboard players set @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] battlePos 1

#clear tags
tag @a[tag=playing] remove gotRank
tag @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1] remove gotRank

#don't let players with negative KOs mess with calc
tag @a[tag=players,scores={KOs=..-999999}] add gotRank
tag @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={KOs=..-999999}] add gotRank

scoreboard players set #allowRecursions value 256
##########################################
#cycle if we have untagged players
scoreboard players set #untagged value 0
execute as @a[tag=playing,tag=!gotRank] run scoreboard players add #untagged value 1
execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,tag=!gotRank] run scoreboard players add #untagged value 1
execute if score #untagged value matches 1.. if score #allowRecursions value matches 1.. run function sprint_racer:game_logic/3/fast_rank_calc/cycle
##########################################

#apply rank
execute as @a[scores={battlePos=1..}] run scoreboard players operation @s battPosDisplay = @s battlePos
execute as @a[scores={battlePos=1..}] run scoreboard players operation @s itemPosition = @s battPosDisplay
execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={battlePos=1..}] run scoreboard players operation @s battPosDisplay = @s battlePos
execute as @e[tag=AImaster,type=armor_stand,x=1548,y=155,z=406,distance=..1,scores={battlePos=1..}] run scoreboard players operation @s itemPosition = @s battPosDisplay

#debug
#tellraw @a ["",{text:"playerCountC = "},{score:{name:"@s",objective:"playerCountC"}}]