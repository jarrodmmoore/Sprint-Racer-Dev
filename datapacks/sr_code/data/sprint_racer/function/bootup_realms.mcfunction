#scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] optRAIcount 4
#scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] optBAIcount 4
#tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add RAIautocount
#tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add BAIautocount

tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove autotick
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] remove halftick
tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add moretick

tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add noMusicReset

#scoreboard players set @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1,tag=realms,tag=optVote] defLobbyTime 30

#tag @e[type=armor_stand,tag=w,x=1560,y=150,z=406,distance=..1] add nospeedo
#bossbar set minecraft:speedo players

function sprint_racer:game_logic/0/props/remove_options_signs