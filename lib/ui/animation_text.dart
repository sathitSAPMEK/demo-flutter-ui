import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimationText extends StatelessWidget {
  const AnimationText({super.key});

  static List<Color> colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  static TextStyle colorizeTextStyle = const TextStyle(
    fontSize: 30.0,
  );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          colorizeAnimation(),
          rotateAnimation(),
          fadeAnimation(),
          typerAnimatedText(),
          typewriterAnimatedText(),
        ],
      ),
    );
  }

  Widget colorizeAnimation() {
    return Container(
      color: Colors.teal,
      height: 150,
      width: double.infinity,
      child: AnimatedTextKit(
        animatedTexts: [
          ColorizeAnimatedText(
            'Larry Page',
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
          ColorizeAnimatedText(
            'Bill Page',
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
          ColorizeAnimatedText(
            'Steve Page',
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
        ],
        repeatForever: true,
      ),
    );
  }

  Widget typerAnimatedText() {
    return Container(
      color: Colors.teal,
      height: 150,
      width: double.infinity,
      child: AnimatedTextKit(
        animatedTexts: [
          TyperAnimatedText(
            'Larry Page',
            textStyle: colorizeTextStyle,
          ),
          TyperAnimatedText(
            'Bill Page',
            textStyle: colorizeTextStyle,
          ),
          TyperAnimatedText(
            'Steve Page',
            textStyle: colorizeTextStyle,
          ),
        ],
        repeatForever: true,
      ),
    );
  }

  Widget rotateAnimation() {
    return Container(
      color: Colors.teal,
      height: 150,
      width: double.infinity,
      child: AnimatedTextKit(
        animatedTexts: [
          RotateAnimatedText(
            'Larry Page',
            textStyle: colorizeTextStyle,
          ),
          RotateAnimatedText(
            'Bill Page',
            textStyle: colorizeTextStyle,
          ),
          RotateAnimatedText(
            'Steve Page',
            textStyle: colorizeTextStyle,
          ),
        ],
        repeatForever: true,
      ),
    );
  }

  Widget fadeAnimation() {
    return Container(
      color: Colors.teal,
      height: 150,
      width: double.infinity,
      child: AnimatedTextKit(
        animatedTexts: [
          FadeAnimatedText(
            'Larry Page',
            textStyle: colorizeTextStyle,
          ),
          FadeAnimatedText(
            'Bill Page',
            textStyle: colorizeTextStyle,
          ),
          FadeAnimatedText(
            'Steve Page',
            textStyle: colorizeTextStyle,
          ),
        ],
        repeatForever: true,
      ),
    );
  }

  Widget typewriterAnimatedText() {
    return Container(
      color: Colors.teal,
      height: 150,
      width: double.infinity,
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(
            'Larry Page',
            textStyle: colorizeTextStyle,
          ),
          TypewriterAnimatedText(
            'Bill Page',
            textStyle: colorizeTextStyle,
          ),
          TypewriterAnimatedText(
            'Steve Page',
            textStyle: colorizeTextStyle,
          ),
        ],
        repeatForever: true,
      ),
    );
  }
}
