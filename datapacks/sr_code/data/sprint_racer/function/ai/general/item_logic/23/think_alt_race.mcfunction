#if there's a player behind us, drop tnt as a trap

function sprint_racer:ai/race/rubberbanding/find_previous_ranked_player

execute if entity @e[tag=previousPlayer,distance=10..50] run function sprint_racer:ai/general/item_logic/23/use_alt

tag @e[tag=previousPlayer] remove previousPlayer