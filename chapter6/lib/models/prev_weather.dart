import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../provider/shared_preferenses_provider.dart';

part 'prev_weather.freezed.dart';

final prevWeatherProvider = Provider<PrevWeather?>((ref) {
  final prevCityName = ref
          .watch(sharedPreferencesProvider)
          .getString(SharedPreferencesKey.prevCityName.name) ??
      '';
  final prevTemp = ref
          .watch(sharedPreferencesProvider)
          .getString(SharedPreferencesKey.prevTemp.name) ??
      '';
  final prevHumidity = ref
          .watch(sharedPreferencesProvider)
          .getString(SharedPreferencesKey.prevHumidity.name) ??
      '';
  if (prevCityName.isEmpty) {
    return null;
  }
  return PrevWeather(
    cityName: prevCityName,
    temp: prevTemp,
    humidity: prevHumidity,
  );
});

@freezed
class PrevWeather with _$PrevWeather {
  const factory PrevWeather({
    required String cityName,
    required String temp,
    required String humidity,
  }) = _PrevWeather;
}
