import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const ArabicSignTranslatorApp());
}

class ArabicSignTranslatorApp extends StatelessWidget {
  const ArabicSignTranslatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Arabic Sign Translator',
      home: const HomeScreen(),
    );
  }
}