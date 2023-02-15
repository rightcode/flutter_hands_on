// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prev_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PrevWeather {
  String get cityName => throw _privateConstructorUsedError;
  String get temp => throw _privateConstructorUsedError;
  String get humidity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrevWeatherCopyWith<PrevWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrevWeatherCopyWith<$Res> {
  factory $PrevWeatherCopyWith(
          PrevWeather value, $Res Function(PrevWeather) then) =
      _$PrevWeatherCopyWithImpl<$Res, PrevWeather>;
  @useResult
  $Res call({String cityName, String temp, String humidity});
}

/// @nodoc
class _$PrevWeatherCopyWithImpl<$Res, $Val extends PrevWeather>
    implements $PrevWeatherCopyWith<$Res> {
  _$PrevWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
    Object? temp = null,
    Object? humidity = null,
  }) {
    return _then(_value.copyWith(
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as String,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PrevWeatherCopyWith<$Res>
    implements $PrevWeatherCopyWith<$Res> {
  factory _$$_PrevWeatherCopyWith(
          _$_PrevWeather value, $Res Function(_$_PrevWeather) then) =
      __$$_PrevWeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cityName, String temp, String humidity});
}

/// @nodoc
class __$$_PrevWeatherCopyWithImpl<$Res>
    extends _$PrevWeatherCopyWithImpl<$Res, _$_PrevWeather>
    implements _$$_PrevWeatherCopyWith<$Res> {
  __$$_PrevWeatherCopyWithImpl(
      _$_PrevWeather _value, $Res Function(_$_PrevWeather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cityName = null,
    Object? temp = null,
    Object? humidity = null,
  }) {
    return _then(_$_PrevWeather(
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      temp: null == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as String,
      humidity: null == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PrevWeather implements _PrevWeather {
  const _$_PrevWeather(
      {required this.cityName, required this.temp, required this.humidity});

  @override
  final String cityName;
  @override
  final String temp;
  @override
  final String humidity;

  @override
  String toString() {
    return 'PrevWeather(cityName: $cityName, temp: $temp, humidity: $humidity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrevWeather &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cityName, temp, humidity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrevWeatherCopyWith<_$_PrevWeather> get copyWith =>
      __$$_PrevWeatherCopyWithImpl<_$_PrevWeather>(this, _$identity);
}

abstract class _PrevWeather implements PrevWeather {
  const factory _PrevWeather(
      {required final String cityName,
      required final String temp,
      required final String humidity}) = _$_PrevWeather;

  @override
  String get cityName;
  @override
  String get temp;
  @override
  String get humidity;
  @override
  @JsonKey(ignore: true)
  _$$_PrevWeatherCopyWith<_$_PrevWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
