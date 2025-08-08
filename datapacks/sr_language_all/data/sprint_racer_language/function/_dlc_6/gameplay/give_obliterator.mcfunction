$give @s minecraft:observer[enchantments={lure:1},tooltip_display={hidden_components:[enchantments]},custom_name=["",{text:"↑ ",color:"dark_purple",bold:true,italic:false},{translate:"sr.item_elite.obliterator",color:"red",bold:true,italic:false}],custom_data={eliteObliterator:1b,item:1b,eliteitem:1b,rightclick:1b}] $(count)

$scoreboard players add @s[tag=ai] aiHasObliterator $(count)
$scoreboard players add @s[tag=ai] aiHasProjectile $(count)
$scoreboard players add @s[tag=ai] aiHasElite $(count)