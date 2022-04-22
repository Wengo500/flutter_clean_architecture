// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiDay _$ApiDayFromJson(Map<String, dynamic> json) {
  return _Charcter.fromJson(json);
}

/// @nodoc
mixin _$ApiDay {
  String get sunrise => throw _privateConstructorUsedError;
  String get sunset => throw _privateConstructorUsedError;
  String get solar_noon => throw _privateConstructorUsedError;
  num get day_length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiDayCopyWith<ApiDay> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiDayCopyWith<$Res> {
  factory $ApiDayCopyWith(ApiDay value, $Res Function(ApiDay) then) =
      _$ApiDayCopyWithImpl<$Res>;
  $Res call({String sunrise, String sunset, String solar_noon, num day_length});
}

/// @nodoc
class _$ApiDayCopyWithImpl<$Res> implements $ApiDayCopyWith<$Res> {
  _$ApiDayCopyWithImpl(this._value, this._then);

  final ApiDay _value;
  // ignore: unused_field
  final $Res Function(ApiDay) _then;

  @override
  $Res call({
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? solar_noon = freezed,
    Object? day_length = freezed,
  }) {
    return _then(_value.copyWith(
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      sunset: sunset == freezed
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String,
      solar_noon: solar_noon == freezed
          ? _value.solar_noon
          : solar_noon // ignore: cast_nullable_to_non_nullable
              as String,
      day_length: day_length == freezed
          ? _value.day_length
          : day_length // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
abstract class _$CharcterCopyWith<$Res> implements $ApiDayCopyWith<$Res> {
  factory _$CharcterCopyWith(_Charcter value, $Res Function(_Charcter) then) =
      __$CharcterCopyWithImpl<$Res>;
  @override
  $Res call({String sunrise, String sunset, String solar_noon, num day_length});
}

/// @nodoc
class __$CharcterCopyWithImpl<$Res> extends _$ApiDayCopyWithImpl<$Res>
    implements _$CharcterCopyWith<$Res> {
  __$CharcterCopyWithImpl(_Charcter _value, $Res Function(_Charcter) _then)
      : super(_value, (v) => _then(v as _Charcter));

  @override
  _Charcter get _value => super._value as _Charcter;

  @override
  $Res call({
    Object? sunrise = freezed,
    Object? sunset = freezed,
    Object? solar_noon = freezed,
    Object? day_length = freezed,
  }) {
    return _then(_Charcter(
      sunrise: sunrise == freezed
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as String,
      sunset: sunset == freezed
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String,
      solar_noon: solar_noon == freezed
          ? _value.solar_noon
          : solar_noon // ignore: cast_nullable_to_non_nullable
              as String,
      day_length: day_length == freezed
          ? _value.day_length
          : day_length // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Charcter implements _Charcter {
  const _$_Charcter(
      {required this.sunrise,
      required this.sunset,
      required this.solar_noon,
      required this.day_length});

  factory _$_Charcter.fromJson(Map<String, dynamic> json) =>
      _$$_CharcterFromJson(json);

  @override
  final String sunrise;
  @override
  final String sunset;
  @override
  final String solar_noon;
  @override
  final num day_length;

  @override
  String toString() {
    return 'ApiDay(sunrise: $sunrise, sunset: $sunset, solar_noon: $solar_noon, day_length: $day_length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Charcter &&
            const DeepCollectionEquality().equals(other.sunrise, sunrise) &&
            const DeepCollectionEquality().equals(other.sunset, sunset) &&
            const DeepCollectionEquality()
                .equals(other.solar_noon, solar_noon) &&
            const DeepCollectionEquality()
                .equals(other.day_length, day_length));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sunrise),
      const DeepCollectionEquality().hash(sunset),
      const DeepCollectionEquality().hash(solar_noon),
      const DeepCollectionEquality().hash(day_length));

  @JsonKey(ignore: true)
  @override
  _$CharcterCopyWith<_Charcter> get copyWith =>
      __$CharcterCopyWithImpl<_Charcter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CharcterToJson(this);
  }
}

abstract class _Charcter implements ApiDay {
  const factory _Charcter(
      {required final String sunrise,
      required final String sunset,
      required final String solar_noon,
      required final num day_length}) = _$_Charcter;

  factory _Charcter.fromJson(Map<String, dynamic> json) = _$_Charcter.fromJson;

  @override
  String get sunrise => throw _privateConstructorUsedError;
  @override
  String get sunset => throw _privateConstructorUsedError;
  @override
  String get solar_noon => throw _privateConstructorUsedError;
  @override
  num get day_length => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CharcterCopyWith<_Charcter> get copyWith =>
      throw _privateConstructorUsedError;
}
