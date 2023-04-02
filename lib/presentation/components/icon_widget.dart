import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_game/utils/colors.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({Key? key, required this.icon, this.onPressed}) : super(key: key);
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
          shape: BoxShape.circle,),
      child: IconButton(icon: FaIcon(icon, color: Colors.white,),  onPressed: onPressed,)
    );
  }
}
