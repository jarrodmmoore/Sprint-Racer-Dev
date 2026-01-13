#execute if score @s tTrackEditor matches 1100 run 
execute if score @s tTrackEditor matches 1101 run function sprint_racer:game_logic/10/medal_time/d1
execute if score @s tTrackEditor matches 1102 run function sprint_racer:game_logic/10/medal_time/d2
execute if score @s tTrackEditor matches 1103 run function sprint_racer:game_logic/10/medal_time/d3
execute if score @s tTrackEditor matches 1104 run function sprint_racer:game_logic/10/medal_time/d4
execute if score @s tTrackEditor matches 1105 run function sprint_racer:game_logic/10/medal_time/g1
execute if score @s tTrackEditor matches 1106 run function sprint_racer:game_logic/10/medal_time/g2
execute if score @s tTrackEditor matches 1107 run function sprint_racer:game_logic/10/medal_time/g3
execute if score @s tTrackEditor matches 1108 run function sprint_racer:game_logic/10/medal_time/g4
execute if score @s tTrackEditor matches 1109 run function sprint_racer:game_logic/10/medal_time/s1
execute if score @s tTrackEditor matches 1110 run function sprint_racer:game_logic/10/medal_time/s2
execute if score @s tTrackEditor matches 1111 run function sprint_racer:game_logic/10/medal_time/s3
execute if score @s tTrackEditor matches 1112 run function sprint_racer:game_logic/10/medal_time/s4
execute if score @s tTrackEditor matches 1113 run function sprint_racer:game_logic/10/medal_time/b1
execute if score @s tTrackEditor matches 1114 run function sprint_racer:game_logic/10/medal_time/b2
execute if score @s tTrackEditor matches 1115 run function sprint_racer:game_logic/10/medal_time/b3
execute if score @s tTrackEditor matches 1116 run function sprint_racer:game_logic/10/medal_time/b4
execute if score @s tTrackEditor matches 1117 run execute as @e[limit=1,type=armor_stand,tag=focusT] run function sprint_racer:game_logic/10/medal_time/clear
execute if score @s tTrackEditor matches 1118 run execute as @e[limit=1,type=armor_stand,tag=focusT] run function sprint_racer:game_logic/10/medal_time/clear_best
execute if score @s tTrackEditor matches 1119 run function sprint_racer:game_logic/10/test_track/battle
execute if score @s tTrackEditor matches 1120 run function sprint_racer:game_logic/10/test_track/time_attack_battle
execute if score @s tTrackEditor matches 1121 run function sprint_racer:game_logic/10/test_track/race
execute if score @s tTrackEditor matches 1122 run function sprint_racer:game_logic/10/test_track/time_attack_race
execute if score @s tTrackEditor matches 1123 run function sprint_racer:game_logic/10/test_track/calc_gen_enable
execute if score @s tTrackEditor matches 1124 run function sprint_racer:game_logic/10/test_track/calc_gen_disable

execute if score @s tTrackEditor matches 1125 run function sprint_racer:game_logic/10/custom_config/settings_overrides/open_page_with_sound {command:"function sprint_racer:game_logic/10/custom_config/settings_overrides/_menu"}
execute if score @s tTrackEditor matches 1126 run function sprint_racer:game_logic/10/custom_config/settings_overrides/generic_2 {1:"tag @e[tag=focusT,type=armor_stand] remove o_itemsOn",2:"tag @e[tag=focusT,type=armor_stand] remove o_itemsOff"}
execute if score @s tTrackEditor matches 1127 run function sprint_racer:game_logic/10/custom_config/settings_overrides/generic_2 {1:"tag @e[tag=focusT,type=armor_stand] add o_itemsOn",2:"tag @e[tag=focusT,type=armor_stand] remove o_itemsOff"}
execute if score @s tTrackEditor matches 1128 run function sprint_racer:game_logic/10/custom_config/settings_overrides/generic_2 {1:"tag @e[tag=focusT,type=armor_stand] remove o_itemsOn",2:"tag @e[tag=focusT,type=armor_stand] add o_itemsOff"}

execute if score @s tTrackEditor matches 1129 run function sprint_racer:game_logic/10/custom_config/settings_overrides/generic_1 {1:"scoreboard players reset @e[tag=focusT,type=armor_stand] itemPresetA"}
execute if score @s tTrackEditor matches 1130 run function sprint_racer:game_logic/10/custom_config/settings_overrides/generic_1 {1:"scoreboard players set @e[tag=focusT,type=armor_stand] itemPresetA 1"}
execute if score @s tTrackEditor matches 1131 run function sprint_racer:game_logic/10/custom_config/settings_overrides/generic_1 {1:"scoreboard players set @e[tag=focusT,type=armor_stand] itemPresetA 2"}
execute if score @s tTrackEditor matches 1132 run function sprint_racer:game_logic/10/custom_config/settings_overrides/generic_1 {1:"scoreboard players set @e[tag=focusT,type=armor_stand] itemPresetA 3"}
execute if score @s tTrackEditor matches 1133 run function sprint_racer:game_logic/10/custom_config/settings_overrides/generic_1 {1:"scoreboard players set @e[tag=focusT,type=armor_stand] itemPresetA 4"}
execute if score @s tTrackEditor matches 1134 run function sprint_racer:game_logic/10/custom_config/settings_overrides/generic_1 {1:"scoreboard players set @e[tag=focusT,type=armor_stand] itemPresetA 5"}
execute if score @s tTrackEditor matches 1135 run function sprint_racer:game_logic/10/custom_config/settings_overrides/generic_1 {1:"scoreboard players set @e[tag=focusT,type=armor_stand] itemPresetA 6"}
execute if score @s tTrackEditor matches 1136 run function sprint_racer:game_logic/10/custom_config/settings_overrides/generic_1 {1:"scoreboard players set @e[tag=focusT,type=armor_stand] itemPresetA 7"}
execute if score @s tTrackEditor matches 1137 run function sprint_racer:game_logic/10/custom_config/settings_overrides/generic_1 {1:"scoreboard players set @e[tag=focusT,type=armor_stand] itemPresetA 8"}
execute if score @s tTrackEditor matches 1138 run function sprint_racer:game_logic/10/custom_config/settings_overrides/generic_1 {1:"scoreboard players set @e[tag=focusT,type=armor_stand] itemPresetA 9"}
execute if score @s tTrackEditor matches 1139 run function sprint_racer:game_logic/10/custom_config/settings_overrides/generic_1 {1:"scoreboard players set @e[tag=focusT,type=armor_stand] itemPresetA 10"}
execute if score @s tTrackEditor matches 1140 run function sprint_racer:game_logic/10/custom_config/settings_overrides/generic_1 {1:"scoreboard players set @e[tag=focusT,type=armor_stand] itemPresetA 11"}

execute if score @s tTrackEditor matches 1141 run function sprint_racer:game_logic/10/custom_config/settings_overrides/open_page_with_sound {command:"function sprint_racer:game_logic/10/custom_config/settings_overrides/_menu_item_bans_p1"}

execute if score @s tTrackEditor matches 1142 run function sprint_racer:game_logic/10/custom_config/settings_overrides/open_page_with_sound {command:"function sprint_racer:game_logic/10/custom_config/settings_overrides/return_to_page_2"}

execute if score @s tTrackEditor matches 1143 run function sprint_racer:game_logic/10/custom_config/settings_overrides/generic_2 {1:"tag @e[tag=focusT,type=armor_stand] remove o_teamsOn",2:"tag @e[tag=focusT,type=armor_stand] remove o_teamsOff"}
execute if score @s tTrackEditor matches 1144 run function sprint_racer:game_logic/10/custom_config/settings_overrides/generic_2 {1:"tag @e[tag=focusT,type=armor_stand] add o_teamsOn",2:"tag @e[tag=focusT,type=armor_stand] remove o_teamsOff"}
execute if score @s tTrackEditor matches 1145 run function sprint_racer:game_logic/10/custom_config/settings_overrides/generic_2 {1:"tag @e[tag=focusT,type=armor_stand] remove o_teamsOn",2:"tag @e[tag=focusT,type=armor_stand] add o_teamsOff"}

execute if score @s tTrackEditor matches 1146 run function sprint_racer:game_logic/10/custom_config/settings_overrides/player_invisibility {1:"tag @e[tag=focusT,type=armor_stand] remove o_neabyInvis",2:"tag @e[tag=focusT,type=armor_stand] remove o_neabyInvis"}
execute if score @s tTrackEditor matches 1147 run function sprint_racer:game_logic/10/custom_config/settings_overrides/player_invisibility {1:"tag @e[tag=focusT,type=armor_stand] add o_neabyInvis",2:"tag @e[tag=focusT,type=armor_stand] add o_neabyInvis_never"}
execute if score @s tTrackEditor matches 1148 run function sprint_racer:game_logic/10/custom_config/settings_overrides/player_invisibility {1:"tag @e[tag=focusT,type=armor_stand] add o_neabyInvis",2:"tag @e[tag=focusT,type=armor_stand] add o_neabyInvis_always"}
execute if score @s tTrackEditor matches 1149 run function sprint_racer:game_logic/10/custom_config/settings_overrides/player_invisibility {1:"tag @e[tag=focusT,type=armor_stand] add o_neabyInvis",2:"tag @e[tag=focusT,type=armor_stand] add o_neabyInvis_5plus"}

execute if score @s tTrackEditor matches 1150 run function sprint_racer:game_logic/10/custom_config/settings_overrides/absorption {1:"tag @e[tag=focusT,type=armor_stand] remove o_absorption",2:"tag @e[tag=focusT,type=armor_stand] remove o_absorption"}
execute if score @s tTrackEditor matches 1151 run function sprint_racer:game_logic/10/custom_config/settings_overrides/absorption {1:"tag @e[tag=focusT,type=armor_stand] add o_absorption",2:"tag @e[tag=focusT,type=armor_stand] add o_absorption_5plus"}
execute if score @s tTrackEditor matches 1152 run function sprint_racer:game_logic/10/custom_config/settings_overrides/absorption {1:"tag @e[tag=focusT,type=armor_stand] add o_absorption",2:"tag @e[tag=focusT,type=armor_stand] add o_absorption_always"}
execute if score @s tTrackEditor matches 1153 run function sprint_racer:game_logic/10/custom_config/settings_overrides/absorption {1:"tag @e[tag=focusT,type=armor_stand] add o_absorption",2:"tag @e[tag=focusT,type=armor_stand] add o_absorption_never"}

execute if score @s tTrackEditor matches 1154 run function sprint_racer:game_logic/10/custom_config/settings_overrides/generic_2 {1:"tag @e[tag=focusT,type=armor_stand] remove o_locatorBarOn",2:"tag @e[tag=focusT,type=armor_stand] remove o_locatorBarOff"}
execute if score @s tTrackEditor matches 1155 run function sprint_racer:game_logic/10/custom_config/settings_overrides/generic_2 {1:"tag @e[tag=focusT,type=armor_stand] add o_locatorBarOn",2:"tag @e[tag=focusT,type=armor_stand] remove o_locatorBarOff"}
execute if score @s tTrackEditor matches 1156 run function sprint_racer:game_logic/10/custom_config/settings_overrides/generic_2 {1:"tag @e[tag=focusT,type=armor_stand] remove o_locatorBarOn",2:"tag @e[tag=focusT,type=armor_stand] add o_locatorBarOff"}

execute if score @s tTrackEditor matches 1157 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"1",item:"1",1:"tag @e[tag=focusT,type=armor_stand] remove forceNo"}
execute if score @s tTrackEditor matches 1158 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"1",item:"1",1:"tag @e[tag=focusT,type=armor_stand] add forceNo"}
execute if score @s tTrackEditor matches 1159 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"1",item:"1",1:"tag @e[tag=focusT,type=armor_stand] add banNo"}
execute if score @s tTrackEditor matches 1160 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"1",item:"1",1:"tag @e[tag=focusT,type=armor_stand] add banEnchant"}

execute if score @s tTrackEditor matches 1161 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"1",item:"2",1:"tag @e[tag=focusT,type=armor_stand] remove forceNo"}
execute if score @s tTrackEditor matches 1162 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"1",item:"2",1:"tag @e[tag=focusT,type=armor_stand] add forceNo"}
execute if score @s tTrackEditor matches 1163 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"1",item:"2",1:"tag @e[tag=focusT,type=armor_stand] add banNo"}
execute if score @s tTrackEditor matches 1164 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"1",item:"2",1:"tag @e[tag=focusT,type=armor_stand] add banEnchant"}

execute if score @s tTrackEditor matches 1165 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"1",item:"3",1:"tag @e[tag=focusT,type=armor_stand] remove forceNo"}
execute if score @s tTrackEditor matches 1166 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"1",item:"3",1:"tag @e[tag=focusT,type=armor_stand] add forceNo"}
execute if score @s tTrackEditor matches 1167 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"1",item:"3",1:"tag @e[tag=focusT,type=armor_stand] add banNo"}
execute if score @s tTrackEditor matches 1168 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"1",item:"3",1:"tag @e[tag=focusT,type=armor_stand] add banEnchant"}

execute if score @s tTrackEditor matches 1169 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"1",item:"4",1:"tag @e[tag=focusT,type=armor_stand] remove forceNo"}
execute if score @s tTrackEditor matches 1170 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"1",item:"4",1:"tag @e[tag=focusT,type=armor_stand] add forceNo"}
execute if score @s tTrackEditor matches 1171 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"1",item:"4",1:"tag @e[tag=focusT,type=armor_stand] add banNo"}
execute if score @s tTrackEditor matches 1172 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"1",item:"4",1:"tag @e[tag=focusT,type=armor_stand] add banEnchant"}

execute if score @s tTrackEditor matches 1173 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"2",item:"5",1:"tag @e[tag=focusT,type=armor_stand] remove forceNo"}
execute if score @s tTrackEditor matches 1174 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"2",item:"5",1:"tag @e[tag=focusT,type=armor_stand] add forceNo"}
execute if score @s tTrackEditor matches 1175 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"2",item:"5",1:"tag @e[tag=focusT,type=armor_stand] add banNo"}
execute if score @s tTrackEditor matches 1176 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"2",item:"5",1:"tag @e[tag=focusT,type=armor_stand] add banEnchant"}

execute if score @s tTrackEditor matches 1177 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"2",item:"6",1:"tag @e[tag=focusT,type=armor_stand] remove forceNo"}
execute if score @s tTrackEditor matches 1178 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"2",item:"6",1:"tag @e[tag=focusT,type=armor_stand] add forceNo"}
execute if score @s tTrackEditor matches 1179 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"2",item:"6",1:"tag @e[tag=focusT,type=armor_stand] add banNo"}
execute if score @s tTrackEditor matches 1180 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"2",item:"6",1:"tag @e[tag=focusT,type=armor_stand] add banEnchant"}

execute if score @s tTrackEditor matches 1181 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"2",item:"7",1:"tag @e[tag=focusT,type=armor_stand] remove forceNo"}
execute if score @s tTrackEditor matches 1182 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"2",item:"7",1:"tag @e[tag=focusT,type=armor_stand] add forceNo"}
execute if score @s tTrackEditor matches 1183 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"2",item:"7",1:"tag @e[tag=focusT,type=armor_stand] add banNo"}
execute if score @s tTrackEditor matches 1184 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"2",item:"7",1:"tag @e[tag=focusT,type=armor_stand] add banEnchant"}

execute if score @s tTrackEditor matches 1185 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"2",item:"8",1:"tag @e[tag=focusT,type=armor_stand] remove forceNo"}
execute if score @s tTrackEditor matches 1186 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"2",item:"8",1:"tag @e[tag=focusT,type=armor_stand] add forceNo"}
execute if score @s tTrackEditor matches 1187 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"2",item:"8",1:"tag @e[tag=focusT,type=armor_stand] add banNo"}
execute if score @s tTrackEditor matches 1188 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"2",item:"8",1:"tag @e[tag=focusT,type=armor_stand] add banEnchant"}

execute if score @s tTrackEditor matches 1189 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"3",item:"9",1:"tag @e[tag=focusT,type=armor_stand] remove forceNo"}
execute if score @s tTrackEditor matches 1190 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"3",item:"9",1:"tag @e[tag=focusT,type=armor_stand] add forceNo"}
execute if score @s tTrackEditor matches 1191 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"3",item:"9",1:"tag @e[tag=focusT,type=armor_stand] add banNo"}
execute if score @s tTrackEditor matches 1192 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"3",item:"9",1:"tag @e[tag=focusT,type=armor_stand] add banEnchant"}

execute if score @s tTrackEditor matches 1193 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"3",item:"10",1:"tag @e[tag=focusT,type=armor_stand] remove forceNo"}
execute if score @s tTrackEditor matches 1194 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"3",item:"10",1:"tag @e[tag=focusT,type=armor_stand] add forceNo"}
execute if score @s tTrackEditor matches 1195 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"3",item:"10",1:"tag @e[tag=focusT,type=armor_stand] add banNo"}
execute if score @s tTrackEditor matches 1196 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"3",item:"10",1:"tag @e[tag=focusT,type=armor_stand] add banEnchant"}

execute if score @s tTrackEditor matches 1197 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"3",item:"11",1:"tag @e[tag=focusT,type=armor_stand] remove forceNo"}
execute if score @s tTrackEditor matches 1198 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"3",item:"11",1:"tag @e[tag=focusT,type=armor_stand] add forceNo"}
execute if score @s tTrackEditor matches 1199 run function sprint_racer:game_logic/10/custom_config/settings_overrides/item {page:"3",item:"11",1:"tag @e[tag=focusT,type=armor_stand] add banNo"}