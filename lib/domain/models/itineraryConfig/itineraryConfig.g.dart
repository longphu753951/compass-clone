// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itineraryConfig.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItineraryConfig _$ItineraryConfigFromJson(Map<String, dynamic> json) =>
    ItineraryConfig(
      id: json['id'] as String?,
      continent: json['continent'] as String?,
      startDate:
          json['startDate'] == null
              ? null
              : DateTime.parse(json['startDate'] as String),
      endDate:
          json['endDate'] == null
              ? null
              : DateTime.parse(json['endDate'] as String),
      quests: (json['quests'] as num?)?.toInt(),
      destination: json['destination'] as String?,
      activities:
          (json['activities'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
    );

Map<String, dynamic> _$ItineraryConfigToJson(ItineraryConfig instance) =>
    <String, dynamic>{
      'id': instance.id,
      'continent': instance.continent,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'quests': instance.quests,
      'destination': instance.destination,
      'activities': instance.activities,
    };
