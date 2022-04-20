// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trainer_career.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TrainerCareer _$TrainerCareerFromJson(Map<String, dynamic> json) {
  return _TrainerCareer.fromJson(json);
}

/// @nodoc
class _$TrainerCareerTearOff {
  const _$TrainerCareerTearOff();

  _TrainerCareer call({required String description, required CareerType type}) {
    return _TrainerCareer(
      description: description,
      type: type,
    );
  }

  TrainerCareer fromJson(Map<String, Object?> json) {
    return TrainerCareer.fromJson(json);
  }
}

/// @nodoc
const $TrainerCareer = _$TrainerCareerTearOff();

/// @nodoc
mixin _$TrainerCareer {
  String get description => throw _privateConstructorUsedError;
  CareerType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainerCareerCopyWith<TrainerCareer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainerCareerCopyWith<$Res> {
  factory $TrainerCareerCopyWith(
          TrainerCareer value, $Res Function(TrainerCareer) then) =
      _$TrainerCareerCopyWithImpl<$Res>;
  $Res call({String description, CareerType type});
}

/// @nodoc
class _$TrainerCareerCopyWithImpl<$Res>
    implements $TrainerCareerCopyWith<$Res> {
  _$TrainerCareerCopyWithImpl(this._value, this._then);

  final TrainerCareer _value;
  // ignore: unused_field
  final $Res Function(TrainerCareer) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CareerType,
    ));
  }
}

/// @nodoc
abstract class _$TrainerCareerCopyWith<$Res>
    implements $TrainerCareerCopyWith<$Res> {
  factory _$TrainerCareerCopyWith(
          _TrainerCareer value, $Res Function(_TrainerCareer) then) =
      __$TrainerCareerCopyWithImpl<$Res>;
  @override
  $Res call({String description, CareerType type});
}

/// @nodoc
class __$TrainerCareerCopyWithImpl<$Res>
    extends _$TrainerCareerCopyWithImpl<$Res>
    implements _$TrainerCareerCopyWith<$Res> {
  __$TrainerCareerCopyWithImpl(
      _TrainerCareer _value, $Res Function(_TrainerCareer) _then)
      : super(_value, (v) => _then(v as _TrainerCareer));

  @override
  _TrainerCareer get _value => super._value as _TrainerCareer;

  @override
  $Res call({
    Object? description = freezed,
    Object? type = freezed,
  }) {
    return _then(_TrainerCareer(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as CareerType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TrainerCareer implements _TrainerCareer {
  const _$_TrainerCareer({required this.description, required this.type});

  factory _$_TrainerCareer.fromJson(Map<String, dynamic> json) =>
      _$$_TrainerCareerFromJson(json);

  @override
  final String description;
  @override
  final CareerType type;

  @override
  String toString() {
    return 'TrainerCareer(description: $description, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrainerCareer &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$TrainerCareerCopyWith<_TrainerCareer> get copyWith =>
      __$TrainerCareerCopyWithImpl<_TrainerCareer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrainerCareerToJson(this);
  }
}

abstract class _TrainerCareer implements TrainerCareer {
  const factory _TrainerCareer(
      {required String description,
      required CareerType type}) = _$_TrainerCareer;

  factory _TrainerCareer.fromJson(Map<String, dynamic> json) =
      _$_TrainerCareer.fromJson;

  @override
  String get description;
  @override
  CareerType get type;
  @override
  @JsonKey(ignore: true)
  _$TrainerCareerCopyWith<_TrainerCareer> get copyWith =>
      throw _privateConstructorUsedError;
}
