import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:quiz_game/presentation/components/game_background.dart';
import 'package:quiz_game/utils/dimens.dart';
import 'package:quiz_game/utils/global_strings.dart';

import '../../../utils/colors.dart';

class ChooseLevelPage extends StatefulWidget {
  const ChooseLevelPage({Key? key}) : super(key: key);

  @override
  State<ChooseLevelPage> createState() => _ChooseLevelPageState();
}

class _ChooseLevelPageState extends State<ChooseLevelPage> {
  @override
  Widget build(BuildContext context) {
    return GameBackground(
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(listViewPadding),
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    chooseGameLevelTxt,
                    style: boldTextStyle(size: titleTxtSize, color: primaryColor),
                    textAlign: TextAlign.center,
                  ),
                ),
                10.height,
                Container(
                  alignment: Alignment.center,
                  child: Wrap(children: [
                    for(int i = 0; i < 25; i ++)
                      _levelTab(context, level: i, enabled: i < 3)
                      ],),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _levelTab(context,
    {required int level, void Function()? onTap, required bool enabled}) =>
    Builder(builder: (ctx) {
      final width = ctx.width() * 0.20;
      return InkWell(
        onTap: onTap,
        child: Card(
          elevation: 10,
          color: Colors.transparent,
          child: Container(
            constraints: const BoxConstraints(maxWidth: 70, maxHeight: 150),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade50,
                ),
                borderRadius: BorderRadius.circular(12),
                color: shadowOnSecondary),
            width: width,
            height: width * 1.3,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                Text(
                  '$level',
                  style: boldTextStyle(size: titleTxtSize, color: primaryColor),
                ),
                Icon(Icons.lock, color: enabled ? Colors.transparent : Colors.black26,)
              ],
            ),
          ),
        ),
      );
    });
