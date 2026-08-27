data modify storage named_heads:runtime validated set from storage named_heads:runtime original
$item modify entity @s $(slot) {function:"minecraft:set_item",item:"minecraft:player_head"}
$item modify entity @s $(slot) {function:"minecraft:set_components",components:{"minecraft:profile":{name:"$(original)"},"!minecraft:custom_name":{}}}
data modify storage named_heads:runtime status set value "success"
return 1
