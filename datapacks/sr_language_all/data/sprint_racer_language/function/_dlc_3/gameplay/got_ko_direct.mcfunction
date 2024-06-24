summon armor_stand ~ ~1.6 ~ {CustomName:'{"translate":"sr.game.ko","color":"green","bold":true}',CustomNameVisible:1b,Marker:1b,Invulnerable:1,Invisible:1,Tags:["setscore","floatup"]}

execute if entity @a[tag=last_death] run tellraw @s ["",{"translate":"sr.game.you_got_a_ko","color":"green","bold":true},{"text":" >> ","color":"green","bold":true},{"selector":"@a[tag=last_death,limit=1,sort=nearest]"}]
execute unless entity @a[tag=last_death] run tellraw @s ["",{"translate":"sr.game.you_got_a_ko","color":"green","bold":true}]

scoreboard players set @e[tag=setscore] lifespan 20
effect give @e[tag=setscore] levitation 10 1 true
tag @e[tag=setscore] remove setscore