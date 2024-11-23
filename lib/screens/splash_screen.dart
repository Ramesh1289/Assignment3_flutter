
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context,'/home');
    }
    );

    return Scaffold(
      backgroundColor: Colors.teal,
      body:
      Center(
        child: LottieBuilder.asset('assets/animations/splash_animation.json',
        ),

      ),

    );
  }
}
