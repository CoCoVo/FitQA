// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trainer_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrainerImage _$TrainerImageFromJson(Map<String, dynamic> json) {
  return _TrainerImage.fromJson(json);
}

/// @nodoc
class _$TrainerImageTearOff {
  const _$TrainerImageTearOff();

  _TrainerImage call({required String imageUrl, required ImageType imageType}) {
    return _TrainerImage(
      imageUrl: imageUrl,
      imageType: imageType,
    );
  }

  TrainerImage fromJson(Map<String, Object?> json) {
    return TrainerImage.fromJson(json);
  }
}

/// @nodoc
const $TrainerImage = _$TrainerImageTearOff();

/// @nodoc
mixin _$TrainerImage {
  String get imageUrl => throw _privateConstructorUsedError;
  ImageType get imageType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainerImageCopyWith<TrainerImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainerImageCopyWith<$Res> {
  factory $TrainerImageCopyWith(
          TrainerImage value, $Res Function(TrainerImage) then) =
      _$TrainerImageCopyWithImpl<$Res>;
  $Res call({String imageUrl, ImageType imageType});
}

/// @nodoc
class _$TrainerImageCopyWithImpl<$Res> implements $TrainerImageCopyWith<$Res> {
  _$TrainerImageCopyWithImpl(this._value, this._then);

  final TrainerImage _value;
  // ignore: unused_field
  final $Res Function(TrainerImage) _then;

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
              as ImageType,
    ));
  }
}

/// @nodoc
abstract class _$TrainerImageCopyWith<$Res>
    implements $TrainerImageCopyWith<$Res> {
  factory _$TrainerImageCopyWith(
          _TrainerImage value, $Res Function(_TrainerImage) then) =
      __$TrainerImageCopyWithImpl<$Res>;
  @override
  $Res call({String imageUrl, ImageType imageType});
}

/// @nodoc
class __$TrainerImageCopyWithImpl<$Res> extends _$TrainerImageCopyWithImpl<$Res>
    implements _$TrainerImageCopyWith<$Res> {
  __$TrainerImageCopyWithImpl(
      _TrainerImage _value, $Res Function(_TrainerImage) _then)
      : super(_value, (v) => _then(v as _TrainerImage));

  @override
  _TrainerImage get _value => super._value as _TrainerImage;

  @override
  $Res call({
    Object? imageUrl = freezed,
    Object? imageType = freezed,
  }) {
    return _then(_TrainerImage(
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageType: imageType == freezed
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as ImageType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrainerImage implements _TrainerImage {
  const _$_TrainerImage({required this.imageUrl, required this.imageType});

  factory _$_TrainerImage.fromJson(Map<String, dynamic> json) =>
      _$$_TrainerImageFromJson(json);

  @override
  final String imageUrl;
  @override
  final ImageType imageType;

  @override
  String toString() {
    return 'TrainerImage(imageUrl: $imageUrl, imageType: $imageType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrainerImage &&
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
  _$TrainerImageCopyWith<_TrainerImage> get copyWith =>
      __$TrainerImageCopyWithImpl<_TrainerImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrainerImageToJson(this);
  }
}

abstract class _TrainerImage implements TrainerImage {
  const factory _TrainerImage(
      {required String imageUrl,
      required ImageType imageType}) = _$_TrainerImage;

  factory _TrainerImage.fromJson(Map<String, dynamic> json) =
      _$_TrainerImage.fromJson;

  @override
  String get imageUrl;
  @override
  ImageType get imageType;
  @override
  @JsonKey(ignore: true)
  _$TrainerImageCopyWith<_TrainerImage> get copyWith =>
      throw _privateConstructorUsedError;
}
