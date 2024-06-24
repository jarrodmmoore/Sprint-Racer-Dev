#scoreboard players set @e[tag=w,type=armor_stand] optRAIcount 3
#scoreboard players set @e[tag=w,type=armor_stand] optBAIcount 3
#tag @e[tag=w,type=armor_stand] add RAIautocount
#tag @e[tag=w,type=armor_stand] add BAIautocount

tag @e[tag=w,type=armor_stand] add autotick
tag @e[tag=w,type=armor_stand,scores={gameState=0}] add halftick
tag @e[tag=w,type=armor_stand] remove moretick

tag @e[tag=w,type=armor_stand] add noMusicReset

#scoreboard players set @e[tag=w,type=armor_stand,tag=realms,tag=optVote] defLobbyTime 30

#tag @e[tag=w,type=armor_stand] add nospeedo
#bossbar set minecraft:speedo players

function sprint_racer:game_logic/0/props/remove_options_signs