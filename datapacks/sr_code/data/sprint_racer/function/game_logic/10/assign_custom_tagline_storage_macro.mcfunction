$data modify storage sprint_racer:custom_track_storage_$(id) storage_id set value $(id)

$data modify storage sprint_racer:custom_track_storage_$(id) tagline set value '{"text":"unset"}'

$data modify storage sprint_racer:custom_track_storage_$(id) overhead_map set value 10004
$data modify storage sprint_racer:custom_track_storage_$(id) preview_image set value 1

$data modify storage sprint_racer:custom_track_storage_$(id) function_namespace set value -1
$data modify storage sprint_racer:custom_track_storage_$(id) function_path set value -1

$data modify storage sprint_racer:custom_track_storage_$(id) kill_plane set value ..0