#no witches from lightning please
kill @e[type=witch]

execute if entity @s[tag=!vSay1] if entity @e[tag=w,type=armor_stand,scores={gameTime=120..121}] run function sprint_racer_language:_dlc_3/gameplay/villager_ai/chat_start

execute as @a[scores={villagerTalk=1..}] run function sprint_racer_language:_dlc_3/gameplay/villager_ai/chat_interact