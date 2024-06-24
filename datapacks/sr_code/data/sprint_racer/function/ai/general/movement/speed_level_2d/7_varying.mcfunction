#originally 0.0071

#very easy
execute store result entity @s[tag=very_easy_ai,scores={aiSkill=..1}] Motion[0] double 0.0068 run scoreboard players get @s mvmt_coord_dx
#execute store result entity @s[scores={aiSkill=..1}] Motion[1] double 0.0067 run scoreboard players get @s mvmt_coord_dy
execute store result entity @s[tag=very_easy_ai,scores={aiSkill=..1}] Motion[2] double 0.0068 run scoreboard players get @s mvmt_coord_dz

#easy
execute store result entity @s[tag=!very_easy_ai,scores={aiSkill=..1}] Motion[0] double 0.0070 run scoreboard players get @s mvmt_coord_dx
#execute store result entity @s[scores={aiSkill=..1}] Motion[1] double 0.0069 run scoreboard players get @s mvmt_coord_dy
execute store result entity @s[tag=!very_easy_ai,scores={aiSkill=..1}] Motion[2] double 0.0070 run scoreboard players get @s mvmt_coord_dz

#normal
execute store result entity @s[scores={aiSkill=2}] Motion[0] double 0.0072 run scoreboard players get @s mvmt_coord_dx
#execute store result entity @s[scores={aiSkill=2}] Motion[1] double 0.0071 run scoreboard players get @s mvmt_coord_dy
execute store result entity @s[scores={aiSkill=2}] Motion[2] double 0.0072 run scoreboard players get @s mvmt_coord_dz

#hard
execute store result entity @s[tag=!ai_rival,scores={aiSkill=3..}] Motion[0] double 0.0073 run scoreboard players get @s mvmt_coord_dx
#execute store result entity @s[scores={aiSkill=3..}] Motion[1] double 0.0073 run scoreboard players get @s mvmt_coord_dy
execute store result entity @s[tag=!ai_rival,scores={aiSkill=3..}] Motion[2] double 0.0073 run scoreboard players get @s mvmt_coord_dz

#hard + rival
execute store result entity @s[tag=ai_rival,scores={aiSkill=3..}] Motion[0] double 0.0074 run scoreboard players get @s mvmt_coord_dx
#execute store result entity @s[scores={aiSkill=3..}] Motion[1] double 0.0074 run scoreboard players get @s mvmt_coord_dy
execute store result entity @s[tag=ai_rival,scores={aiSkill=3..}] Motion[2] double 0.0074 run scoreboard players get @s mvmt_coord_dz