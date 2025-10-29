import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'destination.g.dart';

@immutable
@JsonSerializable()
class Destination extends Equatable {
  Destination({
    String? id,
    /// e.g. 'alaska'
    required this.ref,

    /// e.g. 'Alaska'
    required this.name,

    /// e.g. 'United States'
    required this.country,

    /// e.g. 'North America'
    required this.continent,

    /// e.g. 'Alaska is a haven for outdoor enthusiasts ...'
    required this.knownFor,

    /// e.g. ['Mountain', 'Off-the-beaten-path', 'Wildlife watching']
    required this.tags,

    /// e.g. 'https://storage.googleapis.com/tripedia-images/destinations/alaska.jpg'
    required this.imageUrl,
  }): assert(
    id == null || id.isNotEmpty,
    'id must either be null or not empty'
  ), id = id ?? const Uuid().v4();

  final String id;
  final String ref;
  final String name;
  final String country;
  final String continent;
  final String knownFor;
  final List<String> tags;
  final String imageUrl;

  Destination copyWith({
    String? id,
    String? ref,
    String? name,
    String? country,
    String? continent,
    String? knownFor,
    List<String>? tags,
    String? imageUrl,
  }) {
    return Destination(
      id: id ?? this.id,
      ref: ref ?? this.ref,
      name: name ?? this.name,
      country: country ?? this.country,
      continent: continent ?? this.continent,
      knownFor: knownFor ?? this.knownFor,
      tags: tags ?? this.tags,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  static Destination fromJson(Map<String, dynamic> json) =>
      _$DestinationFromJson(json);

  Map<String, dynamic> toJson() => _$DestinationToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [id, ref, name, country, continent, knownFor, tags, imageUrl];
}