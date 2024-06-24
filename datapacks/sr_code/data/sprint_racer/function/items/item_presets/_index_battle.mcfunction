#chest only is a fallback in case of error
function sprint_racer:items/item_presets/chests_only

execute if entity @e[tag=w,scores={itemPresetB=1}] run function sprint_racer:items/item_presets/random_battle
execute if entity @e[tag=w,scores={itemPresetB=2}] run function sprint_racer:items/item_presets/chests_only
execute if entity @e[tag=w,scores={itemPresetB=3}] run function sprint_racer:items/item_presets/capsules_only
execute if entity @e[tag=w,scores={itemPresetB=4}] run function sprint_racer:items/item_presets/specialty_only
execute if entity @e[tag=w,scores={itemPresetB=5}] run function sprint_racer:items/item_presets/chests_and_ender
execute if entity @e[tag=w,scores={itemPresetB=6}] run function sprint_racer:items/item_presets/chests_and_enchanting
execute if entity @e[tag=w,scores={itemPresetB=7}] run function sprint_racer:items/item_presets/chests_ender_enchanting
execute if entity @e[tag=w,scores={itemPresetB=8}] run function sprint_racer:items/item_presets/capsules_and_enchanting
execute if entity @e[tag=w,scores={itemPresetB=9}] run function sprint_racer:items/item_presets/specialty_and_enchanting
execute if entity @e[tag=w,scores={itemPresetB=10}] run function sprint_racer:items/item_presets/ender_only
execute if entity @e[tag=w,scores={itemPresetB=11}] run function sprint_racer:items/item_presets/buffet