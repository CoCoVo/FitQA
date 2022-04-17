// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feedback_answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedbackAnswer _$FeedbackAnswerFromJson(Map<String, dynamic> json) {
  return _FeedbackAnswer.fromJson(json);
}

/// @nodoc
class _$FeedbackAnswerTearOff {
  const _$FeedbackAnswerTearOff();

  _FeedbackAnswer call(
      {required String videoUrl, required String description}) {
    return _FeedbackAnswer(
      videoUrl: videoUrl,
      description: description,
    );
  }

  FeedbackAnswer fromJson(Map<String, Object?> json) {
    return FeedbackAnswer.fromJson(json);
  }
}

/// @nodoc
const $FeedbackAnswer = _$FeedbackAnswerTearOff();

/// @nodoc
mixin _$FeedbackAnswer {
  String get videoUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackAnswerCopyWith<FeedbackAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackAnswerCopyWith<$Res> {
  factory $FeedbackAnswerCopyWith(
          FeedbackAnswer value, $Res Function(FeedbackAnswer) then) =
      _$FeedbackAnswerCopyWithImpl<$Res>;
  $Res call({String videoUrl, String description});
}

/// @nodoc
class _$FeedbackAnswerCopyWithImpl<$Res>
    implements $FeedbackAnswerCopyWith<$Res> {
  _$FeedbackAnswerCopyWithImpl(this._value, this._then);

  final FeedbackAnswer _value;
  // ignore: unused_field
  final $Res Function(FeedbackAnswer) _then;

  @override
  $Res call({
    Object? videoUrl = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$FeedbackAnswerCopyWith<$Res>
    implements $FeedbackAnswerCopyWith<$Res> {
  factory _$FeedbackAnswerCopyWith(
          _FeedbackAnswer value, $Res Function(_FeedbackAnswer) then) =
      __$FeedbackAnswerCopyWithImpl<$Res>;
  @override
  $Res call({String videoUrl, String description});
}

/// @nodoc
class __$FeedbackAnswerCopyWithImpl<$Res>
    extends _$FeedbackAnswerCopyWithImpl<$Res>
    implements _$FeedbackAnswerCopyWith<$Res> {
  __$FeedbackAnswerCopyWithImpl(
      _FeedbackAnswer _value, $Res Function(_FeedbackAnswer) _then)
      : super(_value, (v) => _then(v as _FeedbackAnswer));

  @override
  _FeedbackAnswer get _value => super._value as _FeedbackAnswer;

  @override
  $Res call({
    Object? videoUrl = freezed,
    Object? description = freezed,
  }) {
    return _then(_FeedbackAnswer(
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
class _$_FeedbackAnswer implements _FeedbackAnswer {
  const _$_FeedbackAnswer({required this.videoUrl, required this.description});

  factory _$_FeedbackAnswer.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackAnswerFromJson(json);

  @override
  final String videoUrl;
  @override
  final String description;

  @override
  String toString() {
    return 'FeedbackAnswer(videoUrl: $videoUrl, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedbackAnswer &&
            const DeepCollectionEquality().equals(other.videoUrl, videoUrl) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(videoUrl),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$FeedbackAnswerCopyWith<_FeedbackAnswer> get copyWith =>
      __$FeedbackAnswerCopyWithImpl<_FeedbackAnswer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbackAnswerToJson(this);
  }
}

abstract class _FeedbackAnswer implements FeedbackAnswer {
  const factory _FeedbackAnswer(
      {required String videoUrl,
      required String description}) = _$_FeedbackAnswer;

  factory _FeedbackAnswer.fromJson(Map<String, dynamic> json) =
      _$_FeedbackAnswer.fromJson;

  @override
  String get videoUrl;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$FeedbackAnswerCopyWith<_FeedbackAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}
