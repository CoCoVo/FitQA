// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterFeedback _$RegisterFeedbackFromJson(Map<String, dynamic> json) {
  return _RegisterFeedback.fromJson(json);
}

/// @nodoc
class _$RegisterFeedbackTearOff {
  const _$RegisterFeedbackTearOff();

  _RegisterFeedback call(
      {required String ownerId,
      required String trainerId,
      required String interestArea,
      required int price,
      required String title,
      required String content,
      required bool locked}) {
    return _RegisterFeedback(
      ownerId: ownerId,
      trainerId: trainerId,
      interestArea: interestArea,
      price: price,
      title: title,
      content: content,
      locked: locked,
    );
  }

  RegisterFeedback fromJson(Map<String, Object?> json) {
    return RegisterFeedback.fromJson(json);
  }
}

/// @nodoc
const $RegisterFeedback = _$RegisterFeedbackTearOff();

/// @nodoc
mixin _$RegisterFeedback {
  String get ownerId => throw _privateConstructorUsedError;
  String get trainerId => throw _privateConstructorUsedError;
  String get interestArea => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get locked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterFeedbackCopyWith<RegisterFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFeedbackCopyWith<$Res> {
  factory $RegisterFeedbackCopyWith(
          RegisterFeedback value, $Res Function(RegisterFeedback) then) =
      _$RegisterFeedbackCopyWithImpl<$Res>;
  $Res call(
      {String ownerId,
      String trainerId,
      String interestArea,
      int price,
      String title,
      String content,
      bool locked});
}

/// @nodoc
class _$RegisterFeedbackCopyWithImpl<$Res>
    implements $RegisterFeedbackCopyWith<$Res> {
  _$RegisterFeedbackCopyWithImpl(this._value, this._then);

  final RegisterFeedback _value;
  // ignore: unused_field
  final $Res Function(RegisterFeedback) _then;

  @override
  $Res call({
    Object? ownerId = freezed,
    Object? trainerId = freezed,
    Object? interestArea = freezed,
    Object? price = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? locked = freezed,
  }) {
    return _then(_value.copyWith(
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      trainerId: trainerId == freezed
          ? _value.trainerId
          : trainerId // ignore: cast_nullable_to_non_nullable
              as String,
      interestArea: interestArea == freezed
          ? _value.interestArea
          : interestArea // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
abstract class _$RegisterFeedbackCopyWith<$Res>
    implements $RegisterFeedbackCopyWith<$Res> {
  factory _$RegisterFeedbackCopyWith(
          _RegisterFeedback value, $Res Function(_RegisterFeedback) then) =
      __$RegisterFeedbackCopyWithImpl<$Res>;
  @override
  $Res call(
      {String ownerId,
      String trainerId,
      String interestArea,
      int price,
      String title,
      String content,
      bool locked});
}

/// @nodoc
class __$RegisterFeedbackCopyWithImpl<$Res>
    extends _$RegisterFeedbackCopyWithImpl<$Res>
    implements _$RegisterFeedbackCopyWith<$Res> {
  __$RegisterFeedbackCopyWithImpl(
      _RegisterFeedback _value, $Res Function(_RegisterFeedback) _then)
      : super(_value, (v) => _then(v as _RegisterFeedback));

  @override
  _RegisterFeedback get _value => super._value as _RegisterFeedback;

  @override
  $Res call({
    Object? ownerId = freezed,
    Object? trainerId = freezed,
    Object? interestArea = freezed,
    Object? price = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? locked = freezed,
  }) {
    return _then(_RegisterFeedback(
      ownerId: ownerId == freezed
          ? _value.ownerId
          : ownerId // ignore: cast_nullable_to_non_nullable
              as String,
      trainerId: trainerId == freezed
          ? _value.trainerId
          : trainerId // ignore: cast_nullable_to_non_nullable
              as String,
      interestArea: interestArea == freezed
          ? _value.interestArea
          : interestArea // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterFeedback implements _RegisterFeedback {
  const _$_RegisterFeedback(
      {required this.ownerId,
      required this.trainerId,
      required this.interestArea,
      required this.price,
      required this.title,
      required this.content,
      required this.locked});

  factory _$_RegisterFeedback.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterFeedbackFromJson(json);

  @override
  final String ownerId;
  @override
  final String trainerId;
  @override
  final String interestArea;
  @override
  final int price;
  @override
  final String title;
  @override
  final String content;
  @override
  final bool locked;

  @override
  String toString() {
    return 'RegisterFeedback(ownerId: $ownerId, trainerId: $trainerId, interestArea: $interestArea, price: $price, title: $title, content: $content, locked: $locked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterFeedback &&
            const DeepCollectionEquality().equals(other.ownerId, ownerId) &&
            const DeepCollectionEquality().equals(other.trainerId, trainerId) &&
            const DeepCollectionEquality()
                .equals(other.interestArea, interestArea) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.locked, locked));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ownerId),
      const DeepCollectionEquality().hash(trainerId),
      const DeepCollectionEquality().hash(interestArea),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(locked));

  @JsonKey(ignore: true)
  @override
  _$RegisterFeedbackCopyWith<_RegisterFeedback> get copyWith =>
      __$RegisterFeedbackCopyWithImpl<_RegisterFeedback>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterFeedbackToJson(this);
  }
}

abstract class _RegisterFeedback implements RegisterFeedback {
  const factory _RegisterFeedback(
      {required String ownerId,
      required String trainerId,
      required String interestArea,
      required int price,
      required String title,
      required String content,
      required bool locked}) = _$_RegisterFeedback;

  factory _RegisterFeedback.fromJson(Map<String, dynamic> json) =
      _$_RegisterFeedback.fromJson;

  @override
  String get ownerId;
  @override
  String get trainerId;
  @override
  String get interestArea;
  @override
  int get price;
  @override
  String get title;
  @override
  String get content;
  @override
  bool get locked;
  @override
  @JsonKey(ignore: true)
  _$RegisterFeedbackCopyWith<_RegisterFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}
