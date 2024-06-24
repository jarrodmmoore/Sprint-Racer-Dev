#each tick, only 4 random players are chosen to check through nbt for all titled items
#limited because this would otherwise get stupid expensive with higher player counts
#players run this function if they were NOT one of the 4 random players

#check if the held item has a title. if not, stop checking for nbt stuff and let the server breathe
scoreboard players set #hotbartitle math 0
execute if entity @s[tag=playing] if items entity @s weapon.mainhand *[custom_data~{itemhastitle:1b}] run scoreboard players set #hotbartitle math 1

#hide actionbar title right away if no titled item is held
execute if score #hotbartitle math matches 0 run function sprint_racer:game_logic/0/missing_rp_warning