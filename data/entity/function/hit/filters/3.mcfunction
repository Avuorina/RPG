#> entity:hit/filters/3
#
# 攻撃先のエンティティを絞っていくらしい
#
# @within function entity:hit/

execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={3-0=true}}] if entity @s[tag=FindFlag3.0] run function entity:hit/filters/2
execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={3-1=true}}] if entity @s[tag=FindFlag3.1] run function entity:hit/filters/2