// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required String userToken,
      required String name,
      required String email,
      required String photoURL,
      required WorkOutStyle workOutStyle,
      required WorkoutLevel workOutLevel,
      required Gender gender,
      required AccountProvider provider}) {
    return _User(
      userToken: userToken,
      name: name,
      email: email,
      photoURL: photoURL,
      workOutStyle: workOutStyle,
      workOutLevel: workOutLevel,
      gender: gender,
      provider: provider,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get userToken => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get photoURL => throw _privateConstructorUsedError;
  WorkOutStyle get workOutStyle => throw _privateConstructorUsedError;
  WorkoutLevel get workOutLevel => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  AccountProvider get provider => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String userToken,
      String name,
      String email,
      String photoURL,
      WorkOutStyle workOutStyle,
      WorkoutLevel workOutLevel,
      Gender gender,
      AccountProvider provider});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? userToken = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? photoURL = freezed,
    Object? workOutStyle = freezed,
    Object? workOutLevel = freezed,
    Object? gender = freezed,
    Object? provider = freezed,
  }) {
    return _then(_value.copyWith(
      userToken: userToken == freezed
          ? _value.userToken
          : userToken // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String,
      workOutStyle: workOutStyle == freezed
          ? _value.workOutStyle
          : workOutStyle // ignore: cast_nullable_to_non_nullable
              as WorkOutStyle,
      workOutLevel: workOutLevel == freezed
          ? _value.workOutLevel
          : workOutLevel // ignore: cast_nullable_to_non_nullable
              as WorkoutLevel,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AccountProvider,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userToken,
      String name,
      String email,
      String photoURL,
      WorkOutStyle workOutStyle,
      WorkoutLevel workOutLevel,
      Gender gender,
      AccountProvider provider});
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
    Object? userToken = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? photoURL = freezed,
    Object? workOutStyle = freezed,
    Object? workOutLevel = freezed,
    Object? gender = freezed,
    Object? provider = freezed,
  }) {
    return _then(_User(
      userToken: userToken == freezed
          ? _value.userToken
          : userToken // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      photoURL: photoURL == freezed
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String,
      workOutStyle: workOutStyle == freezed
          ? _value.workOutStyle
          : workOutStyle // ignore: cast_nullable_to_non_nullable
              as WorkOutStyle,
      workOutLevel: workOutLevel == freezed
          ? _value.workOutLevel
          : workOutLevel // ignore: cast_nullable_to_non_nullable
              as WorkoutLevel,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      provider: provider == freezed
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AccountProvider,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {required this.userToken,
      required this.name,
      required this.email,
      required this.photoURL,
      required this.workOutStyle,
      required this.workOutLevel,
      required this.gender,
      required this.provider});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String userToken;
  @override
  final String name;
  @override
  final String email;
  @override
  final String photoURL;
  @override
  final WorkOutStyle workOutStyle;
  @override
  final WorkoutLevel workOutLevel;
  @override
  final Gender gender;
  @override
  final AccountProvider provider;

  @override
  String toString() {
    return 'User(userToken: $userToken, name: $name, email: $email, photoURL: $photoURL, workOutStyle: $workOutStyle, workOutLevel: $workOutLevel, gender: $gender, provider: $provider)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.userToken, userToken) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.photoURL, photoURL) &&
            const DeepCollectionEquality()
                .equals(other.workOutStyle, workOutStyle) &&
            const DeepCollectionEquality()
                .equals(other.workOutLevel, workOutLevel) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.provider, provider));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userToken),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(photoURL),
      const DeepCollectionEquality().hash(workOutStyle),
      const DeepCollectionEquality().hash(workOutLevel),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(provider));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {required String userToken,
      required String name,
      required String email,
      required String photoURL,
      required WorkOutStyle workOutStyle,
      required WorkoutLevel workOutLevel,
      required Gender gender,
      required AccountProvider provider}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get userToken;
  @override
  String get name;
  @override
  String get email;
  @override
  String get photoURL;
  @override
  WorkOutStyle get workOutStyle;
  @override
  WorkoutLevel get workOutLevel;
  @override
  Gender get gender;
  @override
  AccountProvider get provider;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
