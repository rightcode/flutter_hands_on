import 'package:chapter4/models/prev_weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PrevWeatherInfoListView extends ConsumerWidget {
  const PrevWeatherInfoListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prevWeather = ref.watch(prevWeatherProvider);
    if (prevWeather == null) {
      return const SizedBox();
    }
    return Column(
      children: [
        const Text('前回の取得結果'),
        Center(
          child: Text(
            '都市名：${prevWeather.cityName}',
          ),
        ),
        Center(
          child: Text(
            '気温：${prevWeather.temp}',
          ),
        ),
        Center(
          child: Text(
            '湿度：${prevWeather.humidity}%',
          ),
        ),
      ],
    );
  }
}
