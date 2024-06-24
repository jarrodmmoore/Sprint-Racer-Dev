tag @s add self


tag @e[tag=!self,tag=activeplayer,limit=1,sort=nearest] add spec_inspect
execute as @e[tag=spec_inspect] run function sprint_racer:game_logic/8/spectator_actionbar/index_target


tag @e[tag=spec_inspect] remove spec_inspect
tag @s remove self