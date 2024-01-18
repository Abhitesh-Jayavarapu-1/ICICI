import 'package:flutter/material.dart';
import 'package:icici/mobile_layout.dart';
import 'package:icici/responsive_layout.dart';
import 'package:icici/web_layout.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Builder(
          builder: (BuildContext context) {
            return ResponsiveLayout(
              webWidget: WebLayout(),
              mobileWidget: MobileLayout(),
            );
          },
        ),
      ),
    );
  }
}
