import 'package:flutter/material.dart';
import 'package:pcsb_app/login_screen.dart';

void main() {
  runApp(const PCSBApp());
}

class PCSBApp extends StatelessWidget {
  const PCSBApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginScreen()
    );
  }
}
