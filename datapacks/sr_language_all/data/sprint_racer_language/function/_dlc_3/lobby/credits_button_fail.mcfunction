tellraw @a[distance=..5,scores={inputCooldown=..0}] ["",{"translate":"sr.lobby.all_active_players_must_be_near_to_activate","color":"red","bold":true}]
playsound minecraft:entity.villager.no master @a[distance=..5]
particle large_smoke ~ ~1 ~ 0.2 0.2 0.2 0 10 normal @a[distance=..5,scores={inputCooldown=..0}]

scoreboard players set @a[distance=..5] inputCooldown 40