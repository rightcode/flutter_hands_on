import 'package:chapter6/models/weather.dart';
import 'package:flutter_test/flutter_test.dart';

import '../mock.dart';

void main() {
  group('Weather', () {
    group('fromJson', () {
      test('任意のJSONをfromJsonしたとき インスタンスが生成が成功すること', () {
        final weather = Weather.fromJson(weatherJson);
        expect(
          weather,
          Weather(
            timezone: 7200,
            id: 3163858,
            name: 'Zocca',
            main: WeatherMain(
              temp: 298.48,
              feelsLike: 298.74,
              tempMin: 297.56,
              tempMax: 300.05,
              pressure: 1015,
              humidity: 64,
            ),
          ),
        );
      });
    });
  });
}
