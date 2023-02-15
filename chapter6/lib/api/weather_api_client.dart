import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/weather.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio();
});

final apiClientProvider = Provider<WeatherApiClient>((ref) {
  return WeatherApiClient(
    dio: ref.watch(dioProvider),
  );
});

class WeatherApiClient {
  const WeatherApiClient({
    required this.dio,
  });

  final Dio dio;

  Future<Weather> fetchWeather({
    required double lat,
    required double lon,
  }) async {
    // TODO: 各自で取得したAPIキーを設定
    // NOTE: 通常APIキーは.envやdart-defineから渡したりします
    const appId = '';
    final url =
        'https://api.openweathermap.org/data/2.5/weather?units=metric&lat=$lat&lon=$lon&appid=$appId&lang=ja';
    try {
      var response = await dio.get(url);
      return Weather.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }
}
