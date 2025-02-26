#> entity:hit/filters/12
#
# 攻撃先のエンティティを絞っていくらしい
#
# @within function entity:hit/

execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={12-0=true}}] if entity @s[tag=FindFlag12.0] run function entity:hit/filters/11
execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={12-1=true}}] if entity @s[tag=FindFlag12.1] run function entity:hit/filters/11