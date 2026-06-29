import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class TranslateScreen extends StatefulWidget {
  const TranslateScreen({super.key});

  @override
  State<TranslateScreen> createState() => _TranslateScreenState();
}

class _TranslateScreenState extends State<TranslateScreen> {
  CameraController? _controller;
  bool _isCameraInitialized = false;

  Future<void> _startCamera() async {
    final cameras = await availableCameras();

    if (cameras.isNotEmpty) {
      _controller = CameraController(
        cameras.first,
        ResolutionPreset.medium,
      );

      await _controller!.initialize();

      setState(() {
        _isCameraInitialized = true;
      });
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Translate Sign"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: _isCameraInitialized
                  ? CameraPreview(_controller!)
                  : const Center(
                      child: Text("Camera Preview"),
                    ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: _startCamera,
              child: const Text("Start Camera"),
            ),

            const SizedBox(height: 20),

            const Text(
              "Prediction:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: const Text(""),
            ),
          ],
        ),
      ),
    );
  }
}