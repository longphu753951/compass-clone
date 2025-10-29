import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'continent.g.dart';

@immutable
@JsonSerializable()
class Continent extends Equatable {
  Continent({
    String? id,
    required this.name,
    required this.imageUrl,
  }): assert(
    id == null || id.isNotEmpty,
    'id must either be null or not empty'
  ), id = id ?? const Uuid().v4();

  final String id;
  final String name;
  final String imageUrl;

  Continent copyWith({
    String? id,
    String? name,
    String? imageUrl,
  }) {
    return Continent(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  static Continent fromJson(Map<String, dynamic> json) =>
      _$ContinentFromJson(json);

  Map<String, dynamic> toJson() => _$ContinentToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, imageUrl];
}