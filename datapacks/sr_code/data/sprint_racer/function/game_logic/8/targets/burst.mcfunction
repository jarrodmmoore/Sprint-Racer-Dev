effect give @a[distance=..2] resistance 1 5 true
particle totem_of_undying ~ ~1 ~ 0 0 0 .6 33
particle block{block_state:"minecraft:red_concrete"} ~ ~.5 ~ 0.5 0.5 0.5 1 20 force
particle flash ~ ~ ~ 0 0 0 1 1 force @a
scoreboard players remove @e[tag=w,type=armor_stand] targetData 1

playsound minecraft:item.shield.break master @a ~ ~ ~ 3 .7 .1
execute unless entity @s[tag=target_silent] as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ 100000 ~ 100000 0.5
kill @e[tag=targetVisual,distance=..1,limit=1,sort=nearest]

execute unless entity @s[tag=target_silent] run scoreboard players set @a[scores={actionbarState=..2}] actionbarState 2
execute unless entity @s[tag=target_silent] run scoreboard players set @a[scores={actionbarState=..2}] actionbarState2 13

tp @s ~ ~-1000 ~
kill @s