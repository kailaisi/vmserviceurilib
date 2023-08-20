import 'dart:ui';

import 'package:flutter/material.dart';

void main() => _runApp();

Future<void> _runApp() async {
  runApp(MyApp());
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
    return
      MaterialApp(
          initialRoute: window.defaultRouteName,
          builder: (context, child) {
            return Scaffold(
              // Global GestureDetector that will dismiss the keyboard
              body: GestureDetector(
                onTap: () {},
                child: child,
              ),
            );
          });
  }
