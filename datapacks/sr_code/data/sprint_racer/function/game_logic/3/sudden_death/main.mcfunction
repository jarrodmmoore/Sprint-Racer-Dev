bossbar set timeremaining players @a[tag=!bbarbump]
function sprint_racer_language:_dlc_1/gameplay/sudden_death_bossbar
tag @a[tag=bbarbump] remove bbarbump


#chaos!
execute if entity @s[scores={nodeTimeCycle=1}] run scoreboard players operation @s math = @e[limit=1,sort=random,scores={rNumber=1..10}] rNumber

#no traps teams mode
execute if entity @s[tag=!teamplay,scores={nodeTimeCycle=1,math=1..4}] as @e[tag=node,sort=random,limit=1] at @s run summon chicken ~ ~ ~ {Tags:["chickenmine","cmineset","trap"],attributes:[{id:"movement_speed",base:0}]}
execute if entity @s[tag=!teamplay,scores={nodeTimeCycle=1,math=5..6}] as @e[tag=node,sort=random,limit=1] at @s run summon chicken ~ ~ ~ {Tags:["chickenmine","cmineset","hyper","trap"],attributes:[{id:"movement_speed",base:0}]}
execute if entity @s[tag=!teamplay,scores={nodeTimeCycle=1,math=7..9}] as @e[tag=node,sort=random,limit=1] at @s run summon tnt ~ ~3 ~ {fuse:10000}
execute if entity @s[tag=!teamplay,scores={nodeTimeCycle=1,math=10}] as @e[tag=node,sort=random,limit=1] at @s run summon potion ~ ~ ~ {Motion:[0.0d,-0.5d,0.0d],Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:poison"}}}
execute if entity @s[tag=!teamplay,tag=halftick,scores={nodeTimeCycle=1,math=1..4}] as @e[tag=node,sort=random,limit=1] at @s run summon chicken ~ ~ ~ {Tags:["chickenmine","cmineset","trap"],attributes:[{id:"movement_speed",base:0}]}
execute if entity @s[tag=!teamplay,tag=halftick,scores={nodeTimeCycle=1,math=5..6}] as @e[tag=node,sort=random,limit=1] at @s run summon chicken ~ ~ ~ {Tags:["chickenmine","cmineset","hyper","trap"],attributes:[{id:"movement_speed",base:0}]}
execute if entity @s[tag=!teamplay,tag=halftick,scores={nodeTimeCycle=1,math=7..9}] as @e[tag=node,sort=random,limit=1] at @s run summon tnt ~ ~3 ~ {fuse:10000}
execute if entity @s[tag=!teamplay,tag=halftick,scores={nodeTimeCycle=1,math=10}] as @e[tag=node,sort=random,limit=1] at @s run summon potion ~ ~ ~ {Motion:[0.0d,-0.5d,0.0d],Potion:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:poison"}}}


#40sec, wither
execute if entity @s[scores={timeRemaining=..-800}] run effect give @e[tag=activeplayer,tag=!eliminated] wither 5 1

#50sec, more wither
execute if entity @s[scores={timeRemaining=..-1000}] run effect give @e[tag=activeplayer,tag=!eliminated] wither 5 3

#70sec, just eliminate random people regardless of hp, we need to move on already!
execute if entity @s[scores={timeRemaining=..-1400}] run scoreboard players set @a[limit=1,sort=random,tag=player,tag=!eliminated] playerLives 0
execute if entity @s[scores={timeRemaining=..-1400}] run scoreboard players set @e[limit=1,sort=random,tag=AImaster,tag=!aiDisable] playerLives 0