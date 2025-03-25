clear @s stone_button

#normal
item replace entity @s[tag=!kart_model] armor.head with minecraft:stone_button[item_model="sr/cosmetic/invisible_button",custom_name={translate:"sr.magic_head_button",color:"gray",bold:true,italic:false},enchantments={"minecraft:respiration":3,depth_strider:3,binding_curse:1,vanishing_curse:1},tooltip_display={hide_tooltip:true}] 1
#kart
execute if entity @s[tag=kart_model,scores={kart_model=1..5}] run function sprint_racer_language:give_button_kart
#car
execute if entity @s[tag=kart_model,scores={kart_model=11..19}] run function sprint_racer_language:give_button_car
#kart
execute if entity @s[tag=kart_model,scores={kart_model=101..108}] run function sprint_racer_language:give_button_tank