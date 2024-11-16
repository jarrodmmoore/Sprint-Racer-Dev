effect give @s resistance 1 200 true

execute if entity @e[tag=cheats,x=1550,y=148,z=406,distance=..1,tag=09a] if entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig"}}}] at @s as @e[limit=1,sort=nearest,tag=playerkart] run function sprint_racer:cheats/kart_burst

execute unless entity @s[scores={resetCooldown=..0}] run function sprint_racer_language:gameplay/misc_item_text/error_wait_to_reset
execute if entity @s[scores={resetCooldown=..0}] run function sprint_racer:game_logic/1/reset/look_for_checkpoint

#catch bad track teleport
execute if entity @e[tag=w,tag=!customTesting,scores={gameState=1..,gameTime=..159}] run function sprint_racer_language:_dlc_3/track_load_failed_return_to_lobby

scoreboard players set @s inputCooldown 15