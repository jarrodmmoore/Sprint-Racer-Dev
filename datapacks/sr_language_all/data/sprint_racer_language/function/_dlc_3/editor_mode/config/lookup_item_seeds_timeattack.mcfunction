#should supply #math as argument
data modify storage sprint_racer:item_name lookup set value {translate:"sr.inventory.none"}

#base items
execute if score #math value matches 1 run return run data modify storage sprint_racer:item_name lookup set value {color:red,translate:"sr.item.snowball"}
execute if score #math value matches 2 run return run data modify storage sprint_racer:item_name lookup set value {color:red,translate:"sr.item.missile"}
execute if score #math value matches 3 run return run data modify storage sprint_racer:item_name lookup set value {color:red,translate:"sr.item.tnt"}
execute if score #math value matches 4 run return run data modify storage sprint_racer:item_name lookup set value {color:red,translate:"sr.item.sword"}

execute if score #math value matches 5 run return run data modify storage sprint_racer:item_name lookup set value {color:yellow,translate:"sr.item.apple"}
execute if score #math value matches 6 run return run data modify storage sprint_racer:item_name lookup set value {color:yellow,translate:"sr.item.invisibility"}
execute if score #math value matches 7 run return run data modify storage sprint_racer:item_name lookup set value {color:yellow,translate:"sr.item.resistance"}
execute if score #math value matches 8 run return run data modify storage sprint_racer:item_name lookup set value {color:yellow,translate:"sr.item.totem"}

execute if score #math value matches 9 run return run data modify storage sprint_racer:item_name lookup set value {color:aqua,translate:"sr.item.jump_boost"}
execute if score #math value matches 10 run return run data modify storage sprint_racer:item_name lookup set value {color:aqua,translate:"sr.item.speed_boost"}
execute if score #math value matches 11 run return run data modify storage sprint_racer:item_name lookup set value {color:aqua,translate:"sr.item.ender_pearl"}
execute if score #math value matches 12 run return run data modify storage sprint_racer:item_name lookup set value {color:aqua,translate:"sr.item.elytra"}

execute if score #math value matches 13 run return run data modify storage sprint_racer:item_name lookup set value {color:green,translate:"sr.item.slime_trap"}
execute if score #math value matches 14 run return run data modify storage sprint_racer:item_name lookup set value {color:green,translate:"sr.item.lingering_potion"}
execute if score #math value matches 15 run return run data modify storage sprint_racer:item_name lookup set value {color:green,translate:"sr.item.chicken_mine"}
execute if score #math value matches 16 run return run data modify storage sprint_racer:item_name lookup set value {color:green,translate:"sr.item.trapped_chest"}

execute if score #math value matches 17 run return run data modify storage sprint_racer:item_name lookup set value {color:light_purple,translate:"sr.item.anvil"}
execute if score #math value matches 18 run return run data modify storage sprint_racer:item_name lookup set value {color:light_purple,translate:"sr.item.enderman"}
execute if score #math value matches 19 run return run data modify storage sprint_racer:item_name lookup set value {color:light_purple,translate:"sr.item.squid"}
execute if score #math value matches 20 run return run data modify storage sprint_racer:item_name lookup set value {color:light_purple,translate:"sr.item.lightning"}

#containers
execute if score #math value matches 21 run return run data modify storage sprint_racer:item_name lookup set value {translate:"sr.item_spawner.enchanting_table"}
execute if score #math value matches 22 run return run data modify storage sprint_racer:item_name lookup set value {translate:"sr.item_spawner.cake"}

#odd items
execute if score #math value matches 23 run return run data modify storage sprint_racer:item_name lookup set value {color:red,translate:"sr.item_elite.obliterator"}
execute if score #math value matches 24 run return run data modify storage sprint_racer:item_name lookup set value {color:red,translate:"sr.item_elite.battle_bat"}
execute if score #math value matches 25 run return run data modify storage sprint_racer:item_name lookup set value {color:dark_purple,translate:"sr.item_elite.battle_basher"}
execute if score #math value matches 26 run return run data modify storage sprint_racer:item_name lookup set value {color:red,translate:"item.minecraft.fishing_rod"}
execute if score #math value matches 27 run return run data modify storage sprint_racer:item_name lookup set value {color:dark_purple,translate:"item.minecraft.fishing_rod"}
execute if score #math value matches 28 run return run data modify storage sprint_racer:item_name lookup set value {color:gold,translate:"sr.item.potato"}
execute if score #math value matches 29 run return run data modify storage sprint_racer:item_name lookup set value {color:gold,translate:"sr.item_elite.potato"}

#enchanted items
execute if score #math value matches 30 run return run data modify storage sprint_racer:item_name lookup set value {color:red,translate:"sr.item_elite.fire_charge"}
execute if score #math value matches 31 run return run data modify storage sprint_racer:item_name lookup set value {color:red,translate:"sr.item_elite.missile"}
execute if score #math value matches 32 run return run data modify storage sprint_racer:item_name lookup set value {color:red,translate:"sr.item_elite.tnt"}
execute if score #math value matches 33 run return run data modify storage sprint_racer:item_name lookup set value {color:red,translate:"sr.item_elite.axe"}
execute if score #math value matches 34 run return run data modify storage sprint_racer:item_name lookup set value {color:yellow,translate:"sr.item_elite.golden_apple"}
execute if score #math value matches 35 run return run data modify storage sprint_racer:item_name lookup set value {color:yellow,translate:"sr.item_elite.cloak_and_dagger"}
execute if score #math value matches 36 run return run data modify storage sprint_racer:item_name lookup set value {color:yellow,translate:"sr.item_elite.invulnerability"}
execute if score #math value matches 37 run return run data modify storage sprint_racer:item_name lookup set value {color:yellow,translate:"sr.item_elite.totem"}
execute if score #math value matches 38 run return run data modify storage sprint_racer:item_name lookup set value {color:aqua,translate:"sr.item_elite.jump_boost"}
execute if score #math value matches 39 run return run data modify storage sprint_racer:item_name lookup set value {color:aqua,translate:"sr.item_elite.speed_boost"}
execute if score #math value matches 40 run return run data modify storage sprint_racer:item_name lookup set value {color:aqua,translate:"sr.item_elite.warp"}
execute if score #math value matches 41 run return run data modify storage sprint_racer:item_name lookup set value {color:aqua,translate:"sr.item_elite.elytra"}
execute if score #math value matches 42 run return run data modify storage sprint_racer:item_name lookup set value {color:green,translate:"sr.item_elite.magma_trap"}
execute if score #math value matches 43 run return run data modify storage sprint_racer:item_name lookup set value {color:green,translate:"sr.item_elite.lingering_potion"}
execute if score #math value matches 44 run return run data modify storage sprint_racer:item_name lookup set value {color:green,translate:"sr.item_elite.chicken_mine"}
execute if score #math value matches 45 run return run data modify storage sprint_racer:item_name lookup set value {color:green,translate:"sr.item_elite.land_mine"}
execute if score #math value matches 46 run return run data modify storage sprint_racer:item_name lookup set value {color:light_purple,translate:"sr.item_elite.anvil"}
execute if score #math value matches 47 run return run data modify storage sprint_racer:item_name lookup set value {color:light_purple,translate:"sr.item_elite.enderman"}
execute if score #math value matches 48 run return run data modify storage sprint_racer:item_name lookup set value {color:light_purple,translate:"sr.item_elite.squid"}
execute if score #math value matches 49 run return run data modify storage sprint_racer:item_name lookup set value {color:light_purple,translate:"sr.item_elite.storm"}

#custom
execute if score #math value matches 61..99 run return run data modify storage sprint_racer:item_name lookup set value {color:white,translate:"sr.item_spawner.custom_capsule"}
execute if score #math value matches 100.. run return run data modify storage sprint_racer:item_name lookup set value {color:white,translate:"sr.item_spawner.custom_no_capsule"}
