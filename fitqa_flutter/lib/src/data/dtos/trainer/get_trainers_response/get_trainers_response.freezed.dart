// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_trainers_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetTrainersResponse _$GetTrainersResponseFromJson(Map<String, dynamic> json) {
  return _GetTrainersResponse.fromJson(json);
}

/// @nodoc
class _$GetTrainersResponseTearOff {
  const _$GetTrainersResponseTearOff();

  _GetTrainersResponse call(
      {required String result,
      List<Trainer>? data,
      String? message,
      String? errorCode}) {
    return _GetTrainersResponse(
      result: result,
      data: data,
      message: message,
      errorCode: errorCode,
    );
  }

  GetTrainersResponse fromJson(Map<String, Object?> json) {
    return GetTrainersResponse.fromJson(json);
  }
}

/// @nodoc
const $GetTrainersResponse = _$GetTrainersResponseTearOff();

/// @nodoc
mixin _$GetTrainersResponse {
  String get result => throw _privateConstructorUsedError;
  List<Trainer>? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetTrainersResponseCopyWith<GetTrainersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTrainersResponseCopyWith<$Res> {
  factory $GetTrainersResponseCopyWith(
          GetTrainersResponse value, $Res Function(GetTrainersResponse) then) =
      _$GetTrainersResponseCopyWithImpl<$Res>;
  $Res call(
      {String result, List<Trainer>? data, String? message, String? errorCode});
}

/// @nodoc
class _$GetTrainersResponseCopyWithImpl<$Res>
    implements $GetTrainersResponseCopyWith<$Res> {
  _$GetTrainersResponseCopyWithImpl(this._value, this._then);

  final GetTrainersResponse _value;
  // ignore: unused_field
  final $Res Function(GetTrainersResponse) _then;

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
              as List<Trainer>?,
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
abstract class _$GetTrainersResponseCopyWith<$Res>
    implements $GetTrainersResponseCopyWith<$Res> {
  factory _$GetTrainersResponseCopyWith(_GetTrainersResponse value,
          $Res Function(_GetTrainersResponse) then) =
      __$GetTrainersResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String result, List<Trainer>? data, String? message, String? errorCode});
}

/// @nodoc
class __$GetTrainersResponseCopyWithImpl<$Res>
    extends _$GetTrainersResponseCopyWithImpl<$Res>
    implements _$GetTrainersResponseCopyWith<$Res> {
  __$GetTrainersResponseCopyWithImpl(
      _GetTrainersResponse _value, $Res Function(_GetTrainersResponse) _then)
      : super(_value, (v) => _then(v as _GetTrainersResponse));

  @override
  _GetTrainersResponse get _value => super._value as _GetTrainersResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? data = freezed,
    Object? message = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(_GetTrainersResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Trainer>?,
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
class _$_GetTrainersResponse implements _GetTrainersResponse {
  const _$_GetTrainersResponse(
      {required this.result, this.data, this.message, this.errorCode});

  factory _$_GetTrainersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetTrainersResponseFromJson(json);

  @override
  final String result;
  @override
  final List<Trainer>? data;
  @override
  final String? message;
  @override
  final String? errorCode;

  @override
  String toString() {
    return 'GetTrainersResponse(result: $result, data: $data, message: $message, errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetTrainersResponse &&
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
  _$GetTrainersResponseCopyWith<_GetTrainersResponse> get copyWith =>
      __$GetTrainersResponseCopyWithImpl<_GetTrainersResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetTrainersResponseToJson(this);
  }
}

abstract class _GetTrainersResponse implements GetTrainersResponse {
  const factory _GetTrainersResponse(
      {required String result,
      List<Trainer>? data,
      String? message,
      String? errorCode}) = _$_GetTrainersResponse;

  factory _GetTrainersResponse.fromJson(Map<String, dynamic> json) =
      _$_GetTrainersResponse.fromJson;

  @override
  String get result;
  @override
  List<Trainer>? get data;
  @override
  String? get message;
  @override
  String? get errorCode;
  @override
  @JsonKey(ignore: true)
  _$GetTrainersResponseCopyWith<_GetTrainersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
