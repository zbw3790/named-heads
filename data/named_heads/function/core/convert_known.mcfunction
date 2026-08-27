$execute unless items entity @s $(slot) #named_heads:supported_heads run return 0
data modify storage named_heads:runtime status set value "missing_name"
$execute unless data entity @s $(path).components."minecraft:custom_name" run return 0
data modify storage named_heads:runtime status set value "invalid_name"
$execute store success score #read nh_internal run data modify storage named_heads:runtime candidate set string entity @s $(path).components."minecraft:custom_name" 0
execute unless score #read nh_internal matches 1 run return 0
execute if data storage named_heads:runtime {candidate:""} run return 0
data modify storage named_heads:runtime original set from storage named_heads:runtime candidate
scoreboard players set #length nh_internal 0
$return run function named_heads:core/validate_next {slot:"$(slot)"}
