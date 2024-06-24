#this is executed by entity "w"
#each higher state number takes priority over lower ones



#state -3, elytra text
execute if entity @s[scores={currentTimeMsec=..4}] as @a[scores={elytraTimer=1..,actionbarState=-3}] run title @s actionbar ["",{"translate":"sr.game.elytra_activated","bold":true,"color":"blue"}]
execute if entity @s[scores={currentTimeMsec=5..}] as @a[scores={elytraTimer=1..,actionbarState=-3}] run title @s actionbar ["",{"translate":"sr.game.elytra_activated","bold":true,"color":"aqua"}]
execute if entity @s[scores={currentTimeMsec=..4}] as @a[scores={elytraTimer=..0,actionbarState=-3}] run title @s actionbar ["",{"translate":"sr.game.elytra_lost","bold":true,"color":"gray"}]
execute if entity @s[scores={currentTimeMsec=5..}] as @a[scores={elytraTimer=..0,actionbarState=-3}] run title @s actionbar ["",{"translate":"sr.game.elytra_lost","bold":true,"color":"dark_gray"}]


#state -2, show item pickup cooldown to impatient players
execute if entity @s[scores={currentTimeMsec=..4}] as @a[scores={actionbarState=-2}] run title @s actionbar ["",{"translate":"sr.game.pickup_cooldown","bold":true,"color":"yellow"},{"text":" [","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"pickupTimer"},"bold":true,"color":"yellow"},{"text":"s]","bold":true,"color":"yellow"}]
execute if entity @s[scores={currentTimeMsec=5..}] as @a[scores={actionbarState=-2}] run title @s actionbar ["",{"translate":"sr.game.pickup_cooldown","bold":true,"color":"gold"},{"text":" [","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"pickupTimer"},"bold":true,"color":"gold"},{"text":"s]","bold":true,"color":"gold"}]


#state -1, not used


#state 1, DEFAULT STATE, nothing
title @a[scores={actionbarState=0..1}] actionbar [""]


#state 2, not used


#state 3, show timers for resistance, invisibility, invincibility
execute if entity @a[scores={actionbarState=3}] run function sprint_racer_language:gameplay/effects_display_race


#state 4, tell players how to enchant items
execute if entity @s[scores={currentTimeMsec=..4}] run title @a[scores={actionbarState=4}] actionbar ["",{"translate":"sr.game.hold_item_in_hand","color":"light_purple","bold":true}]
execute if entity @s[scores={currentTimeMsec=5..}] run title @a[scores={actionbarState=4}] actionbar ["",{"translate":"sr.game.hold_item_in_hand","color":"dark_purple","bold":true}]


#state 5, not used


#state 99, checkpoint saved text
title @a[scores={actionbarState=99}] actionbar ["",{"translate":"sr.game.respawn_point_set","color":"white","bold":true}]


#when actionbarState2 hits zero, go back to state 0
scoreboard players remove @a[scores={actionbarState2=1..}] actionbarState2 1
scoreboard players set @a[scores={actionbarState2=..0,actionbarState=..0}] actionbarState 1
scoreboard players set @a[scores={actionbarState2=..0,actionbarState=2..}] actionbarState 1

#repeat the timer stuff again when half tick speed is enabled
execute if score #halftick value matches 1 run function sprint_racer_language:_dlc_1/gameplay/actionbar_display_echo_fr