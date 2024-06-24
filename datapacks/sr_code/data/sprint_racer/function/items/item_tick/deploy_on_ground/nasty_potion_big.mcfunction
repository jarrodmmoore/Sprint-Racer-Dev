summon potion ~ ~ ~ {Tags:["setPotionOwner"],Motion:[0.0d,-0.5d,0.0d],Item:{id:"minecraft:lingering_potion",count:1,components:{"minecraft:potion_contents":{potion:"minecraft:strong_poison",custom_color:9186694,custom_effects:[{id:"minecraft:nausea",amplifier:1,duration:140,show_particles:0b}]}}}}

#find our owner and shove their UUID into the "Owner" nbt
scoreboard players operation #findPlayer value = @s playerID
execute if score @s playerID matches -999.. as @e[tag=activeplayer] if score @s playerID = #findPlayer value run data modify entity @e[tag=setPotionOwner,limit=1] Owner set from entity @s UUID

tag @e[tag=setPotionOwner] remove setPotionOwner

kill @s[type=item]