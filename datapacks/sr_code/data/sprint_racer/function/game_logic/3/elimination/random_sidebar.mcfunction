tag @e[tag=displayViable] remove displayViable
tag @e[tag=activeplayer,limit=4,sort=random] add displayViable
#execute as @e[tag=ai,tag=displayViable] run function sprint_racer:game_logic/3/show_positions/ai_give_tag_to_master
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameTime=200..}] run function sprint_racer:game_logic/3/show_position/show_lives_sidebar
tag @e[tag=displayViable] remove displayViable