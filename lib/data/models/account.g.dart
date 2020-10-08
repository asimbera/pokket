// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Account _$_$_AccountFromJson(Map<String, dynamic> json) {
  return _$_Account(
    name: json['name'] as String,
    type: json['type'] as int,
    currency: json['currency'] as int,
    icon: json['icon'] as int,
    color: json['color'] as int,
    description: json['description'] as String,
    initialBalance: (json['initialBalance'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_AccountToJson(_$_Account instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'currency': instance.currency,
      'icon': instance.icon,
      'color': instance.color,
      'description': instance.description,
      'initialBalance': instance.initialBalance,
    };
