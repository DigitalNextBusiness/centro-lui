import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required final int id,
    final String? email,
    @JsonKey(includeIfNull: false) final String? firstName,
    @JsonKey(includeIfNull: false) final String? lastName,
  }) = _User;

  const User._();

  /// Creates a UserData from a JSON object.
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  static List<User> fromJsonList(List<Map<String, dynamic>> json) {
    return json.map(User.fromJson).toList();
  }
}
