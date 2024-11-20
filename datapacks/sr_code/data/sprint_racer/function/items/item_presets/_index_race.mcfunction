#chest only is a fallback in case of error
function sprint_racer:items/item_presets/chests_only

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=1}] run function sprint_racer:items/item_presets/random_race
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=2}] run function sprint_racer:items/item_presets/chests_only
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=3}] run function sprint_racer:items/item_presets/capsules_only
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=4}] run function sprint_racer:items/item_presets/specialty_only
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=5}] run function sprint_racer:items/item_presets/chests_and_ender
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=6}] run function sprint_racer:items/item_presets/chests_and_enchanting
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=7}] run function sprint_racer:items/item_presets/chests_ender_enchanting
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=8}] run function sprint_racer:items/item_presets/capsules_and_enchanting
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=9}] run function sprint_racer:items/item_presets/specialty_and_enchanting
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=10}] run function sprint_racer:items/item_presets/ender_only
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={itemPresetA=11}] run function sprint_racer:items/item_presets/buffet