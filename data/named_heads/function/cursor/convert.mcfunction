# Player adapter. Command execution is synchronous, so this global owner tag is an exclusive one-call handoff.
tag @a remove nh_cursor_owner
tag @s add nh_cursor_owner
execute summon minecraft:zombie run function named_heads:cursor/convert_helper
tag @s remove nh_cursor_owner
