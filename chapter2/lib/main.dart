///
/// Chapter2: 状態管理を学ぼう
/// 課題: 画面の要素を更新する機能を追加してみよう
///
/// 本アプリではテーマ色を変更する処理を追加しています
///

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // 追加
  MaterialColor _primarySwatch = Colors.blue;

  // 追加
  void changeColor() {
    setState(() {
      if (_primarySwatch == Colors.blue) {
        _primarySwatch = Colors.red;
      } else {
        _primarySwatch = Colors.blue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: _primarySwatch,
      ),
      home: MyHomePage(
        title: 'Flutter Demo Home Page',
        changeColor: changeColor, // 追加
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
    required this.changeColor, // 追加
  });

  final String title;
  final VoidCallback changeColor; // 追加

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            TextButton(
              onPressed: () {
                widget.changeColor();
              },
              child: const Text('Change Color'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
