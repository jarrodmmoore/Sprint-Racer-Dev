#executed by "w"

#need to save whatever the game settings were before booting before we modify something for the first time
execute if score #settingsWereOverridden value matches 0 unless score #temporarySave value matches 1.. run function sprint_racer:levels/_custom_general/create_temporary_save_state
