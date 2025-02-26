#> entity:hit/filters/8
#
# 攻撃先のエンティティを絞っていくらしい
#
# @within function entity:hit/

execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={8-0=true}}] if entity @s[tag=FindFlag8.0] run function entity:hit/filters/7
execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={8-1=true}}] if entity @s[tag=FindFlag8.1] run function entity:hit/filters/7