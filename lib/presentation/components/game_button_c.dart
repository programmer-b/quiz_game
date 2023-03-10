import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:quiz_game/utils/colors.dart';

import '../../utils/global_strings.dart';

class GameButtonContainer extends StatelessWidget {
  const GameButtonContainer({Key? key, required this.child, this.onTap}) : super(key: key);
  final Widget child;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 12),
        decoration: BoxDecoration(
          // color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: secondaryColor,
            width: 4,
          ),
          boxShadow: const [
            BoxShadow(
              color: shadowOnSecondary,
              // offset: Offset(-4, -4),
              blurRadius: 15,
            ),
          ],
        ),
        child: child,
      ),
    );
  }
}
