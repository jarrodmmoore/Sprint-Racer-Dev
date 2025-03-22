#type 6 is a zombie with darkbrine (or kitty) (or endermity)'s head

#use kitty when items are disabled
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=optItemsB,tag=!optNoItems,scores={gameState=1}] run tag @s add force_kitty
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=optNoItems,scores={gameState=1}] run tag @s add force_kitty
execute if entity @s[tag=force_darkbrine] run tag @s remove force_kitty

#if not forcing darkbrine or kitty, spawn endermity every other bot
execute if entity @s[tag=!force_darkbrine,tag=!force_kitty,scores={rNumber=2}] run tag @s add force_endermity
execute if entity @s[tag=!force_darkbrine,tag=!force_kitty,scores={rNumber=4}] run tag @s add force_endermity
execute if entity @s[tag=!force_darkbrine,tag=!force_kitty,scores={rNumber=6}] run tag @s add force_endermity
execute if entity @s[tag=!force_darkbrine,tag=!force_kitty,scores={rNumber=8}] run tag @s add force_endermity

#darkbrine
execute unless entity @s[tag=force_kitty] unless entity @s[tag=force_endermity] run summon minecraft:zombie ~ ~ ~ {Silent:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Health:1020.0f,CanBreakDoors:0b,Tags:["ai","set_ai_no","undead","tryhard","rb_ahead","special_ai","sa_darkbrine","can_wear_hat"],ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-909926115,-1488632272,-1321308742,-1683851238],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjM4YzQ2MThhMTllMzAzOGZjNWJjNjhjOGEyZjBmZDQ5ZWQxZjdhNDFlNDJkMjRlZDVkY2FiYjFhNzkzOGNlOSJ9fX0="}]},"minecraft:enchantments":{levels:{"minecraft:depth_strider":3,"minecraft:binding_curse":1,"minecraft:vanishing_curse":1}}}}],drop_chances:{head:0.0,chest:0.0,legs:0.0,feet:0.0,mainhand:0.0,offhand:0.0,body:0.0},attributes:[{id:"max_health",base:1020},{id:"attack_damage",base:4}]}

#kittycatelite
execute if entity @s[tag=force_kitty] run summon minecraft:zombie ~ ~ ~ {Silent:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Health:1020.0f,CanBreakDoors:0b,Tags:["ai","set_ai_no","undead","tryhard","rb_ahead","special_ai","sa_kitty","can_wear_hat"],ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;885739023,-1884143019,-1490360437,315832663],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDNhNDM1ZGQyMzBjZjk5ZTg1ZTg0MGU2MGJlZWMzZTQ2YTUwYjlkMWY2OWE3ZTg1YzIxOTM1ZDhkMzUwOThjNyJ9fX0="}]},"minecraft:enchantments":{levels:{"minecraft:depth_strider":3,"minecraft:binding_curse":1,"minecraft:vanishing_curse":1}}}}],drop_chances:{head:0.0,chest:0.0,legs:0.0,feet:0.0,mainhand:0.0,offhand:0.0,body:0.0},attributes:[{id:"max_health",base:1020},{id:"attack_damage",base:4}]}

#endermity
execute if entity @s[tag=force_endermity] run summon minecraft:zombie ~ ~ ~ {Silent:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Health:1020.0f,CanBreakDoors:0b,Tags:["ai","set_ai_no","undead","tryhard","rb_ahead","special_ai","sa_endermity","can_wear_hat"],ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-12545910,-2014819102,-1257731038,1120729912],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODQ3NjIzMTBmOWRmZTgzMjA1NTRjMDg5N2U0NzU3MjRlOThjYTVkNDgyMGM5Y2JlNmQ3NWE4YzU0MGYxOGJkMCJ9fX0="}]},"minecraft:enchantments":{levels:{"minecraft:depth_strider":3,"minecraft:binding_curse":1,"minecraft:vanishing_curse":1}}}}],drop_chances:{head:0.0,chest:0.0,legs:0.0,feet:0.0,mainhand:0.0,offhand:0.0,body:0.0},attributes:[{id:"max_health",base:1020},{id:"attack_damage",base:4}]}

tag @s remove force_darkbrine
tag @s remove force_kitty
tag @s remove force_endermity