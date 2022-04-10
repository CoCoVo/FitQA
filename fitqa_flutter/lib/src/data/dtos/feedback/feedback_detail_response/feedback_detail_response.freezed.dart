// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feedback_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedbackDetailResponse _$FeedbackDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _FeedbackDetailResponse.fromJson(json);
}

/// @nodoc
class _$FeedbackDetailResponseTearOff {
  const _$FeedbackDetailResponseTearOff();

  _FeedbackDetailResponse call(
      {required String result,
      Feedback? data,
      String? message,
      String? errorCode}) {
    return _FeedbackDetailResponse(
      result: result,
      data: data,
      message: message,
      errorCode: errorCode,
    );
  }

  FeedbackDetailResponse fromJson(Map<String, Object?> json) {
    return FeedbackDetailResponse.fromJson(json);
  }
}

/// @nodoc
const $FeedbackDetailResponse = _$FeedbackDetailResponseTearOff();

/// @nodoc
mixin _$FeedbackDetailResponse {
  String get result => throw _privateConstructorUsedError;
  Feedback? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackDetailResponseCopyWith<FeedbackDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackDetailResponseCopyWith<$Res> {
  factory $FeedbackDetailResponseCopyWith(FeedbackDetailResponse value,
          $Res Function(FeedbackDetailResponse) then) =
      _$FeedbackDetailResponseCopyWithImpl<$Res>;
  $Res call(
      {String result, Feedback? data, String? message, String? errorCode});

  $FeedbackCopyWith<$Res>? get data;
}

/// @nodoc
class _$FeedbackDetailResponseCopyWithImpl<$Res>
    implements $FeedbackDetailResponseCopyWith<$Res> {
  _$FeedbackDetailResponseCopyWithImpl(this._value, this._then);

  final FeedbackDetailResponse _value;
  // ignore: unused_field
  final $Res Function(FeedbackDetailResponse) _then;

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
              as Feedback?,
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
  $FeedbackCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $FeedbackCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$FeedbackDetailResponseCopyWith<$Res>
    implements $FeedbackDetailResponseCopyWith<$Res> {
  factory _$FeedbackDetailResponseCopyWith(_FeedbackDetailResponse value,
          $Res Function(_FeedbackDetailResponse) then) =
      __$FeedbackDetailResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String result, Feedback? data, String? message, String? errorCode});

  @override
  $FeedbackCopyWith<$Res>? get data;
}

/// @nodoc
class __$FeedbackDetailResponseCopyWithImpl<$Res>
    extends _$FeedbackDetailResponseCopyWithImpl<$Res>
    implements _$FeedbackDetailResponseCopyWith<$Res> {
  __$FeedbackDetailResponseCopyWithImpl(_FeedbackDetailResponse _value,
      $Res Function(_FeedbackDetailResponse) _then)
      : super(_value, (v) => _then(v as _FeedbackDetailResponse));

  @override
  _FeedbackDetailResponse get _value => super._value as _FeedbackDetailResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? data = freezed,
    Object? message = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(_FeedbackDetailResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Feedback?,
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
class _$_FeedbackDetailResponse implements _FeedbackDetailResponse {
  const _$_FeedbackDetailResponse(
      {required this.result, this.data, this.message, this.errorCode});

  factory _$_FeedbackDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackDetailResponseFromJson(json);

  @override
  final String result;
  @override
  final Feedback? data;
  @override
  final String? message;
  @override
  final String? errorCode;

  @override
  String toString() {
    return 'FeedbackDetailResponse(result: $result, data: $data, message: $message, errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedbackDetailResponse &&
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
  _$FeedbackDetailResponseCopyWith<_FeedbackDetailResponse> get copyWith =>
      __$FeedbackDetailResponseCopyWithImpl<_FeedbackDetailResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbackDetailResponseToJson(this);
  }
}

abstract class _FeedbackDetailResponse implements FeedbackDetailResponse {
  const factory _FeedbackDetailResponse(
      {required String result,
      Feedback? data,
      String? message,
      String? errorCode}) = _$_FeedbackDetailResponse;

  factory _FeedbackDetailResponse.fromJson(Map<String, dynamic> json) =
      _$_FeedbackDetailResponse.fromJson;

  @override
  String get result;
  @override
  Feedback? get data;
  @override
  String? get message;
  @override
  String? get errorCode;
  @override
  @JsonKey(ignore: true)
  _$FeedbackDetailResponseCopyWith<_FeedbackDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
