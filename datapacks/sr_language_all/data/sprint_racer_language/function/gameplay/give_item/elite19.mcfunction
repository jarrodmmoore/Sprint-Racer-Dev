give @s minecraft:blue_terracotta[item_model="sr/item/blinding_squid",enchantments={lure:1},tooltip_display={hidden_components:[enchantments]},custom_name=["",{text:"↑ ",color:"dark_purple",bold:true,italic:false},{translate:"sr.item_elite.squid",color:"light_purple",bold:true,italic:false}],custom_data={elite19:1b,stay:1b,item:1b,eliteitem:1b,rightclick:1b}] 1

#don't give people any more of these for 50 seconds.
scoreboard players set #squidCooldown value 1000

scoreboard players add @s[tag=ai] aiHasItem39 1
scoreboard players add @s[tag=ai] aiHasGlobal 1
scoreboard players add @s[tag=ai] aiHasElite 1