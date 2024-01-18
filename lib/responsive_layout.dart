import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webWidget;
  final Widget mobileWidget;

  ResponsiveLayout({required this.webWidget, required this.mobileWidget});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isWeb = kIsWeb;
        bool isMobile = constraints.maxWidth <= 600;
        if (isWeb && !isMobile) {
          return webWidget;
        } else {
          return mobileWidget;
        }
      },
    );
  }
}
