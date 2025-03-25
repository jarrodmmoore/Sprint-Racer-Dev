#make sure everyone's got their elytra
tag @a remove cheatElytra
execute as @a if items entity @s armor.chest elytra run tag @s add cheatElytra

item replace entity @a[tag=!cheatElytra] armor.chest with minecraft:elytra[unbreakable={},enchantments={binding_curse:1},custom_data={flytra:1b}]

tag @a remove cheatElytra


#detect right clicks on elytra since the functionality is blocked by already having an elytra in chest slot
execute as @a[scores={carrotInput=1..,elytraTimer=..0}] if items entity @s weapon.mainhand elytra[custom_data~{item:1b,no12:1b}] run function sprint_racer:cheats/fake_equip_elytra
execute as @a[scores={carrotInput=1..,elytraTimer=..0}] if items entity @s weapon.mainhand elytra[custom_data~{item:1b,elite12:1b}] run function sprint_racer:cheats/fake_equip_elytra2