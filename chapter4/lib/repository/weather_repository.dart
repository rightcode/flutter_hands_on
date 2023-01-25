import 'package:chapter4/api/weather_api_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/weather.dart';

final repositoryProvider = Provider<Repository>((ref) {
  return Repository(api: ref.watch(apiClientProvider));
});

class Repository {
  const Repository({required this.api});

  final WeatherApiClient api;

  Future<Weather> fetchWeather({
    required double lat,
    required double lon,
  }) async {
    return await api.fetchWeather(lat: lat, lon: lon);
  }
}
