// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_feedback_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterFeedbackComment _$RegisterFeedbackCommentFromJson(
    Map<String, dynamic> json) {
  return _RegisterFeedbackComment.fromJson(json);
}

/// @nodoc
class _$RegisterFeedbackCommentTearOff {
  const _$RegisterFeedbackCommentTearOff();

  _RegisterFeedbackComment call(
      {required String feedbackToken,
      required String writerId,
      required String comment}) {
    return _RegisterFeedbackComment(
      feedbackToken: feedbackToken,
      writerId: writerId,
      comment: comment,
    );
  }

  RegisterFeedbackComment fromJson(Map<String, Object?> json) {
    return RegisterFeedbackComment.fromJson(json);
  }
}

/// @nodoc
const $RegisterFeedbackComment = _$RegisterFeedbackCommentTearOff();

/// @nodoc
mixin _$RegisterFeedbackComment {
  String get feedbackToken => throw _privateConstructorUsedError;
  String get writerId => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterFeedbackCommentCopyWith<RegisterFeedbackComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFeedbackCommentCopyWith<$Res> {
  factory $RegisterFeedbackCommentCopyWith(RegisterFeedbackComment value,
          $Res Function(RegisterFeedbackComment) then) =
      _$RegisterFeedbackCommentCopyWithImpl<$Res>;
  $Res call({String feedbackToken, String writerId, String comment});
}

/// @nodoc
class _$RegisterFeedbackCommentCopyWithImpl<$Res>
    implements $RegisterFeedbackCommentCopyWith<$Res> {
  _$RegisterFeedbackCommentCopyWithImpl(this._value, this._then);

  final RegisterFeedbackComment _value;
  // ignore: unused_field
  final $Res Function(RegisterFeedbackComment) _then;

  @override
  $Res call({
    Object? feedbackToken = freezed,
    Object? writerId = freezed,
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      feedbackToken: feedbackToken == freezed
          ? _value.feedbackToken
          : feedbackToken // ignore: cast_nullable_to_non_nullable
              as String,
      writerId: writerId == freezed
          ? _value.writerId
          : writerId // ignore: cast_nullable_to_non_nullable
              as String,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RegisterFeedbackCommentCopyWith<$Res>
    implements $RegisterFeedbackCommentCopyWith<$Res> {
  factory _$RegisterFeedbackCommentCopyWith(_RegisterFeedbackComment value,
          $Res Function(_RegisterFeedbackComment) then) =
      __$RegisterFeedbackCommentCopyWithImpl<$Res>;
  @override
  $Res call({String feedbackToken, String writerId, String comment});
}

/// @nodoc
class __$RegisterFeedbackCommentCopyWithImpl<$Res>
    extends _$RegisterFeedbackCommentCopyWithImpl<$Res>
    implements _$RegisterFeedbackCommentCopyWith<$Res> {
  __$RegisterFeedbackCommentCopyWithImpl(_RegisterFeedbackComment _value,
      $Res Function(_RegisterFeedbackComment) _then)
      : super(_value, (v) => _then(v as _RegisterFeedbackComment));

  @override
  _RegisterFeedbackComment get _value =>
      super._value as _RegisterFeedbackComment;

  @override
  $Res call({
    Object? feedbackToken = freezed,
    Object? writerId = freezed,
    Object? comment = freezed,
  }) {
    return _then(_RegisterFeedbackComment(
      feedbackToken: feedbackToken == freezed
          ? _value.feedbackToken
          : feedbackToken // ignore: cast_nullable_to_non_nullable
              as String,
      writerId: writerId == freezed
          ? _value.writerId
          : writerId // ignore: cast_nullable_to_non_nullable
              as String,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterFeedbackComment implements _RegisterFeedbackComment {
  const _$_RegisterFeedbackComment(
      {required this.feedbackToken,
      required this.writerId,
      required this.comment});

  factory _$_RegisterFeedbackComment.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterFeedbackCommentFromJson(json);

  @override
  final String feedbackToken;
  @override
  final String writerId;
  @override
  final String comment;

  @override
  String toString() {
    return 'RegisterFeedbackComment(feedbackToken: $feedbackToken, writerId: $writerId, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterFeedbackComment &&
            const DeepCollectionEquality()
                .equals(other.feedbackToken, feedbackToken) &&
            const DeepCollectionEquality().equals(other.writerId, writerId) &&
            const DeepCollectionEquality().equals(other.comment, comment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(feedbackToken),
      const DeepCollectionEquality().hash(writerId),
      const DeepCollectionEquality().hash(comment));

  @JsonKey(ignore: true)
  @override
  _$RegisterFeedbackCommentCopyWith<_RegisterFeedbackComment> get copyWith =>
      __$RegisterFeedbackCommentCopyWithImpl<_RegisterFeedbackComment>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterFeedbackCommentToJson(this);
  }
}

abstract class _RegisterFeedbackComment implements RegisterFeedbackComment {
  const factory _RegisterFeedbackComment(
      {required String feedbackToken,
      required String writerId,
      required String comment}) = _$_RegisterFeedbackComment;

  factory _RegisterFeedbackComment.fromJson(Map<String, dynamic> json) =
      _$_RegisterFeedbackComment.fromJson;

  @override
  String get feedbackToken;
  @override
  String get writerId;
  @override
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$RegisterFeedbackCommentCopyWith<_RegisterFeedbackComment> get copyWith =>
      throw _privateConstructorUsedError;
}
