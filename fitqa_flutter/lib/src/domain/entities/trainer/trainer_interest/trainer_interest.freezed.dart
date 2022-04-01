// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trainer_interest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrainerInterestArea _$TrainerInterestAreaFromJson(Map<String, dynamic> json) {
  return _TrainerInterest.fromJson(json);
}

/// @nodoc
class _$TrainerInterestAreaTearOff {
  const _$TrainerInterestAreaTearOff();

  _TrainerInterest call({required String interestArea}) {
    return _TrainerInterest(
      interestArea: interestArea,
    );
  }

  TrainerInterestArea fromJson(Map<String, Object?> json) {
    return TrainerInterestArea.fromJson(json);
  }
}

/// @nodoc
const $TrainerInterestArea = _$TrainerInterestAreaTearOff();

/// @nodoc
mixin _$TrainerInterestArea {
  String get interestArea => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainerInterestAreaCopyWith<TrainerInterestArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainerInterestAreaCopyWith<$Res> {
  factory $TrainerInterestAreaCopyWith(
          TrainerInterestArea value, $Res Function(TrainerInterestArea) then) =
      _$TrainerInterestAreaCopyWithImpl<$Res>;
  $Res call({String interestArea});
}

/// @nodoc
class _$TrainerInterestAreaCopyWithImpl<$Res>
    implements $TrainerInterestAreaCopyWith<$Res> {
  _$TrainerInterestAreaCopyWithImpl(this._value, this._then);

  final TrainerInterestArea _value;
  // ignore: unused_field
  final $Res Function(TrainerInterestArea) _then;

  @override
  $Res call({
    Object? interestArea = freezed,
  }) {
    return _then(_value.copyWith(
      interestArea: interestArea == freezed
          ? _value.interestArea
          : interestArea // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TrainerInterestCopyWith<$Res>
    implements $TrainerInterestAreaCopyWith<$Res> {
  factory _$TrainerInterestCopyWith(
          _TrainerInterest value, $Res Function(_TrainerInterest) then) =
      __$TrainerInterestCopyWithImpl<$Res>;
  @override
  $Res call({String interestArea});
}

/// @nodoc
class __$TrainerInterestCopyWithImpl<$Res>
    extends _$TrainerInterestAreaCopyWithImpl<$Res>
    implements _$TrainerInterestCopyWith<$Res> {
  __$TrainerInterestCopyWithImpl(
      _TrainerInterest _value, $Res Function(_TrainerInterest) _then)
      : super(_value, (v) => _then(v as _TrainerInterest));

  @override
  _TrainerInterest get _value => super._value as _TrainerInterest;

  @override
  $Res call({
    Object? interestArea = freezed,
  }) {
    return _then(_TrainerInterest(
      interestArea: interestArea == freezed
          ? _value.interestArea
          : interestArea // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrainerInterest implements _TrainerInterest {
  const _$_TrainerInterest({required this.interestArea});

  factory _$_TrainerInterest.fromJson(Map<String, dynamic> json) =>
      _$$_TrainerInterestFromJson(json);

  @override
  final String interestArea;

  @override
  String toString() {
    return 'TrainerInterestArea(interestArea: $interestArea)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrainerInterest &&
            const DeepCollectionEquality()
                .equals(other.interestArea, interestArea));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(interestArea));

  @JsonKey(ignore: true)
  @override
  _$TrainerInterestCopyWith<_TrainerInterest> get copyWith =>
      __$TrainerInterestCopyWithImpl<_TrainerInterest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrainerInterestToJson(this);
  }
}

abstract class _TrainerInterest implements TrainerInterestArea {
  const factory _TrainerInterest({required String interestArea}) =
      _$_TrainerInterest;

  factory _TrainerInterest.fromJson(Map<String, dynamic> json) =
      _$_TrainerInterest.fromJson;

  @override
  String get interestArea;
  @override
  @JsonKey(ignore: true)
  _$TrainerInterestCopyWith<_TrainerInterest> get copyWith =>
      throw _privateConstructorUsedError;
}
