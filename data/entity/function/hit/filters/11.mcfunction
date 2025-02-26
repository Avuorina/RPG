#> entity:hit/filters/11
#
# 攻撃先のエンティティを絞っていくらしい
#
# @within function entity:hit/

execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={11-0=true}}] if entity @s[tag=FindFlag11.0] run function entity:hit/filters/10
execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={11-1=true}}] if entity @s[tag=FindFlag11.1] run function entity:hit/filters/10