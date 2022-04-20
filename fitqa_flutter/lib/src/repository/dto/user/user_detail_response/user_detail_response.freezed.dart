// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDetailResponse _$UserDetailResponseFromJson(Map<String, dynamic> json) {
  return _UserDetailResponse.fromJson(json);
}

/// @nodoc
class _$UserDetailResponseTearOff {
  const _$UserDetailResponseTearOff();

  _UserDetailResponse call(
      {required String result,
      User? data,
      String? message,
      String? errorCode}) {
    return _UserDetailResponse(
      result: result,
      data: data,
      message: message,
      errorCode: errorCode,
    );
  }

  UserDetailResponse fromJson(Map<String, Object?> json) {
    return UserDetailResponse.fromJson(json);
  }
}

/// @nodoc
const $UserDetailResponse = _$UserDetailResponseTearOff();

/// @nodoc
mixin _$UserDetailResponse {
  String get result => throw _privateConstructorUsedError;
  User? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailResponseCopyWith<UserDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailResponseCopyWith<$Res> {
  factory $UserDetailResponseCopyWith(
          UserDetailResponse value, $Res Function(UserDetailResponse) then) =
      _$UserDetailResponseCopyWithImpl<$Res>;
  $Res call({String result, User? data, String? message, String? errorCode});

  $UserCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserDetailResponseCopyWithImpl<$Res>
    implements $UserDetailResponseCopyWith<$Res> {
  _$UserDetailResponseCopyWithImpl(this._value, this._then);

  final UserDetailResponse _value;
  // ignore: unused_field
  final $Res Function(UserDetailResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? data = freezed,
    Object? message = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as User?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$UserDetailResponseCopyWith<$Res>
    implements $UserDetailResponseCopyWith<$Res> {
  factory _$UserDetailResponseCopyWith(
          _UserDetailResponse value, $Res Function(_UserDetailResponse) then) =
      __$UserDetailResponseCopyWithImpl<$Res>;
  @override
  $Res call({String result, User? data, String? message, String? errorCode});

  @override
  $UserCopyWith<$Res>? get data;
}

/// @nodoc
class __$UserDetailResponseCopyWithImpl<$Res>
    extends _$UserDetailResponseCopyWithImpl<$Res>
    implements _$UserDetailResponseCopyWith<$Res> {
  __$UserDetailResponseCopyWithImpl(
      _UserDetailResponse _value, $Res Function(_UserDetailResponse) _then)
      : super(_value, (v) => _then(v as _UserDetailResponse));

  @override
  _UserDetailResponse get _value => super._value as _UserDetailResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? data = freezed,
    Object? message = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(_UserDetailResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as User?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errorCode: errorCode == freezed
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDetailResponse implements _UserDetailResponse {
  const _$_UserDetailResponse(
      {required this.result, this.data, this.message, this.errorCode});

  factory _$_UserDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserDetailResponseFromJson(json);

  @override
  final String result;
  @override
  final User? data;
  @override
  final String? message;
  @override
  final String? errorCode;

  @override
  String toString() {
    return 'UserDetailResponse(result: $result, data: $data, message: $message, errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDetailResponse &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.errorCode, errorCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(result),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(errorCode));

  @JsonKey(ignore: true)
  @override
  _$UserDetailResponseCopyWith<_UserDetailResponse> get copyWith =>
      __$UserDetailResponseCopyWithImpl<_UserDetailResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDetailResponseToJson(this);
  }
}

abstract class _UserDetailResponse implements UserDetailResponse {
  const factory _UserDetailResponse(
      {required String result,
      User? data,
      String? message,
      String? errorCode}) = _$_UserDetailResponse;

  factory _UserDetailResponse.fromJson(Map<String, dynamic> json) =
      _$_UserDetailResponse.fromJson;

  @override
  String get result;
  @override
  User? get data;
  @override
  String? get message;
  @override
  String? get errorCode;
  @override
  @JsonKey(ignore: true)
  _$UserDetailResponseCopyWith<_UserDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
