// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fitqa_feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FitqaFeedback _$FitqaFeedbackFromJson(Map<String, dynamic> json) {
  return _FitqaFeedback.fromJson(json);
}

/// @nodoc
class _$FitqaFeedbackTearOff {
  const _$FitqaFeedbackTearOff();

  _FitqaFeedback call(
      {required String feedbackToken,
      required String ownerToken,
      required String trainerToken,
      required WorkOutArea interestArea,
      required int price,
      required String title,
      required String content,
      required bool locked,
      required FeedbackAnswer? answer,
      required List<FeedbackComment> comments,
      required FeedbackStatus status,
      required DateTime createdAt,
      required DateTime updatedAt}) {
    return _FitqaFeedback(
      feedbackToken: feedbackToken,
      ownerToken: ownerToken,
      trainerToken: trainerToken,
      interestArea: interestArea,
      price: price,
      title: title,
      content: content,
      locked: locked,
      answer: answer,
      comments: comments,
      status: status,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  FitqaFeedback fromJson(Map<String, Object?> json) {
    return FitqaFeedback.fromJson(json);
  }
}

/// @nodoc
const $FitqaFeedback = _$FitqaFeedbackTearOff();

/// @nodoc
mixin _$FitqaFeedback {
  String get feedbackToken => throw _privateConstructorUsedError;
  String get ownerToken => throw _privateConstructorUsedError;
  String get trainerToken => throw _privateConstructorUsedError;
  WorkOutArea get interestArea => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get locked => throw _privateConstructorUsedError;
  FeedbackAnswer? get answer => throw _privateConstructorUsedError;
  List<FeedbackComment> get comments => throw _privateConstructorUsedError;
  FeedbackStatus get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FitqaFeedbackCopyWith<FitqaFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FitqaFeedbackCopyWith<$Res> {
  factory $FitqaFeedbackCopyWith(
          FitqaFeedback value, $Res Function(FitqaFeedback) then) =
      _$FitqaFeedbackCopyWithImpl<$Res>;
  $Res call(
      {String feedbackToken,
      String ownerToken,
      String trainerToken,
      WorkOutArea interestArea,
      int price,
      String title,
      String content,
      bool locked,
      FeedbackAnswer? answer,
      List<FeedbackComment> comments,
      FeedbackStatus status,
      DateTime createdAt,
      DateTime updatedAt});

  $FeedbackAnswerCopyWith<$Res>? get answer;
}

/// @nodoc
class _$FitqaFeedbackCopyWithImpl<$Res>
    implements $FitqaFeedbackCopyWith<$Res> {
  _$FitqaFeedbackCopyWithImpl(this._value, this._then);

  final FitqaFeedback _value;
  // ignore: unused_field
  final $Res Function(FitqaFeedback) _then;

  @override
  $Res call({
    Object? feedbackToken = freezed,
    Object? ownerToken = freezed,
    Object? trainerToken = freezed,
    Object? interestArea = freezed,
    Object? price = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? locked = freezed,
    Object? answer = freezed,
    Object? comments = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      feedbackToken: feedbackToken == freezed
          ? _value.feedbackToken
          : feedbackToken // ignore: cast_nullable_to_non_nullable
              as String,
      ownerToken: ownerToken == freezed
          ? _value.ownerToken
          : ownerToken // ignore: cast_nullable_to_non_nullable
              as String,
      trainerToken: trainerToken == freezed
          ? _value.trainerToken
          : trainerToken // ignore: cast_nullable_to_non_nullable
              as String,
      interestArea: interestArea == freezed
          ? _value.interestArea
          : interestArea // ignore: cast_nullable_to_non_nullable
              as WorkOutArea,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      locked: locked == freezed
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as FeedbackAnswer?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<FeedbackComment>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedbackStatus,
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

  @override
  $FeedbackAnswerCopyWith<$Res>? get answer {
    if (_value.answer == null) {
      return null;
    }

    return $FeedbackAnswerCopyWith<$Res>(_value.answer!, (value) {
      return _then(_value.copyWith(answer: value));
    });
  }
}

/// @nodoc
abstract class _$FitqaFeedbackCopyWith<$Res>
    implements $FitqaFeedbackCopyWith<$Res> {
  factory _$FitqaFeedbackCopyWith(
          _FitqaFeedback value, $Res Function(_FitqaFeedback) then) =
      __$FitqaFeedbackCopyWithImpl<$Res>;
  @override
  $Res call(
      {String feedbackToken,
      String ownerToken,
      String trainerToken,
      WorkOutArea interestArea,
      int price,
      String title,
      String content,
      bool locked,
      FeedbackAnswer? answer,
      List<FeedbackComment> comments,
      FeedbackStatus status,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $FeedbackAnswerCopyWith<$Res>? get answer;
}

/// @nodoc
class __$FitqaFeedbackCopyWithImpl<$Res>
    extends _$FitqaFeedbackCopyWithImpl<$Res>
    implements _$FitqaFeedbackCopyWith<$Res> {
  __$FitqaFeedbackCopyWithImpl(
      _FitqaFeedback _value, $Res Function(_FitqaFeedback) _then)
      : super(_value, (v) => _then(v as _FitqaFeedback));

  @override
  _FitqaFeedback get _value => super._value as _FitqaFeedback;

  @override
  $Res call({
    Object? feedbackToken = freezed,
    Object? ownerToken = freezed,
    Object? trainerToken = freezed,
    Object? interestArea = freezed,
    Object? price = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? locked = freezed,
    Object? answer = freezed,
    Object? comments = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_FitqaFeedback(
      feedbackToken: feedbackToken == freezed
          ? _value.feedbackToken
          : feedbackToken // ignore: cast_nullable_to_non_nullable
              as String,
      ownerToken: ownerToken == freezed
          ? _value.ownerToken
          : ownerToken // ignore: cast_nullable_to_non_nullable
              as String,
      trainerToken: trainerToken == freezed
          ? _value.trainerToken
          : trainerToken // ignore: cast_nullable_to_non_nullable
              as String,
      interestArea: interestArea == freezed
          ? _value.interestArea
          : interestArea // ignore: cast_nullable_to_non_nullable
              as WorkOutArea,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      locked: locked == freezed
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as FeedbackAnswer?,
      comments: comments == freezed
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<FeedbackComment>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedbackStatus,
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
class _$_FitqaFeedback implements _FitqaFeedback {
  const _$_FitqaFeedback(
      {required this.feedbackToken,
      required this.ownerToken,
      required this.trainerToken,
      required this.interestArea,
      required this.price,
      required this.title,
      required this.content,
      required this.locked,
      required this.answer,
      required this.comments,
      required this.status,
      required this.createdAt,
      required this.updatedAt});

  factory _$_FitqaFeedback.fromJson(Map<String, dynamic> json) =>
      _$$_FitqaFeedbackFromJson(json);

  @override
  final String feedbackToken;
  @override
  final String ownerToken;
  @override
  final String trainerToken;
  @override
  final WorkOutArea interestArea;
  @override
  final int price;
  @override
  final String title;
  @override
  final String content;
  @override
  final bool locked;
  @override
  final FeedbackAnswer? answer;
  @override
  final List<FeedbackComment> comments;
  @override
  final FeedbackStatus status;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'FitqaFeedback(feedbackToken: $feedbackToken, ownerToken: $ownerToken, trainerToken: $trainerToken, interestArea: $interestArea, price: $price, title: $title, content: $content, locked: $locked, answer: $answer, comments: $comments, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FitqaFeedback &&
            const DeepCollectionEquality()
                .equals(other.feedbackToken, feedbackToken) &&
            const DeepCollectionEquality()
                .equals(other.ownerToken, ownerToken) &&
            const DeepCollectionEquality()
                .equals(other.trainerToken, trainerToken) &&
            const DeepCollectionEquality()
                .equals(other.interestArea, interestArea) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.locked, locked) &&
            const DeepCollectionEquality().equals(other.answer, answer) &&
            const DeepCollectionEquality().equals(other.comments, comments) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(feedbackToken),
      const DeepCollectionEquality().hash(ownerToken),
      const DeepCollectionEquality().hash(trainerToken),
      const DeepCollectionEquality().hash(interestArea),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(locked),
      const DeepCollectionEquality().hash(answer),
      const DeepCollectionEquality().hash(comments),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$FitqaFeedbackCopyWith<_FitqaFeedback> get copyWith =>
      __$FitqaFeedbackCopyWithImpl<_FitqaFeedback>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FitqaFeedbackToJson(this);
  }
}

abstract class _FitqaFeedback implements FitqaFeedback {
  const factory _FitqaFeedback(
      {required String feedbackToken,
      required String ownerToken,
      required String trainerToken,
      required WorkOutArea interestArea,
      required int price,
      required String title,
      required String content,
      required bool locked,
      required FeedbackAnswer? answer,
      required List<FeedbackComment> comments,
      required FeedbackStatus status,
      required DateTime createdAt,
      required DateTime updatedAt}) = _$_FitqaFeedback;

  factory _FitqaFeedback.fromJson(Map<String, dynamic> json) =
      _$_FitqaFeedback.fromJson;

  @override
  String get feedbackToken;
  @override
  String get ownerToken;
  @override
  String get trainerToken;
  @override
  WorkOutArea get interestArea;
  @override
  int get price;
  @override
  String get title;
  @override
  String get content;
  @override
  bool get locked;
  @override
  FeedbackAnswer? get answer;
  @override
  List<FeedbackComment> get comments;
  @override
  FeedbackStatus get status;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$FitqaFeedbackCopyWith<_FitqaFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}
