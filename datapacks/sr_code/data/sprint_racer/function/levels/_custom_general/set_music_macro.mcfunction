#store target namespace and folder in generic storage for easier access
$data modify storage sprint_racer:func_args music_namespace set from storage sprint_racer:custom_track_storage_$(custom_uid) music_namespace
$data modify storage sprint_racer:func_args music_path set from storage sprint_racer:custom_track_storage_$(custom_uid) music_path

#armor stand 50 will redirect players to the macro namespace and folder
tag @e[tag=random,x=1548,y=155,z=406,distance=..1,type=armor_stand,scores={rNumber=50}] add setBGM