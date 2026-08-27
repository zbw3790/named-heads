# Entity-equipment adapter. Call as @s with an internally whitelisted item slot.
$data modify storage named_heads:runtime slot set value "$(slot)"
execute if data storage named_heads:runtime {slot:"weapon.mainhand"} run return run function named_heads:core/convert {slot:"weapon.mainhand",path:"equipment.mainhand"}
execute if data storage named_heads:runtime {slot:"weapon.offhand"} run return run function named_heads:core/convert {slot:"weapon.offhand",path:"equipment.offhand"}
data remove storage named_heads:runtime candidate
data remove storage named_heads:runtime original
data remove storage named_heads:runtime validated
data remove storage named_heads:runtime first
data modify storage named_heads:runtime status set value "unsupported"
return 0
