#this is executed by entity "w"
#each higher state number takes priority over lower ones


execute if entity @e[tag=w,tag=!halftick,scores={oTimerGlobal=1}] run scoreboard players add @e[tag=w,type=armor_stand] currentTimeMsec 1
execute if score #halftick value matches 1 run scoreboard players add @e[tag=w,type=armor_stand] currentTimeMsec 1
scoreboard players set @e[tag=w,scores={currentTimeMsec=10..}] currentTimeMsec 0


#state -50, we're allowed to load saves
execute as @a[scores={actionbarState=-50}] run title @s actionbar ["",{"translate":"sr.lobby.non_admin_can_load_saves_1","italic":true},{"translate":"sr.lobby.non_admin_can_load_saves_2","italic":true,"color":"green"},{"translate":"sr.lobby.non_admin_can_load_saves_3","italic":true}]

#state -3, elytra text
execute if entity @s[scores={currentTimeMsec=..4}] as @a[scores={elytraTimer=1..,actionbarState=-3}] run title @s actionbar ["",{"translate":"sr.game.elytra_activated","bold":true,"color":"blue"}]
execute if entity @s[scores={currentTimeMsec=5..}] as @a[scores={elytraTimer=1..,actionbarState=-3}] run title @s actionbar ["",{"translate":"sr.game.elytra_activated","bold":true,"color":"aqua"}]
execute if entity @s[scores={currentTimeMsec=..4}] as @a[scores={elytraTimer=..0,actionbarState=-3}] run title @s actionbar ["",{"translate":"sr.game.elytra_lost","bold":true,"color":"gray"}]
execute if entity @s[scores={currentTimeMsec=5..}] as @a[scores={elytraTimer=..0,actionbarState=-3}] run title @s actionbar ["",{"translate":"sr.game.elytra_lost","bold":true,"color":"dark_gray"}]


#state -2, show item pickup cooldown to impatient players
execute if entity @s[scores={currentTimeMsec=..4}] as @a[scores={actionbarState=-2}] run title @s actionbar ["",{"translate":"sr.game.pickup_cooldown","bold":true,"color":"yellow"},{"text":" [","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"pickupTimer"},"bold":true,"color":"yellow"},{"text":"s]","bold":true,"color":"yellow"}]
execute if entity @s[scores={currentTimeMsec=5..}] as @a[scores={actionbarState=-2}] run title @s actionbar ["",{"translate":"sr.game.pickup_cooldown","bold":true,"color":"gold"},{"text":" [","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"pickupTimer"},"bold":true,"color":"gold"},{"text":"s]","bold":true,"color":"gold"}]



#state 1, DEFAULT STATE, nothing


#state 2, nothing


#state 3, show timers for resistance, invisibility, invincibility
execute if entity @a[scores={actionbarState=3}] run function sprint_racer_language:gameplay/effects_display_race


#state 4, tell players how to enchant items
execute if entity @s[scores={currentTimeMsec=..4}] run title @a[scores={actionbarState=4}] actionbar ["",{"translate":"sr.game.hold_item_in_hand","color":"light_purple","bold":true}]
execute if entity @s[scores={currentTimeMsec=5..}] run title @a[scores={actionbarState=4}] actionbar ["",{"translate":"sr.game.hold_item_in_hand","color":"dark_purple","bold":true}]


#when actionbarState2 hits zero, go back to state 0
#unless the player is finished, in which case we send them to actionbarState 100
scoreboard players remove @a[scores={actionbarState2=1..}] actionbarState2 1
scoreboard players set @a[tag=!finished,scores={actionbarState2=..0,actionbarState=..0}] actionbarState 1
scoreboard players set @a[tag=!finished,scores={actionbarState2=..0,actionbarState=2..}] actionbarState 1
scoreboard players set @a[tag=finished,scores={actionbarState2=..0,actionbarState=0..99}] actionbarState -1

#repeat the timer stuff again when half tick speed is enabled
execute if score #halftick value matches 1 run function sprint_racer_language:gameplay/actionbar_display_echo