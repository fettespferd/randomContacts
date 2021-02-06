// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {String title,
      String firstName,
      String lastName,
      String email,
      String gender,
      String city,
      String country,
      String cellNumber,
      String thumbnail,
      String largePicture}) {
    return _User(
      title: title,
      firstName: firstName,
      lastName: lastName,
      email: email,
      gender: gender,
      city: city,
      country: country,
      cellNumber: cellNumber,
      thumbnail: thumbnail,
      largePicture: largePicture,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get title;
  String get firstName;
  String get lastName;
  String get email;
  String get gender;
  String get city;
  String get country;
  String get cellNumber;
  String get thumbnail;
  String get largePicture;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String firstName,
      String lastName,
      String email,
      String gender,
      String city,
      String country,
      String cellNumber,
      String thumbnail,
      String largePicture});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object title = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object email = freezed,
    Object gender = freezed,
    Object city = freezed,
    Object country = freezed,
    Object cellNumber = freezed,
    Object thumbnail = freezed,
    Object largePicture = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      email: email == freezed ? _value.email : email as String,
      gender: gender == freezed ? _value.gender : gender as String,
      city: city == freezed ? _value.city : city as String,
      country: country == freezed ? _value.country : country as String,
      cellNumber:
          cellNumber == freezed ? _value.cellNumber : cellNumber as String,
      thumbnail: thumbnail == freezed ? _value.thumbnail : thumbnail as String,
      largePicture: largePicture == freezed
          ? _value.largePicture
          : largePicture as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String firstName,
      String lastName,
      String email,
      String gender,
      String city,
      String country,
      String cellNumber,
      String thumbnail,
      String largePicture});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object title = freezed,
    Object firstName = freezed,
    Object lastName = freezed,
    Object email = freezed,
    Object gender = freezed,
    Object city = freezed,
    Object country = freezed,
    Object cellNumber = freezed,
    Object thumbnail = freezed,
    Object largePicture = freezed,
  }) {
    return _then(_User(
      title: title == freezed ? _value.title : title as String,
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      email: email == freezed ? _value.email : email as String,
      gender: gender == freezed ? _value.gender : gender as String,
      city: city == freezed ? _value.city : city as String,
      country: country == freezed ? _value.country : country as String,
      cellNumber:
          cellNumber == freezed ? _value.cellNumber : cellNumber as String,
      thumbnail: thumbnail == freezed ? _value.thumbnail : thumbnail as String,
      largePicture: largePicture == freezed
          ? _value.largePicture
          : largePicture as String,
    ));
  }
}

/// @nodoc
class _$_User extends _User {
  const _$_User(
      {this.title,
      this.firstName,
      this.lastName,
      this.email,
      this.gender,
      this.city,
      this.country,
      this.cellNumber,
      this.thumbnail,
      this.largePicture})
      : super._();

  @override
  final String title;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String gender;
  @override
  final String city;
  @override
  final String country;
  @override
  final String cellNumber;
  @override
  final String thumbnail;
  @override
  final String largePicture;

  @override
  String toString() {
    return 'User(title: $title, firstName: $firstName, lastName: $lastName, email: $email, gender: $gender, city: $city, country: $country, cellNumber: $cellNumber, thumbnail: $thumbnail, largePicture: $largePicture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.cellNumber, cellNumber) ||
                const DeepCollectionEquality()
                    .equals(other.cellNumber, cellNumber)) &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)) &&
            (identical(other.largePicture, largePicture) ||
                const DeepCollectionEquality()
                    .equals(other.largePicture, largePicture)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(cellNumber) ^
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(largePicture);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User extends User {
  const _User._() : super._();
  const factory _User(
      {String title,
      String firstName,
      String lastName,
      String email,
      String gender,
      String city,
      String country,
      String cellNumber,
      String thumbnail,
      String largePicture}) = _$_User;

  @override
  String get title;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String get gender;
  @override
  String get city;
  @override
  String get country;
  @override
  String get cellNumber;
  @override
  String get thumbnail;
  @override
  String get largePicture;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith;
}
