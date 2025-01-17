import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/image/splash_image.png',
            width: double.infinity,
            height:double.infinity,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
