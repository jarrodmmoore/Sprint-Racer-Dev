tag @s add self


tag @e[tag=!self,tag=activeplayer,limit=1,sort=nearest] add spec_inspect
execute as @e[tag=spec_inspect,tag=!1_lap_only] run function sprint_racer_language:_dlc_1/gameplay/spectator_target_inspect_timeattack/lap_time


tag @e[tag=spec_inspect,limit=1,sort=nearest] remove spec_inspect
tag @s remove self