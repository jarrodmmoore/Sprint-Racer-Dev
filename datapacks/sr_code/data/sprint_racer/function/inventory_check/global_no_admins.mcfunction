tag @a[tag=needAdminControl] remove needAdminControl

#let players trigger the hidden custom soundtrack option
execute as @a[scores={useCustomSoundtrack=1..}] run function sprint_racer:inventory_check/inventory_controls/enable_custom_soundtrack

tag @a remove needVoteControl
execute if entity @e[tag=w,type=armor_stand,scores={gameState=1..3}] run tag @a add needVoteControl

execute as @a[gamemode=adventure] run function sprint_racer:inventory_check/_index
clear @a[gamemode=spectator] shulker_shell