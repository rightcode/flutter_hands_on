import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageA extends StatelessWidget {
  PageA({
    super.key,
    this.receivedText,
  });

  final String? receivedText;

  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('画面A'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(receivedText ?? ''),
              const SizedBox(height: 32),
              TextField(
                controller: textEditingController,
              ),
              ElevatedButton(
                onPressed: () {
                  context.go('/b/${textEditingController.text}');
                },
                child: const Text('画面Bへ遷移'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
