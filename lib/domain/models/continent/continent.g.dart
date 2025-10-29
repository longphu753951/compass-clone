// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'continent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Continent _$ContinentFromJson(Map<String, dynamic> json) => Continent(
  id: json['id'] as String?,
  name: json['name'] as String,
  imageUrl: json['imageUrl'] as String,
);

Map<String, dynamic> _$ContinentToJson(Continent instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'imageUrl': instance.imageUrl,
};
