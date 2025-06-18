execute unless entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=realms] run tellraw @s ["",{text:"\n"},{translate:"sr.music_enabled_need_resource_pack",color:"green",italic:true},{translate:"sr.click_this_text_to_download_the_resource_pack",color:"blue",click_event:{action:"open_url",url:"https://tinyurl.com/sr-resource-pack-v1-6-8"},hover_event:{action:"show_text",value:{text:"Click to download the resource pack!",color:"aqua"}}}]

execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=realms] run tellraw @s ["",{text:"\n"},{translate:"sr.music_enabled",color:"green",italic:true}]

#https://www.mediafire.com/file/zvx1sv2r9qeyb7q/[v1.6.8]+SR+Server+Resource+Pack.zip/file
#https://tinyurl.com/sr-resource-pack-v1-6-8

execute at @s run playsound minecraft:block.note_block.cow_bell master @s ~ ~ ~ 1