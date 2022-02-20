import 'package:flutter/material.dart';

class MainNavigatorScreen extends StatelessWidget {
  const MainNavigatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'basic_design');
                },
                child: const Text('Basic Design')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'scroll_screen');
                },
                child: const Text('Page Design')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'home_screen');
                },
                child: const Text('Complex Design')),
          ],
        ),
      ),
    );
  }
}
