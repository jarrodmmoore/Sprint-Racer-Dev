tag @e[tag=focusT,type=armor_stand] remove focusT

#now update the display...
function sprint_racer:game_logic/0/worldmap_extra/custom/grid_layout/grouped_custom/update_display

#tag the current track as the focus

#clean up from some old functionality
tag @e[tag=wmCustomFocus,type=armor_stand] remove wmCustomFocus