import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:quiz_game/presentation/components/game_background.dart';
import 'package:quiz_game/presentation/components/icon_widget.dart';

import 'play_session_provider.dart';

class PlaySessionPage extends StatefulWidget {
  const PlaySessionPage({Key? key}) : super(key: key);

  @override
  State<PlaySessionPage> createState() => _PlaySessionPageState();
}

class _PlaySessionPageState extends State<PlaySessionPage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return GameBackground(
        child: SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                IconWidget(icon: FontAwesomeIcons.pause),
                IconWidget(icon: FontAwesomeIcons.gear)
              ],
            ),
            PageView(
              controller: _controller,
            )
          ],
        ),
      ),
    ));
  }
}
