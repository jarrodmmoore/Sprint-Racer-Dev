#executed by "w", in this case...

tellraw @a[tag=!minChat] ["",{text:" "}]

#default game structure settings
tag @s add optRnB
tag @s remove optRace
tag @s remove optBattle

tag @s add optVote
tag @s remove optChoose
tag @s remove optRoulette
tag @s remove optRandom
tag @s remove optInOrder

#this catches an edge case, probably
tag @s remove choosingTrack

#items
tag @s add optItems
tag @s remove optItemsB
tag @s remove optNoItems
tag @s remove optItemsR

#item balance
tag @s add optBalance
tag @s add timeBalance

#extra chests
tag @s remove noExtraChest

#un-ban all items, too
tag @s remove banBattleBat
tag @s remove banNo1
tag @s remove banNo2
tag @s remove banNo3
tag @s remove banNo4
tag @s remove banNo5
tag @s remove banNo6
tag @s remove banNo7
tag @s remove banNo8
tag @s remove banNo9
tag @s remove banNo10
tag @s remove banNo11
tag @s remove banNo12
tag @s remove banNo13
tag @s remove banNo14
tag @s remove banNo15
tag @s remove banNo16
tag @s remove banNo17
tag @s remove banNo18
tag @s remove banNo19
tag @s remove banNo20

tag @s remove banEnchantBattleBat
tag @s remove banEnchant1
tag @s remove banEnchant2
tag @s remove banEnchant3
tag @s remove banEnchant4
tag @s remove banEnchant5
tag @s remove banEnchant6
tag @s remove banEnchant7
tag @s remove banEnchant8
tag @s remove banEnchant9
tag @s remove banEnchant10
tag @s remove banEnchant11
tag @s remove banEnchant12
tag @s remove banEnchant13
tag @s remove banEnchant14
tag @s remove banEnchant15
tag @s remove banEnchant16
tag @s remove banEnchant17
tag @s remove banEnchant18
tag @s remove banEnchant19
tag @s remove banEnchant20

tag @s remove banObliterator

tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=1..20}] remove capsuleBan
fill 1601 79 422 1621 79 433 oak_log replace spruce_log
fill 1601 79 422 1621 79 433 oak_log replace dark_oak_log

#check chest categories for voids
scoreboard players set #no_cat_check value 1
function sprint_racer:game_logic/0/toggle_item/check_color_red
function sprint_racer:game_logic/0/toggle_item/check_color_yellow
function sprint_racer:game_logic/0/toggle_item/check_color_blue
function sprint_racer:game_logic/0/toggle_item/check_color_green
scoreboard players set #no_cat_check value 0
function sprint_racer:game_logic/0/toggle_item/check_color_purple



#update all signs (this is overkill since we're only dealing with game structure and items, but whatever)
function sprint_racer_language:_dlc_4/lobby/options/update_all_options_signs

#feedback
execute as @a at @s run playsound minecraft:block.note_block.hat master @s
tellraw @a[tag=!minChat] ["",{translate:"sr.lobby.options.restored_defaults",color:"green"}]

tag @a[tag=clickSign] remove clickSign

scoreboard players set @s roundNumber 1
scoreboard players set @s roundNumber2 1

#CLEAR POINTS
function sprint_racer:game_logic/0/clear_points

execute if entity @s[scores={gameState=0}] run function sprint_racer_language:lobby/reset_lobby
execute if entity @s[scores={gameState=0}] run function sprint_racer:game_logic/0/_initialize
execute if entity @s[scores={gameState=0}] run function sprint_racer:game_logic/0/sidebar/__index_main