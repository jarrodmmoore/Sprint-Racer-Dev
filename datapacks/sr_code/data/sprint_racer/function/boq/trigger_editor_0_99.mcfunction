execute if score @s tEditor matches 1000 run function sprint_racer:__dev_tools/menu_gameplay
execute if score @s tEditor matches 1001 run function sprint_racer:__dev_tools/menu_lobby
execute if score @s tEditor matches 1002 run function sprint_racer:__dev_tools/menu_game_options
execute if score @s tEditor matches 1003 run function sprint_racer:__dev_tools/items
execute if score @s tEditor matches 1004 run function sprint_racer:__dev_tools/menu_ai
execute if score @s tEditor matches 1005 run function sprint_racer:__dev_tools/menu_nodes
execute if score @s tEditor matches 1006 run function sprint_racer_language:gameplay/give_item/elite1
execute if score @s tEditor matches 1007 run function sprint_racer_language:gameplay/give_item/elite2
execute if score @s tEditor matches 1008 run function sprint_racer_language:gameplay/give_item/elite3
execute if score @s tEditor matches 1009 run function sprint_racer_language:gameplay/give_item/elite4
execute if score @s tEditor matches 1010 run function sprint_racer_language:gameplay/give_item/elite5
execute if score @s tEditor matches 1011 run function sprint_racer_language:gameplay/give_item/elite6
execute if score @s tEditor matches 1012 run function sprint_racer_language:gameplay/give_item/elite7
execute if score @s tEditor matches 1013 run function sprint_racer_language:gameplay/give_item/elite8
execute if score @s tEditor matches 1014 run function sprint_racer_language:gameplay/give_item/elite9
execute if score @s tEditor matches 1015 run function sprint_racer_language:gameplay/give_item/elite10
execute if score @s tEditor matches 1016 run function sprint_racer_language:gameplay/give_item/elite11
execute if score @s tEditor matches 1017 run function sprint_racer_language:gameplay/give_item/elite12
execute if score @s tEditor matches 1018 run function sprint_racer_language:gameplay/give_item/elite13
execute if score @s tEditor matches 1019 run function sprint_racer_language:gameplay/give_item/elite14
execute if score @s tEditor matches 1020 run function sprint_racer_language:gameplay/give_item/elite15
execute if score @s tEditor matches 1021 run function sprint_racer_language:gameplay/give_item/elite16
execute if score @s tEditor matches 1022 run function sprint_racer_language:gameplay/give_item/elite17
execute if score @s tEditor matches 1023 run function sprint_racer_language:gameplay/give_item/elite18
execute if score @s tEditor matches 1024 run function sprint_racer_language:gameplay/give_item/elite19
execute if score @s tEditor matches 1025 run function sprint_racer_language:gameplay/give_item/elite20
execute if score @s tEditor matches 1026 run function sprint_racer_language:gameplay/give_item/elite_fishing_rod
execute if score @s tEditor matches 1027 run function sprint_racer:__dev_tools/_menu
execute if score @s tEditor matches 1028 run function sprint_racer_language:gameplay/give_item/no1
execute if score @s tEditor matches 1029 run function sprint_racer_language:gameplay/give_item/no2
execute if score @s tEditor matches 1030 run function sprint_racer_language:gameplay/give_item/no3
execute if score @s tEditor matches 1031 run function sprint_racer_language:gameplay/give_item/no4
execute if score @s tEditor matches 1032 run function sprint_racer_language:gameplay/give_item/no5
execute if score @s tEditor matches 1033 run function sprint_racer_language:gameplay/give_item/no6
execute if score @s tEditor matches 1034 run function sprint_racer_language:gameplay/give_item/no7
execute if score @s tEditor matches 1035 run function sprint_racer_language:gameplay/give_item/no8
execute if score @s tEditor matches 1036 run function sprint_racer_language:gameplay/give_item/no9
execute if score @s tEditor matches 1037 run function sprint_racer_language:gameplay/give_item/no10
execute if score @s tEditor matches 1038 run function sprint_racer_language:gameplay/give_item/no11
execute if score @s tEditor matches 1039 run function sprint_racer_language:gameplay/give_item/no12
execute if score @s tEditor matches 1040 run function sprint_racer_language:gameplay/give_item/no13
execute if score @s tEditor matches 1041 run function sprint_racer_language:gameplay/give_item/no14
execute if score @s tEditor matches 1042 run function sprint_racer_language:gameplay/give_item/no15
execute if score @s tEditor matches 1043 run function sprint_racer_language:gameplay/give_item/no16
execute if score @s tEditor matches 1044 run function sprint_racer_language:gameplay/give_item/no17
execute if score @s tEditor matches 1045 run function sprint_racer_language:gameplay/give_item/no18
execute if score @s tEditor matches 1046 run function sprint_racer_language:gameplay/give_item/no19
execute if score @s tEditor matches 1047 run function sprint_racer_language:gameplay/give_item/no20
execute if score @s tEditor matches 1048 run function sprint_racer_language:gameplay/give_item/fishing_rod
execute if score @s tEditor matches 1049 run function sprint_racer:__dev_tools/items_elite
execute if score @s tEditor matches 1050 run function sprint_racer:ai/general/ai_disable_all
execute if score @s tEditor matches 1051 run tag @e[tag=ai] add tryhard
execute if score @s tEditor matches 1052 run scoreboard players set @e[tag=ai] lap -100
execute if score @s tEditor matches 1053 run execute as @e[tag=ai] run function sprint_racer_language:gameplay/give_item/no12
execute if score @s tEditor matches 1054 run execute as @e[tag=ai] run function sprint_racer_language:gameplay/give_item/elite12
execute if score @s tEditor matches 1055 run execute as @e[tag=ai] run function sprint_racer_language:gameplay/give_item/no9
execute if score @s tEditor matches 1056 run execute as @e[tag=ai] run function sprint_racer_language:gameplay/give_item/no11
execute if score @s tEditor matches 1057 run tag @e[tag=ai] add gtgfast
execute if score @s tEditor matches 1058 run tag @e[tag=ai] remove gtgfast
execute if score @s tEditor matches 1059 run function sprint_racer:game_logic/2/playerstart_menu/disable_battlemode
execute if score @s tEditor matches 1060 run function sprint_racer:game_logic/2/playerstart_menu/enable_battlemode
execute if score @s tEditor matches 1061 run function sprint_racer:game_logic/2/playerstart_menu/enable_timeattack
execute if score @s tEditor matches 1062 run function sprint_racer:game_logic/2/playerstart_menu/disable_timeattack
execute if score @s tEditor matches 1063 run execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=1}] run function sprint_racer:game_logic/1/_initialize
execute if score @s tEditor matches 1064 run execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=3}] run function sprint_racer:game_logic/3/_initialize
execute if score @s tEditor matches 1065 run function sprint_racer:game_logic/0/_return_to_lobby
execute if score @s tEditor matches 1066 run execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=0}] run function sprint_racer:game_logic/0/_initialize
execute if score @s tEditor matches 1067 run execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=0}] run function sprint_racer:game_logic/0/set_mode_ready
execute if score @s tEditor matches 1068 run execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=0}] run function sprint_racer:game_logic/0/set_mode_not_ready
execute if score @s tEditor matches 1069 run execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,scores={gameState=0}] run function sprint_racer_language:lobby/options/set_5s
execute if score @s tEditor matches 1070 run function sprint_racer:full_restart
execute if score @s tEditor matches 1071 run function sprint_racer:game_logic/2/checkpoint_menu_edit/increment_check
execute if score @s tEditor matches 1072 run function sprint_racer:game_logic/2/checkpoint_menu_edit/decrement_check
execute if score @s tEditor matches 1073 run function sprint_racer:game_logic/2/checkpoint_menu_edit/disable_any_y
execute if score @s tEditor matches 1074 run function sprint_racer:game_logic/2/checkpoint_menu_edit/enable_any_y
execute if score @s tEditor matches 1075 run function sprint_racer:game_logic/2/checkpoint_menu_edit/increment_trigger_floor
execute if score @s tEditor matches 1076 run function sprint_racer:game_logic/2/checkpoint_menu_edit/decrement_trigger_floor
execute if score @s tEditor matches 1077 run function sprint_racer:game_logic/2/checkpoint_menu_edit/increment_trigger_ceiling
execute if score @s tEditor matches 1078 run function sprint_racer:game_logic/2/checkpoint_menu_edit/decrement_trigger_ceiling
execute if score @s tEditor matches 1079 run function sprint_racer:game_logic/2/checkpoint_menu_edit/enable_checkwarn
execute if score @s tEditor matches 1080 run function sprint_racer:game_logic/2/checkpoint_menu_edit/disable_checkwarn
execute if score @s tEditor matches 1081 run function sprint_racer:game_logic/2/checkpoint_menu_edit/enable_checkwrongway
execute if score @s tEditor matches 1082 run function sprint_racer:game_logic/2/checkpoint_menu_edit/disable_checkwrongway
execute if score @s tEditor matches 1083 run function sprint_racer:game_logic/2/checkpoint_menu_edit/enable_pcalc
execute if score @s tEditor matches 1084 run function sprint_racer:game_logic/2/checkpoint_menu_edit/disable_pcalc
execute if score @s tEditor matches 1085 run function sprint_racer:game_logic/2/checkpoint_menu_edit/disable_visual
execute if score @s tEditor matches 1086 run function sprint_racer:game_logic/2/checkpoint_menu_edit/enable_visual
execute if score @s tEditor matches 1087 run function sprint_racer:game_logic/2/finishline_menu_edit/increment_ncheck
execute if score @s tEditor matches 1088 run function sprint_racer:game_logic/2/finishline_menu_edit/decrement_ncheck
execute if score @s tEditor matches 1089 run function sprint_racer:game_logic/2/finishline_menu_edit/disable_fin_any_y
execute if score @s tEditor matches 1090 run function sprint_racer:game_logic/2/finishline_menu_edit/enable_fin_any_y
execute if score @s tEditor matches 1091 run function sprint_racer:game_logic/2/finishline_menu_edit/increment_trigger_floor
execute if score @s tEditor matches 1092 run function sprint_racer:game_logic/2/finishline_menu_edit/decrement_trigger_floor
execute if score @s tEditor matches 1093 run function sprint_racer:game_logic/2/finishline_menu_edit/increment_trigger_ceiling
execute if score @s tEditor matches 1094 run function sprint_racer:game_logic/2/finishline_menu_edit/decrement_trigger_ceiling
execute if score @s tEditor matches 1095 run function sprint_racer:game_logic/2/finishline_menu_edit/enable_finwarn
execute if score @s tEditor matches 1096 run function sprint_racer:game_logic/2/finishline_menu_edit/disable_finwarn
execute if score @s tEditor matches 1097 run function sprint_racer:game_logic/2/finishline_menu_edit/enable_finwrongway
execute if score @s tEditor matches 1098 run function sprint_racer:game_logic/2/finishline_menu_edit/disable_finwrongway
execute if score @s tEditor matches 1099 run function sprint_racer:game_logic/2/finishline_menu_edit/enable_pcalc
