// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feedback_trainer_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedbackTrainerImage _$FeedbackTrainerImageFromJson(Map<String, dynamic> json) {
  return _FeedbackTrainerImage.fromJson(json);
}

/// @nodoc
class _$FeedbackTrainerImageTearOff {
  const _$FeedbackTrainerImageTearOff();

  _FeedbackTrainerImage call(
      {required String imageUrl, required String imageType}) {
    return _FeedbackTrainerImage(
      imageUrl: imageUrl,
      imageType: imageType,
    );
  }

  FeedbackTrainerImage fromJson(Map<String, Object?> json) {
    return FeedbackTrainerImage.fromJson(json);
  }
}

/// @nodoc
const $FeedbackTrainerImage = _$FeedbackTrainerImageTearOff();

/// @nodoc
mixin _$FeedbackTrainerImage {
  String get imageUrl => throw _privateConstructorUsedError;
  String get imageType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackTrainerImageCopyWith<FeedbackTrainerImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackTrainerImageCopyWith<$Res> {
  factory $FeedbackTrainerImageCopyWith(FeedbackTrainerImage value,
          $Res Function(FeedbackTrainerImage) then) =
      _$FeedbackTrainerImageCopyWithImpl<$Res>;
  $Res call({String imageUrl, String imageType});
}

/// @nodoc
class _$FeedbackTrainerImageCopyWithImpl<$Res>
    implements $FeedbackTrainerImageCopyWith<$Res> {
  _$FeedbackTrainerImageCopyWithImpl(this._value, this._then);

  final FeedbackTrainerImage _value;
  // ignore: unused_field
  final $Res Function(FeedbackTrainerImage) _then;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? imageType = freezed,
  }) {
    return _then(_value.copyWith(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageType: imageType == freezed
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FeedbackTrainerImageCopyWith<$Res>
    implements $FeedbackTrainerImageCopyWith<$Res> {
  factory _$FeedbackTrainerImageCopyWith(_FeedbackTrainerImage value,
          $Res Function(_FeedbackTrainerImage) then) =
      __$FeedbackTrainerImageCopyWithImpl<$Res>;
  @override
  $Res call({String imageUrl, String imageType});
}

/// @nodoc
class __$FeedbackTrainerImageCopyWithImpl<$Res>
    extends _$FeedbackTrainerImageCopyWithImpl<$Res>
    implements _$FeedbackTrainerImageCopyWith<$Res> {
  __$FeedbackTrainerImageCopyWithImpl(
      _FeedbackTrainerImage _value, $Res Function(_FeedbackTrainerImage) _then)
      : super(_value, (v) => _then(v as _FeedbackTrainerImage));

  @override
  _FeedbackTrainerImage get _value => super._value as _FeedbackTrainerImage;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? imageType = freezed,
  }) {
    return _then(_FeedbackTrainerImage(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageType: imageType == freezed
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedbackTrainerImage implements _FeedbackTrainerImage {
  const _$_FeedbackTrainerImage(
      {required this.imageUrl, required this.imageType});

  factory _$_FeedbackTrainerImage.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackTrainerImageFromJson(json);

  @override
  final String imageUrl;
  @override
  final String imageType;

  @override
  String toString() {
    return 'FeedbackTrainerImage(imageUrl: $imageUrl, imageType: $imageType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedbackTrainerImage &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality().equals(other.imageType, imageType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(imageType));

  @JsonKey(ignore: true)
  @override
  _$FeedbackTrainerImageCopyWith<_FeedbackTrainerImage> get copyWith =>
      __$FeedbackTrainerImageCopyWithImpl<_FeedbackTrainerImage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbackTrainerImageToJson(this);
  }
}

abstract class _FeedbackTrainerImage implements FeedbackTrainerImage {
  const factory _FeedbackTrainerImage(
      {required String imageUrl,
      required String imageType}) = _$_FeedbackTrainerImage;

  factory _FeedbackTrainerImage.fromJson(Map<String, dynamic> json) =
      _$_FeedbackTrainerImage.fromJson;

  @override
  String get imageUrl;
  @override
  String get imageType;
  @override
  @JsonKey(ignore: true)
  _$FeedbackTrainerImageCopyWith<_FeedbackTrainerImage> get copyWith =>
      throw _privateConstructorUsedError;
}
