// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feedback_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedbackComment _$FeedbackCommentFromJson(Map<String, dynamic> json) {
  return _FeedbackComment.fromJson(json);
}

/// @nodoc
class _$FeedbackCommentTearOff {
  const _$FeedbackCommentTearOff();

  _FeedbackComment call(
      {required String writer,
      required String comment,
      required DateTime createdAt,
      required DateTime updatedAt}) {
    return _FeedbackComment(
      writer: writer,
      comment: comment,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  FeedbackComment fromJson(Map<String, Object?> json) {
    return FeedbackComment.fromJson(json);
  }
}

/// @nodoc
const $FeedbackComment = _$FeedbackCommentTearOff();

/// @nodoc
mixin _$FeedbackComment {
  String get writer => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackCommentCopyWith<FeedbackComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackCommentCopyWith<$Res> {
  factory $FeedbackCommentCopyWith(
          FeedbackComment value, $Res Function(FeedbackComment) then) =
      _$FeedbackCommentCopyWithImpl<$Res>;
  $Res call(
      {String writer, String comment, DateTime createdAt, DateTime updatedAt});
}

/// @nodoc
class _$FeedbackCommentCopyWithImpl<$Res>
    implements $FeedbackCommentCopyWith<$Res> {
  _$FeedbackCommentCopyWithImpl(this._value, this._then);

  final FeedbackComment _value;
  // ignore: unused_field
  final $Res Function(FeedbackComment) _then;

  @override
  $Res call({
    Object? writer = freezed,
    Object? comment = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      writer: writer == freezed
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$FeedbackCommentCopyWith<$Res>
    implements $FeedbackCommentCopyWith<$Res> {
  factory _$FeedbackCommentCopyWith(
          _FeedbackComment value, $Res Function(_FeedbackComment) then) =
      __$FeedbackCommentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String writer, String comment, DateTime createdAt, DateTime updatedAt});
}

/// @nodoc
class __$FeedbackCommentCopyWithImpl<$Res>
    extends _$FeedbackCommentCopyWithImpl<$Res>
    implements _$FeedbackCommentCopyWith<$Res> {
  __$FeedbackCommentCopyWithImpl(
      _FeedbackComment _value, $Res Function(_FeedbackComment) _then)
      : super(_value, (v) => _then(v as _FeedbackComment));

  @override
  _FeedbackComment get _value => super._value as _FeedbackComment;

  @override
  $Res call({
    Object? writer = freezed,
    Object? comment = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_FeedbackComment(
      writer: writer == freezed
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as String,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedbackComment implements _FeedbackComment {
  const _$_FeedbackComment(
      {required this.writer,
      required this.comment,
      required this.createdAt,
      required this.updatedAt});

  factory _$_FeedbackComment.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackCommentFromJson(json);

  @override
  final String writer;
  @override
  final String comment;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'FeedbackComment(writer: $writer, comment: $comment, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedbackComment &&
            const DeepCollectionEquality().equals(other.writer, writer) &&
            const DeepCollectionEquality().equals(other.comment, comment) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(writer),
      const DeepCollectionEquality().hash(comment),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$FeedbackCommentCopyWith<_FeedbackComment> get copyWith =>
      __$FeedbackCommentCopyWithImpl<_FeedbackComment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbackCommentToJson(this);
  }
}

abstract class _FeedbackComment implements FeedbackComment {
  const factory _FeedbackComment(
      {required String writer,
      required String comment,
      required DateTime createdAt,
      required DateTime updatedAt}) = _$_FeedbackComment;

  factory _FeedbackComment.fromJson(Map<String, dynamic> json) =
      _$_FeedbackComment.fromJson;

  @override
  String get writer;
  @override
  String get comment;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$FeedbackCommentCopyWith<_FeedbackComment> get copyWith =>
      throw _privateConstructorUsedError;
}
