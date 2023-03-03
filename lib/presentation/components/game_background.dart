import 'package:flutter/material.dart';
import 'package:quiz_game/utils/dart_extensions.dart';

class GameBackground extends StatelessWidget {
  const GameBackground({Key? key, required this.child, this.padding}) : super(key: key);
  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: context.width,
      height: context.height,
      decoration: BoxDecoration(
        // color: Colors.transparent,
          gradient: LinearGradient(
              colors: [Colors.pink.shade600, Colors.purple, ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight)),
      child: child,
    );
  }
}
