#default: our name is CPU_X
$data modify storage sprint_racer:ai_storage_$(id) name set value "CPU_$(id)"
tag @s remove has_custom_ai_name

#villager is villager
$execute if score @s aiEntity matches 13 run data modify storage sprint_racer:ai_storage_$(id) name set value "VILLAGER_$(id)"
execute if score @s aiEntity matches 13 run tag @s add has_custom_ai_name

#cat.png
$execute if score @s aiEntity matches 18 run data modify storage sprint_racer:ai_storage_$(id) name set value "cat.png"
execute if score @s aiEntity matches 18 run tag @s add has_custom_ai_name

#redstone factory png
$execute if score @s aiEntity matches 6 run data modify storage sprint_racer:ai_storage_$(id) name set value "Redstone_Factory"
execute if score @s aiEntity matches 6 run tag @s add has_custom_ai_name

#credits players
$execute if score @s aiEntity matches 1001 run data modify storage sprint_racer:ai_storage_$(id) name set value "Flamingosaurus"
$execute if score @s aiEntity matches 1002 run data modify storage sprint_racer:ai_storage_$(id) name set value "AriaZeroQueen"
$execute if score @s aiEntity matches 1003 run data modify storage sprint_racer:ai_storage_$(id) name set value "MCFilms"
$execute if score @s aiEntity matches 1004 run data modify storage sprint_racer:ai_storage_$(id) name set value "Jayjo_"
$execute if score @s aiEntity matches 1005 run data modify storage sprint_racer:ai_storage_$(id) name set value "JohnGlacious"
$execute if score @s aiEntity matches 1006 run data modify storage sprint_racer:ai_storage_$(id) name set value "ReflectedMantis"
$execute if score @s aiEntity matches 1007 run data modify storage sprint_racer:ai_storage_$(id) name set value "Frenderman"
$execute if score @s aiEntity matches 1008 run data modify storage sprint_racer:ai_storage_$(id) name set value "eonic"
$execute if score @s aiEntity matches 1009 run data modify storage sprint_racer:ai_storage_$(id) name set value "alyssonjac6"

$execute if score @s aiEntity matches 1010 run data modify storage sprint_racer:ai_storage_$(id) name set value "KittyCatElite"
$execute if score @s aiEntity matches 1011 run data modify storage sprint_racer:ai_storage_$(id) name set value "Endermity"

$execute if score @s aiEntity matches 1012 run data modify storage sprint_racer:ai_storage_$(id) name set value "tari_cat"
$execute if score @s aiEntity matches 1013 run data modify storage sprint_racer:ai_storage_$(id) name set value "Goodbros148"
$execute if score @s aiEntity matches 1014 run data modify storage sprint_racer:ai_storage_$(id) name set value "Flashny"
$execute if score @s aiEntity matches 1015 run data modify storage sprint_racer:ai_storage_$(id) name set value "RedstoneBattery"
$execute if score @s aiEntity matches 1016 run data modify storage sprint_racer:ai_storage_$(id) name set value "CircleK"
$execute if score @s aiEntity matches 1017 run data modify storage sprint_racer:ai_storage_$(id) name set value "Dr_Ico"

execute if score @s aiEntity matches 1001.. run tag @s add has_custom_ai_name

$execute if score @s aiEntity matches -1 run data modify storage sprint_racer:ai_storage_$(id) name set value "Steve"
$execute if score @s aiEntity matches -2 run data modify storage sprint_racer:ai_storage_$(id) name set value "Alex"
$execute if score @s aiEntity matches -3 run data modify storage sprint_racer:ai_storage_$(id) name set value "Kai"
$execute if score @s aiEntity matches -4 run data modify storage sprint_racer:ai_storage_$(id) name set value "Noor"
$execute if score @s aiEntity matches -5 run data modify storage sprint_racer:ai_storage_$(id) name set value "Ari"
$execute if score @s aiEntity matches -6 run data modify storage sprint_racer:ai_storage_$(id) name set value "Sunny"
$execute if score @s aiEntity matches -7 run data modify storage sprint_racer:ai_storage_$(id) name set value "Zuri"
$execute if score @s aiEntity matches -8 run data modify storage sprint_racer:ai_storage_$(id) name set value "Efe"
$execute if score @s aiEntity matches -9 run data modify storage sprint_racer:ai_storage_$(id) name set value "Makena"

execute if score @s aiEntity matches -9..-1 run tag @s add has_custom_ai_name

#check if someone has our username. if so, we'd better change it
$data modify storage sprint_racer:ai_storage_$(id) id set value $(id)
$function sprint_racer:ai/general/check_player_username_go with storage sprint_racer:ai_storage_$(id)