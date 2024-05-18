import 'package:flutter/material.dart';
import 'package:murukkugedara/screens/login_screen.dart';
import 'package:murukkugedara/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Murukku Gedara',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Login(),
    );
  }
}
