#executed with storage sprint_racer:custom_track_storage_$(id)

#run it
$function $(function_namespace):$(function_path)/_initialize

#store function args for easier use in our other custom functions
$data modify storage sprint_racer:func_args active_namespace set from storage sprint_racer:custom_track_storage_$(storage_id) function_namespace
$data modify storage sprint_racer:func_args active_path set from storage sprint_racer:custom_track_storage_$(storage_id) function_path