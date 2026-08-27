# Recheck the current Cursor after debounce; conversion remains isolated in the Cursor adapter and M1 core.
execute if items entity @s player.cursor #named_heads:supported_heads[minecraft:custom_name] run function named_heads:cursor/convert
scoreboard players reset @s nh_cursor
