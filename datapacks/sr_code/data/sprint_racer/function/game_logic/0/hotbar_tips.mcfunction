#this was recently split into multiple functions
#the idea here is to keep the number of nbt checks happening per player to minimum

#check if the held item has a title. if not, stop checking for nbt stuff and let the server breathe
scoreboard players set #hotbartitle math 0
execute if entity @s[tag=playing] if items entity @s weapon.mainhand *[custom_data~{itemhastitle:1b}] run scoreboard players set #hotbartitle math 1

execute if score #hotbartitle math matches 1 run function sprint_racer:game_logic/0/hotbar_tips_titles
execute if score #hotbartitle math matches 0 run function sprint_racer:game_logic/0/missing_rp_warning

tag @s add got_tips