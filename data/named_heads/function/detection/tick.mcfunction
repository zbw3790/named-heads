# Process only due detection Players; then advance only detection Players that are still waiting.
execute as @a[scores={nh_detect=1}] run function named_heads:detection/process_pending
scoreboard players remove @a[scores={nh_detect=2..}] nh_detect 1

# Watch only the server-side Player Cursor slot and debounce each observed conversion candidate.
execute as @a[tag=nh_cursor_seen] unless items entity @s player.cursor #named_heads:supported_heads[minecraft:custom_name] run tag @s remove nh_cursor_seen
execute as @a[scores={nh_cursor=1}] run function named_heads:detection/process_cursor
scoreboard players remove @a[scores={nh_cursor=2..}] nh_cursor 1
execute as @a[tag=!nh_cursor_seen] unless score @s nh_cursor matches 1.. if items entity @s player.cursor #named_heads:supported_heads[minecraft:custom_name] run function named_heads:detection/queue_cursor
