scoreboard players enable @a[tag=playing] mgVoteTrigger

#51% of active players must affirm vote
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] math 0
execute as @a[tag=playing] run scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] math 1
scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] math2 2
scoreboard players operation @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] math /= @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] math2
scoreboard players add @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] math 1

tag @s add self

execute as @a at @s run playsound minecraft:block.note_block.snare master @s ~ 100000 ~ 100000 .8

scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] mgVoteCount 1
execute if entity @s[scores={mgVoteTrigger=1}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] mgVoteMode 1
execute if entity @s[scores={mgVoteTrigger=2}] run scoreboard players set @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,limit=1] mgVoteMode 2
scoreboard players reset @s mgVoteTrigger

tellraw @a ["",{"text":" "}]
tellraw @a ["",{"selector":"@s"},{"translate":"sr.mid_game_vote.player_called_vote","color":"white"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=!customTesting,scores={mgVoteMode=2}] run tellraw @a ["",{"translate":"sr.mid_game_vote.return_to_lobby","color":"gold","bold":true},{"text":" "},{"translate":"sr.mid_game_vote.votes_needed_1","color":"gray"},{"score":{"name":"@e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,type=armor_stand]","objective":"math"},"color":"gray"},{"translate":"sr.mid_game_vote.votes_needed_2","color":"gray"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,tag=customTesting,scores={mgVoteMode=2}] run tellraw @a ["",{"translate":"sr.mid_game_vote.end_track_test","color":"light_purple","bold":true},{"text":" "},{"translate":"sr.mid_game_vote.votes_needed_1","color":"gray"},{"score":{"name":"@e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,type=armor_stand]","objective":"math"},"color":"gray"},{"translate":"sr.mid_game_vote.votes_needed_2","color":"gray"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=1,mgVoteMode=1}] run tellraw @a ["",{"translate":"sr.mid_game_vote.restart_race","color":"aqua","bold":true},{"text":" "},{"translate":"sr.mid_game_vote.votes_needed_1","color":"gray"},{"score":{"name":"@e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,type=armor_stand]","objective":"math"},"color":"gray"},{"translate":"sr.mid_game_vote.votes_needed_2","color":"gray"}]
execute if entity @e[tag=w,x=1560,y=150,z=406,distance=..1,type=armor_stand,scores={gameState=3,mgVoteMode=1}] run tellraw @a ["",{"translate":"sr.mid_game_vote.restart_battle","color":"red","bold":true},{"text":" "},{"translate":"sr.mid_game_vote.votes_needed_1","color":"gray"},{"score":{"name":"@e[tag=w,x=1560,y=150,z=406,distance=..1,limit=1,type=armor_stand]","objective":"math"},"color":"gray"},{"translate":"sr.mid_game_vote.votes_needed_2","color":"gray"}]
tellraw @a[tag=playing,tag=!self] ["",{"text":" "},{"text":" "},{"translate":"sr.text_menu.yes","color":"yellow","bold":false,"clickEvent":{"action":"run_command","value":"/trigger mgVoteTrigger set 1"},"hoverEvent":{"action":"show_text","contents":"Yes"}},{"text":" "},{"translate":"sr.mid_game_vote.click_to_vote","color":"gray"}]
tellraw @s ["",{"translate":"sr.mid_game_vote.waiting_for_other_players_to_respond","italic":true,"color":"gray"}]
tellraw @a[tag=!self,tag=!playing] ["",{"translate":"sr.mid_game_vote.vote_is_for_active_players_only","italic":true,"color":"gray"}]

tag @s remove self