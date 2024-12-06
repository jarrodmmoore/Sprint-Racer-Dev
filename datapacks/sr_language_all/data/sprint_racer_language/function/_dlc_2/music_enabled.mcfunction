execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=realms] run tellraw @s ["",{"text":"\n"},{"translate":"sr.music_enabled_need_resource_pack","color":"green","italic":true},{"translate":"sr.click_this_text_to_download_the_resource_pack","color":"blue","clickEvent":{"action":"open_url","value":"https://tinyurl.com/sr-resource-pack-v1-6-1"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to download the resource pack!","color":"aqua"}}}]

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=realms] run tellraw @s ["",{"text":"\n"},{"translate":"sr.music_enabled","color":"green","italic":true}]

#https://www.mediafire.com/file/1a43971if8o87iq/[v1.6.1]+SR+Server+Resource+Pack.zip/file
#https://tinyurl.com/sr-resource-pack-v1-6-1

execute at @s run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1