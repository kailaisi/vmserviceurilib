import 'dart:ui';

import 'package:flutter/material.dart';

void main() => _runApp();

Future<void> _runApp() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "test",
      builder: (context, child) {
        return Scaffold(
          // Global GestureDetector that will dismiss the keyboard
          body: GestureDetector(
            onTap: () {},
            child: child,
          ),
        );
      },
      routes: {
        "test": (context) => const TestPage(),
      },
    );
  }
}

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        ("测试"),
      ),
    );
  }
}
