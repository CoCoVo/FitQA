// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trainer_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrainerDetailResponse _$TrainerDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _TrainerDetailResponse.fromJson(json);
}

/// @nodoc
class _$TrainerDetailResponseTearOff {
  const _$TrainerDetailResponseTearOff();

  _TrainerDetailResponse call(
      {required String result,
      Trainer? data,
      String? message,
      String? errorCode}) {
    return _TrainerDetailResponse(
      result: result,
      data: data,
      message: message,
      errorCode: errorCode,
    );
  }

  TrainerDetailResponse fromJson(Map<String, Object?> json) {
    return TrainerDetailResponse.fromJson(json);
  }
}

/// @nodoc
const $TrainerDetailResponse = _$TrainerDetailResponseTearOff();

/// @nodoc
mixin _$TrainerDetailResponse {
  String get result => throw _privateConstructorUsedError;
  Trainer? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainerDetailResponseCopyWith<TrainerDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainerDetailResponseCopyWith<$Res> {
  factory $TrainerDetailResponseCopyWith(TrainerDetailResponse value,
          $Res Function(TrainerDetailResponse) then) =
      _$TrainerDetailResponseCopyWithImpl<$Res>;
  $Res call({String result, Trainer? data, String? message, String? errorCode});

  $TrainerCopyWith<$Res>? get data;
}

/// @nodoc
class _$TrainerDetailResponseCopyWithImpl<$Res>
    implements $TrainerDetailResponseCopyWith<$Res> {
  _$TrainerDetailResponseCopyWithImpl(this._value, this._then);

  final TrainerDetailResponse _value;
  // ignore: unused_field
  final $Res Function(TrainerDetailResponse) _then;

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
              as Trainer?,
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
  $TrainerCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TrainerCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$TrainerDetailResponseCopyWith<$Res>
    implements $TrainerDetailResponseCopyWith<$Res> {
  factory _$TrainerDetailResponseCopyWith(_TrainerDetailResponse value,
          $Res Function(_TrainerDetailResponse) then) =
      __$TrainerDetailResponseCopyWithImpl<$Res>;
  @override
  $Res call({String result, Trainer? data, String? message, String? errorCode});

  @override
  $TrainerCopyWith<$Res>? get data;
}

/// @nodoc
class __$TrainerDetailResponseCopyWithImpl<$Res>
    extends _$TrainerDetailResponseCopyWithImpl<$Res>
    implements _$TrainerDetailResponseCopyWith<$Res> {
  __$TrainerDetailResponseCopyWithImpl(_TrainerDetailResponse _value,
      $Res Function(_TrainerDetailResponse) _then)
      : super(_value, (v) => _then(v as _TrainerDetailResponse));

  @override
  _TrainerDetailResponse get _value => super._value as _TrainerDetailResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? data = freezed,
    Object? message = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(_TrainerDetailResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Trainer?,
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
class _$_TrainerDetailResponse implements _TrainerDetailResponse {
  const _$_TrainerDetailResponse(
      {required this.result, this.data, this.message, this.errorCode});

  factory _$_TrainerDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TrainerDetailResponseFromJson(json);

  @override
  final String result;
  @override
  final Trainer? data;
  @override
  final String? message;
  @override
  final String? errorCode;

  @override
  String toString() {
    return 'TrainerDetailResponse(result: $result, data: $data, message: $message, errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrainerDetailResponse &&
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
  _$TrainerDetailResponseCopyWith<_TrainerDetailResponse> get copyWith =>
      __$TrainerDetailResponseCopyWithImpl<_TrainerDetailResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrainerDetailResponseToJson(this);
  }
}

abstract class _TrainerDetailResponse implements TrainerDetailResponse {
  const factory _TrainerDetailResponse(
      {required String result,
      Trainer? data,
      String? message,
      String? errorCode}) = _$_TrainerDetailResponse;

  factory _TrainerDetailResponse.fromJson(Map<String, dynamic> json) =
      _$_TrainerDetailResponse.fromJson;

  @override
  String get result;
  @override
  Trainer? get data;
  @override
  String? get message;
  @override
  String? get errorCode;
  @override
  @JsonKey(ignore: true)
  _$TrainerDetailResponseCopyWith<_TrainerDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
