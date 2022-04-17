// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trainer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Trainer _$TrainerFromJson(Map<String, dynamic> json) {
  return _Trainer.fromJson(json);
}

/// @nodoc
class _$TrainerTearOff {
  const _$TrainerTearOff();

  _Trainer call(
      {required String trainerToken,
      required String name,
      required String email,
      required WorkOutStyle style,
      required String introduceTitle,
      required String introduceContext,
      required String representativeCareer,
      required String representativeFootprints,
      required int likesCount,
      required List<TrainerImage> images,
      required List<TrainerCareer> careers,
      required List<TrainerFeedbackPrice> feedbackPrices,
      required List<TrainerInterestArea> interestAreas,
      required List<TrainerSns> sns}) {
    return _Trainer(
      trainerToken: trainerToken,
      name: name,
      email: email,
      style: style,
      introduceTitle: introduceTitle,
      introduceContext: introduceContext,
      representativeCareer: representativeCareer,
      representativeFootprints: representativeFootprints,
      likesCount: likesCount,
      images: images,
      careers: careers,
      feedbackPrices: feedbackPrices,
      interestAreas: interestAreas,
      sns: sns,
    );
  }

  Trainer fromJson(Map<String, Object?> json) {
    return Trainer.fromJson(json);
  }
}

/// @nodoc
const $Trainer = _$TrainerTearOff();

/// @nodoc
mixin _$Trainer {
  String get trainerToken => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  WorkOutStyle get style => throw _privateConstructorUsedError;
  String get introduceTitle => throw _privateConstructorUsedError;
  String get introduceContext => throw _privateConstructorUsedError;
  String get representativeCareer => throw _privateConstructorUsedError;
  String get representativeFootprints => throw _privateConstructorUsedError;
  int get likesCount => throw _privateConstructorUsedError;
  List<TrainerImage> get images => throw _privateConstructorUsedError;
  List<TrainerCareer> get careers => throw _privateConstructorUsedError;
  List<TrainerFeedbackPrice> get feedbackPrices =>
      throw _privateConstructorUsedError;
  List<TrainerInterestArea> get interestAreas =>
      throw _privateConstructorUsedError;
  List<TrainerSns> get sns => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainerCopyWith<Trainer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainerCopyWith<$Res> {
  factory $TrainerCopyWith(Trainer value, $Res Function(Trainer) then) =
      _$TrainerCopyWithImpl<$Res>;
  $Res call(
      {String trainerToken,
      String name,
      String email,
      WorkOutStyle style,
      String introduceTitle,
      String introduceContext,
      String representativeCareer,
      String representativeFootprints,
      int likesCount,
      List<TrainerImage> images,
      List<TrainerCareer> careers,
      List<TrainerFeedbackPrice> feedbackPrices,
      List<TrainerInterestArea> interestAreas,
      List<TrainerSns> sns});
}

/// @nodoc
class _$TrainerCopyWithImpl<$Res> implements $TrainerCopyWith<$Res> {
  _$TrainerCopyWithImpl(this._value, this._then);

  final Trainer _value;
  // ignore: unused_field
  final $Res Function(Trainer) _then;

  @override
  $Res call({
    Object? trainerToken = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? style = freezed,
    Object? introduceTitle = freezed,
    Object? introduceContext = freezed,
    Object? representativeCareer = freezed,
    Object? representativeFootprints = freezed,
    Object? likesCount = freezed,
    Object? images = freezed,
    Object? careers = freezed,
    Object? feedbackPrices = freezed,
    Object? interestAreas = freezed,
    Object? sns = freezed,
  }) {
    return _then(_value.copyWith(
      trainerToken: trainerToken == freezed
          ? _value.trainerToken
          : trainerToken // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      style: style == freezed
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as WorkOutStyle,
      introduceTitle: introduceTitle == freezed
          ? _value.introduceTitle
          : introduceTitle // ignore: cast_nullable_to_non_nullable
              as String,
      introduceContext: introduceContext == freezed
          ? _value.introduceContext
          : introduceContext // ignore: cast_nullable_to_non_nullable
              as String,
      representativeCareer: representativeCareer == freezed
          ? _value.representativeCareer
          : representativeCareer // ignore: cast_nullable_to_non_nullable
              as String,
      representativeFootprints: representativeFootprints == freezed
          ? _value.representativeFootprints
          : representativeFootprints // ignore: cast_nullable_to_non_nullable
              as String,
      likesCount: likesCount == freezed
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<TrainerImage>,
      careers: careers == freezed
          ? _value.careers
          : careers // ignore: cast_nullable_to_non_nullable
              as List<TrainerCareer>,
      feedbackPrices: feedbackPrices == freezed
          ? _value.feedbackPrices
          : feedbackPrices // ignore: cast_nullable_to_non_nullable
              as List<TrainerFeedbackPrice>,
      interestAreas: interestAreas == freezed
          ? _value.interestAreas
          : interestAreas // ignore: cast_nullable_to_non_nullable
              as List<TrainerInterestArea>,
      sns: sns == freezed
          ? _value.sns
          : sns // ignore: cast_nullable_to_non_nullable
              as List<TrainerSns>,
    ));
  }
}

/// @nodoc
abstract class _$TrainerCopyWith<$Res> implements $TrainerCopyWith<$Res> {
  factory _$TrainerCopyWith(_Trainer value, $Res Function(_Trainer) then) =
      __$TrainerCopyWithImpl<$Res>;
  @override
  $Res call(
      {String trainerToken,
      String name,
      String email,
      WorkOutStyle style,
      String introduceTitle,
      String introduceContext,
      String representativeCareer,
      String representativeFootprints,
      int likesCount,
      List<TrainerImage> images,
      List<TrainerCareer> careers,
      List<TrainerFeedbackPrice> feedbackPrices,
      List<TrainerInterestArea> interestAreas,
      List<TrainerSns> sns});
}

/// @nodoc
class __$TrainerCopyWithImpl<$Res> extends _$TrainerCopyWithImpl<$Res>
    implements _$TrainerCopyWith<$Res> {
  __$TrainerCopyWithImpl(_Trainer _value, $Res Function(_Trainer) _then)
      : super(_value, (v) => _then(v as _Trainer));

  @override
  _Trainer get _value => super._value as _Trainer;

  @override
  $Res call({
    Object? trainerToken = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? style = freezed,
    Object? introduceTitle = freezed,
    Object? introduceContext = freezed,
    Object? representativeCareer = freezed,
    Object? representativeFootprints = freezed,
    Object? likesCount = freezed,
    Object? images = freezed,
    Object? careers = freezed,
    Object? feedbackPrices = freezed,
    Object? interestAreas = freezed,
    Object? sns = freezed,
  }) {
    return _then(_Trainer(
      trainerToken: trainerToken == freezed
          ? _value.trainerToken
          : trainerToken // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      style: style == freezed
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as WorkOutStyle,
      introduceTitle: introduceTitle == freezed
          ? _value.introduceTitle
          : introduceTitle // ignore: cast_nullable_to_non_nullable
              as String,
      introduceContext: introduceContext == freezed
          ? _value.introduceContext
          : introduceContext // ignore: cast_nullable_to_non_nullable
              as String,
      representativeCareer: representativeCareer == freezed
          ? _value.representativeCareer
          : representativeCareer // ignore: cast_nullable_to_non_nullable
              as String,
      representativeFootprints: representativeFootprints == freezed
          ? _value.representativeFootprints
          : representativeFootprints // ignore: cast_nullable_to_non_nullable
              as String,
      likesCount: likesCount == freezed
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as int,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<TrainerImage>,
      careers: careers == freezed
          ? _value.careers
          : careers // ignore: cast_nullable_to_non_nullable
              as List<TrainerCareer>,
      feedbackPrices: feedbackPrices == freezed
          ? _value.feedbackPrices
          : feedbackPrices // ignore: cast_nullable_to_non_nullable
              as List<TrainerFeedbackPrice>,
      interestAreas: interestAreas == freezed
          ? _value.interestAreas
          : interestAreas // ignore: cast_nullable_to_non_nullable
              as List<TrainerInterestArea>,
      sns: sns == freezed
          ? _value.sns
          : sns // ignore: cast_nullable_to_non_nullable
              as List<TrainerSns>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Trainer implements _Trainer {
  const _$_Trainer(
      {required this.trainerToken,
      required this.name,
      required this.email,
      required this.style,
      required this.introduceTitle,
      required this.introduceContext,
      required this.representativeCareer,
      required this.representativeFootprints,
      required this.likesCount,
      required this.images,
      required this.careers,
      required this.feedbackPrices,
      required this.interestAreas,
      required this.sns});

  factory _$_Trainer.fromJson(Map<String, dynamic> json) =>
      _$$_TrainerFromJson(json);

  @override
  final String trainerToken;
  @override
  final String name;
  @override
  final String email;
  @override
  final WorkOutStyle style;
  @override
  final String introduceTitle;
  @override
  final String introduceContext;
  @override
  final String representativeCareer;
  @override
  final String representativeFootprints;
  @override
  final int likesCount;
  @override
  final List<TrainerImage> images;
  @override
  final List<TrainerCareer> careers;
  @override
  final List<TrainerFeedbackPrice> feedbackPrices;
  @override
  final List<TrainerInterestArea> interestAreas;
  @override
  final List<TrainerSns> sns;

  @override
  String toString() {
    return 'Trainer(trainerToken: $trainerToken, name: $name, email: $email, style: $style, introduceTitle: $introduceTitle, introduceContext: $introduceContext, representativeCareer: $representativeCareer, representativeFootprints: $representativeFootprints, likesCount: $likesCount, images: $images, careers: $careers, feedbackPrices: $feedbackPrices, interestAreas: $interestAreas, sns: $sns)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Trainer &&
            const DeepCollectionEquality()
                .equals(other.trainerToken, trainerToken) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.style, style) &&
            const DeepCollectionEquality()
                .equals(other.introduceTitle, introduceTitle) &&
            const DeepCollectionEquality()
                .equals(other.introduceContext, introduceContext) &&
            const DeepCollectionEquality()
                .equals(other.representativeCareer, representativeCareer) &&
            const DeepCollectionEquality().equals(
                other.representativeFootprints, representativeFootprints) &&
            const DeepCollectionEquality()
                .equals(other.likesCount, likesCount) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            const DeepCollectionEquality().equals(other.careers, careers) &&
            const DeepCollectionEquality()
                .equals(other.feedbackPrices, feedbackPrices) &&
            const DeepCollectionEquality()
                .equals(other.interestAreas, interestAreas) &&
            const DeepCollectionEquality().equals(other.sns, sns));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(trainerToken),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(style),
      const DeepCollectionEquality().hash(introduceTitle),
      const DeepCollectionEquality().hash(introduceContext),
      const DeepCollectionEquality().hash(representativeCareer),
      const DeepCollectionEquality().hash(representativeFootprints),
      const DeepCollectionEquality().hash(likesCount),
      const DeepCollectionEquality().hash(images),
      const DeepCollectionEquality().hash(careers),
      const DeepCollectionEquality().hash(feedbackPrices),
      const DeepCollectionEquality().hash(interestAreas),
      const DeepCollectionEquality().hash(sns));

  @JsonKey(ignore: true)
  @override
  _$TrainerCopyWith<_Trainer> get copyWith =>
      __$TrainerCopyWithImpl<_Trainer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrainerToJson(this);
  }
}

abstract class _Trainer implements Trainer {
  const factory _Trainer(
      {required String trainerToken,
      required String name,
      required String email,
      required WorkOutStyle style,
      required String introduceTitle,
      required String introduceContext,
      required String representativeCareer,
      required String representativeFootprints,
      required int likesCount,
      required List<TrainerImage> images,
      required List<TrainerCareer> careers,
      required List<TrainerFeedbackPrice> feedbackPrices,
      required List<TrainerInterestArea> interestAreas,
      required List<TrainerSns> sns}) = _$_Trainer;

  factory _Trainer.fromJson(Map<String, dynamic> json) = _$_Trainer.fromJson;

  @override
  String get trainerToken;
  @override
  String get name;
  @override
  String get email;
  @override
  WorkOutStyle get style;
  @override
  String get introduceTitle;
  @override
  String get introduceContext;
  @override
  String get representativeCareer;
  @override
  String get representativeFootprints;
  @override
  int get likesCount;
  @override
  List<TrainerImage> get images;
  @override
  List<TrainerCareer> get careers;
  @override
  List<TrainerFeedbackPrice> get feedbackPrices;
  @override
  List<TrainerInterestArea> get interestAreas;
  @override
  List<TrainerSns> get sns;
  @override
  @JsonKey(ignore: true)
  _$TrainerCopyWith<_Trainer> get copyWith =>
      throw _privateConstructorUsedError;
}
