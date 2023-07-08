import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  List<ContentConfig> listContentConfig = [];

  static const textStyle = TextStyle(
    color: Colors.black,
    fontSize: 30,
    fontWeight: FontWeight.bold,
    fontFamily: 'RobotoMono',
  );

  static const descriptionStyle = TextStyle(
    color: Colors.black,
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    listContentConfig.add(
      const ContentConfig(
        title: "Hello Food",
        description:
            "The easiest way to order food from your favorite restaurant!",
        pathImage: 'assets/images/hamburger.png',
        styleTitle: textStyle,
        styleDescription: descriptionStyle,
      ),
    );

    listContentConfig.add(
      const ContentConfig(
        title: "Movie Tickets",
        description: "Book movie tickets for your family and friends!",
        pathImage: 'assets/images/movie.png',
        styleTitle: textStyle,
        styleDescription: descriptionStyle,
      ),
    );

    listContentConfig.add(
      const ContentConfig(
        title: "Great Discounts",
        description: "Best discounts on every single service we offer!",
        pathImage: "assets/images/discount.png",
        styleTitle: textStyle,
        styleDescription: descriptionStyle,
      ),
    );

    listContentConfig.add(
      const ContentConfig(
        title: "Hello Travel",
        description: "Book tickets of any transportation and travel the world!",
        pathImage: "assets/images/travel.png",
        styleTitle: textStyle,
        styleDescription: descriptionStyle,
      ),
    );
  }

  void onDonePress() {
    log("End of slides");
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      key: UniqueKey(),
      listContentConfig: listContentConfig,
      onDonePress: onDonePress,
    );
  }
}
