import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  void initializeSplash() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  void initState() {
    initializeSplash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF245B60).withOpacity(0.7),
      body: Padding(
        padding: const EdgeInsets.only(right: 15, top: 0),
        child: Center(child: Image.asset('assets/images/splash.png', width: 160, height: 160),
        ),
      ),
    );
  }
}