import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tomstore/jerry_store/jerry_store_screen.dart';

void main() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: JerryStoreScreen(),
    );
  }
}
