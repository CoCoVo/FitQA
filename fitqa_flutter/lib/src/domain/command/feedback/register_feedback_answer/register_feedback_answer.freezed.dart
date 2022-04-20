// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_feedback_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterFeedbackAnswer _$RegisterFeedbackAnswerFromJson(
    Map<String, dynamic> json) {
  return _RegisterFeedbackAnswer.fromJson(json);
}

/// @nodoc
class _$RegisterFeedbackAnswerTearOff {
  const _$RegisterFeedbackAnswerTearOff();

  _RegisterFeedbackAnswer call(
      {required String trainerToken,
      required String videoUrl,
      required String description}) {
    return _RegisterFeedbackAnswer(
      trainerToken: trainerToken,
      videoUrl: videoUrl,
      description: description,
    );
  }

  RegisterFeedbackAnswer fromJson(Map<String, Object?> json) {
    return RegisterFeedbackAnswer.fromJson(json);
  }
}

/// @nodoc
const $RegisterFeedbackAnswer = _$RegisterFeedbackAnswerTearOff();

/// @nodoc
mixin _$RegisterFeedbackAnswer {
  String get trainerToken => throw _privateConstructorUsedError;
  String get videoUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterFeedbackAnswerCopyWith<RegisterFeedbackAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFeedbackAnswerCopyWith<$Res> {
  factory $RegisterFeedbackAnswerCopyWith(RegisterFeedbackAnswer value,
          $Res Function(RegisterFeedbackAnswer) then) =
      _$RegisterFeedbackAnswerCopyWithImpl<$Res>;
  $Res call({String trainerToken, String videoUrl, String description});
}

/// @nodoc
class _$RegisterFeedbackAnswerCopyWithImpl<$Res>
    implements $RegisterFeedbackAnswerCopyWith<$Res> {
  _$RegisterFeedbackAnswerCopyWithImpl(this._value, this._then);

  final RegisterFeedbackAnswer _value;
  // ignore: unused_field
  final $Res Function(RegisterFeedbackAnswer) _then;

  @override
  $Res call({
    Object? trainerToken = freezed,
    Object? videoUrl = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      trainerToken: trainerToken == freezed
          ? _value.trainerToken
          : trainerToken // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RegisterFeedbackAnswerCopyWith<$Res>
    implements $RegisterFeedbackAnswerCopyWith<$Res> {
  factory _$RegisterFeedbackAnswerCopyWith(_RegisterFeedbackAnswer value,
          $Res Function(_RegisterFeedbackAnswer) then) =
      __$RegisterFeedbackAnswerCopyWithImpl<$Res>;
  @override
  $Res call({String trainerToken, String videoUrl, String description});
}

/// @nodoc
class __$RegisterFeedbackAnswerCopyWithImpl<$Res>
    extends _$RegisterFeedbackAnswerCopyWithImpl<$Res>
    implements _$RegisterFeedbackAnswerCopyWith<$Res> {
  __$RegisterFeedbackAnswerCopyWithImpl(_RegisterFeedbackAnswer _value,
      $Res Function(_RegisterFeedbackAnswer) _then)
      : super(_value, (v) => _then(v as _RegisterFeedbackAnswer));

  @override
  _RegisterFeedbackAnswer get _value => super._value as _RegisterFeedbackAnswer;

  @override
  $Res call({
    Object? trainerToken = freezed,
    Object? videoUrl = freezed,
    Object? description = freezed,
  }) {
    return _then(_RegisterFeedbackAnswer(
      trainerToken: trainerToken == freezed
          ? _value.trainerToken
          : trainerToken // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterFeedbackAnswer implements _RegisterFeedbackAnswer {
  const _$_RegisterFeedbackAnswer(
      {required this.trainerToken,
      required this.videoUrl,
      required this.description});

  factory _$_RegisterFeedbackAnswer.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterFeedbackAnswerFromJson(json);

  @override
  final String trainerToken;
  @override
  final String videoUrl;
  @override
  final String description;

  @override
  String toString() {
    return 'RegisterFeedbackAnswer(trainerToken: $trainerToken, videoUrl: $videoUrl, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterFeedbackAnswer &&
            const DeepCollectionEquality()
                .equals(other.trainerToken, trainerToken) &&
            const DeepCollectionEquality().equals(other.videoUrl, videoUrl) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(trainerToken),
      const DeepCollectionEquality().hash(videoUrl),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$RegisterFeedbackAnswerCopyWith<_RegisterFeedbackAnswer> get copyWith =>
      __$RegisterFeedbackAnswerCopyWithImpl<_RegisterFeedbackAnswer>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterFeedbackAnswerToJson(this);
  }
}

abstract class _RegisterFeedbackAnswer implements RegisterFeedbackAnswer {
  const factory _RegisterFeedbackAnswer(
      {required String trainerToken,
      required String videoUrl,
      required String description}) = _$_RegisterFeedbackAnswer;

  factory _RegisterFeedbackAnswer.fromJson(Map<String, dynamic> json) =
      _$_RegisterFeedbackAnswer.fromJson;

  @override
  String get trainerToken;
  @override
  String get videoUrl;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$RegisterFeedbackAnswerCopyWith<_RegisterFeedbackAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}
