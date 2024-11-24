scoreboard players add @s missingPackFlash 1
scoreboard players remove @s[scores={missingPackDir=1}] missingPackFlash 2

execute if entity @s[scores={missingPackFlash=17..}] unless entity @s[scores={missingPackDir=1}] run scoreboard players set @s missingPackDir 1
execute if entity @s[scores={missingPackFlash=..0}] if entity @s[scores={missingPackDir=1}] run scoreboard players reset @s missingPackDir

execute if entity @s[scores={missingPackFlash=0..1}] run title @s actionbar ["",{"text":" "},{"translate":"warning.resource_pack_is_missing","fallback":"Map resource pack is missing!","color":"#870404"}]
execute if entity @s[scores={missingPackFlash=2}] run title @s actionbar ["",{"text":" "},{"translate":"warning.resource_pack_is_missing","fallback":"Map resource pack is missing!","color":"#8F0C0C"}]
execute if entity @s[scores={missingPackFlash=3}] run title @s actionbar ["",{"text":" "},{"translate":"warning.resource_pack_is_missing","fallback":"Map resource pack is missing!","color":"#971414"}]
execute if entity @s[scores={missingPackFlash=4}] run title @s actionbar ["",{"text":" "},{"translate":"warning.resource_pack_is_missing","fallback":"Map resource pack is missing!","color":"#9F1C1C"}]
execute if entity @s[scores={missingPackFlash=5}] run title @s actionbar ["",{"text":" "},{"translate":"warning.resource_pack_is_missing","fallback":"Map resource pack is missing!","color":"#A72424"}]
execute if entity @s[scores={missingPackFlash=6}] run title @s actionbar ["",{"text":" "},{"translate":"warning.resource_pack_is_missing","fallback":"Map resource pack is missing!","color":"#AF2C2C"}]
execute if entity @s[scores={missingPackFlash=7}] run title @s actionbar ["",{"text":" "},{"translate":"warning.resource_pack_is_missing","fallback":"Map resource pack is missing!","color":"#B73434"}]
execute if entity @s[scores={missingPackFlash=8}] run title @s actionbar ["",{"text":" "},{"translate":"warning.resource_pack_is_missing","fallback":"Map resource pack is missing!","color":"#BF3C3C"}]
execute if entity @s[scores={missingPackFlash=9}] run title @s actionbar ["",{"text":" "},{"translate":"warning.resource_pack_is_missing","fallback":"Map resource pack is missing!","color":"#C74444"}]
execute if entity @s[scores={missingPackFlash=10}] run title @s actionbar ["",{"text":" "},{"translate":"warning.resource_pack_is_missing","fallback":"Map resource pack is missing!","color":"#CF4C4C"}]
execute if entity @s[scores={missingPackFlash=11}] run title @s actionbar ["",{"text":" "},{"translate":"warning.resource_pack_is_missing","fallback":"Map resource pack is missing!","color":"#D75454"}]
execute if entity @s[scores={missingPackFlash=12}] run title @s actionbar ["",{"text":" "},{"translate":"warning.resource_pack_is_missing","fallback":"Map resource pack is missing!","color":"#DF5C5C"}]
execute if entity @s[scores={missingPackFlash=13}] run title @s actionbar ["",{"text":" "},{"translate":"warning.resource_pack_is_missing","fallback":"Map resource pack is missing!","color":"#E76464"}]
execute if entity @s[scores={missingPackFlash=14}] run title @s actionbar ["",{"text":" "},{"translate":"warning.resource_pack_is_missing","fallback":"Map resource pack is missing!","color":"#EF6C6C"}]
execute if entity @s[scores={missingPackFlash=15}] run title @s actionbar ["",{"text":" "},{"translate":"warning.resource_pack_is_missing","fallback":"Map resource pack is missing!","color":"#F77474"}]
execute if entity @s[scores={missingPackFlash=16..17}] run title @s actionbar ["",{"text":" "},{"translate":"warning.resource_pack_is_missing","fallback":"Map resource pack is missing!","color":"#FF7C7C"}]