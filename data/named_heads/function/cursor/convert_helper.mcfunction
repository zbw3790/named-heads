# Runs as the exact entity created by execute summon; no nearest-entity helper lookup is used.
tag @s add nh_cursor_helper
data merge entity @s {NoAI:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b}

# Copy one item for shared-core validation; the original Cursor stack remains untouched.
item replace entity @s weapon.mainhand from entity @a[tag=nh_cursor_owner,limit=1] player.cursor
function named_heads:core/convert_slot {slot:"weapon.mainhand"}
execute if data storage named_heads:runtime {status:"success"} as @a[tag=nh_cursor_owner,limit=1] run function named_heads:cursor/apply with storage named_heads:runtime

# Cleanup is unconditional, including copy/core/in-place-apply failure paths.
item replace entity @s weapon.mainhand with minecraft:air
kill @s
