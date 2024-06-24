execute unless entity @e[tag=w,type=armor_stand,tag=grandprix] run function sprint_racer:game_logic/11/_initialize_for_real

#cancel grand prix if in progress
execute if entity @e[tag=w,type=armor_stand,tag=grandprix] run function sprint_racer:game_logic/11/cancel_grand_prix