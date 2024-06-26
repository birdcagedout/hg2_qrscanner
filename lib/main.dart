import 'package:flutter/material.dart';
import 'package:hg2_qrscanner/pages/scan_overlay_example.dart';

import 'pages/generate_code_page.dart';
import 'pages/scan_code_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter QR Scanner/Generator Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        "/generate": (context) => const GenerateCodePage(),
        // "/scan": (context) => const ScanCodePage(),
        "/scan": (context) => BarcodeScannerWithOverlay(),
      },
      initialRoute: "/scan",
    );
  }
}
