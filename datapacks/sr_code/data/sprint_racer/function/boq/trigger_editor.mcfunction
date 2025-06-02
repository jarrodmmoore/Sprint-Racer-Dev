#for the record, this is silly and we as mapmakers shouldn't have to do this.

#from what i understand, some modded server owners were giving non-operator players the ability to generate click_event texts.
#in my view this is a glaringly obvious security flub on the part of these server owners.
#but mojang recently decided that this was everyone's problem, and now any run_command event with permission level > 0 halts the game with a warning message.

#this would make the editor menus in Sprint Racer insufferable to use, so we're going to shove in a less secure /trigger layer in the middle
#as opposed to just relying on traditional operator privileges like a sensible and security-conscious programmer.

#i'll just have to operate on the assumption that players who can get themselves into Creative Mode are operators.
#so let's kick players out of this function if they aren't in creative mode
execute unless entity @s[gamemode=creative] run return run scoreboard players reset @s tEditor
#=====

execute if score @s tEditor matches 1000..1099 run function sprint_racer:boq/trigger_editor_0_99
execute if score @s tEditor matches 1100..1199 run function sprint_racer:boq/trigger_editor_100_199

#clean input
scoreboard players reset @s tEditor