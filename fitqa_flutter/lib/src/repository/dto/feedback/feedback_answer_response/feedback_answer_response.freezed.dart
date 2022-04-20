// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feedback_answer_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedbackAnswerResponse _$FeedbackAnswerResponseFromJson(
    Map<String, dynamic> json) {
  return _FeedbackAnswerResponse.fromJson(json);
}

/// @nodoc
class _$FeedbackAnswerResponseTearOff {
  const _$FeedbackAnswerResponseTearOff();

  _FeedbackAnswerResponse call(
      {required String result,
      FeedbackAnswer? data,
      String? message,
      String? errorCode}) {
    return _FeedbackAnswerResponse(
      result: result,
      data: data,
      message: message,
      errorCode: errorCode,
    );
  }

  FeedbackAnswerResponse fromJson(Map<String, Object?> json) {
    return FeedbackAnswerResponse.fromJson(json);
  }
}

/// @nodoc
const $FeedbackAnswerResponse = _$FeedbackAnswerResponseTearOff();

/// @nodoc
mixin _$FeedbackAnswerResponse {
  String get result => throw _privateConstructorUsedError;
  FeedbackAnswer? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackAnswerResponseCopyWith<FeedbackAnswerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackAnswerResponseCopyWith<$Res> {
  factory $FeedbackAnswerResponseCopyWith(FeedbackAnswerResponse value,
          $Res Function(FeedbackAnswerResponse) then) =
      _$FeedbackAnswerResponseCopyWithImpl<$Res>;
  $Res call(
      {String result,
      FeedbackAnswer? data,
      String? message,
      String? errorCode});

  $FeedbackAnswerCopyWith<$Res>? get data;
}

/// @nodoc
class _$FeedbackAnswerResponseCopyWithImpl<$Res>
    implements $FeedbackAnswerResponseCopyWith<$Res> {
  _$FeedbackAnswerResponseCopyWithImpl(this._value, this._then);

  final FeedbackAnswerResponse _value;
  // ignore: unused_field
  final $Res Function(FeedbackAnswerResponse) _then;

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
              as FeedbackAnswer?,
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
  $FeedbackAnswerCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $FeedbackAnswerCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$FeedbackAnswerResponseCopyWith<$Res>
    implements $FeedbackAnswerResponseCopyWith<$Res> {
  factory _$FeedbackAnswerResponseCopyWith(_FeedbackAnswerResponse value,
          $Res Function(_FeedbackAnswerResponse) then) =
      __$FeedbackAnswerResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String result,
      FeedbackAnswer? data,
      String? message,
      String? errorCode});

  @override
  $FeedbackAnswerCopyWith<$Res>? get data;
}

/// @nodoc
class __$FeedbackAnswerResponseCopyWithImpl<$Res>
    extends _$FeedbackAnswerResponseCopyWithImpl<$Res>
    implements _$FeedbackAnswerResponseCopyWith<$Res> {
  __$FeedbackAnswerResponseCopyWithImpl(_FeedbackAnswerResponse _value,
      $Res Function(_FeedbackAnswerResponse) _then)
      : super(_value, (v) => _then(v as _FeedbackAnswerResponse));

  @override
  _FeedbackAnswerResponse get _value => super._value as _FeedbackAnswerResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? data = freezed,
    Object? message = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(_FeedbackAnswerResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FeedbackAnswer?,
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
class _$_FeedbackAnswerResponse implements _FeedbackAnswerResponse {
  const _$_FeedbackAnswerResponse(
      {required this.result, this.data, this.message, this.errorCode});

  factory _$_FeedbackAnswerResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackAnswerResponseFromJson(json);

  @override
  final String result;
  @override
  final FeedbackAnswer? data;
  @override
  final String? message;
  @override
  final String? errorCode;

  @override
  String toString() {
    return 'FeedbackAnswerResponse(result: $result, data: $data, message: $message, errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedbackAnswerResponse &&
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
  _$FeedbackAnswerResponseCopyWith<_FeedbackAnswerResponse> get copyWith =>
      __$FeedbackAnswerResponseCopyWithImpl<_FeedbackAnswerResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbackAnswerResponseToJson(this);
  }
}

abstract class _FeedbackAnswerResponse implements FeedbackAnswerResponse {
  const factory _FeedbackAnswerResponse(
      {required String result,
      FeedbackAnswer? data,
      String? message,
      String? errorCode}) = _$_FeedbackAnswerResponse;

  factory _FeedbackAnswerResponse.fromJson(Map<String, dynamic> json) =
      _$_FeedbackAnswerResponse.fromJson;

  @override
  String get result;
  @override
  FeedbackAnswer? get data;
  @override
  String? get message;
  @override
  String? get errorCode;
  @override
  @JsonKey(ignore: true)
  _$FeedbackAnswerResponseCopyWith<_FeedbackAnswerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
