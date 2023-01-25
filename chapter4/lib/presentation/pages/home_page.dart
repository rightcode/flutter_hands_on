import 'package:chapter4/provider/weather_info_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../provider/current_location_provider.dart';
import 'prev_weather_info_list_view.dart';
import 'weather_info_list_view.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ref.watch(weatherInfoProvider).when(
        data: (data) {
          return RefreshIndicator(
            onRefresh: () => ref.refresh(currentLocationProvider.future),
            child: WeatherInfoListView(
              cityName: '${data.name}',
              temp: '${data.main?.temp?.toString()}',
              humidity: '${data.main?.humidity?.toString()}',
            ),
          );
        },
        error: (error, stackTrace) {
          return Column(
            children: [
              Text(
                error.toString(),
                style: const TextStyle(color: Colors.red),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => ref.refresh(currentLocationProvider.future),
                child: const Text('リトライ'),
              ),
              const SizedBox(height: 40),
              const Divider(),
              const PrevWeatherInfoListView(),
            ],
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
