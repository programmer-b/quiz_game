import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../utils/global_strings.dart';

class GameButtonContainer extends StatelessWidget {
  const GameButtonContainer({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 12),
      decoration: BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: const Color(0xffffd700),
          width: 4,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0xffd4af37),
            // offset: Offset(-4, -4),
            blurRadius: 15,
          ),
        ],
      ),
      child: child,
    );
  }
}
