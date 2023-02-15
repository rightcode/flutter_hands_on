import 'dart:convert';

import 'package:chapter6/api/weather_api_client.dart';
import 'package:chapter6/models/weather.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../mock.dart';
import 'weather_api_client_test.mocks.dart';

@GenerateMocks([Dio, HttpClientAdapter])
void main() {
  group('WeatherApiClient', () {
    group('fetchWeather', () {
      test('取得成功時 Weather情報が取得できること', () async {
        final dio = MockDio();
        // NOTE: RiverpodのProviderContainerを使う場合
        // final container = ProviderContainer(
        //   overrides: [
        //     dioProvider.overrideWithValue(dio),
        //   ],
        // );
        // addTearDown(container.dispose);

        when(dio.get(any)).thenAnswer(
          (_) => Future.value(
            Response(
              data: weatherJson,
              requestOptions: RequestOptions(path: ''),
            ),
          ),
        );

        // NOTE: RiverpodのProviderContainerを使う場合
        // final apiClient = container.read(apiClientProvider);
        final apiClient = WeatherApiClient(dio: dio);
        final weather = await apiClient.fetchWeather(lat: 100, lon: 200);

        expect(weather, Weather.fromJson(weatherJson));
      });

      test('取得成功時 Weather情報が取得できること2', () async {
        final dioAdapter = MockHttpClientAdapter();
        final dio = Dio();
        dio.httpClientAdapter = dioAdapter;
        // NOTE: RiverpodのProviderContainerを使う場合
        // final container = ProviderContainer(
        //   overrides: [
        //     dioProvider.overrideWithValue(dio),
        //   ],
        // );
        // addTearDown(container.dispose);

        final responsePayload = jsonEncode(weatherJson);
        final httpResponse = ResponseBody.fromString(
          responsePayload,
          200,
          headers: {},
        );

        when(dioAdapter.fetch(any, any, any))
            .thenAnswer((_) async => httpResponse);

        // NOTE: RiverpodのProviderContainerを使う場合
        // final apiClient = container.read(apiClientProvider);
        final apiClient = WeatherApiClient(dio: dio);
        final weather = await apiClient.fetchWeather(lat: 100, lon: 200);

        expect(weather, Weather.fromJson(weatherJson));
      });

      test('取得失敗時 エラーがthrowされること', () async {
        final dio = MockDio();
        // NOTE: RiverpodのProviderContainerを使う場合
        // final container = ProviderContainer(
        //   overrides: [
        //     dioProvider.overrideWithValue(dio),
        //   ],
        // );
        // addTearDown(container.dispose);
        final _exception = Exception();
        when(dio.get(any)).thenThrow(_exception);

        // NOTE: RiverpodのProviderContainerを使う場合
        // final apiClient = container.read(apiClientProvider);
        final apiClient = WeatherApiClient(dio: dio);

        // NOTE: try-catchでexpectするのもOK
        // try {
        //   await apiClient.fetchWeather(lat: 100, lon: 200);
        // } catch (exception) {
        //   expect(exception, _exception);
        //   // 型をテストしたい場合はisAを使う
        //   expect(exception , isA<Exception>());
        // }

        expect(
          () => apiClient.fetchWeather(lat: 100, lon: 200),
          throwsException,
        );
      });
    });
  });
}
