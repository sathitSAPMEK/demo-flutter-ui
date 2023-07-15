import 'package:flutter/material.dart';

import '../../ui/animation_text.dart';
import '../../ui/carousel/index.dart';
import '../../ui/load_more.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late Widget renderContainer;
  var is_hide_button = false;

  Widget setDefaultContainer() {
    return renderContainer = const Text('');
    // return renderContainer = AnimationText();
  }

  @override
  void initState() {
    super.initState();
    setDefaultContainer();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: TextButton(
                onPressed: (() => setState(() =>
                    {is_hide_button = !is_hide_button, setDefaultContainer()})),
                child: const Text('Click to toggle Button'),
              ),
            ),
            buttonController(),
            Container(
              child: renderContainer,
            ),
          ],
        ),
      ),
    );
  }

  Column buttonController() {
    return Column(
      children: [
        CreateButton("Carousel", Carousel()),
        CreateButton("Read more", const LoadMoreText()),
        CreateButton("Animation Text", AnimationText()),
      ],
    );
  }

  Widget CreateButton(String name, Widget render) {
    return Container(
      child: is_hide_button == false
          ? ElevatedButton(
              onPressed: () => setState(
                  () => {renderContainer = render, is_hide_button = true}),
              child: Text(name),
            )
          : null,
    );
  }
}
