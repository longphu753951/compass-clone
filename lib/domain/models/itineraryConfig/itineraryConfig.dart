import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'itineraryConfig.g.dart';

@immutable
@JsonSerializable()
class ItineraryConfig extends Equatable {
  ItineraryConfig({
    String? id,
    this.continent,
    this.startDate,
    this.endDate,
    this.quests,
    this.destination,
    required this.activities
  }): assert(
    id == null || id.isNotEmpty,
    'id must either be null or not empty'
  ), id = id ?? const Uuid().v4() ;

  final String? id;

  final String? continent;

  final DateTime? startDate;

  final DateTime? endDate;

  final int? quests;

  final String? destination;

  final List<String> activities;

  ItineraryConfig copyWith({
    String? id,
    String? continent,
    DateTime? startDate,
    DateTime? endDate,
    int? quests,
    String? destination,
    List<String>? activities
  }) {
    return ItineraryConfig(
      id: id ?? this.id,
      continent: continent ?? this.continent,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      quests: quests ?? this.quests,
      destination: destination ?? this.destination,
      activities: activities ?? this.activities
    );
  }

  static ItineraryConfig fromJson(Map<String, Object?> json) =>
      _$ItineraryConfigFromJson(json);

  Map<String, dynamic> toJson() => _$ItineraryConfigToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}