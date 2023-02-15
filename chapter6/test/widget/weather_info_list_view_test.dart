import 'package:chapter6/presentation/pages/weather_info_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('WeatherInfoListView', () {
    group('表示確認', () {
      testWidgets('説明文', (tester) async {
        const cityName = '東京都';
        const temp = '23';
        const humidity = '50';
        await tester.pumpWidget(
          const MaterialApp(
            home: WeatherInfoListView(
              cityName: cityName,
              temp: temp,
              humidity: humidity,
            ),
          ),
        );

        expect(find.text('都市名：$cityName'), findsOneWidget);
        expect(find.text('気温：$temp℃'), findsOneWidget);
        expect(find.text('湿度：$humidity%'), findsOneWidget);
      });
    });
  });
}
