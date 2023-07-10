import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DemoAnimation extends StatefulWidget {
  const DemoAnimation({super.key});

  @override
  State<DemoAnimation> createState() => _DemoAnimationState();
}

class _DemoAnimationState extends State<DemoAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Center(
          child: Lottie.asset('assets/animations/high-five.json'),
        ),
      ),
    );
  }
}
