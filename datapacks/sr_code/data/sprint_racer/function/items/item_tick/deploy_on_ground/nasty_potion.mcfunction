summon lingering_potion ~ ~ ~ {Tags:["setPotionOwner"],Motion:[0.0d,-0.5d,0.0d],Item:{id:"minecraft:lingering_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:poison"}}}}

#find our owner and put their UUID into the "Owner" nbt
scoreboard players operation #findPlayer value = @s playerID
execute if score @s playerID matches -999.. as @e[tag=activeplayer] if score @s playerID = #findPlayer value run data modify entity @e[tag=setPotionOwner,limit=1] Owner set from entity @s UUID

tag @e[tag=setPotionOwner] remove setPotionOwner

kill @s[type=item]