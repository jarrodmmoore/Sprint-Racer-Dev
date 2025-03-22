scoreboard players set @a[scores={actionbarState=..5}] actionbarState 5
scoreboard players set @a[scores={actionbarState=..5}] actionbarState2 35

title @a[scores={actionbarState=5}] actionbar ["",{translate:"sr.game.gold_medal_finished",color:"yellow",bold:true}]

execute as @a at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 1.1