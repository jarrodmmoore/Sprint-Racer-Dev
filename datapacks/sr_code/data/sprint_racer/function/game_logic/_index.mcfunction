scoreboard players operation global gameState = @s gameState

execute if entity @s[scores={gameState=0..4}] run function sprint_racer:game_logic/_index_0_4
execute if entity @s[scores={gameState=5..}] run function sprint_racer:game_logic/_index_5_plus

#w exists!
scoreboard players set #wExists value 100
execute if score @s gameState matches 0..12 run scoreboard players set #wHasScore value 100

#LEGEND OF THE GAMESTATES
# + their sub states
###game_logic/0 -> lobby
#------ not ready
#------ ready (lobby)
#------ ready (track selection area)
###game_logic/1 -> race mode
#------ standard race
#------ elimination race
###game_logic/2 -> editor mode*
#------ *this is a weird exception to the rules
#------ *this mode is run per player, not globally
#------ *it is the only "mode" than can be active at the same time as others
###game_logic/3 -> battle mode
#------ standard race
#------ elimination race
###game_logic/4 -> endgame ceremony (podium)
#------ no teams
#------ teams
###game_logic/5 -> free roam mode
###game_logic/6 -> time attack lobby
###game_logic/7 -> time attack (race)
###game_logic/8 -> target attack (battle)
###game_logic/9 -> random track pool
###game_logic/10 -> custom track manager
#------ menu
#------ selecting track location
#------ editing track
###game_logic/11 -> grand prix setup
#------ menu
#------ track sequence setup (track selection area)
###game_logic/12 -> credits movie

###any other value of gameState -> nothing will happen!