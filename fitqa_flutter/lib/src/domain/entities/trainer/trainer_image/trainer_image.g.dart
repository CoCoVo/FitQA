// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrainerImage _$$_TrainerImageFromJson(Map<String, dynamic> json) =>
    _$_TrainerImage(
      imageUrl: json['imageUrl'] as String,
      imageType: $enumDecode(_$ImageTypeEnumMap, json['imageType']),
    );

Map<String, dynamic> _$$_TrainerImageToJson(_$_TrainerImage instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'imageType': _$ImageTypeEnumMap[instance.imageType],
    };

const _$ImageTypeEnumMap = {
  ImageType.background: 'BACKGROUND',
  ImageType.gallery: 'GALLERY',
  ImageType.profile: 'PROFILE',
};
