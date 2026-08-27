# Internal conversion entry. Controlled adapters provide an item slot and the matching readable entity NBT path.
data remove storage named_heads:runtime candidate
data remove storage named_heads:runtime original
data remove storage named_heads:runtime validated
data remove storage named_heads:runtime first
data modify storage named_heads:runtime status set value "unsupported"
$data modify storage named_heads:runtime slot set value "$(slot)"
$return run function named_heads:core/convert_known {slot:"$(slot)",path:"$(path)"}
