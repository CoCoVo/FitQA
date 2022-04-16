// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer_feedback_price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrainerFeedbackPrice _$$_TrainerFeedbackPriceFromJson(
        Map<String, dynamic> json) =>
    _$_TrainerFeedbackPrice(
      area: $enumDecode(_$WorkOutAreaEnumMap, json['area']),
      price: json['price'] as int,
    );

Map<String, dynamic> _$$_TrainerFeedbackPriceToJson(
        _$_TrainerFeedbackPrice instance) =>
    <String, dynamic>{
      'area': _$WorkOutAreaEnumMap[instance.area],
      'price': instance.price,
    };

const _$WorkOutAreaEnumMap = {
  WorkOutArea.all: 'all',
  WorkOutArea.none: 'none',
  WorkOutArea.lower: 'LOWER',
  WorkOutArea.back: 'BACK',
  WorkOutArea.chest: 'CHEST',
  WorkOutArea.shoulder: 'SHOULDER',
  WorkOutArea.arm: 'ARM',
};
