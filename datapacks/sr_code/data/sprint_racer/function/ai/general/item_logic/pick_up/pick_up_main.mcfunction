execute as @e[scores={itemDropAge=60..},tag=!pickedUP,tag=!capsuleItem,tag=!nopickup,distance=..2,type=item,nbt={Item:{components:{"minecraft:custom_data":{item:1b}}}}] run tag @s add mine

tag @s add self
execute as @e[tag=mine] run function sprint_racer:ai/general/item_logic/pick_up/_index_class
tag @s remove self

execute as @e[tag=mine] at @s run playsound minecraft:entity.item.pickup master @a ~ ~ ~ .75 1.7
kill @e[tag=mine,nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}]
tp @e[tag=mine] @s
execute as @e[tag=mine] run data merge entity @s {Age:10,PickupDelay:100000}
scoreboard players set @e[tag=mine] lifespan 1
tag @e[tag=mine] add pickedUP
tag @e[tag=mine] remove mine