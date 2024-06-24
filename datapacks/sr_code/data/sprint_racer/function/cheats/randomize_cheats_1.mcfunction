#run by "@e[tag=cheats]"
tag @s remove 01a
tag @s remove 02a
tag @s remove 03a
tag @s remove 04a
tag @s remove 05a
tag @s remove 06a
tag @s remove 07a
tag @s remove 08a
tag @s remove 09a
tag @s remove 10a
tag @s remove 11a
tag @s remove 12a
tag @s remove 13a
tag @s remove 14a
tag @s remove 15a
tag @s remove 16a
tag @s remove 17a
tag @s remove 18a
tag @s remove 19a
tag @s remove 20a
tag @s remove 21a
tag @s remove 22a
tag @s remove 23a
tag @s remove 24a
tag @s remove 25a
tag @s remove 26a
tag @s remove 27a
tag @s remove 28a
tag @s remove 29a
tag @s remove 30a
tag @s remove 31a
tag @s remove 32a
tag @s remove 33a
tag @s remove 34a
tag @s remove 35a
tag @s remove 36a

tag @s remove 39a
tag @s remove 40a
tag @s remove 41a
tag @s remove 42a
tag @s remove 43a
tag @s remove 44a

tag @s remove 45a
tag @s remove 46a
tag @s remove 47a
tag @s remove 48a
tag @s remove 49a
tag @s remove 50a
tag @s remove 51a
tag @s remove 52a
tag @s remove 53a
tag @s remove 54a
tag @s remove 55a
tag @s remove 56a
tag @s remove 57a
tag @s remove 58a
tag @s remove 59a
tag @s remove 60a
tag @s remove 61a
tag @s remove 62a

#put on anywhere between 1 and 9 cheats (or 0? possible that attempts to activate a cheat will fail)
scoreboard players operation @s math = @e[limit=1,sort=random,type=armor_stand,tag=random,scores={rNumber=6..50}] rNumber
#execute if entity @s[scores={math=0..5}] run scoreboard players set @s math2 0
execute if entity @s[scores={math=6..10}] run scoreboard players set @s math2 1
execute if entity @s[scores={math=11..15}] run scoreboard players set @s math2 2
execute if entity @s[scores={math=16..20}] run scoreboard players set @s math2 3
execute if entity @s[scores={math=21..30}] run scoreboard players set @s math2 4
execute if entity @s[scores={math=31..38}] run scoreboard players set @s math2 5
execute if entity @s[scores={math=39..42}] run scoreboard players set @s math2 6
execute if entity @s[scores={math=43..45}] run scoreboard players set @s math2 7
execute if entity @s[scores={math=46..48}] run scoreboard players set @s math2 8
execute if entity @s[scores={math=49..50}] run scoreboard players set @s math2 9

##################

tag @e[tag=random,type=armor_stand,tag=rChtViable] remove rChtViable

scoreboard players set #randomRange value 0

execute if entity @s[tag=01] run scoreboard players add #randomRange value 1
execute if entity @s[tag=02] run scoreboard players add #randomRange value 1
execute if entity @s[tag=03] run scoreboard players add #randomRange value 1
execute if entity @s[tag=04] run scoreboard players add #randomRange value 1
execute if entity @s[tag=05] run scoreboard players add #randomRange value 1
execute if entity @s[tag=06] run scoreboard players add #randomRange value 1
execute if entity @s[tag=07] run scoreboard players add #randomRange value 1
execute if entity @s[tag=08] run scoreboard players add #randomRange value 1
execute if entity @s[tag=09] run scoreboard players add #randomRange value 1
execute if entity @s[tag=10] run scoreboard players add #randomRange value 1
execute if entity @s[tag=11] run scoreboard players add #randomRange value 1
execute if entity @s[tag=12] run scoreboard players add #randomRange value 1
execute if entity @s[tag=13] run scoreboard players add #randomRange value 1
execute if entity @s[tag=14] run scoreboard players add #randomRange value 1
execute if entity @s[tag=15] run scoreboard players add #randomRange value 1
execute if entity @s[tag=16] run scoreboard players add #randomRange value 1
execute if entity @s[tag=17] run scoreboard players add #randomRange value 1
execute if entity @s[tag=18] run scoreboard players add #randomRange value 1
execute if entity @s[tag=19] run scoreboard players add #randomRange value 1
execute if entity @s[tag=20] run scoreboard players add #randomRange value 1
execute if entity @s[tag=21] run scoreboard players add #randomRange value 1
execute if entity @s[tag=22] run scoreboard players add #randomRange value 1
execute if entity @s[tag=23] run scoreboard players add #randomRange value 1
execute if entity @s[tag=24] run scoreboard players add #randomRange value 1
execute if entity @s[tag=25] run scoreboard players add #randomRange value 1
execute if entity @s[tag=26] run scoreboard players add #randomRange value 1
execute if entity @s[tag=27] run scoreboard players add #randomRange value 1
execute if entity @s[tag=28] run scoreboard players add #randomRange value 1
execute if entity @s[tag=29] run scoreboard players add #randomRange value 1
execute if entity @s[tag=30] run scoreboard players add #randomRange value 1
execute if entity @s[tag=31] run scoreboard players add #randomRange value 1
execute if entity @s[tag=32] run scoreboard players add #randomRange value 1
execute if entity @s[tag=33] run scoreboard players add #randomRange value 1
execute if entity @s[tag=34] run scoreboard players add #randomRange value 1
execute if entity @s[tag=35] run scoreboard players add #randomRange value 1
execute if entity @s[tag=36] run scoreboard players add #randomRange value 1
#nope for 37 and 38...
execute if entity @s[tag=39] run scoreboard players add #randomRange value 1
execute if entity @s[tag=40] run scoreboard players add #randomRange value 1
execute if entity @s[tag=41] run scoreboard players add #randomRange value 1
execute if entity @s[tag=42] run scoreboard players add #randomRange value 1
execute if entity @s[tag=43] run scoreboard players add #randomRange value 1
execute if entity @s[tag=44] run scoreboard players add #randomRange value 1
execute if entity @s[tag=45] run scoreboard players add #randomRange value 1
#nope for 46...
execute if entity @s[tag=47] run scoreboard players add #randomRange value 1
execute if entity @s[tag=48] run scoreboard players add #randomRange value 1
execute if entity @s[tag=49] run scoreboard players add #randomRange value 1
execute if entity @s[tag=50] run scoreboard players add #randomRange value 1
execute if entity @s[tag=51] run scoreboard players add #randomRange value 1
execute if entity @s[tag=52] run scoreboard players add #randomRange value 1
execute if entity @s[tag=53] run scoreboard players add #randomRange value 1
#nope for 54, 55, 56
execute if entity @s[tag=57] run scoreboard players add #randomRange value 1
execute if entity @s[tag=58] run scoreboard players add #randomRange value 1
#nope for 59
execute if entity @s[tag=60] run scoreboard players add #randomRange value 1
execute if entity @s[tag=61] run scoreboard players add #randomRange value 1
execute if entity @s[tag=62] run scoreboard players add #randomRange value 1

#55 possible cheats to account for

execute if score #randomRange value matches 1..2 run tag @e[tag=random,type=armor_stand,scores={rNumber=1}] add rChtViable
execute if score #randomRange value matches 3..4 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..2}] add rChtViable
execute if score #randomRange value matches 5..6 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..3}] add rChtViable
execute if score #randomRange value matches 7..8 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..4}] add rChtViable
execute if score #randomRange value matches 9..10 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..5}] add rChtViable
execute if score #randomRange value matches 11..12 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..6}] add rChtViable
execute if score #randomRange value matches 13..14 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..7}] add rChtViable
execute if score #randomRange value matches 15..16 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..8}] add rChtViable
execute if score #randomRange value matches 17..18 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..9}] add rChtViable
execute if score #randomRange value matches 19..20 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..10}] add rChtViable
execute if score #randomRange value matches 21..22 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..11}] add rChtViable
execute if score #randomRange value matches 23..24 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..12}] add rChtViable
execute if score #randomRange value matches 25..26 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..13}] add rChtViable

execute if score #randomRange value matches 27..28 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..14}] add rChtViable
execute if score #randomRange value matches 29..30 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..15}] add rChtViable
execute if score #randomRange value matches 31..32 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..16}] add rChtViable
execute if score #randomRange value matches 33..34 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..17}] add rChtViable
execute if score #randomRange value matches 35..36 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..18}] add rChtViable
execute if score #randomRange value matches 37..38 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..19}] add rChtViable
execute if score #randomRange value matches 39..40 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..20}] add rChtViable
execute if score #randomRange value matches 41..42 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..21}] add rChtViable
execute if score #randomRange value matches 43..44 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..22}] add rChtViable
execute if score #randomRange value matches 45..46 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..23}] add rChtViable
execute if score #randomRange value matches 47..48 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..24}] add rChtViable
execute if score #randomRange value matches 49..50 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..25}] add rChtViable
execute if score #randomRange value matches 51..52 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..26}] add rChtViable
execute if score #randomRange value matches 53..54 run tag @e[tag=random,type=armor_stand,scores={rNumber=1..27}] add rChtViable
execute if score #randomRange value matches 55.. run tag @e[tag=random,type=armor_stand,scores={rNumber=1..28}] add rChtViable

##################


#now select the cheats...
execute if entity @s[scores={math2=1..}] run function sprint_racer:cheats/randomize_cheats_2

#clean up tags
tag @e[tag=random,type=armor_stand,tag=rChtViable] remove rChtViable


#random delay before next choose, somewhere between 11sec and 8min
scoreboard players operation @s math = @e[limit=1,sort=random,type=armor_stand,tag=random,scores={rNumber=1..41}] rNumber
scoreboard players set @s math2 222
scoreboard players operation @s math *= @s math2
scoreboard players operation @e[tag=w,type=armor_stand] randomizerTime = @s math

#say what's enabled
execute as @a[tag=!minChat] run function sprint_racer_language:_dlc_5/join_messages/cheats_are_enabled

#update the cheats list
function sprint_racer:cheats/check_for_cheats

#clear old items
function sprint_racer:cheats/clear_old_items

#don't fire off the inv menu stuff for no reason
execute if entity @s[tag=60a] run tag @a[gamemode=adventure] add ignoreInvMenu