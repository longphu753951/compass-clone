import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';


part 'user.g.dart';

@immutable
@JsonSerializable()
class User extends Equatable {
  User({
    String? id,
    required this.name,
    required this.image
  }) : assert(
    id == null || id.isNotEmpty,
    'id must either be null or not empty'
  ), id = id ?? const Uuid().v4();

  final String id;

  final String name;

  final String image;

  User copyWith({
    String? id,
    String? name,
    String? image
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image
    );
  }

  static User fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);



  @override
  List<Object?> get props => [id, name, image];
}