execute at @s run particle falling_dust{block_state:"minecraft:pink_concrete"} ~ ~1 ~ 0.4 0.6 0.4 1 40

tag @s add RSnotext
scoreboard players set @s resetCooldown 0
function sprint_racer:game_logic/1/reset/player_use_reset
execute at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ 100000 ~ 100000 1.15