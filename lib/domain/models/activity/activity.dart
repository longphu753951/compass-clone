import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'activity.g.dart';

enum TimeOfDay { any, morning, afternoon, evening, night }

@immutable
@JsonSerializable()
class Activity extends Equatable {
  Activity({
    String? id,
    /// e.g. 'Glacier Trekking and Ice Climbing'
    required this.name,

    /// e.g. 'Embark on a thrilling adventure exploring the awe-inspiring glaciers of Alaska. Hike across the icy terrain, marvel at the deep blue crevasses, and even try your hand at ice climbing for an unforgettable experience.'
    required this.description,

    /// e.g. 'Matanuska Glacier or Mendenhall Glacier'
    required this.locationName,

    /// Duration in days.
    /// e.g. 8
    required this.duration,

    /// e.g. 'morning'
    required this.timeOfDay,

    /// e.g. false
    required this.familyFriendly,

    /// e.g. 4
    required this.price,

    /// e.g. 'alaska'
    required this.destinationRef,

    /// e.g. 'glacier-trekking-and-ice-climbing'
    required this.ref,

    /// e.g. 'https://storage.googleapis.com/tripedia-images/activities/alaska_glacier-trekking-and-ice-climbing.jpg'
    required this.imageUrl,
  }):   assert(
          id == null || id.isNotEmpty,
          'id must not be empty',
        ), id = id ?? const Uuid().v4(),
        assert(
          name.isNotEmpty,
          'name must not be empty',
        ),
        assert(
          description.isNotEmpty,
          'description must not be empty',
        ),
        assert(
          locationName.isNotEmpty,
          'locationName must not be empty',
        ),
        assert(
          duration > 0,
          'duration must be greater than zero',
        ),
        assert(
          price >= 0,
          'price must be non-negative',
        ),
        assert(
          destinationRef.isNotEmpty,
          'destinationRef must not be empty',
        ),
        assert(
          ref.isNotEmpty,
          'ref must not be empty',
        ),
        assert(
          imageUrl.isNotEmpty,
          'imageUrl must not be empty',
        );

  final String id;
  final String name;
  final String description;
  final String locationName;
  final int duration;
  final TimeOfDay timeOfDay;
  final bool familyFriendly;
  final int price;
  final String destinationRef;
  final String ref;
  final String imageUrl;

  Activity copyWith({
    String? id,
    String? name,
    String? description,
    String? locationName,
    int? duration,
    TimeOfDay? timeOfDay,
    bool? familyFriendly,
    int? price,
    String? destinationRef,
    String? ref,
    String? imageUrl,
  }) {
    return Activity(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      locationName: locationName ?? this.locationName,
      duration: duration ?? this.duration,
      timeOfDay: timeOfDay ?? this.timeOfDay,
      familyFriendly: familyFriendly ?? this.familyFriendly,
      price: price ?? this.price,
      destinationRef: destinationRef ?? this.destinationRef,
      ref: ref ?? this.ref,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  static Activity fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);

  Map<String, dynamic> toJson() => _$ActivityToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, description, locationName, duration, timeOfDay, familyFriendly, price, destinationRef, ref, imageUrl];

}