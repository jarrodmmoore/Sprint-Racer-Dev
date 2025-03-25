#can only have ONE of these at a time because I'm a responsible parent
clear @s flint[custom_data~{elite11:1b}]
give @s minecraft:flint[enchantments={lure:1},tooltip_display={hidden_components:[enchantments]},custom_name=["",{text:"↑ ",color:"dark_purple",bold:true,italic:false},{translate:"sr.item_elite.warp",color:"aqua",bold:true,italic:false}],custom_data={elite11:1b,item:1b,eliteitem:1b,rightclick:1b}] 1

tag @s[tag=ai,scores={aiHasItem31=..0}] add gimme
scoreboard players add @s[tag=gimme] aiHasElite 1
scoreboard players add @s[tag=gimme] aiHasItem31 1
tag @s[tag=gimme] remove gimme