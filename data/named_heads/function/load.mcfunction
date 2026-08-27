# Named Heads v1.0.0 initialization.
data modify storage named_heads:runtime status set value "idle"
data modify storage named_heads:runtime version set value "1.0.0"
scoreboard objectives add nh_internal dummy
scoreboard objectives add nh_detect dummy
scoreboard objectives add nh_cursor dummy
scoreboard players reset @a nh_detect
scoreboard players reset @a nh_cursor
advancement revoke @a only named_heads:detection/inventory_changed
tag @a remove nh_cursor_seen
tag @a remove nh_cursor_owner
item replace entity @e[tag=nh_cursor_helper] weapon.mainhand with minecraft:air
kill @e[tag=nh_cursor_helper]
