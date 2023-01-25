import 'package:chapter4/models/weather.dart';
import 'package:chapter4/repository/weather_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'current_location_provider.dart';
import 'shared_preferenses_provider.dart';

final weatherInfoProvider = FutureProvider<Weather>((ref) async {
  final locationData = await ref.watch(currentLocationProvider.future);
  final repository = ref.watch(repositoryProvider);
  final weatherInfo = await repository.fetchWeather(
    lat: locationData.latitude!,
    lon: locationData.longitude!,
  );
  // 取得した情報をローカルに保存
  ref.read(sharedPreferencesProvider).setString(
        SharedPreferencesKey.prevCityName.name,
        '${weatherInfo.name}',
      );
  ref.read(sharedPreferencesProvider).setString(
        SharedPreferencesKey.prevTemp.name,
        '${weatherInfo.main?.temp}',
      );
  ref.read(sharedPreferencesProvider).setString(
        SharedPreferencesKey.prevHumidity.name,
        '${weatherInfo.main?.humidity}',
      );
  return weatherInfo;
});
