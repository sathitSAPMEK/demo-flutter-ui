import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'carouselWithDotPage.dart';

class Carousel extends StatelessWidget {
  Carousel({super.key});

  List<String> imgList = [
    'https://images.unsplash.com/photo-1688396068145-4bec246f615c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1689046194076-62199393c464?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
    'https://images.unsplash.com/photo-1682686581740-2c5f76eb86d1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1171&q=80',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Carousel With Image',
              style: TextStyle(
                color: Color.fromARGB(255, 101, 194, 9),
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          CarouselSlider(
            items: imgList.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    child: Center(
                      child: Center(
                        child: Image.network(
                          item,
                          fit: BoxFit.cover,
                          width: 1500,
                        ),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
          ),
          const SizedBox(height: 30),
          CarouselWithDotsPage(imgList: imgList)
        ],
      ),
    );
  }
}
