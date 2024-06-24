execute positioned 1556 89 406 rotated 90 0 run function sprint_racer:varied_teleport
tp @s @a[limit=1,sort=random,tag=playing]
function sprint_racer_language:join_messages/in_game_no_players

#force back to lobby
function sprint_racer:game_logic/0/_initialize