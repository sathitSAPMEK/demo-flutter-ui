import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class LoadMoreText extends StatelessWidget {
  const LoadMoreText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Padding(
        padding: EdgeInsets.all(10),
        child: ReadMoreText(
          "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which dont look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
          trimLines: 2,
          colorClickableText: Colors.pink,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Read more',
          trimExpandedText: 'hide',
          moreStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.green,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
