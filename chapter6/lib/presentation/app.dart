import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Info',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: '現在地のお天気情報'),
    );
  }
}
