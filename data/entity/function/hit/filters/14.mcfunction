#> entity:hit/filters/14
#
# 攻撃先のエンティティを絞っていくらしい
#
# @within function entity:hit/

execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={14-0=true}}] if entity @s[tag=FindFlag14.0] run function entity:hit/filters/13
execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={14-1=true}}] if entity @s[tag=FindFlag14.1] run function entity:hit/filters/13