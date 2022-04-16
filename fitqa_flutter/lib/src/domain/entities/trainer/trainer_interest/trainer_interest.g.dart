// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trainer_interest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TrainerInterest _$$_TrainerInterestFromJson(Map<String, dynamic> json) =>
    _$_TrainerInterest(
      interestArea: $enumDecode(_$WorkOutAreaEnumMap, json['interestArea']),
    );

Map<String, dynamic> _$$_TrainerInterestToJson(_$_TrainerInterest instance) =>
    <String, dynamic>{
      'interestArea': _$WorkOutAreaEnumMap[instance.interestArea],
    };

const _$WorkOutAreaEnumMap = {
  WorkOutArea.lower: 'LOWER',
  WorkOutArea.back: 'BACK',
  WorkOutArea.chest: 'CHEST',
  WorkOutArea.shoulder: 'SHOULDER',
  WorkOutArea.arm: 'ARM',
};
