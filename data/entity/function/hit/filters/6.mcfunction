#> entity:hit/filters/6
#
# 攻撃先のエンティティを絞っていくらしい
#
# @within function entity:hit/

execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={6-0=true}}] if entity @s[tag=FindFlag6.0] run function entity:hit/filters/5
execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={6-1=true}}] if entity @s[tag=FindFlag6.1] run function entity:hit/filters/5