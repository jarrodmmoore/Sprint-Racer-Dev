#turn invisible

effect give @s invisibility 1 1 true
scoreboard players add @s invisibility 260
scoreboard players set @s[scores={invisibility=601..}] invisibility 600

playsound minecraft:entity.vex.hurt master @a
playsound minecraft:item.armor.equip_gold master @a

scoreboard players set @s aiActICooldown 100
scoreboard players set @s inputCooldown 10
scoreboard players remove @s aiHasItem26 1
scoreboard players remove @s aiHasDefense 1
scoreboard players remove @s aiHasElite 1

#hold the dagger
scoreboard players set @s aiHoldingItem 41
scoreboard players set @s aiActICooldown 260

tag @s add holdDagger