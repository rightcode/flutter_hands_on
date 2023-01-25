import 'package:flutter/material.dart';

class WeatherInfoListView extends StatelessWidget {
  const WeatherInfoListView({
    Key? key,
    required this.cityName,
    required this.temp,
    required this.humidity,
  }) : super(key: key);

  final String cityName;
  final String temp;
  final String humidity;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      children: [
        Center(
          child: Text(
            '都市名：$cityName',
          ),
        ),
        Center(
          child: Text(
            '気温：$temp℃',
          ),
        ),
        Center(
          child: Text(
            '湿度：$humidity%',
          ),
        ),
      ],
    );
  }
}
