#sequence starts at gameTime=100000
scoreboard players set @s[scores={gameTime=..99999}] gameTime 100000

kill @e[tag=trap]
kill @e[type=tnt]

bossbar set minecraft:menutimer players

execute if entity @s[scores={gameTime=100000}] run function sprint_racer:clear_bossbars
execute if entity @s[scores={gameTime=100000}] run gamemode spectator @a
execute if entity @s[scores={gameTime=100000..100010}] run bossbar set timeremaining players
execute if entity @s[scores={gameTime=100000}] run function sprint_racer_language:gameplay/race_end/better_luck_next_time

execute if entity @s[tag=taValidFinish,scores={gameTime=100040}] run function sprint_racer_language:_dlc_1/gameplay/time_attack_sidebar
execute if entity @s[tag=taValidFinish,scores={gameTime=100040}] run function sprint_racer:game_logic/8/medal_award/setup

#no valid finish? skip most of this.
execute if entity @s[scores={gameTime=100030}] unless entity @s[tag=taValidFinish] run scoreboard players set @s gameTime 100220

#did we get medals?
execute if entity @s[tag=taValidFinish,scores={gameTime=100060}] run function sprint_racer:game_logic/8/medal_award/bronze
execute if entity @s[tag=taValidFinish,scores={gameTime=100080}] run function sprint_racer:game_logic/8/medal_award/silver
execute if entity @s[tag=taValidFinish,scores={gameTime=100100}] run function sprint_racer:game_logic/8/medal_award/gold
execute if entity @s[tag=taValidFinish,scores={gameTime=100120}] run function sprint_racer:game_logic/8/medal_award/diamond


#custom track testing, send back to editor
execute if entity @s[tag=customTesting,type=armor_stand,scores={gameTime=100150}] run function sprint_racer:game_logic/10/_initialize


#go back to track select
execute if entity @s[tag=!return2lobby,scores={gameTime=100160..}] run tag @s remove taValidFinish
execute if entity @s[tag=!return2lobby,scores={gameTime=100160..}] run tag @s add noTAmessage
execute if entity @s[tag=!return2lobby,scores={gameTime=100160..}] run function sprint_racer:game_logic/6/_initialize

#go back to lobby
execute if entity @s[tag=return2lobby,scores={gameTime=100160..}] run tag @s[tag=optChoose] add skiptochoose
execute if entity @s[tag=return2lobby,scores={gameTime=100160..}] run scoreboard players add @s roundNumber 1
execute if entity @s[tag=return2lobby,scores={gameTime=100160..}] run scoreboard players add @s roundNumber2 1
execute if entity @s[tag=return2lobby,scores={gameTime=100160..}] run scoreboard players add @a maturity 1
execute if entity @s[tag=return2lobby,scores={gameTime=100160..}] run function sprint_racer:game_logic/0/_initialize