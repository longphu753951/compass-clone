import 'package:freezed_annotation/freezed_annotation.dart';

part 'itineraryConfig.freezed.dart';
part 'itineraryConfig.g.dart';

@freezed
abstract class ItineraryConfig with _$ItineraryConfig {
  const factory ItineraryConfig({
    String? continent,
    DateTime? startDate,
    DateTime? endDate,
    int? guests,
    String? destination,

    @Default([]) List<String> activities,
  }) = _ItineraryConfig;

  factory ItineraryConfig.fromJson(Map<String, Object?> json) =>
      _$ItineraryConfigFromJson(json);
}