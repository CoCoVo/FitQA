// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trainer_feedback_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrainerFeedbackPrice _$TrainerFeedbackPriceFromJson(Map<String, dynamic> json) {
  return _TrainerFeedbackPrice.fromJson(json);
}

/// @nodoc
class _$TrainerFeedbackPriceTearOff {
  const _$TrainerFeedbackPriceTearOff();

  _TrainerFeedbackPrice call(
      {required String interestArea, required int price}) {
    return _TrainerFeedbackPrice(
      interestArea: interestArea,
      price: price,
    );
  }

  TrainerFeedbackPrice fromJson(Map<String, Object?> json) {
    return TrainerFeedbackPrice.fromJson(json);
  }
}

/// @nodoc
const $TrainerFeedbackPrice = _$TrainerFeedbackPriceTearOff();

/// @nodoc
mixin _$TrainerFeedbackPrice {
  String get interestArea => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainerFeedbackPriceCopyWith<TrainerFeedbackPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainerFeedbackPriceCopyWith<$Res> {
  factory $TrainerFeedbackPriceCopyWith(TrainerFeedbackPrice value,
          $Res Function(TrainerFeedbackPrice) then) =
      _$TrainerFeedbackPriceCopyWithImpl<$Res>;
  $Res call({String interestArea, int price});
}

/// @nodoc
class _$TrainerFeedbackPriceCopyWithImpl<$Res>
    implements $TrainerFeedbackPriceCopyWith<$Res> {
  _$TrainerFeedbackPriceCopyWithImpl(this._value, this._then);

  final TrainerFeedbackPrice _value;
  // ignore: unused_field
  final $Res Function(TrainerFeedbackPrice) _then;

  @override
  $Res call({
    Object? interestArea = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      interestArea: interestArea == freezed
          ? _value.interestArea
          : interestArea // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$TrainerFeedbackPriceCopyWith<$Res>
    implements $TrainerFeedbackPriceCopyWith<$Res> {
  factory _$TrainerFeedbackPriceCopyWith(_TrainerFeedbackPrice value,
          $Res Function(_TrainerFeedbackPrice) then) =
      __$TrainerFeedbackPriceCopyWithImpl<$Res>;
  @override
  $Res call({String interestArea, int price});
}

/// @nodoc
class __$TrainerFeedbackPriceCopyWithImpl<$Res>
    extends _$TrainerFeedbackPriceCopyWithImpl<$Res>
    implements _$TrainerFeedbackPriceCopyWith<$Res> {
  __$TrainerFeedbackPriceCopyWithImpl(
      _TrainerFeedbackPrice _value, $Res Function(_TrainerFeedbackPrice) _then)
      : super(_value, (v) => _then(v as _TrainerFeedbackPrice));

  @override
  _TrainerFeedbackPrice get _value => super._value as _TrainerFeedbackPrice;

  @override
  $Res call({
    Object? interestArea = freezed,
    Object? price = freezed,
  }) {
    return _then(_TrainerFeedbackPrice(
      interestArea: interestArea == freezed
          ? _value.interestArea
          : interestArea // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrainerFeedbackPrice implements _TrainerFeedbackPrice {
  const _$_TrainerFeedbackPrice(
      {required this.interestArea, required this.price});

  factory _$_TrainerFeedbackPrice.fromJson(Map<String, dynamic> json) =>
      _$$_TrainerFeedbackPriceFromJson(json);

  @override
  final String interestArea;
  @override
  final int price;

  @override
  String toString() {
    return 'TrainerFeedbackPrice(interestArea: $interestArea, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrainerFeedbackPrice &&
            const DeepCollectionEquality()
                .equals(other.interestArea, interestArea) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(interestArea),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$TrainerFeedbackPriceCopyWith<_TrainerFeedbackPrice> get copyWith =>
      __$TrainerFeedbackPriceCopyWithImpl<_TrainerFeedbackPrice>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrainerFeedbackPriceToJson(this);
  }
}

abstract class _TrainerFeedbackPrice implements TrainerFeedbackPrice {
  const factory _TrainerFeedbackPrice(
      {required String interestArea,
      required int price}) = _$_TrainerFeedbackPrice;

  factory _TrainerFeedbackPrice.fromJson(Map<String, dynamic> json) =
      _$_TrainerFeedbackPrice.fromJson;

  @override
  String get interestArea;
  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$TrainerFeedbackPriceCopyWith<_TrainerFeedbackPrice> get copyWith =>
      throw _privateConstructorUsedError;
}
