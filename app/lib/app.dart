import 'package:flutter/material.dart';

class FindItApp extends StatelessWidget {
  const FindItApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FindIt',
      theme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      home: const Scaffold(body: Center(child: Text('FindIt'))),
    );
  }
}
