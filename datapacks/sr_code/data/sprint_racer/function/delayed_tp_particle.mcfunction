execute if entity @s[tag=dTPsound] run playsound minecraft:entity.enderman.teleport master @a
execute if entity @s[tag=dTPparticle] run particle falling_dust{block_state:"minecraft:magenta_concrete"} ~ ~1 ~ 0.5 0.5 0.5 1 50

tag @s remove dTPsound
tag @s remove dTPparticle
tag @s remove delayTP