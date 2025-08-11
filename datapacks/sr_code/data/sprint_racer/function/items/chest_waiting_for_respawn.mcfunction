#particles indicate state
#execute if entity @s[scores={itemBlockState=40..199}] run particle dust{color:[1.0,1.0,1.0],scale:1.2} ~ ~.55 ~ 0 0 0 0 1 force @a[distance=..20]
#execute if entity @s[scores={itemBlockState=200..399}] run particle dust{color:[0.8,0.8,0.8],scale:1} ~ ~.55 ~ 0 0 0 0 1 force @a[distance=..20]
#execute if entity @s[scores={itemBlockState=300..599}] run particle dust{color:[0.6,0.6,0.6],scale:0.8} ~ ~.55 ~ 0 0 0 0 1 force @a[distance=..20]
#execute if entity @s[scores={itemBlockState=600..799}] run particle dust{color:[0.4,0.4,0.5],scale:0.75} ~ ~.55 ~ 0 0 0 0 1 force @a[distance=..20]
#execute if entity @s[scores={itemBlockState=800..}] run particle dust{color:[0.2,0.2,0.2],scale:0.5} ~ ~.55 ~ 0 0 0 0 1 force @a[distance=..20]

#show a timer wheel to indicate cooldown on every 4th game tick
scoreboard players add @s AIBC_hook 1
execute if score @s AIBC_hook matches 4.. run function sprint_racer:items/chest_waiting_for_respawn_timer_wheel
#note 1: i'm using AIBC_hook as a variable because it gets cleared every time a level loads
#note 2: this function gets run at 20Hz, effectively


#give speed boost to players who are waiting for an item
particle dust{color:[1.0,1.0,0.0],scale:0.8} ~ ~.55 ~ 0.2 0.2 0.2 0 1 force @a[distance=..20,scores={itemCooldown=..0}]
execute as @a[distance=..2,gamemode=!spectator,scores={itemCooldown=..0}] at @s run function sprint_racer:items/give_player_minor_boost