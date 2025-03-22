tag @s add killed
tag @s add myself

tag @a[tag=last_death] remove last_death
tag @s add last_death

#find the player who killed ye

#old method
#execute as @e[tag=ai] run scoreboard players operation @s dummyID = @s playerID
#execute as @a[tag=playing] run scoreboard players operation @s dummyID = @s playerID
#scoreboard players operation @e[tag=ai] dummyID -= @s attackerID
#scoreboard players operation @a[tag=playing] dummyID -= @s attackerID
#tag @e[tag=ai,scores={dummyID=0,playerID=1..}] add killer
#tag @a[tag=playing,scores={dummyID=0,playerID=1..}] add killer

#new method
scoreboard players operation #ded_player attackerID = @s attackerID
execute as @a[tag=playing] if score @s playerID = #ded_player attackerID run tag @s add killer
execute as @e[tag=ai] if score @s playerID = #ded_player attackerID run tag @s add killer

#if directly killed by another player, override attackerID stuff and give the assailant the KO
#CUT due to being unnecessary and prone to causing lots of KO credit problems
#execute if entity @s[scores={killedByPlayer=..9}] run tag @e[tag=killer] remove killer
#execute if entity @s[scores={killedByPlayer=..9}] run tag @a[tag=killer] remove killer
#execute if entity @s[scores={killedByPlayer=..9}] at @s run tag @a[limit=1,sort=nearest,tag=playing,gamemode=adventure,tag=!myself,tag=!killed] add killer
#execute if entity @s[scores={killedByZombie=..9}] run tag @a[tag=killer] remove killer
#execute if entity @s[scores={killedByZombie=..9}] run tag @e[tag=killer] remove killer
#execute if entity @s[scores={killedByZombie=..9}] at @s run tag @e[limit=1,sort=nearest,tag=!myself,tag=!killed,tag=ai] add killer

#test
#execute as @e[tag=killer] run say killer
#tellraw @a ["",{text:" "}]

#give KO to whoever has the killer tag, provided it is not yourelf
execute if entity @s[scores={attackTime=1..}] as @a[tag=killer,tag=!killed] at @s run function sprint_racer:ko_logic/got_ko
execute if entity @s[scores={attackTime=1..}] as @e[tag=ai,tag=killer,tag=!killed] at @s run function sprint_racer:ko_logic/got_ko

#DISABLED, self destruction removes 1 KO. Removed for being not 100% reliable
#execute unless entity @a[tag=killer,tag=!killed] run function sprint_racer:ko_logic/self_destruct

scoreboard players reset @a[tag=killer] killPlayer
scoreboard players reset @s killedByPlayer
scoreboard players reset @s killedByZombie

tag @a[tag=killer] remove killer
tag @e[tag=killer,type=!player] remove killer
tag @s remove killed
tag @s remove myself
scoreboard players reset @s death2

#now we forget who attacked us
scoreboard players set @s attackTime 0
scoreboard players set @s attackerID 0