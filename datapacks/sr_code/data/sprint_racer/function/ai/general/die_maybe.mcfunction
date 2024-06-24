tag @s remove totemSave
tag @s remove ihavetotem

scoreboard players set @s rNumber 1
scoreboard players operation @s rNumber = @e[limit=1,sort=random,tag=random,scores={rNumber=1..50}] rNumber

#guarenteed save if actively holding a totem of undying
tag @s[scores={aiHoldingItem=8}] add totemSave
tag @s[scores={aiHoldingItem=28}] add totemSave

#varying % chance of saving if input cooldown is 0 and the AI has a totem in their inventory
tag @s[scores={aiHasItem8=1..}] add ihavetotem
tag @s[scores={aiHasItem28=1..}] add ihavetotem
tag @s[tag=ihavetotem,scores={inputCooldown=..0,aiSkill=..1,rNumber=40..50}] add totemSave
tag @s[tag=ihavetotem,scores={inputCooldown=..0,aiSkill=2,rNumber=30..50}] add totemSave
tag @s[tag=ihavetotem,scores={inputCooldown=..0,aiSkill=3..,rNumber=20..50}] add totemSave

#didn't use the totem? die for realsies
execute unless entity @s[tag=totemSave] run function sprint_racer:ai/general/die

#totem save, consume item
execute if entity @s[tag=totemSave] at @s run function sprint_racer:ai/general/item_logic/totem_save_life

tag @s remove ihavetotem
tag @s remove totemSave