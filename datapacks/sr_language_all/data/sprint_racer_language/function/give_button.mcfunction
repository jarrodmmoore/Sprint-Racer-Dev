clear @s stone_button

#normal
item replace entity @s[tag=!kart_model] armor.head with minecraft:stone_button[hide_tooltip={},item_model="sr/cosmetic/invisible_button",custom_name={translate:"sr.magic_head_button",color:"gray",bold:true,italic:false},enchantments={levels:{"minecraft:respiration":3,"minecraft:depth_strider":3,"minecraft:binding_curse":1,"minecraft:vanishing_curse":1},show_in_tooltip:false}] 1
#kart
execute if entity @s[tag=kart_model,scores={kart_model=1..5}] run function sprint_racer_language:give_button_kart
#car
execute if entity @s[tag=kart_model,scores={kart_model=11..19}] run function sprint_racer_language:give_button_car
#kart
execute if entity @s[tag=kart_model,scores={kart_model=101..108}] run function sprint_racer_language:give_button_tank