import 'package:centrolui/costants/constants.dart';
import 'package:flutter/material.dart';

class ClSplashScreen extends StatelessWidget {
  const ClSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(APP_NAME),
          SizedBox(height: 16),
          Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
