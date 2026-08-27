# The advancement remains granted through the complete one-shot scan, suppressing conversion re-entry.
function named_heads:detection/scan_inventory
advancement revoke @s only named_heads:detection/inventory_changed
scoreboard players reset @s nh_detect
