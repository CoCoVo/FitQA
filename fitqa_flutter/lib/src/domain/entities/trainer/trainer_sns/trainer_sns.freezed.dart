// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trainer_sns.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrainerSns _$TrainerSnsFromJson(Map<String, dynamic> json) {
  return _TrainerSns.fromJson(json);
}

/// @nodoc
class _$TrainerSnsTearOff {
  const _$TrainerSnsTearOff();

  _TrainerSns call({required SnsType snsType, required String snsUrl}) {
    return _TrainerSns(
      snsType: snsType,
      snsUrl: snsUrl,
    );
  }

  TrainerSns fromJson(Map<String, Object?> json) {
    return TrainerSns.fromJson(json);
  }
}

/// @nodoc
const $TrainerSns = _$TrainerSnsTearOff();

/// @nodoc
mixin _$TrainerSns {
  SnsType get snsType => throw _privateConstructorUsedError;
  String get snsUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainerSnsCopyWith<TrainerSns> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainerSnsCopyWith<$Res> {
  factory $TrainerSnsCopyWith(
          TrainerSns value, $Res Function(TrainerSns) then) =
      _$TrainerSnsCopyWithImpl<$Res>;
  $Res call({SnsType snsType, String snsUrl});
}

/// @nodoc
class _$TrainerSnsCopyWithImpl<$Res> implements $TrainerSnsCopyWith<$Res> {
  _$TrainerSnsCopyWithImpl(this._value, this._then);

  final TrainerSns _value;
  // ignore: unused_field
  final $Res Function(TrainerSns) _then;

  @override
  $Res call({
    Object? snsType = freezed,
    Object? snsUrl = freezed,
  }) {
    return _then(_value.copyWith(
      snsType: snsType == freezed
          ? _value.snsType
          : snsType // ignore: cast_nullable_to_non_nullable
              as SnsType,
      snsUrl: snsUrl == freezed
          ? _value.snsUrl
          : snsUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TrainerSnsCopyWith<$Res> implements $TrainerSnsCopyWith<$Res> {
  factory _$TrainerSnsCopyWith(
          _TrainerSns value, $Res Function(_TrainerSns) then) =
      __$TrainerSnsCopyWithImpl<$Res>;
  @override
  $Res call({SnsType snsType, String snsUrl});
}

/// @nodoc
class __$TrainerSnsCopyWithImpl<$Res> extends _$TrainerSnsCopyWithImpl<$Res>
    implements _$TrainerSnsCopyWith<$Res> {
  __$TrainerSnsCopyWithImpl(
      _TrainerSns _value, $Res Function(_TrainerSns) _then)
      : super(_value, (v) => _then(v as _TrainerSns));

  @override
  _TrainerSns get _value => super._value as _TrainerSns;

  @override
  $Res call({
    Object? snsType = freezed,
    Object? snsUrl = freezed,
  }) {
    return _then(_TrainerSns(
      snsType: snsType == freezed
          ? _value.snsType
          : snsType // ignore: cast_nullable_to_non_nullable
              as SnsType,
      snsUrl: snsUrl == freezed
          ? _value.snsUrl
          : snsUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrainerSns implements _TrainerSns {
  const _$_TrainerSns({required this.snsType, required this.snsUrl});

  factory _$_TrainerSns.fromJson(Map<String, dynamic> json) =>
      _$$_TrainerSnsFromJson(json);

  @override
  final SnsType snsType;
  @override
  final String snsUrl;

  @override
  String toString() {
    return 'TrainerSns(snsType: $snsType, snsUrl: $snsUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrainerSns &&
            const DeepCollectionEquality().equals(other.snsType, snsType) &&
            const DeepCollectionEquality().equals(other.snsUrl, snsUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(snsType),
      const DeepCollectionEquality().hash(snsUrl));

  @JsonKey(ignore: true)
  @override
  _$TrainerSnsCopyWith<_TrainerSns> get copyWith =>
      __$TrainerSnsCopyWithImpl<_TrainerSns>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrainerSnsToJson(this);
  }
}

abstract class _TrainerSns implements TrainerSns {
  const factory _TrainerSns(
      {required SnsType snsType, required String snsUrl}) = _$_TrainerSns;

  factory _TrainerSns.fromJson(Map<String, dynamic> json) =
      _$_TrainerSns.fromJson;

  @override
  SnsType get snsType;
  @override
  String get snsUrl;
  @override
  @JsonKey(ignore: true)
  _$TrainerSnsCopyWith<_TrainerSns> get copyWith =>
      throw _privateConstructorUsedError;
}
