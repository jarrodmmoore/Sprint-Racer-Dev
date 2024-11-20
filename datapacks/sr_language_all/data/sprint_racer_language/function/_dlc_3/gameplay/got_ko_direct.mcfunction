summon text_display ~ ~1.6 ~ {text:'{"translate":"sr.game.ko","color":"green","bold":true}',Tags:["setscore","health_text"],billboard:"center",teleport_duration:20,shadow:1b,see_through:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},background:0}

execute if entity @a[tag=last_death] run tellraw @s ["",{"translate":"sr.game.you_got_a_ko","color":"green","bold":true},{"text":" >> ","color":"green","bold":true},{"selector":"@a[tag=last_death,limit=1,sort=nearest]"}]
execute unless entity @a[tag=last_death] run tellraw @s ["",{"translate":"sr.game.you_got_a_ko","color":"green","bold":true}]

execute as @e[tag=setscore,distance=..3] run function sprint_racer:damage_logic/damage_number_entity_slow