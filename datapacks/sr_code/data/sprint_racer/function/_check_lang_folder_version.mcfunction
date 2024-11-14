scoreboard players set @e[tag=w,type=armor_stand] math 0
execute as @e[tag=w,type=armor_stand] run function sprint_racer_language:_verify_pack_version/verify
execute if entity @e[tag=w,type=armor_stand] unless entity @e[tag=w,type=armor_stand,scores={math=21}] run schedule function sprint_racer:warn_outdated_lang_folder 7s