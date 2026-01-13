scoreboard players set #settingsWereOverridden value 1

#save our current settings into a hidden 12th slot that will be restored later
execute positioned 1627 67 460 run function sprint_racer:game_logic/0/save_state/save_current
execute positioned 1627 67 460 run setblock 1626 ~ 459 lime_wool

#remember: saved at y=67

#debug
#say settings override