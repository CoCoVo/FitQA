// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trainer_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrainerListResponse _$TrainerListResponseFromJson(Map<String, dynamic> json) {
  return _TrainerListResponse.fromJson(json);
}

/// @nodoc
class _$TrainerListResponseTearOff {
  const _$TrainerListResponseTearOff();

  _TrainerListResponse call(
      {required String result,
      List<Trainer>? data,
      String? message,
      String? errorCode}) {
    return _TrainerListResponse(
      result: result,
      data: data,
      message: message,
      errorCode: errorCode,
    );
  }

  TrainerListResponse fromJson(Map<String, Object?> json) {
    return TrainerListResponse.fromJson(json);
  }
}

/// @nodoc
const $TrainerListResponse = _$TrainerListResponseTearOff();

/// @nodoc
mixin _$TrainerListResponse {
  String get result => throw _privateConstructorUsedError;
  List<Trainer>? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get errorCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainerListResponseCopyWith<TrainerListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainerListResponseCopyWith<$Res> {
  factory $TrainerListResponseCopyWith(
          TrainerListResponse value, $Res Function(TrainerListResponse) then) =
      _$TrainerListResponseCopyWithImpl<$Res>;
  $Res call(
      {String result, List<Trainer>? data, String? message, String? errorCode});
}

/// @nodoc
class _$TrainerListResponseCopyWithImpl<$Res>
    implements $TrainerListResponseCopyWith<$Res> {
  _$TrainerListResponseCopyWithImpl(this._value, this._then);

  final TrainerListResponse _value;
  // ignore: unused_field
  final $Res Function(TrainerListResponse) _then;

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
abstract class _$TrainerListResponseCopyWith<$Res>
    implements $TrainerListResponseCopyWith<$Res> {
  factory _$TrainerListResponseCopyWith(_TrainerListResponse value,
          $Res Function(_TrainerListResponse) then) =
      __$TrainerListResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String result, List<Trainer>? data, String? message, String? errorCode});
}

/// @nodoc
class __$TrainerListResponseCopyWithImpl<$Res>
    extends _$TrainerListResponseCopyWithImpl<$Res>
    implements _$TrainerListResponseCopyWith<$Res> {
  __$TrainerListResponseCopyWithImpl(
      _TrainerListResponse _value, $Res Function(_TrainerListResponse) _then)
      : super(_value, (v) => _then(v as _TrainerListResponse));

  @override
  _TrainerListResponse get _value => super._value as _TrainerListResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? data = freezed,
    Object? message = freezed,
    Object? errorCode = freezed,
  }) {
    return _then(_TrainerListResponse(
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
class _$_TrainerListResponse implements _TrainerListResponse {
  const _$_TrainerListResponse(
      {required this.result, this.data, this.message, this.errorCode});

  factory _$_TrainerListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TrainerListResponseFromJson(json);

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
    return 'TrainerListResponse(result: $result, data: $data, message: $message, errorCode: $errorCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrainerListResponse &&
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
  _$TrainerListResponseCopyWith<_TrainerListResponse> get copyWith =>
      __$TrainerListResponseCopyWithImpl<_TrainerListResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrainerListResponseToJson(this);
  }
}

abstract class _TrainerListResponse implements TrainerListResponse {
  const factory _TrainerListResponse(
      {required String result,
      List<Trainer>? data,
      String? message,
      String? errorCode}) = _$_TrainerListResponse;

  factory _TrainerListResponse.fromJson(Map<String, dynamic> json) =
      _$_TrainerListResponse.fromJson;

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
  _$TrainerListResponseCopyWith<_TrainerListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
