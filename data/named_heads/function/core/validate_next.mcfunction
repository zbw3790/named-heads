execute if data storage named_heads:runtime {candidate:""} run return run function named_heads:core/apply with storage named_heads:runtime
scoreboard players add #length nh_internal 1
execute if score #length nh_internal matches 17.. run return 0
data modify storage named_heads:runtime first set string storage named_heads:runtime candidate 0 1
scoreboard players set #allowed nh_internal 0
function named_heads:core/validate_character
execute unless score #allowed nh_internal matches 1 run return 0
data modify storage named_heads:runtime candidate set string storage named_heads:runtime candidate 1
$return run function named_heads:core/validate_next {slot:"$(slot)"}
