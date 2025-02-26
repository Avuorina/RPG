#> entity:hit/filters/13
#
# 攻撃先のエンティティを絞っていくらしい
#
# @within function entity:hit/

execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={13-0=true}}] if entity @s[tag=FindFlag13.0] run function entity:hit/filters/12
execute if entity @p[tag=AttackedPlayer,advancements={entity:hurt_by_player={13-1=true}}] if entity @s[tag=FindFlag13.1] run function entity:hit/filters/12