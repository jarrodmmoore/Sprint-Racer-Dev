#stuff
tag @e[tag=cheats] add foundacheat
tag @e[tag=cheats] add 38

#set display
scoreboard players set @e[tag=cheats] aiHoldingItem 38
function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/_index_cheat_menu


scoreboard players set @e[tag=cheats,type=armor_stand] aiHasItem1 0

#send right to cotton void
tag @e[tag=chosenTrack] remove chosenTrack
tag @e[type=armor_stand,tag=random,scores={rNumber=50}] add chosenTrack
tag @e[tag=w,type=armor_stand] add needAnnounce
function sprint_racer:game_logic/1/_initialize
schedule function sprint_racer:game_logic/1/_initialize 1t