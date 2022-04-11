// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Feedback _$FeedbackFromJson(Map<String, dynamic> json) {
  return _Feedback.fromJson(json);
}

/// @nodoc
class _$FeedbackTearOff {
  const _$FeedbackTearOff();

  _Feedback call(
      {required String feedbackToken,
      required String ownerId,
      required String trainerId,
      required int price,
      required String title,
      required String content,
      required bool locked,
      required List<FeedbackComment> feedbackComments,
      required String status}) {
    return _Feedback(
      feedbackToken: feedbackToken,
      ownerId: ownerId,
      trainerId: trainerId,
      price: price,
      title: title,
      content: content,
      locked: locked,
      feedbackComments: feedbackComments,
      status: status,
    );
  }

  Feedback fromJson(Map<String, Object?> json) {
    return Feedback.fromJson(json);
  }
}

/// @nodoc
const $Feedback = _$FeedbackTearOff();

/// @nodoc
mixin _$Feedback {
  String get feedbackToken => throw _privateConstructorUsedError;
  String get ownerId => throw _privateConstructorUsedError;
  String get trainerId => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get locked => throw _privateConstructorUsedError;
  List<FeedbackComment> get feedbackComments =>
      throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackCopyWith<Feedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackCopyWith<$Res> {
  factory $FeedbackCopyWith(Feedback value, $Res Function(Feedback) then) =
      _$FeedbackCopyWithImpl<$Res>;
  $Res call(
      {String feedbackToken,
      String ownerId,
      String trainerId,
      int price,
      String title,
      String content,
      bool locked,
      List<FeedbackComment> feedbackComments,
      String status});
}

/// @nodoc
class _$FeedbackCopyWithImpl<$Res> implements $FeedbackCopyWith<$Res> {
  _$FeedbackCopyWithImpl(this._value, this._then);

  final Feedback _value;
  // ignore: unused_field
  final $Res Function(Feedback) _then;

  @override
  $Res call({
    Object? feedbackToken = freezed,
    Object? ownerId = freezed,
    Object? trainerId = freezed,
    Object? price = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? locked = freezed,
    Object? feedbackComments = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      feedbackToken: feedbackToken == freezed
          ? _value.feedbackToken
          : feedbackToken // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      trainerId: trainerId == freezed
          ? _value.trainerId
          : trainerId // ignore: cast_nullable_to_non_nullable
              as String,
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
      feedbackComments: feedbackComments == freezed
          ? _value.feedbackComments
          : feedbackComments // ignore: cast_nullable_to_non_nullable
              as List<FeedbackComment>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FeedbackCopyWith<$Res> implements $FeedbackCopyWith<$Res> {
  factory _$FeedbackCopyWith(_Feedback value, $Res Function(_Feedback) then) =
      __$FeedbackCopyWithImpl<$Res>;
  @override
  $Res call(
      {String feedbackToken,
      String ownerId,
      String trainerId,
      int price,
      String title,
      String content,
      bool locked,
      List<FeedbackComment> feedbackComments,
      String status});
}

/// @nodoc
class __$FeedbackCopyWithImpl<$Res> extends _$FeedbackCopyWithImpl<$Res>
    implements _$FeedbackCopyWith<$Res> {
  __$FeedbackCopyWithImpl(_Feedback _value, $Res Function(_Feedback) _then)
      : super(_value, (v) => _then(v as _Feedback));

  @override
  _Feedback get _value => super._value as _Feedback;

  @override
  $Res call({
    Object? feedbackToken = freezed,
    Object? ownerId = freezed,
    Object? trainerId = freezed,
    Object? price = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? locked = freezed,
    Object? feedbackComments = freezed,
    Object? status = freezed,
  }) {
    return _then(_Feedback(
      feedbackToken: feedbackToken == freezed
          ? _value.feedbackToken
          : feedbackToken // ignore: cast_nullable_to_non_nullable
              as String,
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      trainerId: trainerId == freezed
          ? _value.trainerId
          : trainerId // ignore: cast_nullable_to_non_nullable
              as String,
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
      feedbackComments: feedbackComments == freezed
          ? _value.feedbackComments
          : feedbackComments // ignore: cast_nullable_to_non_nullable
              as List<FeedbackComment>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Feedback implements _Feedback {
  const _$_Feedback(
      {required this.feedbackToken,
      required this.ownerId,
      required this.trainerId,
      required this.price,
      required this.title,
      required this.content,
      required this.locked,
      required this.feedbackComments,
      required this.status});

  factory _$_Feedback.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackFromJson(json);

  @override
  final String feedbackToken;
  @override
  final String ownerId;
  @override
  final String trainerId;
  @override
  final int price;
  @override
  final String title;
  @override
  final String content;
  @override
  final bool locked;
  @override
  final List<FeedbackComment> feedbackComments;
  @override
  final String status;

  @override
  String toString() {
    return 'Feedback(feedbackToken: $feedbackToken, ownerId: $ownerId, trainerId: $trainerId, price: $price, title: $title, content: $content, locked: $locked, feedbackComments: $feedbackComments, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Feedback &&
            const DeepCollectionEquality()
                .equals(other.feedbackToken, feedbackToken) &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality().equals(other.trainerId, trainerId) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.locked, locked) &&
            const DeepCollectionEquality()
                .equals(other.feedbackComments, feedbackComments) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(feedbackToken),
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(trainerId),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(locked),
      const DeepCollectionEquality().hash(feedbackComments),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$FeedbackCopyWith<_Feedback> get copyWith =>
      __$FeedbackCopyWithImpl<_Feedback>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbackToJson(this);
  }
}

abstract class _Feedback implements Feedback {
  const factory _Feedback(
      {required String feedbackToken,
      required String ownerId,
      required String trainerId,
      required int price,
      required String title,
      required String content,
      required bool locked,
      required List<FeedbackComment> feedbackComments,
      required String status}) = _$_Feedback;

  factory _Feedback.fromJson(Map<String, dynamic> json) = _$_Feedback.fromJson;

  @override
  String get feedbackToken;
  @override
  String get ownerId;
  @override
  String get trainerId;
  @override
  int get price;
  @override
  String get title;
  @override
  String get content;
  @override
  bool get locked;
  @override
  List<FeedbackComment> get feedbackComments;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$FeedbackCopyWith<_Feedback> get copyWith =>
      throw _privateConstructorUsedError;
}
