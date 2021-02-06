import 'package:randomContacts/app/module.dart';

part 'models.freezed.dart';

@freezed
abstract class User implements _$User {
  const factory User({
    String title,
    String firstName,
    String lastName,
    String email,
    String gender,
    String city,
    String country,
    String cellNumber,
    String thumbnail,
    String largePicture,
  }) = _User;

  const User._();

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      title: json['name']['title'] as String,
      firstName: json['name']['first'] as String,
      lastName: json['name']['last'] as String,
      email: json['email'] as String,
      gender: json['gender'] as String,
      city: json['location']['city'] as String,
      country: json['nat'] as String,
      cellNumber: json['cell'] as String,
      thumbnail: json['picture']['medium'] as String,
      largePicture: json['picture']['large'] as String,
    );
  }
}
