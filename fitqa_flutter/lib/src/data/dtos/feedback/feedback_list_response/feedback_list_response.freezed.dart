// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feedback_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedbackListResponse _$FeedbackListResponseFromJson(Map<String, dynamic> json) {
  return _FeedbackListResponse.fromJson(json);
}

/// @nodoc
class _$FeedbackListResponseTearOff {
  const _$FeedbackListResponseTearOff();

  _FeedbackListResponse call(
      {required String result,
      List<Feedback>? data,
      String? message,
      String? errorCode}) {
    return _FeedbackListResponse(
      result: result,
      data: data,
      message: message,
      errorCode: errorCode,
    );
  }

  FeedbackListResponse fromJson(Map<String, Object?> json) {
    return FeedbackListResponse.fromJson(json);
  }
}

/// @nodoc
const $FeedbackListResponse = _$FeedbackListResponseTearOff();

/// @nodoc
mixin _$FeedbackListResponse {
  String get result => throw _privateConstructorUsedError;
  List<Feedback>? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackListResponseCopyWith<FeedbackListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackListResponseCopyWith<$Res> {
  factory $FeedbackListResponseCopyWith(FeedbackListResponse value,
          $Res Function(FeedbackListResponse) then) =
      _$FeedbackListResponseCopyWithImpl<$Res>;
  $Res call(
      {String result,
      List<Feedback>? data,
      String? message,
      String? errorCode});
}

/// @nodoc
class _$FeedbackListResponseCopyWithImpl<$Res>
    implements $FeedbackListResponseCopyWith<$Res> {
  _$FeedbackListResponseCopyWithImpl(this._value, this._then);

  final FeedbackListResponse _value;
  // ignore: unused_field
  final $Res Function(FeedbackListResponse) _then;

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
              as List<Feedback>?,
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
abstract class _$FeedbackListResponseCopyWith<$Res>
    implements $FeedbackListResponseCopyWith<$Res> {
  factory _$FeedbackListResponseCopyWith(_FeedbackListResponse value,
          $Res Function(_FeedbackListResponse) then) =
      __$FeedbackListResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String result,
      List<Feedback>? data,
      String? message,
      String? errorCode});
}

/// @nodoc
class __$FeedbackListResponseCopyWithImpl<$Res>
    extends _$FeedbackListResponseCopyWithImpl<$Res>
    implements _$FeedbackListResponseCopyWith<$Res> {
  __$FeedbackListResponseCopyWithImpl(
      _FeedbackListResponse _value, $Res Function(_FeedbackListResponse) _then)
      : super(_value, (v) => _then(v as _FeedbackListResponse));

  @override
  _FeedbackListResponse get _value => super._value as _FeedbackListResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? data = freezed,
    Object? message = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(_FeedbackListResponse(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Feedback>?,
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
class _$_FeedbackListResponse implements _FeedbackListResponse {
  const _$_FeedbackListResponse(
      {required this.result, this.data, this.message, this.errorCode});

  factory _$_FeedbackListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackListResponseFromJson(json);

  @override
  final String result;
  @override
  final List<Feedback>? data;
  @override
  final String? message;
  @override
  final String? errorCode;

  @override
  String toString() {
    return 'FeedbackListResponse(result: $result, data: $data, message: $message, errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedbackListResponse &&
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
  _$FeedbackListResponseCopyWith<_FeedbackListResponse> get copyWith =>
      __$FeedbackListResponseCopyWithImpl<_FeedbackListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbackListResponseToJson(this);
  }
}

abstract class _FeedbackListResponse implements FeedbackListResponse {
  const factory _FeedbackListResponse(
      {required String result,
      List<Feedback>? data,
      String? message,
      String? errorCode}) = _$_FeedbackListResponse;

  factory _FeedbackListResponse.fromJson(Map<String, dynamic> json) =
      _$_FeedbackListResponse.fromJson;

  @override
  String get result;
  @override
  List<Feedback>? get data;
  @override
  String? get message;
  @override
  String? get errorCode;
  @override
  @JsonKey(ignore: true)
  _$FeedbackListResponseCopyWith<_FeedbackListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
