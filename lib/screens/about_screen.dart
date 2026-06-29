import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Icon(
                Icons.sign_language,
                size: 80,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Arabic Sign Translator",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const Text(
             "تطبيق لتحويل لغة الإشارة العربية إلى نص، وتحويل النص إلى لغة إشارة يهدف المشروع إلى دعم التواصل مع ذوي الإعاقة السمعية",

              style: TextStyle(fontSize: 15, height: 1.6),
              textAlign: TextAlign.right,
            ),
            const SizedBox(height: 32),
            const Text(
              "Technologies Used",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _techTile(Icons.phone_android, "Flutter"),
            _techTile(Icons.memory, "TensorFlow Lite"),
            _techTile(Icons.camera_alt, "Camera"),
            const Spacer(),
            const Divider(),
            const SizedBox(height: 8),
            const Text(
              "Developer",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              "Zahra Ali Al Ahmad",
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }

  Widget _techTile(IconData icon, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.blueGrey),
          const SizedBox(width: 10),
          Text(label, style: const TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}