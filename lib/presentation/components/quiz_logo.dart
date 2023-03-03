import 'package:flutter/material.dart';

class QuizLogo extends StatelessWidget {
  const QuizLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return           Stack(
      children: const [
        Icon(
          Icons.cloud_outlined,
          size: 125,
          color: Colors.white,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          top: 0,
          child: Icon(
            Icons.question_mark,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
