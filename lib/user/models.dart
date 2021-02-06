import 'package:randomContacts/app/module.dart';

part 'models.freezed.dart';

@freezed
abstract class User implements _$User {
  const factory User({
    String email,
  }) = _User;

  const User._();

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      email: json['email'] as String,
    );
  }
}
