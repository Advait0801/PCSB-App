import 'package:flutter/material.dart';
import 'package:pcsb_app/gallery_screen.dart';
import 'package:pcsb_app/login_screen.dart';

void main() {
  runApp(const PCSBApp());
}

class PCSBApp extends StatelessWidget {
  const PCSBApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      routes: {
        LoginScreen.id: (context) => const LoginScreen(),
        GalleryScreen.id: (context) => GalleryScreen()
      },
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.id,
    );
  }
}
