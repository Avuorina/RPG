#> entity:hit/filters/1
#
# 攻撃先のエンティティを絞っていくらしい
#
# @within function entity:hit/

execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={1-0=true}}] if entity @s[tag=FindFlag1.0] run function entity:hit/filters/0
execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={1-1=true}}] if entity @s[tag=FindFlag1.1] run function entity:hit/filters/0