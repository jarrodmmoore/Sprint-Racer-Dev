clear @s blaze_rod[custom_data~{no20:1b}] 1

tag @s add self

tag @e[limit=8,sort=random,tag=activeplayer,tag=!self,scores={invisibility=..0,lightningSafe=..0},nbt={OnGround:1b}] add lightningTarget
tag @e[limit=5,sort=random,tag=chickenmine,nbt={OnGround:1b}] add lightningTarget

#don't hit teammates!
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay] if entity @s[tag=playerOrange] run tag @e[tag=lightningTarget,tag=playerOrange] remove lightningTarget
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=teamplay] if entity @s[tag=playerCyan] run tag @e[tag=lightningTarget,tag=playerCyan] remove lightningTarget

tag @s remove self

effect give @a minecraft:night_vision 1 100 true
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ 100000 ~ 100000 1

execute as @e[tag=lightningTarget] at @s run summon minecraft:lightning_bolt ~ ~ ~
effect give @e[type=player,tag=lightningTarget] minecraft:nausea 7 10 true
effect give @e[type=player,tag=lightningTarget] minecraft:slowness 7 1 true
scoreboard players set @e[tag=lightningTarget] lightningSafe 100
scoreboard players set @e[tag=lightningTarget] electrocute 0
scoreboard players set @e[tag=lightningTarget] moveSpeed 0
scoreboard players set @e[tag=lightningTarget] rateAccel 10
scoreboard players set @e[tag=lightningTarget] rateDecel 300
scoreboard players operation @e[tag=lightningTarget] attackerID = @s playerID
scoreboard players set @e[tag=lightningTarget] attackTime 100
tag @e[tag=lightningTarget] remove lightningTarget

scoreboard players set @s inputCooldown 20