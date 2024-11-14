$data modify storage sprint_racer:custom_track_storage_$(id) tagline set value '{"text":"unset"}'
$data modify storage sprint_racer:custom_track_storage_$(id) storage_id set value $(id)
$data modify storage sprint_racer:custom_track_storage_$(id) overhead_map set value 10004
$data modify storage sprint_racer:custom_track_storage_$(id) kill_plane set value ..0