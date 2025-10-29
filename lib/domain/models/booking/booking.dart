import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../activity/activity.dart';
import '../destination/destination.dart';

part 'booking.g.dart';

@JsonSerializable()
@immutable
class Booking extends Equatable {
  Booking({
    /// Optional ID of the booking.
    /// May be null if the booking is not yet stored.
    String? id,

    /// Start date of the trip
    required this.startDate,

    /// End date of the trip
    required this.endDate,

    /// Destination of the trip
    required this.destination,

    /// List of chosen activities
    required this.activity,
  }): assert(
    id == null || id.isNotEmpty,
    'id must either be null or not empty',
  ),
  id = id ?? Uuid().v4();

  final String id;
  final DateTime startDate;
  final DateTime endDate;
  final Destination destination;
  final List<Activity> activity;

  Booking copyWith({
    String? id,
    DateTime? startDate,
    DateTime? endDate,
    Destination? destination,
    List<Activity>? activity,
  }) {
    return Booking(
      id: id ?? this.id,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      destination: destination ?? this.destination,
      activity: activity ?? this.activity,
    );
  }

  static Booking fromJson(Map<String, dynamic> json) =>
      _$BookingFromJson(json);

  Map<String, dynamic> toJson() => _$BookingToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [id, startDate, endDate, destination, activity];
}