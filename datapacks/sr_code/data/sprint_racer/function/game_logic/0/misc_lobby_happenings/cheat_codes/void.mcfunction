#stuff
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1] add foundacheat
tag @e[tag=cheats,x=1548,y=148,z=422,distance=..1] add 38

#set display
scoreboard players set @e[tag=cheats,x=1548,y=148,z=422,distance=..1] aiHoldingItem 38
function sprint_racer:game_logic/0/misc_lobby_happenings/cheat_menu/_index_cheat_menu


scoreboard players set @e[tag=cheats,x=1548,y=148,z=422,distance=..1,type=armor_stand] aiHasItem1 0

#send right to cotton void
tag @e[tag=chosenTrack] remove chosenTrack
tag @e[type=armor_stand,tag=random,x=1548,y=155,z=406,distance=..1,scores={rNumber=50}] add chosenTrack
tag @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand] add needAnnounce
function sprint_racer:game_logic/1/_initialize
schedule function sprint_racer:game_logic/1/_initialize 1t