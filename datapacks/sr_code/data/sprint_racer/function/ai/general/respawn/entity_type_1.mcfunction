#type 1 is a basic zombie
#this is our go-to because of the numerous player-like qualities of zombies such as holding items, gravity, playing well with stairs and other physics stuff, nearly identical hitbox and size, not transforming under weird circumstances like being underwater or in sunlight, not doing weird stuff when dying
#also they get a button placed in their head to prevent burning in sunlight

summon minecraft:zombie ~ ~ ~ {PersistenceRequired:1b,CanPickUpLoot:0b,Health:1020.0f,CanBreakDoors:0b,Tags:["ai","set_ai_no","undead","can_wear_hat"],equipment:{head:{id:"minecraft:stone_button",count:1,components:{"minecraft:item_model":"sr/cosmetic/invisible_button","minecraft:enchantments":{depth_strider:3,binding_curse:1,vanishing_curse:1}}}},drop_chances:{head:0.0,chest:0.0,legs:0.0,feet:0.0,mainhand:0.0,offhand:0.0,body:0.0},attributes:[{id:"max_health",base:1020},{id:"attack_damage",base:4}]}
