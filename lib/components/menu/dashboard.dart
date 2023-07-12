import 'package:flutter/material.dart';

import '../../ui/carousel/index.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [Carousel()],
      ),
    );
  }
}
